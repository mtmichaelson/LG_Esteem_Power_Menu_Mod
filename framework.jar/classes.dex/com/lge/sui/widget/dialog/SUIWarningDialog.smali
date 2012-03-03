.class public Lcom/lge/sui/widget/dialog/SUIWarningDialog;
.super Landroid/app/AlertDialog;
.source "SUIWarningDialog.java"



# static fields
.field public static final NO_IMAGE:I = -0x1

.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I



# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageResId:I

.field private mImageView:Landroid/widget/ImageView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgressStyle:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 62
    const v0, 0x3090018

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;-><init>(Landroid/content/Context;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mProgressStyle:I

    .line 67
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/lge/sui/widget/dialog/SUIWarningDialog;
    .registers 4
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 72
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/lge/sui/widget/dialog/SUIWarningDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/lge/sui/widget/dialog/SUIWarningDialog;
    .registers 5
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "imageResId"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/lge/sui/widget/dialog/SUIWarningDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/lge/sui/widget/dialog/SUIWarningDialog;
    .registers 11
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "imageResId"
    .parameter "cancelable"

    .prologue
    .line 82
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/lge/sui/widget/dialog/SUIWarningDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/lge/sui/widget/dialog/SUIWarningDialog;
    .registers 7
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "imageResId"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 89
    new-instance v0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, dialog:Lcom/lge/sui/widget/dialog/SUIWarningDialog;
    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v0, p2}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v0, p3}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->setImageResource(I)V

    .line 93
    invoke-virtual {v0, p4}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->setCancelable(Z)V

    .line 94
    invoke-virtual {v0, p5}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 95
    invoke-virtual {v0}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->show()V

    .line 96
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 101
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 103
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x303001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, view:Landroid/view/View;
    const v2, 0x30a0018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mMessageView:Landroid/widget/TextView;

    .line 106
    const v2, 0x30a0056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mImageView:Landroid/widget/ImageView;

    .line 108
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->setView(Landroid/view/View;)V

    .line 110
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_30

    .line 111
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 113
    :cond_30
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mImageResId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3a

    .line 114
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mImageResId:I

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->setImageResource(I)V

    .line 117
    :cond_3a
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 136
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 141
    return-void
.end method

.method public setImageResource(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 128
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :goto_9
    return-void

    .line 130
    :cond_a
    iput p1, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mImageResId:I

    goto :goto_9
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    .line 147
    iget v0, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 148
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 154
    :goto_c
    return-void

    .line 150
    :cond_d
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 153
    :cond_13
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_c
.end method

.method public setProgressStyle(I)V
    .registers 2
    .parameter "style"

    .prologue
    .line 163
    iput p1, p0, Lcom/lge/sui/widget/dialog/SUIWarningDialog;->mProgressStyle:I

    .line 164
    return-void
.end method
