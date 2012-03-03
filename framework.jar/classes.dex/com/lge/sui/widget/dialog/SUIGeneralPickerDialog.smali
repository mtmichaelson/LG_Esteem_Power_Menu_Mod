.class public Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;
.super Landroid/app/AlertDialog;
.source "SUIGeneralPickerDialog.java"


# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/lge/sui/widget/control/SUIGeneralPicker$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;
    }
.end annotation


# static fields
.field private static final DATA:Ljava/lang/String; = "data"



# instance fields
.field private mCallback:Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;

.field private mGeneralPicker:Lcom/lge/sui/widget/control/SUIGeneralPicker;



# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;[Ljava/util/List;[Ljava/lang/String;)V
    .registers 14
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter
    .parameter "initialData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;",
            "[",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, dataListSet:[Ljava/util/List;,"[Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 86
    if-nez p4, :cond_7

    .line 119
    :goto_6
    return-void

    .line 90
    :cond_7
    iput-object p3, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mCallback:Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;

    .line 92
    move-object v3, p5

    .line 93
    .local v3, selectedData:[Ljava/lang/String;
    if-nez v3, :cond_32

    .line 94
    array-length v5, p4

    new-array v3, v5, [Ljava/lang/String;

    .line 95
    const/4 v1, 0x0

    .local v1, i:I
    :goto_10
    array-length v5, p4

    if-ge v1, v5, :cond_32

    .line 96
    aget-object v5, p4, v1

    if-eqz v5, :cond_2d

    aget-object v5, p4, v1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 97
    aget-object v5, p4, v1

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 95
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 99
    :cond_2d
    const-string v5, ""

    aput-object v5, v3, v1

    goto :goto_2a

    .line 104
    .end local v1       #i:I,
    :cond_32
    invoke-direct {p0, v3}, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->updateTitle([Ljava/lang/String;)V

    .line 106
    const v5, 0x3080005

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5, p0}, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    const v5, 0x3080004

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v0, v6

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    move-object v5, v0

    invoke-virtual {p0, v7, v5}, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 110
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 112
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x3030027

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 114
    .local v4, view:Landroid/view/View;
    const v5, 0x30a0035

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/sui/widget/control/SUIGeneralPicker;

    iput-object v5, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mGeneralPicker:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    .line 115
    iget-object v5, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mGeneralPicker:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    invoke-virtual {v5, p4, v3}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->initialize([Ljava/util/List;[Ljava/lang/String;)V

    .line 116
    iget-object v5, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mGeneralPicker:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    invoke-virtual {v5, p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->setOnDataChangedListener(Lcom/lge/sui/widget/control/SUIGeneralPicker$OnDataChangedListener;)V

    .line 118
    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->setView(Landroid/view/View;)V

    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;[Ljava/util/List;[Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "callBack"
    .parameter
    .parameter "initialData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;",
            "[",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, dataListSet:[Ljava/util/List;,"[Ljava/util/List<Ljava/lang/String;>;"
    const v2, 0x3090018

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;-><init>(Landroid/content/Context;ILcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;[Ljava/util/List;[Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method private updateTitle([Ljava/lang/String;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 132
    const-string v1, ""

    .line 133
    .local v1, title:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_22

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 136
    :cond_22
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mCallback:Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;

    if-eqz v0, :cond_16

    .line 123
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mGeneralPicker:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->clearFocus()V

    .line 124
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mCallback:Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;

    iget-object v1, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mGeneralPicker:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mGeneralPicker:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->getCurrentData()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog$OnDataSetListener;->onDataSet(Lcom/lge/sui/widget/control/SUIGeneralPicker;[Ljava/lang/String;)V

    .line 126
    :cond_16
    return-void
.end method

.method public onDataChanged(Lcom/lge/sui/widget/control/SUIGeneralPicker;[Ljava/lang/String;)V
    .registers 3
    .parameter "view"
    .parameter "currentData"

    .prologue
    .line 159
    invoke-direct {p0, p2}, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->updateTitle([Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 148
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 149
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, data:[Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mGeneralPicker:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    invoke-virtual {v1, v0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->updateData([Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mGeneralPicker:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    invoke-virtual {v1, p0}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->setOnDataChangedListener(Lcom/lge/sui/widget/control/SUIGeneralPicker$OnDataChangedListener;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->updateTitle([Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 142
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "data"

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIGeneralPickerDialog;->mGeneralPicker:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    invoke-virtual {v2}, Lcom/lge/sui/widget/control/SUIGeneralPicker;->getCurrentData()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 143
    return-object v0
.end method
