.class public Lcom/lge/sui/widget/list/item/SUIListItemView$ViewHolder;
.super Ljava/lang/Object;
.source "SUIListItemView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/item/SUIListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field holder:[Landroid/view/View;



# direct methods
.method public constructor <init>(Landroid/view/View;[I)V
    .registers 7
    .parameter "v"
    .parameter "childViews"

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    array-length v0, p2

    .line 265
    .local v0, count:I
    new-array v2, v0, [Landroid/view/View;

    iput-object v2, p0, Lcom/lge/sui/widget/list/item/SUIListItemView$ViewHolder;->holder:[Landroid/view/View;

    .line 266
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_18

    .line 267
    iget-object v2, p0, Lcom/lge/sui/widget/list/item/SUIListItemView$ViewHolder;->holder:[Landroid/view/View;

    aget v3, p2, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 266
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 269
    :cond_18
    return-void
.end method


# virtual methods
.method public getHolder()[Landroid/view/View;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lge/sui/widget/list/item/SUIListItemView$ViewHolder;->holder:[Landroid/view/View;

    return-object v0
.end method
