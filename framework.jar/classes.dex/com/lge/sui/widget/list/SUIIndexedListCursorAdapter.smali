.class public abstract Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;
.super Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;
.source "SUIIndexedListCursorAdapter.java"


# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$1;,
        Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$MyDataSetObserver;,
        Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SUIIndexedListCursorAdapter"



# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Lcom/lge/sui/widget/list/internal/SUICursorFilter;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/lge/sui/widget/list/SUISectionIndexer;)V
    .registers 5
    .parameter "context"
    .parameter "cursor"
    .parameter "indexer"

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/lge/sui/widget/list/SUISectionIndexer;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/lge/sui/widget/list/SUISectionIndexer;Z)V
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "indexer"
    .parameter "autoRequery"

    .prologue
    .line 113
    invoke-direct {p0, p1, p3}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 72
    new-instance v0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$MyDataSetObserver;-><init>(Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$1;)V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 114
    invoke-direct {p0, p1, p2, p4}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 115
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "autoRequery"

    .prologue
    .line 118
    if-eqz p2, :cond_2a

    const/4 v1, 0x1

    move v0, v1

    .line 120
    .local v0, cursorPresent:Z
    :goto_4
    iput-boolean p3, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mAutoRequery:Z

    .line 121
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 122
    iput-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    .line 123
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mContext:Landroid/content/Context;

    .line 124
    if-eqz v0, :cond_2d

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    :goto_14
    iput v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mRowIDColumn:I

    .line 125
    new-instance v1, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;

    invoke-direct {v1, p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;-><init>(Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;)V

    iput-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mChangeObserver:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;

    .line 126
    if-eqz v0, :cond_29

    .line 127
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mChangeObserver:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 130
    :cond_29
    return-void

    .line 118
    .end local v0       #cursorPresent:Z,
    :cond_2a
    const/4 v1, 0x0

    move v0, v1

    goto :goto_4

    .line 124
    .restart local v0       #cursorPresent:Z,
    :cond_2d
    const/4 v1, -0x1

    goto :goto_14
.end method


# virtual methods
.method protected abstract bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 4
    .parameter "cursor"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_5

    .line 219
    :goto_4
    return-void

    .line 193
    :cond_5
    const-string v0, "SUIIndexedListCursorAdapter"

    const-string v1, "changeCursor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_23

    .line 196
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mChangeObserver:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 197
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 198
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_23
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 202
    if-eqz p1, :cond_43

    .line 203
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mChangeObserver:Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 204
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 205
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mRowIDColumn:I

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    .line 209
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->notifyDataSetChanged()V

    .line 218
    :goto_3f
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->refreshIndexer(Landroid/database/Cursor;)V

    goto :goto_4

    .line 211
    :cond_43
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mRowIDColumn:I

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    .line 215
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_3f
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "cursor"

    .prologue
    .line 402
    if-nez p1, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public getChild(II)Landroid/database/Cursor;
    .registers 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 282
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getDataPosition(II)I

    move-result v1

    .line 283
    .local v1, position:I
    if-eqz v0, :cond_12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, v0

    .line 287
    :goto_11
    return-object v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v1, :cond_13

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getDataPosition(II)I

    move-result v0

    .line 298
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getItemId(I)J

    move-result-wide v1

    .line 300
    .end local v0       #position:I,
    :goto_12
    return-wide v1

    :cond_13
    const-wide/16 v1, 0x0

    goto :goto_12
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v0

    .line 230
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1f

    iget-boolean v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_1f

    .line 232
    if-nez p4, :cond_1d

    .line 233
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p3, p5}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, v:Landroid/view/View;
    :goto_14
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0, p3}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V

    move-object v2, v1

    .line 240
    .end local v1       #v:Landroid/view/View;,
    :goto_1c
    return-object v2

    .line 235
    :cond_1d
    move-object v1, p4

    .restart local v1       #v:Landroid/view/View;,
    goto :goto_14

    .line 240
    .end local v1       #v:Landroid/view/View;,
    :cond_1f
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public getChildrenCount(I)I
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v1, :cond_11

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, count:I
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getDataCount(I)I

    move-result v0

    move v1, v0

    .line 315
    .end local v0       #count:I,
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 145
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 147
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    .line 365
    invoke-super {p0, p1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getDataCount(I)I

    move-result v0

    .line 368
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getDataPosition(II)I
    .registers 4
    .parameter "sectionIndex"
    .parameter "dataIndex"

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    .line 378
    invoke-super {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getDataPosition(II)I

    move-result v0

    .line 381
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursorFilter:Lcom/lge/sui/widget/list/internal/SUICursorFilter;

    if-nez v0, :cond_b

    .line 440
    new-instance v0, Lcom/lge/sui/widget/list/internal/SUICursorFilter;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/list/internal/SUICursorFilter;-><init>(Lcom/lge/sui/widget/list/internal/SUICursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursorFilter:Lcom/lge/sui/widget/list/internal/SUICursorFilter;

    .line 442
    :cond_b
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursorFilter:Lcom/lge/sui/widget/list/internal/SUICursorFilter;

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .registers 3
    .parameter "position"

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 156
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 157
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 159
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getItemId(I)J
    .registers 5
    .parameter "position"

    .prologue
    const-wide/16 v1, 0x0

    .line 167
    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1d

    .line 168
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 169
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 174
    :goto_1a
    return-wide v0

    :cond_1b
    move-wide v0, v1

    .line 171
    goto :goto_1a

    :cond_1d
    move-wide v0, v1

    .line 174
    goto :goto_1a
.end method

.method public getPositionForSection(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    .line 339
    invoke-super {p0, p1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getPositionForSection(I)I

    move-result v0

    .line 342
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter "position"

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    .line 352
    invoke-super {p0, p1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 355
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    .line 326
    invoke-super {p0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 328
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    goto :goto_e
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .registers 3

    .prologue
    .line 482
    const-string v0, "SUIIndexedListCursorAdapter"

    const-string v1, "ChangeObserver : onContentChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_24

    .line 485
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mDataValid:Z

    .line 486
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->refreshIndexer(Landroid/database/Cursor;)V

    .line 488
    :cond_24
    return-void
.end method

.method public abstract refreshIndexer(Landroid/database/Cursor;)V
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3
    .parameter "constraint"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_b

    .line 432
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 435
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mCursor:Landroid/database/Cursor;

    goto :goto_a
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .registers 2
    .parameter "filterQueryProvider"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListCursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 472
    return-void
.end method
