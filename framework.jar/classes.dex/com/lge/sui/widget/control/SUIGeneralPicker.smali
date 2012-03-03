.class public Lcom/lge/sui/widget/control/SUIGeneralPicker;
.super Landroid/widget/FrameLayout;
.source "SUIGeneralPicker.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;,
        Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;,
        Lcom/lge/sui/widget/control/SUIGeneralPicker$OnDataChangedListener;
    }
.end annotation


# instance fields
.field private mCurrentData:[Ljava/lang/String;

.field private mDataList:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPicker:[Lcom/lge/sui/widget/control/SUIDigitPicker;

.field private mOnDataChangedListener:Lcom/lge/sui/widget/control/SUIGeneralPicker$OnDataChangedListener;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sui/widget/control/SUIGeneralPicker;)[Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataList:[Ljava/util/List;

    return-object v0
.end method

.method private getPosition(I)I
    .registers 6
    .parameter "index"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataList:[Ljava/util/List;

    aget-object v2, v2, p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 192
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_22

    .line 193
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mCurrentData:[Ljava/lang/String;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataList:[Ljava/util/List;

    aget-object v3, v3, p1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v0

    .line 197
    :goto_1e
    return v2

    .line 192
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 197
    :cond_22
    const/4 v2, -0x1

    goto :goto_1e
.end method

.method private notifyDataChanged()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mOnDataChangedListener:Lcom/lge/sui/widget/control/SUIGeneralPicker$OnDataChangedListener;

    if-eqz v0, :cond_d

    .line 202
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mOnDataChangedListener:Lcom/lge/sui/widget/control/SUIGeneralPicker$OnDataChangedListener;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->getCurrentData()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/lge/sui/widget/control/SUIGeneralPicker$OnDataChangedListener;->onDataChanged(Lcom/lge/sui/widget/control/SUIGeneralPicker;[Ljava/lang/String;)V

    .line 204
    :cond_d
    return-void
.end method

.method private setCurrentData([Ljava/lang/String;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mCurrentData:[Ljava/lang/String;

    .line 215
    return-void
.end method

.method private updateSpinner(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataPicker:[Lcom/lge/sui/widget/control/SUIDigitPicker;

    aget-object v0, v0, p1

    invoke-direct {p0, p1}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->getPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setSelection(I)V

    .line 185
    return-void
.end method

.method private updateSpinners()V
    .registers 3

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataPicker:[Lcom/lge/sui/widget/control/SUIDigitPicker;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 179
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->updateSpinner(I)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_c
    return-void
.end method


# virtual methods
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
    .line 140
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 141
    return-void
.end method

.method public getCurrentData()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mCurrentData:[Ljava/lang/String;

    return-object v0
.end method

.method public initialize([Ljava/util/List;[Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter "initialData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, dataList:[Ljava/util/List;,"[Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 98
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataList:[Ljava/util/List;

    .line 99
    iput-object p2, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mCurrentData:[Ljava/lang/String;

    .line 100
    array-length v6, p1

    new-array v6, v6, [Lcom/lge/sui/widget/control/SUIDigitPicker;

    iput-object v6, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataPicker:[Lcom/lge/sui/widget/control/SUIDigitPicker;

    .line 102
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 104
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x3030026

    invoke-virtual {v4, v6, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 106
    const v6, 0x30a0034

    invoke-virtual {p0, v6}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 107
    .local v5, panel:Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 110
    const/4 v2, 0x0

    .local v2, i:I
    :goto_29
    array-length v6, p1

    if-ge v2, v6, :cond_72

    .line 111
    const v6, 0x3030025

    invoke-virtual {v4, v6, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 112
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 114
    .local v0, container:Landroid/widget/FrameLayout;
    iget-object v7, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataPicker:[Lcom/lge/sui/widget/control/SUIDigitPicker;

    const v6, 0x30a002c

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/sui/widget/control/SUIDigitPicker;

    aput-object v6, v7, v2

    .line 116
    move v3, v2

    .line 117
    .local v3, index:I
    iget-object v6, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataPicker:[Lcom/lge/sui/widget/control/SUIDigitPicker;

    aget-object v6, v6, v3

    if-eqz v6, :cond_6f

    .line 118
    new-instance v1, Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x3030008

    iget-object v8, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataList:[Ljava/util/List;

    aget-object v8, v8, v3

    invoke-direct {v1, p0, v6, v7, v8}, Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;-><init>(Lcom/lge/sui/widget/control/SUIGeneralPicker;Landroid/content/Context;ILjava/util/List;)V

    .line 120
    .local v1, dataAdapter:Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;
    iget-object v6, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataPicker:[Lcom/lge/sui/widget/control/SUIDigitPicker;

    aget-object v6, v6, v3

    invoke-virtual {v6, v1}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 121
    iget-object v6, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mDataPicker:[Lcom/lge/sui/widget/control/SUIDigitPicker;

    aget-object v6, v6, v3

    new-instance v7, Lcom/lge/sui/widget/control/SUIGeneralPicker$1;

    invoke-direct {v7, p0, v3}, Lcom/lge/sui/widget/control/SUIGeneralPicker$1;-><init>(Lcom/lge/sui/widget/control/SUIGeneralPicker;I)V

    invoke-virtual {v6, v7}, Lcom/lge/sui/widget/control/SUIDigitPicker;->setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V

    .line 110
    .end local v1       #dataAdapter:Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;,
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 133
    .end local v0       #container:Landroid/widget/FrameLayout;,
    .end local v3       #index:I,
    :cond_72
    iget-object v6, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mCurrentData:[Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->updateData([Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 149
    move-object v0, p1

    check-cast v0, Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;

    move-object v1, v0

    .line 150
    .local v1, ss:Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 151
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;->getSavedData()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->setCurrentData([Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 144
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 145
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mCurrentData:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/lge/sui/widget/control/SUIGeneralPicker$SavedState;-><init>(Landroid/os/Parcelable;[Ljava/lang/String;Lcom/lge/sui/widget/control/SUIGeneralPicker$1;)V

    return-object v1
.end method

.method public refresh()V
    .registers 1

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->updateSpinners()V

    .line 166
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->notifyDataChanged()V

    .line 167
    return-void
.end method

.method public refresh(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->updateSpinner(I)V

    .line 171
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->notifyDataChanged()V

    .line 172
    return-void
.end method

.method public setOnDataChangedListener(Lcom/lge/sui/widget/control/SUIGeneralPicker$OnDataChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 207
    if-eqz p1, :cond_7

    .line 208
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mOnDataChangedListener:Lcom/lge/sui/widget/control/SUIGeneralPicker$OnDataChangedListener;

    .line 209
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->notifyDataChanged()V

    .line 211
    :cond_7
    return-void
.end method

.method public updateData(ILjava/lang/String;)V
    .registers 4
    .parameter "index"
    .parameter "data"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker;->mCurrentData:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->refresh(I)V

    .line 162
    return-void
.end method

.method public updateData([Ljava/lang/String;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->setCurrentData([Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->refresh()V

    .line 157
    return-void
.end method
