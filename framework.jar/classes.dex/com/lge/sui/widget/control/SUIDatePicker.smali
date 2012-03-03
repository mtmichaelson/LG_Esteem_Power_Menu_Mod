.class public Lcom/lge/sui/widget/control/SUIDatePicker;
.super Landroid/widget/FrameLayout;
.source "SUIDatePicker.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;,
        Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;,
        Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;
    }
.end annotation


# instance fields
.field public DEFAULT_END_YEAR:I

.field public DEFAULT_START_YEAR:I

.field dayArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDayOfMonth:I

.field protected mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

.field private mMonthOfYear:I

.field protected mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

.field private mOnDateChangedListener:Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;

.field private mYear:I

.field protected mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

.field monthArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private western_month_style:Z

.field yearArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/control/SUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/16 v1, 0x7b1

    iput v1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->DEFAULT_START_YEAR:I

    .line 37
    const/16 v1, 0x7f4

    iput v1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->DEFAULT_END_YEAR:I

    .line 329
    iput-boolean v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->western_month_style:Z

    .line 361
    iput-object v4, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->monthArrays:Ljava/util/ArrayList;

    .line 362
    iput-object v4, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    .line 363
    iput-object v4, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->yearArrays:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->initialize()V

    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 103
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYear:I

    .line 104
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthOfYear:I

    .line 105
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayOfMonth:I

    .line 107
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/lge/sui/widget/control/SUIDatePicker;->init(IIILcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;)V

    .line 109
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->updateSpinners()V

    .line 110
    return-void
.end method

.method private notifyDateChanged()V
    .registers 5

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mOnDateChangedListener:Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_15

    .line 306
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mOnDateChangedListener:Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;->onDateChanged(Lcom/lge/sui/widget/control/SUIDatePicker;III)V

    .line 309
    :cond_15
    return-void
.end method

.method private updateSpinners()V
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x1

    .line 257
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 258
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 262
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/control/SUIDatePicker;->buildDayArrayList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 265
    .local v2, dayArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x3030008

    invoke-direct {v1, p0, v4, v5, v2}, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 269
    .local v1, dayAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v4, :cond_2f

    .line 270
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v4, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 272
    :cond_2f
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v4

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    if-lt v4, v5, :cond_40

    .line 273
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentDay(I)V

    .line 277
    :cond_40
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v4

    iget v5, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->DEFAULT_START_YEAR:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v6

    .line 278
    .local v3, indexYear:I
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v4, v3}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    .line 279
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    .line 280
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v4, :cond_66

    .line 281
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    .line 284
    :cond_66
    return-void
.end method


