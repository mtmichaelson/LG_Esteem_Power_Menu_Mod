.class Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SUIGeneralPicker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/control/SUIGeneralPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# instance fields
.field private mSavedData:[Ljava/lang/String;



# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 264
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;->mSavedData:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;[Ljava/lang/String;)V
    .registers 3
    .parameter "superState"
    .parameter "data"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 256
    iput-object p2, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;->mSavedData:[Ljava/lang/String;

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;[Ljava/lang/String;Lcom/lge/sui/widget/control/SUIGeneralPicker$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 247
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;-><init>(Landroid/os/Parcelable;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSavedData()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;->mSavedData:[Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 272
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 273
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;->mSavedData:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 274
    return-void
.end method
