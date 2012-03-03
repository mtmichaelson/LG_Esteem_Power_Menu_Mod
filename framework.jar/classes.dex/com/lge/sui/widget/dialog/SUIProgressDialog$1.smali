.class Lcom/lge/sui/widget/dialog/SUIProgressDialog$1;
.super Landroid/os/Handler;
.source "SUIProgressDialog.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sui/widget/dialog/SUIProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/dialog/SUIProgressDialog;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog$1;->this$0:Lcom/lge/sui/widget/dialog/SUIProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 133
    iget-object v6, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog$1;->this$0:Lcom/lge/sui/widget/dialog/SUIProgressDialog;

    invoke-static {v6}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->access$000(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    .line 134
    .local v3, progress:I
    iget-object v6, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog$1;->this$0:Lcom/lge/sui/widget/dialog/SUIProgressDialog;

    invoke-static {v6}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->access$000(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 135
    .local v0, max:I
    int-to-double v6, v3

    int-to-double v8, v0

    div-double v1, v6, v8

    .line 137
    .local v1, percent:D
    iget-object v6, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog$1;->this$0:Lcom/lge/sui/widget/dialog/SUIProgressDialog;

    invoke-static {v6}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->access$100(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2080212

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, progressing:Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableString;

    iget-object v6, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog$1;->this$0:Lcom/lge/sui/widget/dialog/SUIProgressDialog;

    invoke-static {v6}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->access$200(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .local v5, tmp:Landroid/text/SpannableString;
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x21

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 149
    iget-object v6, p0, Lcom/lge/sui/widget/dialog/SUIProgressDialog$1;->this$0:Lcom/lge/sui/widget/dialog/SUIProgressDialog;

    invoke-static {v6}, Lcom/lge/sui/widget/dialog/SUIProgressDialog;->access$300(Lcom/lge/sui/widget/dialog/SUIProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    return-void
.end method
