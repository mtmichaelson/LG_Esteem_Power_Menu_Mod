.class public Lcom/lge/sui/widget/window/SUICommandTitle;
.super Ljava/lang/Object;
.source "SUICommandTitle.java"



# instance fields
.field activity:Landroid/app/Activity;

.field commandButton:Lcom/lge/sui/widget/control/SUIButton;



# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 6
    .parameter "activity"
    .parameter "lgdemoLayoutSimpleList"

    .prologue
    const/4 v2, 0x7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUICommandTitle;->activity:Landroid/app/Activity;

    .line 42
    invoke-virtual {p1, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 44
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(I)V

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3030020

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 6
    .parameter "activity"
    .parameter "lgdemoLayoutSimpleList"

    .prologue
    const/4 v2, 0x7

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUICommandTitle;->activity:Landroid/app/Activity;

    .line 59
    invoke-virtual {p1, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 60
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3030020

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 64
    return-void
.end method

.method private findCommandButton()V
    .registers 5

    .prologue
    const/16 v3, 0x3c

    const/16 v2, 0x14

    .line 82
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUICommandTitle;->activity:Landroid/app/Activity;

    const v1, 0x30a0057

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/control/SUIButton;

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUICommandTitle;->commandButton:Lcom/lge/sui/widget/control/SUIButton;

    .line 83
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUICommandTitle;->commandButton:Lcom/lge/sui/widget/control/SUIButton;

    invoke-virtual {v0, v3, v2, v2, v3}, Lcom/lge/sui/widget/control/SUIButton;->setReleasedSlop(IIII)V

    .line 84
    return-void
.end method


# virtual methods
.method public setCommandDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "drawable"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUICommandTitle;->commandButton:Lcom/lge/sui/widget/control/SUIButton;

    if-nez v0, :cond_7

    .line 76
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUICommandTitle;->findCommandButton()V

    .line 78
    :cond_7
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUICommandTitle;->commandButton:Lcom/lge/sui/widget/control/SUIButton;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUIButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "onClickListener"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUICommandTitle;->commandButton:Lcom/lge/sui/widget/control/SUIButton;

    if-nez v0, :cond_7

    .line 94
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUICommandTitle;->findCommandButton()V

    .line 96
    :cond_7
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUICommandTitle;->commandButton:Lcom/lge/sui/widget/control/SUIButton;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/control/SUIButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUICommandTitle;->activity:Landroid/app/Activity;

    const/high16 v2, 0x30c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    return-void
.end method
