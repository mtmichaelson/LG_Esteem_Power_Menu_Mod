.class public Lcom/lge/sui/widget/window/SUIDoubleLineTitle;
.super Ljava/lang/Object;
.source "SUIDoubleLineTitle.java"



# static fields
.field private static a:Landroid/app/Activity;



# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field activity:Landroid/app/Activity;

.field commandButton:Landroid/view/View;

.field layout:Landroid/widget/RelativeLayout;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private rightcommandButton:Landroid/view/View;



# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .registers 5
    .parameter "activity"
    .parameter "content_ID"
    .parameter "icon"

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;-><init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "activity"
    .parameter "content_ID"
    .parameter "drawable"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "SUIDoubleLineTitle"

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->LOG_TAG:Ljava/lang/String;

    .line 256
    new-instance v0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;-><init>(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 52
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    .line 53
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(I)V

    .line 56
    invoke-virtual {p0, p1, p3}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->postsetting(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILandroid/view/View;)V
    .registers 5
    .parameter "activity"
    .parameter "content_View"
    .parameter "view"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "SUIDoubleLineTitle"

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->LOG_TAG:Ljava/lang/String;

    .line 256
    new-instance v0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;-><init>(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 111
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    .line 112
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 114
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(I)V

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->postsetting(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {p0, p3}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->setLeftCommand(Landroid/view/View;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "a"
    .parameter "d"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "SUIDoubleLineTitle"

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->LOG_TAG:Ljava/lang/String;

    .line 256
    new-instance v0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;-><init>(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->postsetting(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .registers 5
    .parameter "activity"
    .parameter "content_ID"
    .parameter "icon"

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "activity"
    .parameter "content_View"
    .parameter "drawable"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "SUIDoubleLineTitle"

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->LOG_TAG:Ljava/lang/String;

    .line 256
    new-instance v0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;-><init>(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 83
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    .line 84
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 86
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0, p1, p3}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->postsetting(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findCommandButton()Landroid/view/View;
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    const v1, 0x30d0002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->commandButton:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->commandButton:Landroid/view/View;

    return-object v0
.end method

.method private findRightCommandButton()Landroid/view/View;
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    const v1, 0x30d0007

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->rightcommandButton:Landroid/view/View;

    .line 176
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->rightcommandButton:Landroid/view/View;

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 177
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->rightcommandButton:Landroid/view/View;

    return-object v0
.end method

.method public static getInstance(I)Lcom/lge/sui/widget/window/SUIDoubleLineTitle;
    .registers 2
    .parameter "icon"

    .prologue
    .line 447
    sget-object v0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->getInstance(Landroid/graphics/drawable/Drawable;)Lcom/lge/sui/widget/window/SUIDoubleLineTitle;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/graphics/drawable/Drawable;)Lcom/lge/sui/widget/window/SUIDoubleLineTitle;
    .registers 3
    .parameter "d"

    .prologue
    .line 439
    new-instance v0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;

    sget-object v1, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 402
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 405
    sput-object p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->a:Landroid/app/Activity;

    .line 406
    return-void
.end method

.method public static setContentView(Landroid/view/View;)V
    .registers 2
    .parameter "listView"

    .prologue
    .line 413
    sget-object v0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_d

    .line 414
    sget-object v0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->a:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 416
    :cond_d
    return-void
.end method


# virtual methods
.method public getTitleView()Landroid/view/ViewGroup;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 361
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 362
    .local v1, view:Landroid/view/ViewGroup;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1       #view:Landroid/view/ViewGroup;,
    check-cast v1, Landroid/view/ViewGroup;

    .line 363
    .restart local v1       #view:Landroid/view/ViewGroup;,
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1       #view:Landroid/view/ViewGroup;,
    check-cast v1, Landroid/view/ViewGroup;

    .line 364
    .restart local v1       #view:Landroid/view/ViewGroup;,
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 365
    .local v0, r:Landroid/widget/RelativeLayout;
    return-object v0
.end method

.method protected postsetting(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter "activity"
    .parameter "drawable"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x7

    const v3, 0x3030021

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 63
    const v1, 0x30d0002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, ib:Landroid/view/View;
    if-eqz p2, :cond_19

    .line 66
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :cond_19
    const/high16 v1, 0x30d

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->layout:Landroid/widget/RelativeLayout;

    .line 71
    return-void
.end method

.method public setCommandDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "drawable"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->commandButton:Landroid/view/View;

    if-nez v0, :cond_7

    .line 128
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->findCommandButton()Landroid/view/View;

    .line 131
    :cond_7
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->commandButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method

.method public setLeftCommand(Landroid/view/View;)V
    .registers 5
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 420
    .local v0, vg:Landroid/view/ViewGroup;
    invoke-virtual {v0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 421
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 423
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 424
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->commandButton:Landroid/view/View;

    .line 425
    return-void
.end method

.method public setLeftCommandOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter "onClickListener"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->commandButton:Landroid/view/View;

    if-nez v0, :cond_7

    .line 187
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->findCommandButton()Landroid/view/View;

    .line 189
    :cond_7
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->commandButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->commandButton:Landroid/view/View;

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    return-void
.end method

.method public setRightCommand(Landroid/view/View;)V
    .registers 5
    .parameter "b"

    .prologue
    .line 428
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->layout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 429
    .local v0, vg:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 430
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 431
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 432
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->rightcommandButton:Landroid/view/View;

    .line 433
    return-void
.end method

.method public setRightCommandDrawable(I)V
    .registers 3
    .parameter "drawable"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->setRightCommandDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    return-void
.end method

.method public setRightCommandDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "drawable"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->findRightCommandButton()Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->rightcommandButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->rightcommandButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    return-void
.end method

.method public setRightCommandOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "onClickListener"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->rightcommandButton:Landroid/view/View;

    if-nez v0, :cond_7

    .line 200
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->findRightCommandButton()Landroid/view/View;

    .line 202
    :cond_7
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->rightcommandButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method public setSubIcon(I)V
    .registers 3
    .parameter "icon"

    .prologue
    .line 375
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->setSubIcon(Landroid/graphics/drawable/Drawable;)V

    .line 376
    return-void
.end method

.method public setSubIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "drawable"

    .prologue
    const/4 v5, 0x0

    .line 384
    iget-object v3, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    const v4, 0x30d0005

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 387
    .local v1, tv:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 388
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    iget-object v3, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    const v4, 0x30d0003

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 391
    .local v2, tv1:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 393
    .local v0, layout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 395
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .registers 8
    .parameter "string"

    .prologue
    const/4 v5, 0x0

    .line 228
    iget-object v3, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    const v4, 0x30d0008

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 231
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v3, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    const v4, 0x30d0003

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    .local v2, tv1:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 238
    .local v0, layout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 240
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .parameter "basictitledemo"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->setTitle(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 214
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    const v2, 0x30d0003

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public setTitleView(I)V
    .registers 6
    .parameter "v"

    .prologue
    .line 249
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 251
    .local v0, inf:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 252
    .local v1, r:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->setTitleView(Landroid/view/View;)V

    .line 253
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 336
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->getTitleView()Landroid/view/ViewGroup;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 337
    .local v3, r:Landroid/widget/RelativeLayout;
    if-nez v3, :cond_11

    .line 338
    const-string v4, "SUIDoubleLineTitle"

    const-string v5, "NULL is returned by getTitleView()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_10
    return-void

    .line 341
    :cond_11
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, curr:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 344
    .local v1, id:I
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 346
    .local v2, layout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 347
    invoke-virtual {v3, p1, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 348
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->refreshDrawableState()V

    .line 350
    iget-object v4, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_10
.end method
