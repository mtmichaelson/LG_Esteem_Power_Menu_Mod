.class public Lcom/lge/sui/widget/list/SUIListTableModelAdapter;
.super Landroid/widget/BaseAdapter;
.source "SUIListTableModelAdapter.java"


# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/SUIListTableModelAdapter$ViewBinder;,
        Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDropListener:Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;

.field private mFilter:Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;

.field protected mItemStyle:I

.field protected mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

.field private mRemoveListener:Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mViewBinder:Lcom/lge/sui/widget/list/SUIListTableModelAdapter$ViewBinder;

.field protected mViewFactory:Lcom/lge/sui/widget/list/SUIListItemViewFactory;



# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListTableModel;I)V
    .registers 5
    .parameter "context"
    .parameter "model"
    .parameter "itemStyle"

    .prologue
    .line 114
    new-instance v0, Lcom/lge/sui/widget/list/SUIListItemViewFactory;

    invoke-direct {v0}, Lcom/lge/sui/widget/list/SUIListItemViewFactory;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListTableModel;ILcom/lge/sui/widget/list/SUIListItemViewFactory;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListTableModel;ILcom/lge/sui/widget/list/SUIListItemViewFactory;)V
    .registers 6
    .parameter "context"
    .parameter "model"
    .parameter "itemStyle"
    .parameter "factory"

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 340
    new-instance v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$1;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$1;-><init>(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;)V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mDropListener:Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;

    .line 353
    new-instance v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$2;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$2;-><init>(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;)V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mRemoveListener:Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;

    .line 137
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    .line 139
    iput p3, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mItemStyle:I

    .line 140
    iput-object p4, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mViewFactory:Lcom/lge/sui/widget/list/SUIListItemViewFactory;

    .line 141
    return-void
.end method

