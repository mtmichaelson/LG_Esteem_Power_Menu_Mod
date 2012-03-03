.class public Lcom/lge/sui/widget/list/internal/SUICursorFilter;
.super Landroid/widget/Filter;
.source "SUICursorFilter.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;
    }
.end annotation


# instance fields
.field mClient:Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;



# direct methods
.method public constructor <init>(Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;)V
    .registers 2
    .parameter "client"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/lge/sui/widget/list/internal/SUICursorFilter;->mClient:Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;

    .line 37
    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "resultValue"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/sui/widget/list/internal/SUICursorFilter;->mClient:Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;

    check-cast p1, Landroid/database/Cursor;

    .end local p1       
    invoke-interface {v0, p1}, Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 46
    iget-object v2, p0, Lcom/lge/sui/widget/list/internal/SUICursorFilter;->mClient:Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;

    invoke-interface {v2, p1}, Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 48
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 49
    .local v1, results:Landroid/widget/Filter$FilterResults;
    if-eqz v0, :cond_16

    .line 50
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 51
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 56
    :goto_15
    return-object v1

    .line 53
    :cond_16
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 54
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_15
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUICursorFilter;->mClient:Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;

    invoke-interface {v1}, Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 63
    .local v0, oldCursor:Landroid/database/Cursor;
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_17

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eq v1, v0, :cond_17

    .line 64
    iget-object v1, p0, Lcom/lge/sui/widget/list/internal/SUICursorFilter;->mClient:Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;

    iget-object p0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .end local p0       
    check-cast p0, Landroid/database/Cursor;

    invoke-interface {v1, p0}, Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;->changeCursor(Landroid/database/Cursor;)V

    .line 66
    :cond_17
    return-void
.end method
