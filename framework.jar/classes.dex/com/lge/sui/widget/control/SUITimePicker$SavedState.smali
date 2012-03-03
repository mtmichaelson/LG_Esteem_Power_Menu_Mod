.class Lcom/lge/sui/widget/control/SUITimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SUITimePicker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/control/SUITimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# instance fields
.field private final mAmPm:I

.field private final mHour:I

.field private final mMinute:I



# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mHour:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mMinute:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mAmPm:I

    .line 151
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .registers 5
    .parameter "superState"
    .parameter "hour"
    .parameter "minute"
    .parameter "ampm"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 138
    iput p2, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mHour:I

    .line 139
    iput p3, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mMinute:I

    .line 140
    iput p4, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mAmPm:I

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/lge/sui/widget/control/SUITimePicker$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method


# virtual methods
.method public getAmPm()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mAmPm:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 168
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Lcom/lge/sui/widget/control/SUITimePicker$SavedState;->mAmPm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return-void
.end method
