.class public Lcom/lge/sui/widget/window/SUITabWidget;
.super Landroid/widget/LinearLayout;
.source "SUITabWidget.java"


# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/window/SUITabWidget$1;,
        Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;,
        Lcom/lge/sui/widget/window/SUITabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/window/SUITabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/sui/widget/window/SUITabWidget;->mSelectedTab:I

    .line 35
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUITabWidget;->initTabWidget()V

    .line 36
    return-void
.end method

.method static synthetic access$100(Lcom/lge/sui/widget/window/SUITabWidget;)Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabWidget;->mSelectionChangedListener:Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabWidget;->setFocusable(Z)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/lge/sui/widget/window/SUITabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 7
    .parameter "child"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_16

    .line 87
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 90
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .end local v0       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    :cond_16
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 96
    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 98
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    new-instance v1, Lcom/lge/sui/widget/window/SUITabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/lge/sui/widget/window/SUITabWidget$TabClickListener;-><init>(Lcom/lge/sui/widget/window/SUITabWidget;ILcom/lge/sui/widget/window/SUITabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 102
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/sui/widget/window/SUITabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 46
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabWidget;->invalidate()V

    .line 48
    :cond_b
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 49
    return-void
.end method

.method public focusCurrentTab(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 62
    iget v0, p0, Lcom/lge/sui/widget/window/SUITabWidget;->mSelectedTab:I

    .line 65
    .local v0, oldTab:I
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/window/SUITabWidget;->setCurrentTab(I)V

    .line 68
    if-eq v0, p1, :cond_e

    .line 69
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 71
    :cond_e
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 115
    if-ne p1, p0, :cond_e

    if-eqz p2, :cond_e

    .line 116
    iget v1, p0, Lcom/lge/sui/widget/window/SUITabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 131
    :cond_d
    :goto_d
    return-void

    .line 120
    :cond_e
    if-eqz p2, :cond_d

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, i:I
    :goto_11
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 123
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_27

    .line 124
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabWidget;->setCurrentTab(I)V

    .line 125
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabWidget;->mSelectionChangedListener:Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    goto :goto_d

    .line 128
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public setCurrentTab(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 52
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_9

    .line 59
    :cond_8
    :goto_8
    return-void

    .line 56
    :cond_9
    iget v0, p0, Lcom/lge/sui/widget/window/SUITabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 57
    iput p1, p0, Lcom/lge/sui/widget/window/SUITabWidget;->mSelectedTab:I

    .line 58
    iget v0, p0, Lcom/lge/sui/widget/window/SUITabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_8
.end method

.method public setEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildCount()I

    move-result v1

    .line 78
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_14

    .line 79
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 82
    .end local v0       #child:Landroid/view/View;,
    :cond_14
    return-void
.end method

.method setTabSelectionListener(Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUITabWidget;->mSelectionChangedListener:Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;

    .line 112
    return-void
.end method
