.class public Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SUIGeneralPicker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/control/SUIGeneralPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DigitPickerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceId:I

.field final synthetic this$0:Lcom/lge/sui/widget/control/SUIGeneralPicker;



# direct methods
.method public constructor <init>(Lcom/lge/sui/widget/control/SUIGeneralPicker;Landroid/content/Context;ILjava/util/List;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;->this$0:Lcom/lge/sui/widget/control/SUIGeneralPicker;

    .line 227
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 228
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 229
    iput p3, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;->mResourceId:I

    .line 230
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 235
    if-nez p2, :cond_b

    .line 236
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;->mResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 239
    :cond_b
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIGeneralPicker$DigitPickerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 240
    .local v0, item:Ljava/lang/String;
    const v2, 0x30a002d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 242
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-object p2
.end method
