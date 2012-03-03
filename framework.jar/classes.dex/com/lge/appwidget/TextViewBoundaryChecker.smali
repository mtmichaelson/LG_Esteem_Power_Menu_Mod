.class Lcom/lge/appwidget/TextViewBoundaryChecker;
.super Ljava/lang/Object;
.source "Andy_RichNoteListView.java"



# instance fields
.field Height:I

.field LineCount:I

.field Width:I

.field mLayout:Landroid/text/Layout;

.field mTextView:Landroid/widget/TextView;

.field mWidth:I



# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter "widthPx"

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput p1, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->mWidth:I

    .line 688
    return-void
.end method


# virtual methods
.method public getLineCount()I
    .registers 2

    .prologue
    .line 716
    iget v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->LineCount:I

    return v0
.end method

.method public getTextViewHeight()I
    .registers 2

    .prologue
    .line 720
    iget v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->Height:I

    return v0
.end method

.method public isTextCrossBoundry(I)Z
    .registers 3
    .parameter "availHeight"

    .prologue
    .line 726
    iget v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->Height:I

    if-le p1, v0, :cond_6

    .line 727
    const/4 v0, 0x0

    .line 729
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .registers 14
    .parameter "textview"

    .prologue
    .line 692
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    add-int v11, v0, v1

    .line 693
    .local v11, wid:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    add-int v8, v0, v1

    .line 694
    .local v8, ht:I
    iget v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->mWidth:I

    sub-int v3, v0, v11

    .line 695
    .local v3, cap:I
    if-gez v3, :cond_1c

    .line 696
    const/16 v3, 0xc8

    .line 699
    :cond_1c
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 700
    .local v2, mTextPaint:Landroid/text/TextPaint;
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 701
    .local v4, alignment:Landroid/text/Layout$Alignment;
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->mLayout:Landroid/text/Layout;

    .line 704
    const/4 v10, 0x0

    .line 705
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_33
    iget-object v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-ge v9, v0, :cond_48

    .line 706
    iget-object v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 705
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    .line 710
    :cond_48
    float-to-double v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/2addr v0, v11

    iput v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->Width:I

    .line 711
    iget-object v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    add-int/2addr v0, v8

    iput v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->Height:I

    .line 712
    iget-object v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/TextViewBoundaryChecker;->LineCount:I

    .line 713
    return-void
.end method
