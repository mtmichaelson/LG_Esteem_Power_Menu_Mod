.class public Lcom/lge/sui/widget/list/model/SUIListTableModel;
.super Ljava/lang/Object;
.source "SUIListTableModel.java"



# static fields
.field public static final EXTRAINFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT1_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT2_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field

.field public static final TEXT3_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field private mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 300
    new-instance v0, Lcom/lge/sui/widget/list/model/SUIListTableModel$1;

    invoke-direct {v0}, Lcom/lge/sui/widget/list/model/SUIListTableModel$1;-><init>()V

    sput-object v0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->TEXT1_COMPARATOR:Ljava/util/Comparator;

    .line 312
    new-instance v0, Lcom/lge/sui/widget/list/model/SUIListTableModel$2;

    invoke-direct {v0}, Lcom/lge/sui/widget/list/model/SUIListTableModel$2;-><init>()V

    sput-object v0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->TEXT2_COMPARATOR:Ljava/util/Comparator;

    .line 324
    new-instance v0, Lcom/lge/sui/widget/list/model/SUIListTableModel$3;

    invoke-direct {v0}, Lcom/lge/sui/widget/list/model/SUIListTableModel$3;-><init>()V

    sput-object v0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->TEXT3_COMPARATOR:Ljava/util/Comparator;

    .line 336
    new-instance v0, Lcom/lge/sui/widget/list/model/SUIListTableModel$4;

    invoke-direct {v0}, Lcom/lge/sui/widget/list/model/SUIListTableModel$4;-><init>()V

    sput-object v0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->EXTRAINFO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/lge/sui/widget/list/SUIColumnBinder;)V
    .registers 3
    .parameter "colBinder"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/lge/sui/widget/list/model/SUIListTableModel;)V
    .registers 4
    .parameter "otherModel"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Lcom/lge/sui/widget/list/model/SUIListTableModel;->getColumnBinder()Lcom/lge/sui/widget/list/SUIColumnBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/lge/sui/widget/list/model/SUIListTableModel;->getList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    .line 115
    return-void
.end method


# virtual methods
.method public addColumnData(Ljava/util/HashMap;ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter "columnIndex"
    .parameter "aValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

    invoke-virtual {v0, p2}, Lcom/lge/sui/widget/list/SUIColumnBinder;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/lge/sui/widget/list/model/SUIListTableModel;->addColumnData(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public addColumnData(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter "columnName"
    .parameter "aValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method public addRowData(Ljava/util/HashMap;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public clearRowData()V
    .registers 5

    .prologue
    .line 205
    iget-object v3, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    .line 206
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 207
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_15

    .line 208
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 209
    .local v1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 211
    .end local v1       #data:Ljava/util/HashMap;,, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 212
    return-void
.end method

.method public createRowData()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getColumnBinder()Lcom/lge/sui/widget/list/SUIColumnBinder;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

    return-object v0
.end method

.method public getColumnDataAt(II)Ljava/lang/Object;
    .registers 5
    .parameter "rowIndex"
    .parameter "columnIndex"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 258
    .local v0, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_15

    .line 259
    iget-object v1, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

    invoke-virtual {v1, p2}, Lcom/lge/sui/widget/list/SUIColumnBinder;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 261
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRowData(I)Ljava/util/HashMap;
    .registers 3
    .parameter "rowIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public insertRowData(ILjava/util/HashMap;)V
    .registers 4
    .parameter "rowIndex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 184
    return-void
.end method

.method public removeRowData(I)Ljava/util/HashMap;
    .registers 4
    .parameter "rowIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v1, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    .line 195
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 197
    .local v0, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    return-object v0
.end method

.method public setColumnDataAt(IILjava/lang/Object;)V
    .registers 6
    .parameter "rowIndex"
    .parameter "columnIndex"
    .parameter "aValue"

    .prologue
    .line 276
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v0, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mColumnBinder:Lcom/lge/sui/widget/list/SUIColumnBinder;

    invoke-virtual {v1, p2}, Lcom/lge/sui/widget/list/SUIColumnBinder;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v1, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 279
    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    check-cast p1, Ljava/util/ArrayList;

    .end local p1       #data:Ljava/util/List;,, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    .line 145
    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Ljava/util/Map;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/model/SUIListTableModel;->mData:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    return-void
.end method
