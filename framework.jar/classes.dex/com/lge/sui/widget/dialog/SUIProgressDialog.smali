.class public Lcom/lge/sui/widget/dialog/SUIProgressDialog;
.super Landroid/app/AlertDialog;
.source "SUIProgressDialog.java"



# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I



# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 81
    const v0, 0x3090018

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressStyle:I

    .line 86
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)Ljava/text/NumberFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private onProgressChanged()V
    .registers 3

    .prologue
    .line 340
    iget v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 341
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    :cond_b
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/lge/sui/widget/dialog/SUIProgressDialog;
    .registers 4
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/lge/sui/widget/dialog/SUIProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/lge/sui/widget/dialog/SUIProgressDialog;
    .registers 10
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"

    .prologue
    .line 96
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/lge/sui/widget/dialog/SUIProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/lge/sui/widget/dialog/SUIProgressDialog;
    .registers 11
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"

    .prologue
    .line 101
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/lge/sui/widget/dialog/SUIProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/lge/sui/widget/dialog/SUIProgressDialog;
    .registers 7
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "indeterminate"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 108
    new-instance v0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, dialog:Lcom/lge/sui/widget/dialog/SUIProgressDialog;
    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0, p2}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, p3}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setIndeterminate(Z)V

    .line 112
    invoke-virtual {v0, p4}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setCancelable(Z)V

    .line 113
    invoke-virtual {v0, p5}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 114
    invoke-virtual {v0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->show()V

    .line 115
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 246
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 248
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mMax:I

    goto :goto_a
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 232
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 234
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressVal:I

    goto :goto_a
.end method

.method public getSecondaryProgress()I
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 239
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 241
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mSecondaryProgressVal:I

    goto :goto_a
.end method

.method public incrementProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 262
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 263
    invoke-direct {p0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->onProgressChanged()V

    .line 267
    :goto_c
    return-void

    .line 265
    :cond_d
    iget v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIncrementBy:I

    goto :goto_c
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 271
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementSecondaryProgressBy(I)V

    .line 272
    invoke-direct {p0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->onProgressChanged()V

    .line 276
    :goto_c
    return-void

    .line 274
    :cond_d
    iget v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_c
.end method

.method public isIndeterminate()Z
    .registers 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    .line 304
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    .line 306
    :goto_a
    return v0

    :cond_b
    iget-boolean v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIndeterminate:Z

    goto :goto_a
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const v4, 0x30a001a

    .line 120
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 121
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_93

    .line 127
    new-instance v2, Lcom/lge/sui/widget/dialog/SUIProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog$1;-><init>(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)V

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 154
    const v2, 0x3030001

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, view:Landroid/view/View;
    const v2, 0x30a0019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 161
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 162
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 163
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 164
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setView(Landroid/view/View;)V

    .line 171
    :goto_3f
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mMax:I

    if-lez v2, :cond_48

    .line 172
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mMax:I

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setMax(I)V

    .line 174
    :cond_48
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressVal:I

    if-lez v2, :cond_51

    .line 175
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setProgress(I)V

    .line 177
    :cond_51
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_5a

    .line 178
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setSecondaryProgress(I)V

    .line 180
    :cond_5a
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_63

    .line 181
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->incrementProgressBy(I)V

    .line 183
    :cond_63
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_6c

    .line 184
    iget v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 186
    :cond_6c
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_75

    .line 187
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 189
    :cond_75
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7e

    .line 190
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    :cond_7e
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_87

    .line 193
    iget-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 195
    :cond_87
    iget-boolean v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setIndeterminate(Z)V

    .line 196
    invoke-direct {p0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->onProgressChanged()V

    .line 197
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 198
    return-void

    .line 166
    .end local v1       #view:Landroid/view/View;,
    :cond_93
    const v2, 0x303002b

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 167
    .restart local v1       #view:Landroid/view/View;,
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    .line 168
    const v2, 0x30a0018

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 169
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_3f
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mHasStarted:Z

    .line 204
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mHasStarted:Z

    .line 210
    return-void
.end method

.method public setIndeterminate(Z)V
    .registers 3
    .parameter "indeterminate"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 296
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 300
    :goto_9
    return-void

    .line 298
    :cond_a
    iput-boolean p1, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIndeterminate:Z

    goto :goto_9
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 288
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :goto_9
    return-void

    .line 290
    :cond_a
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setMax(I)V
    .registers 3
    .parameter "max"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 253
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 254
    invoke-direct {p0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->onProgressChanged()V

    .line 258
    :goto_c
    return-void

    .line 256
    :cond_d
    iput p1, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mMax:I

    goto :goto_c
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_13

    .line 312
    iget v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 313
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 320
    :goto_c
    return-void

    .line 315
    :cond_d
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 318
    :cond_13
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_c
.end method

.method public setProgress(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_d

    .line 214
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 215
    invoke-direct {p0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->onProgressChanged()V

    .line 219
    :goto_c
    return-void

    .line 217
    :cond_d
    iput p1, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressVal:I

    goto :goto_c
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "d"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 280
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :goto_9
    return-void

    .line 282
    :cond_a
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_9
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .registers 2
    .parameter "format"

    .prologue
    .line 337
    return-void
.end method

.method public setProgressStyle(I)V
    .registers 2
    .parameter "style"

    .prologue
    .line 323
    iput p1, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgressStyle:I

    .line 324
    return-void
.end method

.method public setSecondaryProgress(I)V
    .registers 3
    .parameter "secondaryProgress"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_d

    .line 223
    iget-object v0, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 224
    invoke-direct {p0}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->onProgressChanged()V

    .line 228
    :goto_c
    return-void

    .line 226
    :cond_d
    iput p1, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->mSecondaryProgressVal:I

    goto :goto_c
.end method
