.class public Lcom/lge/sui/widget/control/SUISlideCheck;
.super Landroid/widget/LinearLayout;
.source "SUISlideCheck.java"



# instance fields
.field private isChecked:Z

.field private mContext:Landroid/content/Context;

.field private mSlidingDrawer:Landroid/widget/SlidingDrawer;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->isChecked:Z

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUISlideCheck;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->isChecked:Z

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/sui/widget/control/SUISlideCheck;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method static synthetic access$002(Lcom/lge/sui/widget/control/SUISlideCheck;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->isChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/sui/widget/control/SUISlideCheck;)Landroid/widget/SlidingDrawer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->mContext:Landroid/content/Context;

    .line 59
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 61
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x303002e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    const/high16 v1, 0x30b

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUISlideCheck;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SlidingDrawer;

    iput-object v1, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    .line 66
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    new-instance v2, Lcom/lge/sui/widget/control/SUISlideCheck$1;

    invoke-direct {v2, p0}, Lcom/lge/sui/widget/control/SUISlideCheck$1;-><init>(Lcom/lge/sui/widget/control/SUISlideCheck;)V

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerScrollListener(Landroid/widget/SlidingDrawer$OnDrawerScrollListener;)V

    .line 73
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    new-instance v2, Lcom/lge/sui/widget/control/SUISlideCheck$2;

    invoke-direct {v2, p0}, Lcom/lge/sui/widget/control/SUISlideCheck$2;-><init>(Lcom/lge/sui/widget/control/SUISlideCheck;)V

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 80
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    new-instance v2, Lcom/lge/sui/widget/control/SUISlideCheck$3;

    invoke-direct {v2, p0}, Lcom/lge/sui/widget/control/SUISlideCheck$3;-><init>(Lcom/lge/sui/widget/control/SUISlideCheck;)V

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 86
    return-void
.end method


# virtual methods
.method public getIsChecked()Z
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->isChecked:Z

    return v0
.end method

.method public setOnChecked(Z)V
    .registers 3
    .parameter "onChecked"

    .prologue
    .line 94
    if-eqz p1, :cond_8

    .line 95
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    .line 98
    :goto_7
    return-void

    .line 97
    :cond_8
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUISlideCheck;->mSlidingDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateClose()V

    goto :goto_7
.end method
