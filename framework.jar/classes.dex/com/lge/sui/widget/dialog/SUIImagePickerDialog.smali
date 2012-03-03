.class public Lcom/lge/sui/widget/dialog/SUIImagePickerDialog;
.super Landroid/app/AlertDialog;
.source "SUIImagePickerDialog.java"



# instance fields
.field protected mImagePicker:Lcom/lge/sui/widget/control/SUIImagePicker;



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;)V
    .registers 9
    .parameter "context"
    .parameter "imageClickListener"
    .parameter "imageAdapter"

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 38
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x303002a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/sui/widget/control/SUIImagePicker;

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialog;->mImagePicker:Lcom/lge/sui/widget/control/SUIImagePicker;

    .line 39
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialog;->mImagePicker:Lcom/lge/sui/widget/control/SUIImagePicker;

    invoke-virtual {v2, p2}, Lcom/lge/sui/widget/control/SUIImagePicker;->setOnImageClickListener(Lcom/lge/sui/widget/control/SUIImagePicker$OnImageClickListener;)V

    .line 40
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialog;->mImagePicker:Lcom/lge/sui/widget/control/SUIImagePicker;

    invoke-virtual {v2, p3}, Lcom/lge/sui/widget/control/SUIImagePicker;->setImageAdapter(Lcom/lge/sui/widget/control/SUIImagePicker$ImageAdapter;)V

    .line 42
    const v2, 0x3080004

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v3

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    move-object v2, v0

    invoke-virtual {p0, v4, v2}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 45
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialog;->mImagePicker:Lcom/lge/sui/widget/control/SUIImagePicker;

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialog;->setView(Landroid/view/View;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getImagePicker()Lcom/lge/sui/widget/control/SUIImagePicker;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialog;->mImagePicker:Lcom/lge/sui/widget/control/SUIImagePicker;

    return-object v0
.end method