# virtual methods
.method protected buildDayArrayList(I)Ljava/util/ArrayList;
    .registers 7
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
    const v4, 0x308000e

    .line 373
    if-gez p1, :cond_7

    .line 374
    const/4 v2, 0x0

    .line 393
    :goto_6
    return-object v2

    .line 376
    :cond_7
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    if-nez v2, :cond_29

    .line 377
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    .line 378
    const/4 v0, 0x1

    .local v0, cnt:I
    :goto_13
    if-gt v0, p1, :cond_72

    .line 379
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/sui/widget/control/SUIDigitPicker;->toDFormat(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 382
    .end local v0       #cnt:I,
    :cond_29
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p1, :cond_4c

    .line 383
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, v2, p1

    .line 384
    .local v1, size:I
    const/4 v0, 0x0

    .restart local v0       #cnt:I,
    :goto_3a
    if-ge v0, v1, :cond_72

    .line 385
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 387
    .end local v0       #cnt:I,
    .end local v1       #size:I,
    :cond_4c
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_72

    .line 388
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .restart local v0       #cnt:I,
    :goto_5c
    if-gt v0, p1, :cond_72

    .line 389
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/sui/widget/control/SUIDigitPicker;->toDFormat(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 393
    .end local v0       #cnt:I,
    :cond_72
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    goto :goto_6
.end method

.method protected buildMonthArrayList(I)Ljava/util/ArrayList;
    .registers 9
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
    .line 336
    if-gez p1, :cond_4

    .line 337
    const/4 v5, 0x0

    .line 358
    :goto_3
    return-object v5

    .line 340
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->monthArrays:Ljava/util/ArrayList;

    .line 341
    iget-boolean v5, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->western_month_style:Z

    if-eqz v5, :cond_26

    .line 342
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x304

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, items:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, cnt:I
    :goto_1a
    if-ge v1, p1, :cond_4d

    .line 344
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->monthArrays:Ljava/util/ArrayList;

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 347
    .end local v1       #cnt:I,
    .end local v2       #items:[Ljava/lang/String;,
    :cond_26
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 348
    .local v4, s:Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 350
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x0

    .restart local v1       #cnt:I,
    :goto_32
    if-ge v1, p1, :cond_4d

    .line 351
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 352
    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 353
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, month_String:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->monthArrays:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 358
    .end local v0       #c:Ljava/util/Calendar;,
    .end local v3       #month_String:Ljava/lang/String;,
    .end local v4       #s:Ljava/text/SimpleDateFormat;,
    :cond_4d
    iget-object v5, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->monthArrays:Ljava/util/ArrayList;

    goto :goto_3
.end method

.method protected buildYearArrayList(I)Ljava/util/ArrayList;
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
    .line 319
    if-gez p1, :cond_4

    .line 320
    const/4 v1, 0x0

    .line 326
    :goto_3
    return-object v1

    .line 322
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->yearArrays:Ljava/util/ArrayList;

    .line 323
    const/4 v0, 0x1

    .local v0, cnt:I
    :goto_c
    if-gt v0, p1, :cond_1d

    .line 324
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->yearArrays:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->DEFAULT_START_YEAR:I

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 326
    :cond_1d
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->yearArrays:Ljava/util/ArrayList;

    goto :goto_3
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 213
    return-void
.end method

.method public getCurrentDay()I
    .registers 2

    .prologue
    .line 443
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayOfMonth:I

    return v0
.end method

.method public getCurrentMonth()I
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthOfYear:I

    return v0
.end method

.method public getCurrentYear()I
    .registers 2

    .prologue
    .line 435
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYear:I

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .registers 4

    .prologue
    .line 118
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 119
    .local v0, date:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getYear()I

    move-result v1

    iget v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->DEFAULT_START_YEAR:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 120
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getMonth()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMonth(I)V

    .line 121
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getDayOfMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setDate(I)V

    .line 122
    return-object v0
.end method

.method public getDayOfMonth()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayOfMonth:I

    return v0
.end method

.method public getDayPicker()Lcom/lge/sui/widget/control/SUIDigitPicker;
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    return-object v0
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 297
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthOfYear:I

    return v0
.end method

.method public getMonthPicker()Lcom/lge/sui/widget/control/SUIDigitPicker;
    .registers 2

    .prologue
    .line 647
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    return-object v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 290
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYear:I

    return v0
.end method

.method public getYearPicker()Lcom/lge/sui/widget/control/SUIDigitPicker;
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    return-object v0
.end method

.method public init(IIILcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;)V
    .registers 8
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentYear(I)V

    .line 245
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentMonth(I)V

    .line 246
    invoke-virtual {p0, p3}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentDay(I)V

    .line 247
    iput-object p4, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mOnDateChangedListener:Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;

    .line 248
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->updateDate(III)V

    .line 249
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->notifyDateChanged()V

    .line 250
    return-void
.end method

.method public initialize()V
    .registers 14

    .prologue
    const/4 v12, 0x5

    const v11, 0x3030008

    const/4 v10, 0x1

    .line 448
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 449
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 450
    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 451
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v8

    invoke-virtual {v0, v12, v8}, Ljava/util/Calendar;->set(II)V

    .line 453
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 455
    .local v3, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_d3

    .line 456
    const v8, 0x3030006

    invoke-virtual {v3, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 460
    :goto_39
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->reorderPickers()V

    .line 462
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_46

    .line 463
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker;->setEnabled(Z)V

    .line 467
    :cond_46
    const v8, 0x30a0028

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 469
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v8, :cond_76

    .line 471
    iget v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->DEFAULT_END_YEAR:I

    iget v9, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->DEFAULT_START_YEAR:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker;->buildYearArrayList(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 474
    .local v7, yearArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, p0, v8, v11, v7}, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 478
    .local v6, yearAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v8, v6}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 480
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    new-instance v9, Lcom/lge/sui/widget/control/SUIDatePicker$1;

    invoke-direct {v9, p0}, Lcom/lge/sui/widget/control/SUIDatePicker$1;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker;)V

    invoke-virtual {v8, v9}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 495
    .end local v6       #yearAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;,
    .end local v7       #yearArray:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_76
    const v8, 0x30a0024

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 497
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v8, :cond_a3

    .line 499
    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker;->buildMonthArrayList(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 501
    .local v5, monthArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, p0, v8, v11, v5}, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 505
    .local v4, monthAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v8, v4}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 507
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    new-instance v9, Lcom/lge/sui/widget/control/SUIDatePicker$2;

    invoke-direct {v9, p0}, Lcom/lge/sui/widget/control/SUIDatePicker$2;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker;)V

    invoke-virtual {v8, v9}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 523
    .end local v4       #monthAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;,
    .end local v5       #monthArray:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a3
    const v8, 0x30a0026

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 525
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v8, :cond_d2

    .line 527
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker;->buildDayArrayList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 530
    .local v2, dayArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, p0, v8, v11, v2}, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 534
    .local v1, dayAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v8, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 536
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    new-instance v9, Lcom/lge/sui/widget/control/SUIDatePicker$3;

    invoke-direct {v9, p0}, Lcom/lge/sui/widget/control/SUIDatePicker$3;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker;)V

    invoke-virtual {v8, v9}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 550
    .end local v1       #dayAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;,
    .end local v2       #dayArray:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d2
    return-void

    .line 458
    :cond_d3
    const v8, 0x3030023

    invoke-virtual {v3, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_39
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 223
    move-object v0, p1

    check-cast v0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;

    move-object v1, v0

    .line 224
    .local v1, ss:Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 225
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->getYear()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentYear(I)V

    .line 226
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->getMonth()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentMonth(I)V

    .line 227
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->getDay()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentDay(I)V

    .line 228
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 216
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 218
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;

    iget v2, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYear:I

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/lge/sui/widget/control/SUIDatePicker$1;)V

    return-object v0
