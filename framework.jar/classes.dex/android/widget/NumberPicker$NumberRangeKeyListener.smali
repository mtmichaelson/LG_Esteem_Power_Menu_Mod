.class Landroid/widget/NumberPicker$NumberRangeKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "NumberPicker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberRangeKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;



# direct methods
.method private constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Landroid/widget/NumberPicker$NumberRangeKeyListener;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/NumberPicker;Landroid/widget/NumberPicker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker$NumberRangeKeyListener;-><init>(Landroid/widget/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 13
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const-string v5, ""

    .line 447
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 448
    .local v0, filtered:Ljava/lang/CharSequence;
    if-nez v0, :cond_c

    .line 449
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 452
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p4, v4, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {p4, p6, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, result:Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    move-object v3, v1

    .line 469
    :goto_3b
    return-object v3

    .line 459
    :cond_3c
    iget-object v3, p0, Landroid/widget/NumberPicker$NumberRangeKeyListener;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3, v1}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;Ljava/lang/String;)I

    move-result v2

    .line 466
    .local v2, val:I
    iget-object v3, p0, Landroid/widget/NumberPicker$NumberRangeKeyListener;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1400(Landroid/widget/NumberPicker;)I

    move-result v3

    if-le v2, v3, :cond_4e

    .line 467
    const-string v3, ""

    move-object v3, v5

    goto :goto_3b

    :cond_4e
    move-object v3, v0

    .line 469
    goto :goto_3b
.end method

.method protected getAcceptedChars()[C
    .registers 2

    .prologue
    .line 440
    invoke-static {}, Landroid/widget/NumberPicker;->access$1200()[C

    move-result-object v0

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    .prologue
    .line 435
    const/4 v0, 0x2

    return v0
.end method
