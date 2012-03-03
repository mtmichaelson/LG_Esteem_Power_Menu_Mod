.class public Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SUICheckableRelativeLayout.java"


# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/lge/sui/widget/list/SUIListItemConstant;


# static fields
.field public static final CHECKED_STATE_SET:[I



# instance fields
.field mCheckableView:Landroid/view/View;

.field mChecked:Z

.field mMode:I



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mChecked:Z

    .line 25
    iput v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mMode:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mChecked:Z

    .line 25
    iput v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mMode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput-boolean v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mChecked:Z

    .line 25
    iput v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mMode:I

    .line 42
    return-void
.end method


# virtual methods
.method public getCheckableView()Landroid/view/View;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mCheckableView:Landroid/view/View;

    return-object v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mChecked:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 86
    const v0, 0x30a001f

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mCheckableView:Landroid/view/View;

    .line 87
    return-void
.end method

.method public setChecked(Z)V
    .registers 5
    .parameter "checked"

    .prologue
    .line 57
    iget-boolean v1, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mChecked:Z

    if-eq v1, p1, :cond_13

    .line 58
    iput-boolean p1, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mChecked:Z

    .line 60
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mCheckableView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/Checkable;

    if-eqz v1, :cond_14

    .line 61
    iget-object p0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mCheckableView:Landroid/view/View;

    .end local p0       
    check-cast p0, Landroid/widget/Checkable;

    invoke-interface {p0, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 78
    :cond_13
    :goto_13
    return-void

    .line 62
    .restart local p0       
    :cond_14
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mCheckableView:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_13

    .line 63
    iget-object v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mCheckableView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .local v0, checkbox:Landroid/widget/ImageView;
    iget v1, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_28

    iget v1, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    .line 67
    :cond_28
    if-eqz p1, :cond_31

    const v1, 0x3020028

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13

    :cond_31
    const v1, 0x3020025

    goto :goto_2d

    .line 71
    :cond_35
    if-eqz p1, :cond_3e

    const v1, 0x302001a

    :goto_3a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_13

    :cond_3e
    const v1, 0x3020015

    goto :goto_3a
.end method

.method public setMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 45
    iput p1, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mMode:I

    .line 46
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mChecked:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/lge/sui/widget/list/internal/SUICheckableRelativeLayout;->mChecked:Z

    .line 82
    return-void

    .line 81
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method
