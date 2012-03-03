.class Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;
.super Landroid/widget/Filter;
.source "SUIListTableModelAdapter.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIListTableModelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TableModelFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;Lcom/lge/sui/widget/list/SUIListTableModelAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;-><init>(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 23
    .parameter "prefix"

    .prologue
    .line 371
    new-instance v12, Landroid/widget/Filter$FilterResults;

    invoke-direct {v12}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 372
    .local v12, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    move-object v9, v0

    .line 373
    .local v9, model:Lcom/lge/sui/widget/list/SUIListTableModel;
    invoke-virtual {v9}, Lcom/lge/sui/widget/list/SUIListTableModel;->getColumnBinder()Lcom/lge/sui/widget/list/SUIColumnBinder;

    move-result-object v2

    .line 375
    .local v2, colBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->access$100(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;)Ljava/util/ArrayList;

    move-result-object v18

    if-nez v18, :cond_32

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/ArrayList;

    invoke-virtual {v9}, Lcom/lge/sui/widget/list/SUIListTableModel;->getList()Ljava/util/List;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v18 .. v19}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->access$102(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 379
    :cond_32
    if-eqz p1, :cond_3a

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-nez v18, :cond_50

    .line 380
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->access$100(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    .line 381
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object v8, v12, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 382
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move-object v1, v12

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 427
    .end local v8       #list:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :goto_4f
    return-object v12

    .line 384
    :cond_50
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 386
    .local v11, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->access$100(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    .line 387
    .local v13, unfilteredValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 389
    .local v3, count:I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 391
    .local v10, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_6c
    if-ge v4, v3, :cond_c6

    .line 392
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    .line 394
    .local v14, value:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v14, :cond_c3

    .line 397
    invoke-virtual {v2}, Lcom/lge/sui/widget/list/SUIColumnBinder;->getColumnCount()I

    move-result v7

    .line 399
    .local v7, len:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_7b
    if-ge v5, v7, :cond_c3

    .line 400
    invoke-virtual {v2, v5}, Lcom/lge/sui/widget/list/SUIColumnBinder;->getColumnName(I)Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 403
    .local v15, valueText:Ljava/lang/String;
    if-nez v15, :cond_8f

    .line 399
    :cond_8c
    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 406
    :cond_8f
    invoke-virtual {v15, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_99

    .line 407
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 409
    :cond_99
    const-string v18, " "

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 410
    .local v17, words:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    .line 412
    .local v16, wordCount:I
    const/4 v6, 0x0

    .local v6, k:I
    :goto_a8
    move v0, v6

    move/from16 v1, v16

    if-ge v0, v1, :cond_8c

    .line 413
    aget-object v18, v17, v6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c0

    .line 414
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 412
    :cond_c0
    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    .line 391
    .end local v5       #j:I,
    .end local v6       #k:I,
    .end local v7       #len:I,
    .end local v15       #valueText:Ljava/lang/String;,
    .end local v16       #wordCount:I,
    .end local v17       #words:[Ljava/lang/String;,
    :cond_c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 423
    .end local v14       #value:Ljava/util/Map;,, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_c6
    iput-object v10, v12, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 424
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move-object v1, v12

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_4f
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    iget-object v2, v1, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/lge/sui/widget/list/SUIListTableModel;->setList(Ljava/util/List;)V

    .line 433
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    iget-object v1, v1, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIListTableModel;->getCount()I

    move-result v0

    .line 434
    .local v0, count:I
    iget v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v1, :cond_1d

    .line 435
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->notifyDataSetChanged()V

    .line 439
    :goto_1c
    return-void

    .line 437
    :cond_1d
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$TableModelFilter;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    invoke-virtual {v1}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->notifyDataSetInvalidated()V

    goto :goto_1c
.end method
