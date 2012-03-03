.class public Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;
.super Landroid/app/AlertDialog$Builder;
.source "SUIImagePickerDialogBuilder.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;,
        Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$OnImageClickListener;
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$OnImageClickListener;

.field private mContext:Landroid/content/Context;

.field private mImageAdapter:Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;

.field private mNoImageMessage:Ljava/lang/String;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;)Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$OnImageClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->mClickListener:Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$OnImageClickListener;

    return-object v0
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .registers 5

    .prologue
    .line 53
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 56
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->mImageAdapter:Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;

    invoke-virtual {v2}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_25

    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->mNoImageMessage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 57
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->mNoImageMessage:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 78
    :goto_24
    return-object v2

    .line 62
    :cond_25
    const v2, 0x3030029

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 68
    .local v0, gridview:Landroid/widget/GridView;
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->mImageAdapter:Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    new-instance v2, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$1;

    invoke-direct {v2, p0}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$1;-><init>(Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 78
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_24
.end method

.method public setImageAdapter(Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;)Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;
    .registers 2
    .parameter "imageAdapter"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->mImageAdapter:Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$ImageAdapter;

    .line 98
    return-object p0
.end method

.method public setNoImageMessage(Ljava/lang/String;)Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;
    .registers 2
    .parameter "message"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->mNoImageMessage:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public setOnImageClickListener(Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$OnImageClickListener;)Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;
    .registers 2
    .parameter "listener"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder;->mClickListener:Lcom/lge/sui/widget/dialog/SUIImagePickerDialogBuilder$OnImageClickListener;

    .line 88
    return-object p0
.end method
