.class Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SUIDatePicker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/control/SUIDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I



# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mYear:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mMonth:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mDay:I

    .line 174
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .registers 5
    .parameter "superState"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 161
    iput p2, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mYear:I

    .line 162
    iput p3, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mMonth:I

    .line 163
    iput p4, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mDay:I

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/lge/sui/widget/control/SUIDatePicker$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 149
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method


# virtual methods
.method public getDay()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mDay:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mMonth:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mYear:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 190
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/lge/sui/widget/control/SUIDatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    return-void
.end method
