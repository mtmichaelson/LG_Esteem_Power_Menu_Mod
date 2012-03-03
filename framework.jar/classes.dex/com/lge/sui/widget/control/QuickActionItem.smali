.class public Lcom/lge/sui/widget/control/QuickActionItem;
.super Landroid/widget/ImageView;
.source "QuickActionItem.java"


# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I



# instance fields
.field private mChecked:Z



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/control/QuickActionItem;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/QuickActionItem;->mChecked:Z

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 4
    .parameter "extraSpace"

    .prologue
    .line 53
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 54
    .local v0, drawableState:[I
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/QuickActionItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 55
    sget-object v1, Lcom/lge/sui/widget/control/QuickActionItem;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/lge/sui/widget/control/QuickActionItem;->mergeDrawableStates([I[I)[I

    .line 57
    :cond_11
    return-object v0
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/QuickActionItem;->mChecked:Z

    if-eq v0, p1, :cond_9

    .line 70
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/QuickActionItem;->mChecked:Z

    .line 71
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/QuickActionItem;->refreshDrawableState()V

    .line 73
    :cond_9
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/QuickActionItem;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/QuickActionItem;->setChecked(Z)V

    .line 62
    return-void

    .line 61
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
