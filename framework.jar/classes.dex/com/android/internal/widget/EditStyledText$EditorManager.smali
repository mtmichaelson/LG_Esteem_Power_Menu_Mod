.class Lcom/android/internal/widget/EditStyledText$EditorManager;
.super Ljava/lang/Object;
.source "EditStyledText.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditorManager"
.end annotation


# instance fields
.field private mCurEnd:I

.field private mCurStart:I

.field private mEST:Lcom/android/internal/widget/EditStyledText;

.field private mEditFlag:Z

.field private mMode:I

.field private mSoftKeyBlockFlag:Z

.field private mState:I

.field final synthetic this$0:Lcom/android/internal/widget/EditStyledText;



# direct methods
.method constructor <init>(Lcom/android/internal/widget/EditStyledText;Lcom/android/internal/widget/EditStyledText;)V
    .registers 4
    .parameter
    .parameter "est"

    .prologue
    const/4 v0, 0x0

    .line 582
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->this$0:Lcom/android/internal/widget/EditStyledText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    .line 575
    iput-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 576
    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    .line 577
    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    .line 578
    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    .line 579
    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    .line 583
    iput-object p2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    .line 584
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->blockSoftKey()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/EditStyledText$EditorManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->unblockSoftKey()V

    return-void
.end method

