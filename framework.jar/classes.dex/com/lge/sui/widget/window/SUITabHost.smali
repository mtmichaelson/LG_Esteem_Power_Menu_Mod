.class public Lcom/lge/sui/widget/window/SUITabHost;
.super Landroid/widget/LinearLayout;
.source "SUITabHost.java"


# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/window/SUITabHost$IntentContentStrategy;,
        Lcom/lge/sui/widget/window/SUITabHost$LabelAndIconIndicatorStrategy;,
        Lcom/lge/sui/widget/window/SUITabHost$LabelIndicatorStrategy;,
        Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;,
        Lcom/lge/sui/widget/window/SUITabHost$IndicatorStrategy;,
        Lcom/lge/sui/widget/window/SUITabHost$TabSpec;,
        Lcom/lge/sui/widget/window/SUITabHost$OnTabChangeListener;
    }
.end annotation


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Lcom/lge/sui/widget/window/SUITabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/LinearLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sui/widget/window/SUITabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    .line 43
    iput-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    .line 45
    iput-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 51
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUITabHost;->initTabHost()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    .line 43
    iput-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    .line 45
    iput-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 56
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUITabHost;->initTabHost()V

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/lge/sui/widget/window/SUITabHost;)Landroid/widget/LinearLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sui/widget/window/SUITabHost;)Lcom/lge/sui/widget/window/SUITabWidget;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    return-object v0
.end method

.method private final initTabHost()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabHost;->setFocusableInTouchMode(Z)V

    .line 61
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabHost;->setDescendantFocusability(I)V

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    .line 65
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mOnTabChangeListener:Lcom/lge/sui/widget/window/SUITabHost$OnTabChangeListener;

    if-eqz v0, :cond_d

    .line 318
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mOnTabChangeListener:Lcom/lge/sui/widget/window/SUITabHost$OnTabChangeListener;

    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lge/sui/widget/window/SUITabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 320
    :cond_d
    return-void
.end method


# virtual methods
.method public addTab(Lcom/lge/sui/widget/window/SUITabHost$TabSpec;)V
    .registers 5
    .parameter "tabSpec"

    .prologue
    .line 168
    invoke-static {p1}, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->access$200(Lcom/lge/sui/widget/window/SUITabHost$TabSpec;)Lcom/lge/sui/widget/window/SUITabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_f

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_f
    invoke-static {p1}, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->access$300(Lcom/lge/sui/widget/window/SUITabHost$TabSpec;)Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_1e
    invoke-static {p1}, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->access$200(Lcom/lge/sui/widget/window/SUITabHost$TabSpec;)Lcom/lge/sui/widget/window/SUITabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/sui/widget/window/SUITabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 177
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    invoke-virtual {v1, v0}, Lcom/lge/sui/widget/window/SUITabWidget;->addView(Landroid/view/View;)V

    .line 178
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    return-void
.end method

.method public clearAllTabs()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    invoke-virtual {v0}, Lcom/lge/sui/widget/window/SUITabWidget;->removeAllViews()V

    .line 187
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUITabHost;->initTabHost()V

    .line 188
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 189
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabHost;->requestLayout()V

    .line 191
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabHost;->invalidate()V

    .line 192
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 243
    .local v0, handled:Z
    if-nez v0, :cond_3b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_3b

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3b

    .line 249
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    iget v2, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 250
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/window/SUITabHost;->playSoundEffect(I)V

    .line 251
    const/4 v1, 0x1

    .line 253
    :goto_3a
    return v1

    :cond_3b
    move v1, v0

    goto :goto_3a
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasFocus"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 260
    return-void
.end method

