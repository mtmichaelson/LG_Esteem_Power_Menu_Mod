.class public Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;
.super Lcom/lge/sui/widget/control/SUIDatePicker;
.source "SUIDatePicker_mm_yy.java"



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/control/SUIDatePicker;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/control/SUIDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method


# virtual methods
.method public initialize()V
    .registers 14

    .prologue
    const/4 v12, 0x5

    const v11, 0x3030008

    const/4 v10, 0x1

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 59
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->getCurrentYear()I

    move-result v8

    invoke-virtual {v0, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 60
    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->getCurrentMonth()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 61
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->getCurrentDay()I

    move-result v8

    invoke-virtual {v0, v12, v8}, Ljava/util/Calendar;->set(II)V

    .line 63
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 65
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x3030023

    invoke-virtual {v3, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->reorderPickers()V

    .line 69
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_3f

    .line 70
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->setEnabled(Z)V

    .line 74
    :cond_3f
    const v8, 0x30a0028

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 76
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v8, :cond_6f

    .line 78
    iget v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->DEFAULT_END_YEAR:I

    iget v9, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->DEFAULT_START_YEAR:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->buildYearArrayList(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 81
    .local v7, yearArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, p0, v8, v11, v7}, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 85
    .local v6, yearAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v8, v6}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 87
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mYearPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    new-instance v9, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy$1;

    invoke-direct {v9, p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy$1;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;)V

    invoke-virtual {v8, v9}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 102
    .end local v6       #yearAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;,
    .end local v7       #yearArray:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6f
    const v8, 0x30a0024

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 104
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v8, :cond_9c

    .line 106
    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->buildMonthArrayList(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 108
    .local v5, monthArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, p0, v8, v11, v5}, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 112
    .local v4, monthAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v8, v4}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 114
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mMonthPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    new-instance v9, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy$2;

    invoke-direct {v9, p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy$2;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;)V

    invoke-virtual {v8, v9}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 130
    .end local v4       #monthAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;,
    .end local v5       #monthArray:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_9c
    const v8, 0x30a0026

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 132
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    if-eqz v8, :cond_cb

    .line 134
    invoke-virtual {v0, v12}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->buildDayArrayList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 137
    .local v2, dayArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, p0, v8, v11, v2}, Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker;Landroid/content/Context;ILjava/util/List;)V

    .line 141
    .local v1, dayAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    invoke-virtual {v8, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 143
    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIDatePicker;->mDayPicker:Lcom/lge/sui/widget/control/SUIDigitPicker;

    new-instance v9, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy$3;

    invoke-direct {v9, p0}, Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy$3;-><init>(Lcom/lge/sui/widget/control/SUIDatePicker_mm_yy;)V

    invoke-virtual {v8, v9}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 157
    .end local v1       #dayAdapter:Lcom/lge/sui/widget/control/SUIDatePicker$DigitPickerAdapter;,
    .end local v2       #dayArray:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_cb
    return-void
.end method
