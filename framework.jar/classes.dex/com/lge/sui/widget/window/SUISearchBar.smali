.class public Lcom/lge/sui/widget/window/SUISearchBar;
.super Landroid/widget/LinearLayout;
.source "SUISearchBar.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSearchBtn:Lcom/lge/sui/widget/control/SUIImageButton;

.field private mSearchText:Landroid/widget/EditText;

.field private mVoiceSearchBtn:Lcom/lge/sui/widget/control/SUIImageButton;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v0, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mSearchText:Landroid/widget/EditText;

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/window/SUISearchBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mSearchText:Landroid/widget/EditText;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/lge/sui/widget/window/SUISearchBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mContext:Landroid/content/Context;

    .line 72
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x303002f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 76
    const v1, 0x30f0001

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/window/SUISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mSearchText:Landroid/widget/EditText;

    .line 78
    const v1, 0x30f0002

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/window/SUISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/sui/widget/control/SUIImageButton;

    iput-object v1, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mVoiceSearchBtn:Lcom/lge/sui/widget/control/SUIImageButton;

    .line 79
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mVoiceSearchBtn:Lcom/lge/sui/widget/control/SUIImageButton;

    invoke-virtual {v1, p0}, Lcom/lge/sui/widget/control/SUIImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v1, 0x30f0003

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/window/SUISearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/sui/widget/control/SUIImageButton;

    iput-object v1, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mSearchBtn:Lcom/lge/sui/widget/control/SUIImageButton;

    .line 82
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mSearchBtn:Lcom/lge/sui/widget/control/SUIImageButton;

    invoke-virtual {v1, p0}, Lcom/lge/sui/widget/control/SUIImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getSearchBtn()Lcom/lge/sui/widget/control/SUIImageButton;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mSearchBtn:Lcom/lge/sui/widget/control/SUIImageButton;

    return-object v0
.end method

.method public getSearchText()Landroid/text/Editable;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceSearchBtn()Lcom/lge/sui/widget/control/SUIImageButton;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mVoiceSearchBtn:Lcom/lge/sui/widget/control/SUIImageButton;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 88
    return-void
.end method

.method public setSearchBtn()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mSearchBtn:Lcom/lge/sui/widget/control/SUIImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIImageButton;->setVisibility(I)V

    .line 102
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 127
    return-void
.end method

.method public setVoiceSearchBtn()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUISearchBar;->mVoiceSearchBtn:Lcom/lge/sui/widget/control/SUIImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIImageButton;->setVisibility(I)V

    .line 95
    return-void
.end method