.end method

.method public refresh()V
    .registers 4

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->updateDate(III)V

    .line 554
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->updateSpinners()V

    .line 555
    return-void
.end method

.method protected reorderPickers()V
    .registers 13

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    check-cast v11, Ljava/text/SimpleDateFormat;

    invoke-virtual {v11}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v7

    .line 565
    .local v7, order:Ljava/lang/String;
    const v11, 0x30a0022

    invoke-virtual {p0, v11}, Lcom/lge/sui/widget/control/SUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 568
    .local v8, parent:Landroid/widget/LinearLayout;
    const v11, 0x30a0027

    invoke-virtual {p0, v11}, Lcom/lge/sui/widget/control/SUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 570
    .local v10, yearContainer:Landroid/view/View;
    const v11, 0x30a0023

    invoke-virtual {p0, v11}, Lcom/lge/sui/widget/control/SUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 572
    .local v6, monthContainer:Landroid/view/View;
    const v11, 0x30a0025

    invoke-virtual {p0, v11}, Lcom/lge/sui/widget/control/SUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 575
    .local v1, dayContainer:Landroid/view/View;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 577
    const/4 v9, 0x0

    .line 578
    .local v9, quoted:Z
    const/4 v2, 0x0

    .local v2, didDay:Z
    const/4 v3, 0x0

    .local v3, didMonth:Z
    const/4 v4, 0x0

    .line 580
    .local v4, didYear:Z
    if-eqz v7, :cond_81

    .line 581
    const/4 v5, 0x0

    .local v5, i:I
    :goto_36
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_81

    .line 582
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 583
    .local v0, c:C
    const/4 v9, 0x0

    .line 584
    const/16 v11, 0x27

    if-eq v0, v11, :cond_4d

    const/16 v11, 0x20

    if-eq v0, v11, :cond_4d

    const/16 v11, 0x2c

    if-ne v0, v11, :cond_4e

    .line 585
    :cond_4d
    const/4 v9, 0x1

    .line 588
    :cond_4e
    if-nez v9, :cond_5e

    .line 589
    const/16 v11, 0x79

    if-eq v0, v11, :cond_58

    const/16 v11, 0x59

    if-ne v0, v11, :cond_61

    :cond_58
    if-nez v4, :cond_61

    .line 590
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 591
    const/4 v4, 0x1

    .line 581
    :cond_5e
    :goto_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 592
    :cond_61
    const/16 v11, 0x6d

    if-eq v0, v11, :cond_69

    const/16 v11, 0x4d

    if-ne v0, v11, :cond_70

    :cond_69
    if-nez v3, :cond_70

    .line 593
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 594
    const/4 v3, 0x1

    goto :goto_5e

    .line 595
    :cond_70
    const/16 v11, 0x64

    if-eq v0, v11, :cond_78

    const/16 v11, 0x44

    if-ne v0, v11, :cond_5e

    :cond_78
    if-nez v2, :cond_5e

    .line 596
    if-eqz v1, :cond_5e

    .line 597
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 598
    const/4 v2, 0x1

    goto :goto_5e

    .line 605
    .end local v0       #c:C,
    .end local v5       #i:I,
    :cond_81
    if-nez v3, :cond_86

    .line 606
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 608
    :cond_86
    if-nez v2, :cond_8d

    .line 609
    if-eqz v1, :cond_8d

    .line 610
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    :cond_8d
    if-nez v4, :cond_92

    .line 614
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 617
    :cond_92
    return-void