.method static synthetic access$100(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public bindView(Landroid/content/Context;ILandroid/view/View;)V
    .registers 21
    .parameter "context"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;

    .line 262
    .local v13, viewHolder:Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/lge/sui/widget/list/SUIListTableModel;->getColumnBinder()Lcom/lge/sui/widget/list/SUIColumnBinder;

    move-result-object v5

    .line 263
    .local v5, colBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 265
    .local v8, dataSet:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mViewBinder:Lcom/lge/sui/widget/list/SUIListTableModelAdapter$ViewBinder;

    move-object v3, v0

    .line 266
    .local v3, binder:Lcom/lge/sui/widget/list/SUIListTableModelAdapter$ViewBinder;
    invoke-virtual {v13}, Lcom/lge/sui/widget/list/SUIListItemView$ViewHolder;->getHolder()[Landroid/view/View;

    move-result-object v9

    .line 267
    .local v9, holder:[Landroid/view/View;
    array-length v6, v9

    .line 269
    .local v6, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_24
    if-ge v10, v6, :cond_a3

    .line 270
    aget-object v12, v9, v10

    .line 271
    .local v12, v:Landroid/view/View;
    if-eqz v12, :cond_51

    .line 272
    invoke-virtual {v5, v10}, Lcom/lge/sui/widget/list/SUIColumnBinder;->getColumnName(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 273
    .local v7, data:Ljava/lang/Object;
    if-nez v7, :cond_54

    const-string v14, ""

    move-object v11, v14

    .line 274
    .local v11, text:Ljava/lang/String;
    :goto_37
    if-nez v11, :cond_3b

    .line 275
    const-string v11, ""

    .line 278
    :cond_3b
    const/4 v4, 0x0

    .line 280
    .local v4, bound:Z
    if-eqz v3, :cond_42

    .line 281
    invoke-interface {v3, v12, v8, v10}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/util/HashMap;I)Z

    move-result v4

    .line 284
    :cond_42
    if-nez v4, :cond_51

    .line 285
    instance-of v14, v12, Landroid/widget/TextView;

    if-eqz v14, :cond_5a

    .line 286
    check-cast v12, Landroid/widget/TextView;

    .end local v12       #v:Landroid/view/View;,
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 269
    .end local v4       #bound:Z,
    .end local v7       #data:Ljava/lang/Object;,
    .end local v11       #text:Ljava/lang/String;,
    :cond_51
    :goto_51
    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    .line 273
    .restart local v7       #data:Ljava/lang/Object;,
    .restart local v12       #v:Landroid/view/View;,
    :cond_54
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    goto :goto_37

    .line 287
    .restart local v4       #bound:Z,
    .restart local v11       #text:Ljava/lang/String;,
    :cond_5a
    instance-of v14, v12, Landroid/widget/ImageView;

    if-eqz v14, :cond_7c

    .line 288
    instance-of v14, v7, Ljava/lang/Integer;

    if-eqz v14, :cond_72

    .line 289
    check-cast v12, Landroid/widget/ImageView;

    .end local v12       #v:Landroid/view/View;,
    check-cast v7, Ljava/lang/Integer;

    .end local v7       #data:Ljava/lang/Object;,
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_51

    .line 291
    .restart local v7       #data:Ljava/lang/Object;,
    .restart local v12       #v:Landroid/view/View;,
    :cond_72
    check-cast v12, Landroid/widget/ImageView;

    .end local v12       #v:Landroid/view/View;,
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_51

    .line 294
    .restart local v12       #v:Landroid/view/View;,
    :cond_7c
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not a "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " view that can be bounds by this SimpleAdapter"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 302
    .end local v4       #bound:Z,
    .end local v7       #data:Ljava/lang/Object;,
    .end local v11       #text:Ljava/lang/String;,
    .end local v12       #v:Landroid/view/View;,
    :cond_a3
    return-void
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    .line 188
    .local v0, model:Lcom/lge/sui/widget/list/SUIListTableModel;
    if-eqz v0, :cond_9

    .line 189
    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIListTableModel;->getCount()I

    move-result v1

    .line 191
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getDropListener()Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mDropListener:Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mFilter:Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;

    if-nez v0, :cond_c

    .line 363
    new-instance v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;-><init>(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;Lcom/lge/sui/widget/list/SUIListTableModelAdapter$1;)V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mFilter:Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;

    .line 365
    :cond_c
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mFilter:Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    .line 200
    .local v0, model:Lcom/lge/sui/widget/list/SUIListTableModel;
    if-eqz v0, :cond_9

    .line 201
    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/list/SUIListTableModel;->getRowData(I)Ljava/util/HashMap;

    move-result-object v1

    .line 203
    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 211
    int-to-long v0, p1

    return-wide v0
.end method

.method public getModel()Lcom/lge/sui/widget/list/SUIListTableModel;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    return-object v0
.end method

.method public getRemoveListener()Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mRemoveListener:Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    .line 219
    .local v0, itemModel:Lcom/lge/sui/widget/list/SUIListTableModel;
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mViewFactory:Lcom/lge/sui/widget/list/SUIListItemViewFactory;

    .line 221
    .local v2, viewFactory:Lcom/lge/sui/widget/list/SUIListItemViewFactory;
    if-nez v0, :cond_f

    .line 222
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "this should only be called when the model is valid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    :cond_f
    if-nez p2, :cond_1d

    .line 228
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2, p3}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->newView(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListItemViewFactory;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 233
    .local v1, v:Landroid/view/View;
    :goto_17
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, p1, v1}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->bindView(Landroid/content/Context;ILandroid/view/View;)V

    .line 235
    return-object v1

    .line 230
    .end local v1       #v:Landroid/view/View;,
    :cond_1d
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;,
    goto :goto_17
.end method

.method public getViewBinder()Lcom/lge/sui/widget/list/SUIListTableModelAdapter$ViewBinder;
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mViewBinder:Lcom/lge/sui/widget/list/SUIListTableModelAdapter$ViewBinder;

    return-object v0
.end method

.method public getViewFactory()Lcom/lge/sui/widget/list/SUIListItemViewFactory;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mViewFactory:Lcom/lge/sui/widget/list/SUIListItemViewFactory;

    return-object v0
.end method

.method public newView(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListItemViewFactory;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "context"
    .parameter "viewFactory"
    .parameter "parent"

    .prologue
    .line 248
    iget v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mItemStyle:I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, p3, v0, v1}, Lcom/lge/sui/widget/list/SUIListItemViewFactory;->createItemView(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setViewBinder(Lcom/lge/sui/widget/list/SUIListTableModelAdapter$ViewBinder;)V
    .registers 2
    .parameter "viewBinder"

    .prologue
    .line 461
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mViewBinder:Lcom/lge/sui/widget/list/SUIListTableModelAdapter$ViewBinder;

    .line 462
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter "v"
    .parameter "value"

    .prologue
    .line 311
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5
    .parameter "v"
    .parameter "value"

    .prologue
    .line 322
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 326
    :goto_7
    return-void

    .line 323
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 324
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_7
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .parameter "v"
    .parameter "text"

    .prologue
    .line 335
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method
