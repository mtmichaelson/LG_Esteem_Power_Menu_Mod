.class public Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "SUIDatePickerDialog.java"


# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"



# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallback:Lcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

.field mInitialDay:I

.field mInitialMonth:I

.field mInitialYear:I



# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;III)V
    .registers 14
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 98
    iput-object p3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mCallback:Lcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;

    .line 99
    iput p4, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialYear:I

    .line 100
    iput p5, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialMonth:I

    .line 101
    iput p6, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialDay:I

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 104
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialYear:I

    iget v3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialMonth:I

    iget v4, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialDay:I

    invoke-direct {p0, v2, v3, v4}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->updateTitle(III)V

    .line 107
    const v2, 0x3080005

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    const v2, 0x3080004

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 109
    const v2, 0x3020048

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->setIcon(I)V

    .line 111
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 116
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-le p6, v5, :cond_80

    .line 117
    const v2, 0x3030007

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, view:Landroid/view/View;
    :goto_47
    const v2, 0x30a002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/sui/widget/control/SUIDatePicker;

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    .line 123
    if-ne p6, v5, :cond_5b

    .line 124
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/lge/sui/widget/control/SUIDatePicker;->setDayVisibility(I)V

    .line 135
    :cond_5b
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    iget v3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialYear:I

    invoke-virtual {v2, v3}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentYear(I)V

    .line 136
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    iget v3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentMonth(I)V

    .line 137
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    iget v3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialDay:I

    invoke-virtual {v2, v3}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentDay(I)V

    .line 138
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->refresh()V

    .line 140
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v2, p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->setOnDateChangedListener(Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;)V

    .line 142
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->setView(Landroid/view/View;)V

    .line 144
    return-void

    .line 119
    .end local v1       #view:Landroid/view/View;,
    :cond_80
    const v2, 0x3030024

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1       #view:Landroid/view/View;,
    goto :goto_47
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;II)V
    .registers 11
    .parameter "context"
    .parameter "mDateSetListener"
    .parameter "mYear"
    .parameter "mMonth"

    .prologue
    .line 155
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;III)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;III)V
    .registers 13
    .parameter "context"
    .parameter "callBack"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 77
    const v2, 0x3090018

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;-><init>(Landroid/content/Context;ILcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;III)V

    .line 78
    return-void
.end method

.method private updateTitle(III)V
    .registers 6
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 216
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 218
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 219
    invoke-virtual {p0}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 159
    const/4 v0, -0x1

    if-ne v0, p2, :cond_40

    .line 160
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mCallback:Lcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_3f

    .line 161
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIDatePicker;->clearFocus()V

    .line 162
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mCallback:Lcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v2

    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v3}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v4}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/lge/sui/widget/control/SUIDatePicker;III)V

    .line 164
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialDay:I

    .line 165
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialMonth:I

    .line 166
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialYear:I

    .line 173
    :cond_3f
    :goto_3f
    return-void

    .line 169
    :cond_40
    invoke-virtual {p0}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->dismiss()V

    .line 170
    invoke-virtual {p0}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->reset()V

    goto :goto_3f
.end method

.method public onDateChanged(Lcom/lge/sui/widget/control/SUIDatePicker;III)V
    .registers 6
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 247
    const/16 v0, 0x7da

    if-ne p2, v0, :cond_4

    .line 252
    :cond_4
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 234
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, year:I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, monthOfYear:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, dayOfMonth:I
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v3, v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentYear(I)V

    .line 238
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v3, v1}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentMonth(I)V

    .line 239
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v3, v0}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentDay(I)V

    .line 240
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v3}, Lcom/lge/sui/widget/control/SUIDatePicker;->refresh()V

    .line 241
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v3, p0}, Lcom/lge/sui/widget/control/SUIDatePicker;->setOnDateChangedListener(Lcom/lge/sui/widget/control/SUIDatePicker$OnDateChangedListener;)V

    .line 243
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, state:Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v1, "month"

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v1, "day"

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUIDatePicker;->getCurrentDay()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    return-object v0
.end method

.method public reset()V
    .registers 4

    .prologue
    .line 181
    iget v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialYear:I

    iget v1, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialMonth:I

    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mInitialDay:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->updateDate(III)V

    .line 183
    return-void
.end method

.method public updateDate(III)V
    .registers 5
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentYear(I)V

    .line 197
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v0, p2}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentMonth(I)V

    .line 198
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIDatePickerDialog;->mDatePicker:Lcom/lge/sui/widget/control/SUIDatePicker;

    invoke-virtual {v0, p3}, Lcom/lge/sui/widget/control/SUIDatePicker;->setCurrentDay(I)V

    .line 202
    return-void
.end method