.end method

.method public resetString()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->dayArrays:Ljava/util/ArrayList;

    .line 367
    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->monthArrays:Ljava/util/ArrayList;

    .line 368
    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->yearArrays:Ljava/util/ArrayList;

    .line 369
    return-void
.end method

.method public setCurrentDay(I)V
    .registers 2
    .parameter "mInitialDay"

    .prologue
    .line 431
    iput p1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayOfMonth:I

    .line 432
    return-void
.end method

.method public setCurrentMonth(I)V
    .registers 2
    .parameter "mInitialMonth"

    .prologue
    .line 427
    iput p1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthOfYear:I

    .line 428
    return-void
.end method

.method public setCurrentYear(I)V
    .registers 2
    .parameter "mInitialYear"

    .prologue
    .line 423
    iput p1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYear:I

    .line 424
    return-void
.end method

.method public setDayVisibility(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 624
    const v1, 0x30a0026

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 625
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_c

    .line 626
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    :cond_c
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 127
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setEnabled(Z)V

    .line 130
    return-void
.end method

.method public setOnDateChangedListener(Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 312
    if-eqz p1, :cond_7

    .line 313
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mOnDateChangedListener:Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;

    .line 314
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->notifyDateChanged()V

    .line 316
    :cond_7
    return-void
.end method

.method public setWesternMonthstyle(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 332
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->western_month_style:Z

    .line 333
    return-void
.end method

.method public setmDayPicker(Lcom/lge/sui/widget/control/SUIDigitPicker;)V
    .registers 2
    .parameter "mDayPicker"

    .prologue
    .line 643
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 644
    return-void
.end method

.method public setmMonthPicker(Lcom/lge/sui/widget/control/SUIDigitPicker;)V
    .registers 2
    .parameter "mMonthPicker"

    .prologue
    .line 651
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 652
    return-void
.end method

.method public setmYearPicker(Lcom/lge/sui/widget/control/SUIDigitPicker;)V
    .registers 2
    .parameter "mYearPicker"

    .prologue
    .line 639
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 640
    return-void
.end method

.method public updateDate(III)V
    .registers 5
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v0

    if-ne v0, p1, :cond_12

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v0

    if-ne v0, p2, :cond_12

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v0

    if-eq v0, p3, :cond_21

    .line 140
    :cond_12
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentYear(I)V

    .line 141
    invoke-virtual {p0, p2}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentMonth(I)V

    .line 142
    invoke-virtual {p0, p3}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentDay(I)V

    .line 143
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->updateSpinners()V

    .line 144
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->notifyDateChanged()V

    .line 147
    :cond_21
    return-void
.end method
