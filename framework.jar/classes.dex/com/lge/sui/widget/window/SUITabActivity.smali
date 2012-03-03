.class public Lcom/lge/sui/widget/window/SUITabActivity;
.super Landroid/app/ActivityGroup;
.source "SUITabActivity.java"



# instance fields
.field private mDefaultTab:Ljava/lang/String;

.field private mDefaultTabIndex:I

.field private mTabHost:Lcom/lge/sui/widget/window/SUITabHost;



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mDefaultTab:Ljava/lang/String;

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mDefaultTabIndex:I

    .line 32
    return-void
.end method

.method private ensureTabHost()V
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    if-nez v0, :cond_a

    .line 112
    const v0, 0x3030017

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabActivity;->setContentView(I)V

    .line 114
    :cond_a
    return-void
.end method


# virtual methods
.method public getTabHost()Lcom/lge/sui/widget/window/SUITabHost;
    .registers 2

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUITabActivity;->ensureTabHost()V

    .line 135
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    return-object v0
.end method

.method public getTabWidget()Lcom/lge/sui/widget/window/SUITabWidget;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-virtual {v0}, Lcom/lge/sui/widget/window/SUITabHost;->getTabWidget()Lcom/lge/sui/widget/window/SUITabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "childActivity"
    .parameter "title"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_1b

    .line 121
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-virtual {v1}, Lcom/lge/sui/widget/window/SUITabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, tabView:Landroid/view/View;
    if-eqz v0, :cond_1b

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 123
    check-cast v0, Landroid/widget/TextView;

    .end local v0       #tabView:Landroid/view/View;,
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1b
    return-void
.end method

.method public onContentChanged()V
    .registers 3

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    .line 100
    const v0, 0x30a0045

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/window/SUITabHost;

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    .line 102
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    if-nez v0, :cond_1a

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'R.id.lite_tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1a
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/window/SUITabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 108
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUITabActivity;->ensureTabHost()V

    .line 77
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-virtual {v0}, Lcom/lge/sui/widget/window/SUITabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 78
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/window/SUITabHost;->setCurrentTab(I)V

    .line 80
    :cond_15
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUITabActivity;->ensureTabHost()V

    .line 58
    const-string v1, "currentTab"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, cur:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 60
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-virtual {v1, v0}, Lcom/lge/sui/widget/window/SUITabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 62
    :cond_13
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-virtual {v1}, Lcom/lge/sui/widget/window/SUITabHost;->getCurrentTab()I

    move-result v1

    if-gez v1, :cond_26

    .line 63
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mDefaultTab:Ljava/lang/String;

    if-eqz v1, :cond_27

    .line 64
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/sui/widget/window/SUITabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 69
    :cond_26
    :goto_26
    return-void

    .line 65
    :cond_27
    iget v1, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mDefaultTabIndex:I

    if-ltz v1, :cond_26

    .line 66
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    iget v2, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mDefaultTabIndex:I

    invoke-virtual {v1, v2}, Lcom/lge/sui/widget/window/SUITabHost;->setCurrentTab(I)V

    goto :goto_26
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mTabHost:Lcom/lge/sui/widget/window/SUITabHost;

    invoke-virtual {v1}, Lcom/lge/sui/widget/window/SUITabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, currentTabTag:Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 87
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_10
    return-void
.end method

.method public setDefaultTab(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mDefaultTab:Ljava/lang/String;

    .line 51
    iput p1, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mDefaultTabIndex:I

    .line 52
    return-void
.end method

.method public setDefaultTab(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mDefaultTab:Ljava/lang/String;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/sui/widget/window/SUITabActivity;->mDefaultTabIndex:I

    .line 42
    return-void
.end method