.method public getCurrentTab()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .registers 3

    .prologue
    .line 203
    iget v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    if-ltz v0, :cond_1d

    iget v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 204
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;

    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_1c
    return-object v0

    .restart local p0       
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getCurrentTabView()Landroid/view/View;
    .registers 3

    .prologue
    .line 210
    iget v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    if-ltz v0, :cond_17

    iget v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 211
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    iget v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 213
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getTabWidget()Lcom/lge/sui/widget/window/SUITabWidget;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Lcom/lge/sui/widget/window/SUITabHost$TabSpec;
    .registers 4
    .parameter "tag"

    .prologue
    .line 72
    new-instance v0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;-><init>(Lcom/lge/sui/widget/window/SUITabHost;Ljava/lang/String;Lcom/lge/sui/widget/window/SUITabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 133
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 134
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 135
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_c

    .line 136
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 138
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 143
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 144
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_c

    .line 145
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 147
    :cond_c
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 4
    .parameter "isInTouchMode"

    .prologue
    .line 153
    if-nez p1, :cond_1d

    .line 156
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 157
    :cond_12
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    iget v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/window/SUITabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 160
    :cond_1d
    return-void
.end method

.method public setCurrentTab(I)V
    .registers 7
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 263
    if-ltz p1, :cond_b

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_c

    .line 304
    :cond_b
    :goto_b
    return-void

    .line 267
    :cond_c
    iget v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_b

    .line 272
    iget v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_25

    .line 273
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;

    invoke-static {v1}, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->access$300(Lcom/lge/sui/widget/window/SUITabHost$TabSpec;)Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;->tabClosed()V

    .line 276
    :cond_25
    iput p1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    .line 277
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;

    .line 281
    .local v0, spec:Lcom/lge/sui/widget/window/SUITabHost$TabSpec;
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    iget v2, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Lcom/lge/sui/widget/window/SUITabWidget;->focusCurrentTab(I)V

    .line 284
    invoke-static {v0}, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->access$300(Lcom/lge/sui/widget/window/SUITabHost$TabSpec;)Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/sui/widget/window/SUITabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    .line 286
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_59

    .line 287
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabContent:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 288
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabContent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    :cond_59
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    invoke-virtual {v1}, Lcom/lge/sui/widget/window/SUITabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_66

    .line 299
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 303
    :cond_66
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUITabHost;->invokeOnTabChangeListener()V

    goto :goto_b
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .registers 4
    .parameter "tag"

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 223
    iget-object v1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;

    invoke-virtual {v1}, Lcom/lge/sui/widget/window/SUITabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 224
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabHost;->setCurrentTab(I)V

    .line 228
    :cond_1e
    return-void

    .line 222
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setOnTabChangedListener(Lcom/lge/sui/widget/window/SUITabHost$OnTabChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mOnTabChangeListener:Lcom/lge/sui/widget/window/SUITabHost$OnTabChangeListener;

    .line 314
    return-void
.end method

.method public setup()V
    .registers 3

    .prologue
    .line 78
    const v0, 0x30a0046

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/sui/widget/window/SUITabWidget;

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    .line 79
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    if-nez v0, :cond_17

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_17
    new-instance v0, Lcom/lge/sui/widget/window/SUITabHost$1;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/window/SUITabHost$1;-><init>(Lcom/lge/sui/widget/window/SUITabHost;)V

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 102
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabWidget:Lcom/lge/sui/widget/window/SUITabWidget;

    new-instance v1, Lcom/lge/sui/widget/window/SUITabHost$2;

    invoke-direct {v1, p0}, Lcom/lge/sui/widget/window/SUITabHost$2;-><init>(Lcom/lge/sui/widget/window/SUITabHost;)V

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/window/SUITabWidget;->setTabSelectionListener(Lcom/lge/sui/widget/window/SUITabWidget$OnTabSelectionChanged;)V

    .line 111
    const v0, 0x30a0047

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUITabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabContent:Landroid/widget/LinearLayout;

    .line 112
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUITabHost;->mTabContent:Landroid/widget/LinearLayout;

    if-nez v0, :cond_3f

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_3f
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .registers 2
    .parameter "activityGroup"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUITabHost;->setup()V

    .line 127
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUITabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 128
    return-void
.end method
