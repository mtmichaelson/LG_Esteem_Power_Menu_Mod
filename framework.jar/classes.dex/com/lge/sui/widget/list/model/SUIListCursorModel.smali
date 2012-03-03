.class public Lcom/lge/sui/widget/list/model/SUIListCursorModel;
.super Ljava/lang/Object;
.source "SUIListCursorModel.java"



# instance fields
.field private mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

.field private mCursor:Landroid/database/Cursor;

.field private mFrom:[I



# direct methods
.method public constructor <init>(Lcom/lge/sui/widget/list/SUIColumnBinder;Landroid/database/Cursor;)V
    .registers 3
    .parameter "colBinder"
    .parameter "cursor"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

    .line 85
    iput-object p2, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mCursor:Landroid/database/Cursor;

    .line 86
    return-void
.end method


# virtual methods
.method public findColumns()V
    .registers 7

    .prologue
    .line 132
    iget-object v2, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mCursor:Landroid/database/Cursor;

    .line 133
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_33

    .line 135
    iget-object v4, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

    invoke-virtual {v4}, Lcom/lge/sui/widget/list/SUIColumnBinder;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, columns:[Ljava/lang/String;
    array-length v1, v0

    .line 138
    .local v1, count:I
    iget-object v4, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mFrom:[I

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mFrom:[I

    array-length v4, v4

    if-eq v4, v1, :cond_18

    .line 139
    :cond_14
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mFrom:[I

    .line 142
    :cond_18
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v1, :cond_36

    .line 143
    aget-object v4, v0, v3

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mFrom:[I

    aget-object v5, v0, v3

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v3

    .line 142
    :goto_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 144
    :cond_2c
    iget-object v4, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mFrom:[I

    const/16 v5, -0xa

    aput v5, v4, v3

    goto :goto_29

    .line 148
    .end local v0       #columns:[Ljava/lang/String;,
    .end local v1       #count:I,
    .end local v3       #i:I,
    :cond_33
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mFrom:[I

    .line 150
    :cond_36
    return-void
.end method

.method public getColumnBinder()Lcom/lge/sui/widget/list/SUIColumnBinder;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

    return-object v0
.end method

.method public getColumnDataAt(II)Ljava/lang/Object;
    .registers 4
    .parameter "rowIndex"
    .parameter "columnIndex"

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->findColumns()V

    .line 122
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-eq p1, v0, :cond_10

    .line 123
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 125
    :cond_10
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->makeAndBindValue(IILandroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected makeAndBindValue(IILandroid/database/Cursor;)Ljava/lang/Object;
    .registers 5
    .parameter "rowIndex"
    .parameter "columnIndexAtModel"
    .parameter "cursor"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListCursorModel;->mFrom:[I

    aget v0, v0, p2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