.method private blockSoftKey()V
    .registers 4

    .prologue
    .line 1178
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1180
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1181
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    new-instance v2, Lcom/android/internal/widget/EditStyledText$EditorManager$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/EditStyledText$EditorManager$1;-><init>(Lcom/android/internal/widget/EditStyledText$EditorManager;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1188
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 1189
    return-void
.end method

.method private changeAlign(Landroid/text/Layout$Alignment;)V
    .registers 6
    .parameter "align"

    .prologue
    .line 1124
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-direct {v0, p1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->findLineStart(Landroid/text/Editable;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/EditStyledText$EditorManager;->findLineEnd(Landroid/text/Editable;I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    .line 1127
    return-void
.end method

.method private changeColorSelectedText(I)V
    .registers 5
    .parameter "color"

    .prologue
    .line 1116
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    .line 1118
    return-void
.end method

.method private changeSizeSelectedText(I)V
    .registers 5
    .parameter "size"

    .prologue
    .line 1108
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setStyledTextSpan(Ljava/lang/Object;II)V

    .line 1110
    return-void
.end method

.method private doNextHandle()V
    .registers 2

    .prologue
    .line 818
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    packed-switch v0, :pswitch_data_1e

    .line 840
    :goto_5
    :pswitch_5
    return-void

    .line 820
    :pswitch_6
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCopy()V

    goto :goto_5

    .line 823
    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCut()V

    goto :goto_5

    .line 826
    :pswitch_e
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handlePaste()V

    goto :goto_5

    .line 829
    :pswitch_12
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSize()V

    goto :goto_5

    .line 832
    :pswitch_16
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleColor()V

    goto :goto_5

    .line 835
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleAlign()V

    goto :goto_5

    .line 818
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_e
        :pswitch_12
        :pswitch_16
        :pswitch_5
        :pswitch_1a
        :pswitch_a
    .end packed-switch
.end method

.method private findLineEnd(Landroid/text/Editable;I)I
    .registers 6
    .parameter "text"
    .parameter "current"

    .prologue
    .line 1165
    move v0, p2

    .line 1166
    .local v0, pos:I
    :goto_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 1167
    if-lez v0, :cond_15

    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_15

    .line 1171
    :cond_14
    return v0

    .line 1166
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private findLineStart(Landroid/text/Editable;I)I
    .registers 6
    .parameter "text"
    .parameter "current"

    .prologue
    .line 1134
    move v0, p2

    .line 1135
    .local v0, pos:I
    :goto_1
    if-lez v0, :cond_e

    .line 1136
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-interface {p1, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_f

    .line 1140
    :cond_e
    return v0

    .line 1135
    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private handleAlign()V
    .registers 2

    .prologue
    .line 970
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSetSpan(I)V

    .line 971
    return-void
.end method

.method private handleCancel()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 846
    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    .line 847
    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    .line 848
    iput-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    .line 849
    const-string v0, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- handleCancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText;->getInputType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->unblockSoftKey()V

    .line 851
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->unsetSelect()V

    .line 852
    return-void
.end method

.method private handleColor()V
    .registers 2

    .prologue
    .line 966
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSetSpan(I)V

    .line 967
    return-void
.end method

.method private handleComplete()V
    .registers 3

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_5

    .line 865
    :goto_4
    return-void

    .line 861
    :cond_5
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 862
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    .line 864
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->doNextHandle()V

    goto :goto_4
.end method

.method private handleCopy()V
    .registers 3

    .prologue
    .line 897
    const/4 v0, 0x1

    const v1, 0x1020021

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleTextViewFunc(II)V

    .line 898
    return-void
.end method

.method private handleCut()V
    .registers 3

    .prologue
    .line 904
    const/4 v0, 0x7

    const v1, 0x1020020

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleTextViewFunc(II)V

    .line 905
    return-void
.end method

.method private handlePaste()V
    .registers 3

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_5

    .line 915
    :goto_4
    return-void

    .line 914
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/EditStyledText;->onTextContextMenuItem(I)Z

    goto :goto_4
.end method

.method private handleResetEdit()V
    .registers 3

    .prologue
    .line 1018
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->blockSoftKey()V

    .line 1019
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCancel()V

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    .line 1021
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/widget/EditStyledText;->access$1000(Lcom/android/internal/widget/EditStyledText;I)V

    .line 1022
    return-void
.end method

.method private handleSelect()V
    .registers 4

    .prologue
    const-string v2, "EditStyledText"

    .line 977
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_7

    .line 1001
    :cond_6
    :goto_6
    return-void

    .line 980
    :cond_7
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    if-nez v0, :cond_25

    .line 981
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 982
    const-string v0, "EditStyledText"

    const-string v0, "Selection is off, but selected"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_18
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectStartPos()V

    .line 985
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->blockSoftKey()V

    .line 986
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/internal/widget/EditStyledText;->access$1000(Lcom/android/internal/widget/EditStyledText;I)V

    goto :goto_6

    .line 987
    :cond_25
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 988
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isTextSelected()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 989
    const-string v0, "EditStyledText"

    const-string v0, "Selection now start, but selected"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_37
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos()V

    .line 992
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/internal/widget/EditStyledText;->access$1000(Lcom/android/internal/widget/EditStyledText;I)V

    .line 993
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->doNextHandle()V

    goto :goto_6

    .line 994
    :cond_44
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 995
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->isTextSelected()Z

    move-result v0

    if-nez v0, :cond_56

    .line 996
    const-string v0, "EditStyledText"

    const-string v0, "Selection is done, but not selected"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_56
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos()V

    .line 999
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->doNextHandle()V

    goto :goto_6
.end method

.method private handleSelectAll()V
    .registers 2

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_5

    .line 1012
    :goto_4
    return-void

    .line 1010
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->selectAll()V

    .line 1011
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    goto :goto_4
.end method

.method private handleSetSpan(I)V
    .registers 6
    .parameter "mode"

    .prologue
    const/4 v3, 0x3

    const-string v2, "EditStyledText"

    .line 922
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_f

    .line 923
    const-string v0, "EditStyledText"

    const-string v0, "--- handleSetSpan: Editing is not started."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_e
    return-void

    .line 926
    :cond_f
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_29

    .line 927
    :cond_18
    iput p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    .line 928
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 929
    iput v3, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    .line 930
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSetSpan(I)V

    goto :goto_e

    .line 932
    :cond_25
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelect()V

    goto :goto_e

    .line 934
    :cond_29
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    if-eq v0, p1, :cond_36

    .line 935
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCancel()V

    .line 936
    iput p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    .line 937
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSetSpan(I)V

    goto :goto_e

    .line 939
    :cond_36
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    if-ne v0, v3, :cond_5d

    .line 940
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/EditStyledText;->access$1000(Lcom/android/internal/widget/EditStyledText;I)V

    .line 941
    packed-switch p1, :pswitch_data_66

    .line 952
    :pswitch_43
    const-string v0, "EditStyledText"

    const-string v0, "--- handleSetSpan: invalid mode."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 943
    :pswitch_4b
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText;->access$1100(Lcom/android/internal/widget/EditStyledText;)V

    goto :goto_e

    .line 946
    :pswitch_51
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText;->access$1200(Lcom/android/internal/widget/EditStyledText;)V

    goto :goto_e

    .line 949
    :pswitch_57
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText;->access$1300(Lcom/android/internal/widget/EditStyledText;)V

    goto :goto_e

    .line 956
    :cond_5d
    const-string v0, "EditStyledText"

    const-string v0, "--- handleSetSpan: do nothing."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 941
    nop

    :pswitch_data_66
    .packed-switch 0x3
        :pswitch_51
        :pswitch_4b
        :pswitch_43
        :pswitch_57
    .end packed-switch
.end method

.method private handleSize()V
    .registers 2

    .prologue
    .line 962
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSetSpan(I)V

    .line 963
    return-void
.end method

.method private handleTextViewFunc(II)V
    .registers 6
    .parameter "mode"
    .parameter "id"

    .prologue
    const/4 v2, 0x3

    .line 872
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    if-nez v0, :cond_6

    .line 891
    :cond_5
    :goto_5
    return-void

    .line 875
    :cond_6
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_20

    .line 876
    :cond_f
    iput p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    .line 877
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 878
    iput v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    .line 879
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleTextViewFunc(II)V

    goto :goto_5

    .line 881
    :cond_1c
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelect()V

    goto :goto_5

    .line 883
    :cond_20
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    if-eq v0, p1, :cond_2d

    .line 884
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCancel()V

    .line 885
    iput p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    .line 886
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleTextViewFunc(II)V

    goto :goto_5

    .line 887
    :cond_2d
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    if-ne v0, v2, :cond_5

    .line 888
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/EditStyledText;->onTextContextMenuItem(I)Z

    .line 889
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleResetEdit()V

    goto :goto_5
.end method

.method private insertImageSpan(Landroid/text/style/ImageSpan;)V
    .registers 7
    .parameter "span"

    .prologue
    const-string v4, "--- insertimagespan:"

    const-string v3, "EditStyledText"

    .line 1147
    if-eqz p1, :cond_81

    .line 1148
    const-string v1, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- insertimagespan:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const-string v1, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- insertimagespan:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/style/ImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1151
    .local v0, curpos:I
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    const-string/jumbo v2, "\ufffc"

    invoke-interface {v1, v0, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1152
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x21

    invoke-interface {v1, p1, v0, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1154
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v3, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 1158
    .end local v0       #curpos:I,
    :goto_80
    return-void

    .line 1156
    :cond_81
    const-string v1, "EditStyledText"

    const-string v1, "--- insertImageSpan: null span was inserted"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method private isTextSelected()Z
    .registers 3

    .prologue
    .line 1085
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private setSelectStartPos()V
    .registers 2

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    .line 1058
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    .line 1059
    return-void
.end method

.method private setSelectedEndPos()V
    .registers 3

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getSelectionStart()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    if-ne v0, v1, :cond_14

    .line 1066
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getSelectionEnd()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    .line 1070
    :goto_13
    return-void

    .line 1068
    :cond_14
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelectedEndPos(I)V

    goto :goto_13
.end method

.method private setSelection()V
    .registers 5

    .prologue
    const-string v3, ","

    .line 1028
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    if-ltz v0, :cond_43

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_43

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    if-ltz v0, :cond_43

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-gt v0, v1, :cond_43

    .line 1030
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    if-ge v0, v1, :cond_39

    .line 1031
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->setSelection(II)V

    .line 1035
    :goto_35
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    .line 1042
    :goto_38
    return-void

    .line 1033
    :cond_39
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->setSelection(II)V

    goto :goto_35

    .line 1037
    :cond_43
    const-string v0, "EditStyledText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select is on, but cursor positions are illigal.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method private setStyledTextSpan(Ljava/lang/Object;II)V
    .registers 6
    .parameter "span"
    .parameter "start"
    .parameter "end"

    .prologue
    const/16 v1, 0x21

    .line 1095
    if-ge p2, p3, :cond_e

    .line 1096
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1102
    :goto_d
    return-void

    .line 1099
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1, p3, p2, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d
.end method

.method private unblockSoftKey()V
    .registers 3

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/EditStyledText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    .line 1197
    return-void
.end method

.method private unsetSelect()V
    .registers 3

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getSelectionStart()I

    move-result v0

    .line 1049
    .local v0, currpos:I
    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1, v0, v0}, Lcom/android/internal/widget/EditStyledText;->setSelection(II)V

    .line 1050
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    .line 1051
    return-void
.end method


# virtual methods
.method public getEditMode()I
    .registers 2

    .prologue
    .line 799
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    return v0
.end method

.method public getSelectState()I
    .registers 2

    .prologue
    .line 803
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    return v0
.end method

.method public getSelectionEnd()I
    .registers 2

    .prologue
    .line 811
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    return v0
.end method

.method public getSelectionStart()I
    .registers 2

    .prologue
    .line 807
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurStart:I

    return v0
.end method

.method public isEditting()Z
    .registers 2

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEditFlag:Z

    return v0
.end method

.method public isSoftKeyBlocked()Z
    .registers 2

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mSoftKeyBlockFlag:Z

    return v0
.end method

.method public isStyledText()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 783
    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v2}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 784
    .local v1, txt:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 785
    .local v0, len:I
    sub-int v2, v0, v5

    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ParagraphStyle;

    array-length v2, v2

    if-gtz v2, :cond_3e

    sub-int v2, v0, v5

    const-class v3, Landroid/text/style/QuoteSpan;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/QuoteSpan;

    array-length v2, v2

    if-gtz v2, :cond_3e

    sub-int v2, v0, v5

    const-class v3, Landroid/text/style/CharacterStyle;

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    array-length v2, v2

    if-gtz v2, :cond_3e

    iget-object v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-static {v2}, Lcom/android/internal/widget/EditStyledText;->access$900(Lcom/android/internal/widget/EditStyledText;)I

    move-result v2

    const v3, 0xffffff

    if-eq v2, v3, :cond_40

    :cond_3e
    move v2, v5

    .line 791
    :goto_3f
    return v2

    :cond_40
    move v2, v4

    goto :goto_3f
.end method

.method public onClearStyles()V
    .registers 12

    .prologue
    .line 728
    iget-object v9, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v9}, Lcom/android/internal/widget/EditStyledText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 729
    .local v8, txt:Landroid/text/Editable;
    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v3

    .line 730
    .local v3, len:I
    const/4 v9, 0x0

    const-class v10, Ljava/lang/Object;

    invoke-interface {v8, v9, v3, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 731
    .local v7, styles:[Ljava/lang/Object;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_14
    if-ge v2, v4, :cond_3b

    aget-object v6, v0, v2

    .line 732
    .local v6, style:Ljava/lang/Object;
    instance-of v9, v6, Landroid/text/style/ParagraphStyle;

    if-nez v9, :cond_24

    instance-of v9, v6, Landroid/text/style/QuoteSpan;

    if-nez v9, :cond_24

    instance-of v9, v6, Landroid/text/style/CharacterStyle;

    if-eqz v9, :cond_38

    .line 735
    :cond_24
    instance-of v9, v6, Landroid/text/style/ImageSpan;

    if-eqz v9, :cond_35

    .line 736
    invoke-interface {v8, v6}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 737
    .local v5, start:I
    invoke-interface {v8, v6}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 738
    .local v1, end:I
    const-string v9, ""

    invoke-interface {v8, v5, v1, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 740
    .end local v1       #end:I,
    .end local v5       #start:I,
    :cond_35
    invoke-interface {v8, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 731
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 743
    .end local v6       #style:Ljava/lang/Object;,
    :cond_3b
    iget-object v9, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget-object v10, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-static {v10}, Lcom/android/internal/widget/EditStyledText;->access$800(Lcom/android/internal/widget/EditStyledText;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/EditStyledText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 744
    iget-object v9, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    const v10, 0xffffff

    invoke-static {v9, v10}, Lcom/android/internal/widget/EditStyledText;->access$902(Lcom/android/internal/widget/EditStyledText;I)I

    .line 745
    return-void
.end method

.method public onCursorMoved()V
    .registers 4

    .prologue
    .line 677
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 678
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelect()V

    .line 679
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 681
    :cond_16
    return-void
.end method

.method public onEndEdit()V
    .registers 4

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCancel()V

    .line 600
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 601
    return-void
.end method

.method public onFixSelectedItem()V
    .registers 4

    .prologue
    .line 695
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleComplete()V

    .line 696
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 697
    return-void
.end method

.method public onInsertHorizontalLine()V
    .registers 5

    .prologue
    .line 720
    new-instance v0, Lcom/android/internal/widget/EditStyledText$HorizontalLineSpan;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->this$0:Lcom/android/internal/widget/EditStyledText;

    const/high16 v2, -0x100

    iget-object v3, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/EditStyledText$HorizontalLineSpan;-><init>(Lcom/android/internal/widget/EditStyledText;ILandroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/ImageSpan;)V

    .line 721
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 722
    return-void
.end method

.method public onInsertImage(I)V
    .registers 5
    .parameter "resID"

    .prologue
    .line 712
    new-instance v0, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/ImageSpan;)V

    .line 713
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 714
    return-void
.end method

.method public onInsertImage(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    .line 704
    new-instance v0, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-virtual {v1}, Lcom/android/internal/widget/EditStyledText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->insertImageSpan(Landroid/text/style/ImageSpan;)V

    .line 705
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 706
    return-void
.end method

.method public onStartAlign()V
    .registers 4

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleAlign()V

    .line 640
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 641
    return-void
.end method

.method public onStartBackgroundColor()V
    .registers 4

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    invoke-static {v0}, Lcom/android/internal/widget/EditStyledText;->access$700(Lcom/android/internal/widget/EditStyledText;)V

    .line 656
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 657
    return-void
.end method

.method public onStartColor()V
    .registers 4

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleColor()V

    .line 648
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 649
    return-void
.end method

.method public onStartCopy()V
    .registers 4

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCopy()V

    .line 608
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 609
    return-void
.end method

.method public onStartCut()V
    .registers 4

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleCut()V

    .line 616
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 617
    return-void
.end method

.method public onStartEdit()V
    .registers 4

    .prologue
    .line 590
    const-string v0, "EditStyledText"

    const-string v1, "--- onstartedit:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleResetEdit()V

    .line 592
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 593
    return-void
.end method

.method public onStartPaste()V
    .registers 4

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handlePaste()V

    .line 624
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 625
    return-void
.end method

.method public onStartSelect()V
    .registers 4

    .prologue
    .line 663
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    .line 664
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    if-nez v0, :cond_14

    .line 665
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelect()V

    .line 670
    :goto_a
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 671
    return-void

    .line 667
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->unsetSelect()V

    .line 668
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelect()V

    goto :goto_a
.end method

.method public onStartSelectAll()V
    .registers 4

    .prologue
    .line 687
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSelectAll()V

    .line 688
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 689
    return-void
.end method

.method public onStartSize()V
    .registers 4

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleSize()V

    .line 632
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mEST:Lcom/android/internal/widget/EditStyledText;

    iget v1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mMode:I

    iget v2, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/EditStyledText;->access$600(Lcom/android/internal/widget/EditStyledText;II)V

    .line 633
    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .registers 4
    .parameter "align"

    .prologue
    .line 771
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 772
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->changeAlign(Landroid/text/Layout$Alignment;)V

    .line 773
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleResetEdit()V

    .line 775
    :cond_10
    return-void
.end method

.method public setItemColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 761
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 762
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->changeColorSelectedText(I)V

    .line 763
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleResetEdit()V

    .line 765
    :cond_10
    return-void
.end method

.method public setItemSize(I)V
    .registers 4
    .parameter "size"

    .prologue
    .line 751
    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 752
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/widget/EditStyledText$EditorManager;->changeSizeSelectedText(I)V

    .line 753
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->handleResetEdit()V

    .line 755
    :cond_10
    return-void
.end method

.method public setSelectedEndPos(I)V
    .registers 2
    .parameter "pos"

    .prologue
    .line 1076
    iput p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager;->mCurEnd:I

    .line 1077
    invoke-direct {p0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->setSelection()V

    .line 1078
    return-void
.end method
