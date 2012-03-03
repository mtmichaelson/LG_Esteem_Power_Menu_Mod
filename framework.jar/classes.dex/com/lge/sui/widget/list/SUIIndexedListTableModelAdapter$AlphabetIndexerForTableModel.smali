.class Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;
.super Ljava/lang/Object;
.source "SUIIndexedListTableModelAdapter.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUISectionIndexer;
.implements Lcom/lge/sui/widget/list/internal/SUISectionScrollerHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphabetIndexerForTableModel"
.end annotation


# instance fields
.field private mCollator:Ljava/text/Collator;

.field private mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

.field private mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

.field private mSectionLength:I

.field private mSectionMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedColumnIndex:I

.field private mTotalSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;



# direct methods
.method public constructor <init>(Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;Landroid/content/Context;Lcom/lge/sui/widget/list/SUIListTableModel;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter "context"
    .parameter "model"
    .parameter "sortedColumnName"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mTotalSections:Ljava/util/ArrayList;

    .line 175
    iput-object p3, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    .line 176
    invoke-virtual {p3}, Lcom/lge/sui/widget/list/SUIListTableModel;->getColumnBinder()Lcom/lge/sui/widget/list/SUIColumnBinder;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/lge/sui/widget/list/SUIColumnBinder;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSortedColumnIndex:I

    .line 179
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mCollator:Ljava/text/Collator;

    .line 180
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mCollator:Ljava/text/Collator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 182
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->getLocaleUtils(Ljava/util/Locale;)Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    .line 184
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    invoke-interface {v2, p2}, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;->getSectionIndexArray(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, indexArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_43
    array-length v2, v1

    if-ge v0, v2, :cond_61

    .line 186
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mTotalSections:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 191
    :cond_61
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->initSectionMap()V

    .line 192
    return-void
.end method

.method private compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .parameter "word"
    .parameter "letter"

    .prologue
    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 197
    const-string v0, " "

    .line 202
    .local v0, firstLetter:Ljava/lang/String;
    :goto_8
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, v0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 199
    .end local v0       #firstLetter:Ljava/lang/String;,
    :cond_f
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #firstLetter:Ljava/lang/String;,
    goto :goto_8
.end method

.method private initSectionMap()V
    .registers 11

    .prologue
    .line 206
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    .line 208
    .local v4, model:Lcom/lge/sui/widget/list/SUIListTableModel;
    if-nez v4, :cond_5

    .line 235
    :goto_4
    return-void

    .line 212
    :cond_5
    const/4 v7, 0x0

    .line 213
    .local v7, targetLetter:Ljava/lang/String;
    iget v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSortedColumnIndex:I

    .line 214
    .local v0, columnIndex:I
    invoke-virtual {v4}, Lcom/lge/sui/widget/list/SUIListTableModel;->getCount()I

    move-result v1

    .line 215
    .local v1, dataSize:I
    const/4 v5, 0x0

    .local v5, position:I
    :goto_d
    if-ge v5, v1, :cond_49

    .line 216
    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mLocaleUtils:Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;

    invoke-virtual {v4, v5, v0}, Lcom/lge/sui/widget/list/SUIListTableModel;->getColumnDataAt(II)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v9, v8}, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;->getSectionIndex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 217
    const/4 v6, 0x0

    .line 218
    .local v6, sectionIndex:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_1d
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_34

    .line 219
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_46

    .line 220
    move v6, v3

    .line 225
    :cond_34
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 218
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 228
    .end local v3       #index:I,
    .end local v6       #sectionIndex:I,
    :cond_49
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int v2, v8, v9

    .local v2, i:I
    :goto_52
    const/4 v8, -0x1

    if-le v2, v8, :cond_70

    .line 229
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_6d

    .line 230
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 231
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 228
    :cond_6d
    add-int/lit8 v2, v2, -0x1

    goto :goto_52

    .line 234
    :cond_70
    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput v8, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionLength:I

    goto :goto_4
.end method


# virtual methods
.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDataPosition(II)I
    .registers 4
    .parameter "sectionIndex"
    .parameter "dataIndex"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getGroupPosition(Ljava/lang/String;)I
    .registers 8
    .parameter "sectionTitle"

    .prologue
    const/4 v5, -0x1

    .line 275
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 276
    .local v1, position:I
    if-ne v1, v5, :cond_28

    .line 277
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mTotalSections:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 278
    .local v2, start:I
    move v0, v2

    .local v0, i:I
    :goto_12
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mTotalSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    .line 279
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mTotalSections:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 280
    if-le v1, v5, :cond_30

    .line 286
    .end local v0       #i:I,
    .end local v2       #start:I,
    :cond_28
    if-ne v1, v5, :cond_2f

    .line 287
    iget v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionLength:I

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 290
    :cond_2f
    return v1

    .line 278
    .restart local v0       #i:I,
    .restart local v2       #start:I,
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method public getPositionForSection(I)I
    .registers 5
    .parameter "sectionIndex"

    .prologue
    const/4 v2, 0x0

    .line 242
    if-gez p1, :cond_5

    move v0, v2

    .line 249
    .end local p0       
    :goto_4
    return v0

    .line 245
    .restart local p0       
    :cond_5
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 246
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 249
    :cond_16
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4
.end method

.method public getSectionForPosition(I)I
    .registers 7
    .parameter "position"

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    .line 255
    .local v1, map:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 256
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/List;

    .line 257
    .restart local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 258
    move v2, v0

    .line 263
    :cond_1f
    return v2

    .line 255
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListTableModelAdapter$AlphabetIndexerForTableModel;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
