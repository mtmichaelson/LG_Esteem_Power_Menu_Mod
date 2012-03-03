.class public Lcom/lge/appwidget/Andy_FinanceToggleTextView;
.super Landroid/widget/TextView;
.source "Andy_FinanceToggleTextView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_FinanceToggleTextView$1;,
        Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;,
        Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;
    }
.end annotation


# static fields
.field private static final KEY_TOGGLE_BROADCAST:Ljava/lang/String; = "toggle.broadcast"

.field private static final KEY_TOGGLE_INTENTS:Ljava/lang/String; = "toggle.intents"

.field private static final KEY_TOGGLE_STRINGS:Ljava/lang/String; = "toggle.strings"

.field private static final KEY_TOGGLE_TARGET_VIEW:Ljava/lang/String; = "toggle.target_view"

.field private static final KEY_TOGGLE_VISIBILITY_VALUES:Ljava/lang/String; = "toggle.visibility_values"

.field private static final LOG_TAG:Ljava/lang/String; = "Andy_FinanceToggleTextView"

.field private static final MIN_TOGGLE_DELAY:J = 0xbb8L



# instance fields
.field private mReceiverRegistered:Z

.field private mTargetViewId:I

.field private mToggleDelay:J

.field private mToggleHandler:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;

.field private mToggleIntents:[Landroid/os/Parcelable;

.field private mToggleReceiver:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;

.field private mToggleStrings:[Ljava/lang/String;

.field private mVisibilityValues:[I



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mTargetViewId:I

    .line 37
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleDelay:J

    .line 38
    new-instance v0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;-><init>(Lcom/lge/appwidget/Andy_FinanceToggleTextView;Lcom/lge/appwidget/Andy_FinanceToggleTextView$1;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleHandler:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleStrings:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->isVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lge/appwidget/Andy_FinanceToggleTextView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setTargetViewVisibility(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleDelay:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleHandler:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)[Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleIntents:[Landroid/os/Parcelable;

    return-object v0
.end method

.method private isVisible()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_f

    :cond_d
    move v2, v3

    .line 107
    :goto_e
    return v2

    .line 97
    :cond_f
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->getHeight()I

    move-result v2

    if-nez v2, :cond_1d

    :cond_1b
    move v2, v3

    .line 98
    goto :goto_e

    .line 101
    :cond_1d
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .local v1, p:Landroid/view/ViewParent;
    :goto_21
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_36

    .line 102
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_31

    move v2, v3

    .line 103
    goto :goto_e

    .line 101
    :cond_31
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_21

    .line 107
    :cond_36
    const/4 v2, 0x1

    goto :goto_e
.end method

.method private setTargetViewVisibility(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 156
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mVisibilityValues:[I

    .line 157
    .local v2, visibilityValues:[I
    iget v3, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mTargetViewId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    if-eqz v2, :cond_21

    array-length v3, v2

    if-ge p1, v3, :cond_21

    .line 158
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 159
    .local v0, parent:Landroid/view/View;
    if-eqz v0, :cond_21

    .line 160
    iget v3, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mTargetViewId:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_21

    .line 162
    aget v3, v2, p1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .end local v0       #parent:Landroid/view/View;,
    .end local v1       #view:Landroid/view/View;,
    :cond_21
    return-void
.end method

.method private setToggleReceiver(Z)V
    .registers 5
    .parameter "start"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleReceiver:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleIntents:[Landroid/os/Parcelable;

    if-nez v1, :cond_9

    .line 185
    :cond_8
    :goto_8
    return-void

    .line 173
    :cond_9
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mReceiverRegistered:Z

    if-eqz v1, :cond_19

    .line 175
    :try_start_d
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleReceiver:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mReceiverRegistered:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_19} :catch_33

    .line 180
    :cond_19
    :goto_19
    if-eqz p1, :cond_8

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleReceiver:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;

    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleReceiver:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mReceiverRegistered:Z

    goto :goto_8

    .line 177
    .end local v0       #filter:Landroid/content/IntentFilter;,
    :catch_33
    move-exception v1

    goto :goto_19
.end method

.method private setToggleState(Z)V
    .registers 3
    .parameter "start"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleHandler:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;

    if-eqz v0, :cond_b

    .line 84
    if-eqz p1, :cond_c

    .line 85
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleHandler:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->start()V

    .line 90
    :cond_b
    :goto_b
    return-void

    .line 87
    :cond_c
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleHandler:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->stop()V

    goto :goto_b
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 61
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleState(Z)V

    .line 62
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleReceiver(Z)V

    .line 63
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 68
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleState(Z)V

    .line 69
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleReceiver(Z)V

    .line 70
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 75
    if-eqz p1, :cond_7

    if-nez p2, :cond_c

    .line 76
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleState(Z)V

    .line 80
    :cond_b
    :goto_b
    return-void

    .line 77
    :cond_c
    if-eqz p3, :cond_10

    if-nez p4, :cond_b

    .line 78
    :cond_10
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleState(Z)V

    goto :goto_b
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 55
    if-nez p2, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleState(Z)V

    .line 56
    return-void

    .line 55
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasWindowFocus"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowFocusChanged(Z)V

    .line 49
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleState(Z)V

    .line 50
    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .registers 8
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0, v4}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleState(Z)V

    .line 228
    invoke-direct {p0, v4}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleReceiver(Z)V

    .line 229
    iput-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleReceiver:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;

    .line 231
    const-string/jumbo v1, "toggle.strings"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleStrings:[Ljava/lang/String;

    .line 232
    const-string/jumbo v1, "toggle.intents"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleIntents:[Landroid/os/Parcelable;

    .line 233
    const-string/jumbo v1, "toggle.target_view"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mTargetViewId:I

    .line 234
    const-string/jumbo v1, "toggle.visibility_values"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mVisibilityValues:[I

    .line 236
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleStrings:[Ljava/lang/String;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleStrings:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_45

    .line 237
    :cond_39
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iput-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleStrings:[Ljava/lang/String;

    .line 239
    iput-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleIntents:[Landroid/os/Parcelable;

    .line 240
    iput v3, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mTargetViewId:I

    .line 241
    iput-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mVisibilityValues:[I

    .line 258
    :cond_44
    :goto_44
    return-void

    .line 243
    :cond_45
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleStrings:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleStrings:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v5, :cond_6c

    .line 245
    invoke-direct {p0, v5}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleState(Z)V

    .line 252
    :goto_54
    const-string/jumbo v1, "toggle.broadcast"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleIntents:[Landroid/os/Parcelable;

    if-eqz v1, :cond_44

    .line 254
    new-instance v1, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;

    invoke-direct {v1, p0, v0}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;-><init>(Lcom/lge/appwidget/Andy_FinanceToggleTextView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleReceiver:Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;

    .line 255
    invoke-direct {p0, v5}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->setToggleReceiver(Z)V

    goto :goto_44

    .line 247
    .end local v0       #action:Ljava/lang/String;,
    :cond_6c
    iput-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleStrings:[Ljava/lang/String;

    .line 248
    iput v3, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mTargetViewId:I

    .line 249
    iput-object v2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mVisibilityValues:[I

    goto :goto_54
.end method

.method public setToggleDelay(J)V
    .registers 5
    .parameter "delayMillis"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 219
    const-wide/16 v0, 0xbb8

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    .line 220
    const-wide/16 p1, 0xbb8

    .line 222
    :cond_8
    iput-wide p1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->mToggleDelay:J

    .line 223
    return-void
.end method
