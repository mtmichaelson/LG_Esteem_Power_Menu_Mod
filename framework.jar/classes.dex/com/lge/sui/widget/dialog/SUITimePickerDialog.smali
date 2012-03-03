.class public Lcom/lge/sui/widget/dialog/SUITimePickerDialog;
.super Landroid/app/AlertDialog;
.source "SUITimePickerDialog.java"


# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final SECOND:Ljava/lang/String; = "second"



# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallback:Lcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;

.field private final mDateFormat:Ljava/text/DateFormat;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mInitialSecond:I

.field mIs24HourView:Z

.field private final mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;



# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;IIZ)V
    .registers 11
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 106
    iput-object p3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mCallback:Lcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;

    .line 107
    iput p4, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialHourOfDay:I

    .line 108
    iput p5, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialMinute:I

    .line 109
    iput-boolean p6, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mIs24HourView:Z

    .line 111
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 115
    const v2, 0x3080021

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setTitle(I)V

    .line 118
    const v2, 0x3080005

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 119
    const v2, 0x3080004

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, p0}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 120
    const v2, 0x3020048

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setIcon(I)V

    .line 122
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 125
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x303001c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setView(Landroid/view/View;)V

    .line 128
    const v2, 0x30a0053

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/sui/widget/control/SUITimePicker;

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    .line 131
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialHourOfDay:I

    invoke-virtual {v2, v3}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentHour(I)V

    .line 132
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialMinute:I

    invoke-virtual {v2, v3}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentMinute(I)V

    .line 133
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget-boolean v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mIs24HourView:Z

    invoke-virtual {v2, v3}, Lcom/lge/sui/widget/control/SUITimePicker;->setIs24HourView(Z)V

    .line 134
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v2, p0}, Lcom/lge/sui/widget/control/SUITimePicker;->setOnTimeChangedListener(Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;III)V
    .registers 13
    .parameter "context"
    .parameter "callBack"
    .parameter "mHour"
    .parameter "mMinute"
    .parameter "mSecond"

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 150
    iput-object p2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mCallback:Lcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;

    .line 151
    iput p3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialHourOfDay:I

    .line 152
    iput p4, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialMinute:I

    .line 153
    iput p5, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialSecond:I

    .line 155
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm:ss"

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 158
    const v3, 0x3080021

    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setTitle(I)V

    .line 160
    const v3, 0x3080005

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 161
    const v3, 0x3080004

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v4

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    move-object v3, v0

    invoke-virtual {p0, v5, v3}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 162
    const v3, 0x3020048

    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setIcon(I)V

    .line 165
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 168
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x303001c

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 169
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setView(Landroid/view/View;)V

    .line 171
    const v3, 0x30a0053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/sui/widget/control/SUITimePicker;

    iput-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    .line 174
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget v4, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialHourOfDay:I

    invoke-virtual {v3, v4}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentHour(I)V

    .line 175
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget v4, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialMinute:I

    invoke-virtual {v3, v4}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentMinute(I)V

    .line 176
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget v4, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialSecond:I

    invoke-virtual {v3, v4}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentSecond(I)V

    .line 180
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v3, p0}, Lcom/lge/sui/widget/control/SUITimePicker;->setOnTimeChangedListener(Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;IIZ)V
    .registers 13
    .parameter "context"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "is24HourView"

    .prologue
    .line 83
    const v2, 0x3090018

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;-><init>(Landroid/content/Context;ILcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;IIZ)V

    .line 85
    return-void
.end method

.method private reset()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 211
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget v1, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialHourOfDay:I

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentHour(I)V

    .line 212
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget v1, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialMinute:I

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentMinute(I)V

    .line 215
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUITimePicker;->getTimeFormat()I

    move-result v0

    if-nez v0, :cond_20

    .line 216
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUITimePicker;->setIs24HourView(Z)V

    .line 222
    :goto_1f
    return-void

    .line 217
    :cond_20
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUITimePicker;->getTimeFormat()I

    move-result v0

    if-ne v2, v0, :cond_30

    .line 218
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v0, v2}, Lcom/lge/sui/widget/control/SUITimePicker;->setIs24HourView(Z)V

    goto :goto_1f

    .line 220
    :cond_30
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget v1, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialSecond:I

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentSecond(I)V

    goto :goto_1f
.end method

.method private updateTitle(II)V
    .registers 3
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 247
    return-void
.end method

.method private updateTitle(III)V
    .registers 6
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 250
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 251
    if-ltz p3, :cond_17

    .line 252
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 254
    :cond_17
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 185
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3d

    .line 186
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mCallback:Lcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_3c

    .line 187
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUITimePicker;->clearFocus()V

    .line 188
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUITimePicker;->isAm()Z

    .line 189
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mCallback:Lcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v3}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/lge/sui/widget/control/SUITimePicker;II)V

    .line 191
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialHourOfDay:I

    .line 192
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialMinute:I

    .line 193
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentSecond()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mInitialSecond:I

    .line 199
    :cond_3c
    :goto_3c
    return-void

    .line 196
    :cond_3d
    invoke-virtual {p0}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->dismiss()V

    .line 197
    invoke-direct {p0}, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->reset()V

    goto :goto_3c
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 271
    const-string v3, "hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, hour:I
    const-string v3, "minute"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 273
    .local v1, minute:I
    const-string/jumbo v3, "second"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 274
    .local v2, second:I
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v3, v0}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentHour(I)V

    .line 275
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v3, v1}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentMinute(I)V

    .line 276
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    const-string v4, "is24hour"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/sui/widget/control/SUITimePicker;->setIs24HourView(Z)V

    .line 277
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v3, v2}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentSecond(I)V

    .line 279
    iget-object v3, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v3, p0}, Lcom/lge/sui/widget/control/SUITimePicker;->setOnTimeChangedListener(Lcom/lge/sui/widget/control/SUITimePicker$OnTimeChangedListener;)V

    .line 281
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 260
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v1, "minute"

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUITimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    const-string/jumbo v1, "second"

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUITimePicker;->getCurrentSecond()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    return-object v0
.end method

.method public onTimeChanged(Lcom/lge/sui/widget/control/SUITimePicker;II)V
    .registers 4
    .parameter "view"
    .parameter "hour"
    .parameter "minute"

    .prologue
    .line 286
    return-void
.end method

.method public updateTime(II)V
    .registers 4
    .parameter "hourOfDay"
    .parameter "minutOfHour"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentHour(I)V

    .line 234
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUITimePickerDialog;->mTimePicker:Lcom/lge/sui/widget/control/SUITimePicker;

    invoke-virtual {v0, p2}, Lcom/lge/sui/widget/control/SUITimePicker;->setCurrentMinute(I)V

    .line 235
    return-void
.end method
