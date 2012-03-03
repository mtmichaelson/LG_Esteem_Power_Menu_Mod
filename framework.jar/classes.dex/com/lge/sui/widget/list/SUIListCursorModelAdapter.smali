.class public Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;
.super Landroid/widget/CursorAdapter;
.source "SUIListCursorModelAdapter.java"



# instance fields
.field protected mCursorModel:Lcom/lge/sui/widget/list/SUIListCursorModel;

.field protected mItemStyle:I

.field protected mViewFactory:Lcom/lge/sui/widget/list/SUIListItemViewFactory;



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListCursorModel;I)V
    .registers 5
    .parameter "context"
    .parameter "cursorModel"
    .parameter "itemStyle"

    .prologue
    .line 129
    new-instance v0, Lcom/lge/sui/widget/list/SUIListItemViewFactory;

    invoke-direct {v0}, Lcom/lge/sui/widget/list/SUIListItemViewFactory;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListCursorModel;ILcom/lge/sui/widget/list/SUIListItemViewFactory;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListCursorModel;ILcom/lge/sui/widget/list/SUIListItemViewFactory;)V
    .registers 6
    .parameter "context"
    .parameter "cursorModel"
    .parameter "itemStyle"
    .parameter "factory"

    .prologue
    .line 153
    invoke-virtual {p2}, Lcom/lge/sui/widget/list/SUIListCursorModel;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 154
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mCursorModel:Lcom/lge/sui/widget/list/SUIListCursorModel;

    .line 155
    iput p3, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mItemStyle:I

    .line 156
    iput-object p4, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mViewFactory:Lcom/lge/sui/widget/list/SUIListItemViewFactory;

    .line 158
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mCursorModel:Lcom/lge/sui/widget/list/SUIListCursorModel;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIListCursorModel;->findColumns()V

    .line 159
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;

    .line 197
    .local v8, viewHolder:Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 199
    .local v5, position:I
    invoke-virtual {v8}, Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;->getHolder()[Landroid/view/View;

    move-result-object v3

    .line 200
    .local v3, holder:[Landroid/view/View;
    array-length v1, v3

    .line 203
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_10
    if-ge v4, v1, :cond_7b

    .line 204
    aget-object v7, v3, v4

    .line 205
    .local v7, v:Landroid/view/View;
    if-eqz v7, :cond_31

    .line 208
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mCursorModel:Lcom/lge/sui/widget/list/SUIListCursorModel;

    invoke-virtual {v9, v5, v4}, Lcom/lge/sui/widget/list/SUIListCursorModel;->getColumnDataAt(II)Ljava/lang/Object;

    move-result-object v2

    .line 209
    .local v2, data:Ljava/lang/Object;
    if-nez v2, :cond_34

    const-string v9, ""

    move-object v6, v9

    .line 210
    .local v6, text:Ljava/lang/String;
    :goto_21
    if-nez v6, :cond_25

    .line 211
    const-string v6, ""

    .line 214
    :cond_25
    const/4 v0, 0x0

    .line 219
    .local v0, bound:Z
    if-nez v0, :cond_31

    .line 220
    instance-of v9, v7, Landroid/widget/TextView;

    if-eqz v9, :cond_3a

    .line 221
    check-cast v7, Landroid/widget/TextView;

    .end local v7       #v:Landroid/view/View;,
    invoke-virtual {p0, v7, v6}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 203
    .end local v0       #bound:Z,
    .end local v2       #data:Ljava/lang/Object;,
    .end local v6       #text:Ljava/lang/String;,
    :cond_31
    :goto_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 209
    .restart local v2       #data:Ljava/lang/Object;,
    .restart local v7       #v:Landroid/view/View;,
    :cond_34
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    goto :goto_21

    .line 222
    .restart local v0       #bound:Z,
    .restart local v6       #text:Ljava/lang/String;,
    :cond_3a
    instance-of v9, v7, Landroid/widget/ImageView;

    if-eqz v9, :cond_54

    .line 223
    instance-of v9, v2, Ljava/lang/Integer;

    if-eqz v9, :cond_4e

    .line 224
    check-cast v7, Landroid/widget/ImageView;

    .end local v7       #v:Landroid/view/View;,
    check-cast v2, Ljava/lang/Integer;

    .end local v2       #data:Ljava/lang/Object;,
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v7, v9}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_31

    .line 226
    .restart local v2       #data:Ljava/lang/Object;,
    .restart local v7       #v:Landroid/view/View;,
    :cond_4e
    check-cast v7, Landroid/widget/ImageView;

    .end local v7       #v:Landroid/view/View;,
    invoke-virtual {p0, v7, v6}, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_31

    .line 229
    .restart local v7       #v:Landroid/view/View;,
    :cond_54
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not a "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " view that can be bounds by this SimpleAdapter"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 237
    .end local v0       #bound:Z,
    .end local v2       #data:Ljava/lang/Object;,
    .end local v6       #text:Ljava/lang/String;,
    .end local v7       #v:Landroid/view/View;,
    :cond_7b
    return-void
.end method

.method public changeColumns()V
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mCursorModel:Lcom/lge/sui/widget/list/SUIListCursorModel;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIListCursorModel;->findColumns()V

    .line 335
    return-void
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 325
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mCursorModel:Lcom/lge/sui/widget/list/SUIListCursorModel;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIListCursorModel;->findColumns()V

    .line 326
    return-void
.end method

.method public getModel()Lcom/lge/sui/widget/list/SUIListCursorModel;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mCursorModel:Lcom/lge/sui/widget/list/SUIListCursorModel;

    return-object v0
.end method

.method public getViewFactory()Lcom/lge/sui/widget/list/SUIListItemViewFactory;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mViewFactory:Lcom/lge/sui/widget/list/SUIListItemViewFactory;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mViewFactory:Lcom/lge/sui/widget/list/SUIListItemViewFactory;

    iget v1, p0, Lcom/lge/sui/widget/list/SUIListCursorModelAdapter;->mItemStyle:I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p3, v1, v2}, Lcom/lge/sui/widget/list/SUIListItemViewFactory;->createItemView(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected setViewImage(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "v"
    .parameter "value"

    .prologue
    .line 243
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    return-void
.end method

.method protected setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5
    .parameter "v"
    .parameter "value"

    .prologue
    .line 251
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 255
    :goto_7
    return-void

    .line 252
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 253
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_7
.end method

.method protected setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .parameter "v"
    .parameter "text"

    .prologue
    .line 261
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method
