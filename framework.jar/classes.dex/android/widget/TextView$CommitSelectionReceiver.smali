.class Landroid/widget/TextView$CommitSelectionReceiver;
.super Landroid/os/ResultReceiver;
.source "TextView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommitSelectionReceiver"
.end annotation


# instance fields
.field private final mPrevEnd:I

.field private final mPrevStart:I

.field final synthetic this$0:Landroid/widget/TextView;



# direct methods
.method public constructor <init>(Landroid/widget/TextView;II)V
    .registers 5
    .parameter
    .parameter "prevStart"
    .parameter "prevEnd"

    .prologue
    .line 6939
    iput-object p1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    .line 6940
    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6941
    iput p2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mPrevStart:I

    .line 6942
    iput p3, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mPrevEnd:I

    .line 6943
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 6949
    const/4 v3, 0x2

    if-ne p1, v3, :cond_24

    .line 6950
    iget-object v3, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6951
    .local v1, len:I
    iget v3, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mPrevStart:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 6952
    .local v2, start:I
    iget v3, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mPrevEnd:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6953
    .local v0, end:I
    iget-object v3, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    invoke-static {v3}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6962
    .end local v0       #end:I,
    .end local v1       #len:I,
    .end local v2       #start:I,
    :cond_24
    return-void
.end method
