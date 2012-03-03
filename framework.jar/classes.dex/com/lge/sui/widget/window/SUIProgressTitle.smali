.class public Lcom/lge/sui/widget/window/SUIProgressTitle;
.super Ljava/lang/Object;
.source "SUIProgressTitle.java"



# instance fields
.field activity:Landroid/app/Activity;

.field p:Landroid/widget/ProgressBar;



# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 4
    .parameter "activity"
    .parameter "resourceID"

    .prologue
    .line 40
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/window/SUIProgressTitle;-><init>(Landroid/app/Activity;II)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .registers 5
    .parameter "activity"
    .parameter "resourceID"
    .parameter "max_range"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->activity:Landroid/app/Activity;

    .line 56
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 57
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(I)V

    .line 59
    invoke-direct {p0, p3}, Lcom/lge/sui/widget/window/SUIProgressTitle;->find_set_ProgressBar(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 4
    .parameter "activity"
    .parameter "view"

    .prologue
    .line 63
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/window/SUIProgressTitle;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .registers 5
    .parameter "activity"
    .parameter "view"
    .parameter "max_range"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->activity:Landroid/app/Activity;

    .line 69
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 70
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-direct {p0, p3}, Lcom/lge/sui/widget/window/SUIProgressTitle;->find_set_ProgressBar(I)V

    .line 73
    return-void
.end method

.method private find_set_ProgressBar(I)V
    .registers 5
    .parameter "max_range"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x7

    const v2, 0x3030022

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 78
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->activity:Landroid/app/Activity;

    const v1, 0x30a0058

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->p:Landroid/widget/ProgressBar;

    .line 79
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 80
    return-void
.end method


# virtual methods
.method public setMaxProgress(I)V
    .registers 3
    .parameter "i"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 89
    return-void
.end method

.method public setProgress(I)V
    .registers 8
    .parameter "i"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 99
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->activity:Landroid/app/Activity;

    const v2, 0x30e0001

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    .local v0, tv:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v2, p1

    iget-object v4, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method public setProgressBarVisiblity(Z)V
    .registers 7
    .parameter "visibility"

    .prologue
    const v4, 0x30e0001

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 111
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1a

    .line 112
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    :goto_19
    return-void

    .line 117
    .end local v0       #tv:Landroid/widget/TextView;,
    :cond_1a
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .restart local v0       #tv:Landroid/widget/TextView;,
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIProgressTitle;->activity:Landroid/app/Activity;

    const/high16 v2, 0x30e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, tv:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method
