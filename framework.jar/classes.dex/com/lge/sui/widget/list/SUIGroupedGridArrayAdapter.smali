.class public abstract Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;
.super Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;
.source "SUIGroupedGridArrayAdapter.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;,
        Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lge/sui/widget/list/SUIGroupIndexable;",
        ">",
        "Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;"
    }
.end annotation


# static fields
.field public static final DEFAULT_GRID_HORIZONTAL_SPACING:I = 0x5

.field public static final DEFAULT_GRID_LIST_PADDING:I = 0x5

.field public static final DEFAULT_GRID_NUM_COLUMNS:I = 0x4



# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mGridHeight:I

.field protected mGridItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mGridItemLayout:I

.field private mIndexer:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mNumColumns:I



# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;Ljava/util/List;)V
    .registers 7
    .parameter "context"
    .parameter "numColumns"
    .parameter "gridItemLayout"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    .local p4, allGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mNumColumns:I

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridHeight:I

    .line 124
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mContext:Landroid/content/Context;

    .line 125
    iput p3, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridItemLayout:I

    .line 127
    if-lez p2, :cond_11

    .line 128
    iput p2, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mNumColumns:I

    .line 131
    :cond_11
    iput-object p5, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mDataList:Ljava/util/List;

    .line 134
    new-instance v0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;

    .line 135
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;

    invoke-super {p0, v0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->setIndexer(Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V
    .registers 11
    .parameter "context"
    .parameter "gridItemLayout"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    .local p3, allGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v2, 0x4

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Ljava/util/List;)V

    .line 107
    return-void
.end method

.method private configureGridHeight(Landroid/widget/GridView;Ljava/util/List;)V
    .registers 10
    .parameter "grid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridView;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    .local p2, gridItems:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v6, 0x0

    .line 207
    if-eqz p2, :cond_9

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 228
    :cond_9
    :goto_9
    return-void

    .line 212
    :cond_a
    iget v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridHeight:I

    if-gtz v4, :cond_39

    .line 214
    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v6, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 216
    .local v2, itemView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 217
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v6, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 219
    .local v0, childHeightSpec:I
    invoke-virtual {v2, v6, v0}, Landroid/view/View;->measure(II)V

    .line 220
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridHeight:I

    .line 222
    iget v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridHeight:I

    const/high16 v5, 0x4120

    invoke-virtual {p0, v5}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->getPixel(F)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridHeight:I

    .line 225
    .end local v0       #childHeightSpec:I,
    .end local v2       #itemView:Landroid/view/View;,
    .end local v3       #p:Landroid/view/ViewGroup$LayoutParams;,
    :cond_39
    invoke-virtual {p1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 226
    .local v1, gridLayout:Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridHeight:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 227
    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9
.end method

.method private fixGroupCount(Landroid/view/View;IZ)V
    .registers 6
    .parameter "groupView"
    .parameter "groupPosition"
    .parameter "isExpanded"

    .prologue
    .line 278
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    const v1, 0x30a003a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    .local v0, countView:Landroid/widget/TextView;
    if-eqz v0, :cond_1a

    if-nez p3, :cond_1a

    .line 280
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;

    invoke-virtual {v1, p2}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->getSectionItemSize(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_1a
    return-void
.end method

.method static getRowCount(II)I
    .registers 4
    .parameter "itemCount"
    .parameter "columns"

    .prologue
    .line 285
    add-int v0, p0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public abstract bindGridItemView(Landroid/view/View;Lcom/lge/sui/widget/list/SUIGroupIndexable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->getChild(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/util/List;
    .registers 4
    .parameter "groupPosition"
    .parameter "childPosition"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;

    invoke-virtual {v0, p1, p2}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->getSectionRowItems(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .registers 6
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 243
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->getDataPosition(II)I

    move-result v0

    .line 244
    .local v0, position:I
    int-to-long v1, v0

    return-wide v1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 157
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    const/4 v1, 0x0

    .line 159
    .local v1, grid:Landroid/widget/GridView;
    if-nez p4, :cond_33

    .line 163
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->getInflator()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x3030028

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p5, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .end local v1       #grid:Landroid/widget/GridView;,
    check-cast v1, Landroid/widget/GridView;

    .line 176
    .restart local v1       #grid:Landroid/widget/GridView;,
    iget v3, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mNumColumns:I

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 181
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v3, :cond_1f

    .line 182
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    :cond_1f
    :goto_1f
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->getChild(II)Ljava/util/List;

    move-result-object v2

    .line 189
    .local v2, gridItems:Ljava/util/List;,"Ljava/util/List<TT;>;"
    new-instance v3, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;

    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridItemLayout:I

    invoke-direct {v3, v4, p0, v5, v2}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$GridItemAdapter;-><init>(Landroid/content/Context;Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;ILjava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    invoke-direct {p0, v1, v2}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->configureGridHeight(Landroid/widget/GridView;Ljava/util/List;)V

    .line 191
    return-object v1

    .line 185
    .end local v2       #gridItems:Ljava/util/List;,, "Ljava/util/List<TT;>;"
    :cond_33
    move-object v0, p4

    check-cast v0, Landroid/widget/GridView;

    move-object v1, v0

    goto :goto_1f
.end method

.method public final getChildrenCount(I)I
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 252
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;->getSectionItemSize(I)I

    move-result v0

    iget v1, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mNumColumns:I

    invoke-static {v0, v1}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->getRowCount(II)I

    move-result v0

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 266
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 267
    .local v0, v:Landroid/view/View;
    invoke-direct {p0, v0, p1, p2}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->fixGroupCount(Landroid/view/View;IZ)V

    .line 268
    return-object v0
.end method

.method protected getPixel(F)I
    .registers 4
    .parameter "dip"

    .prologue
    .line 296
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 6

    .prologue
    .line 257
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    new-instance v0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;

    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mNumColumns:I

    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;

    iget-object v3, v3, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mAllGroupNames:Ljava/util/List;

    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mDataList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;-><init>(Landroid/content/Context;ILjava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;

    .line 259
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mIndexer:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter$ArrayGroupedGridIndexer;

    invoke-super {p0, v0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->setIndexer(Lcom/lge/sui/widget/list/SUISectionIndexer;)V

    .line 260
    invoke-super {p0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method

.method public setIndexer(Lcom/lge/sui/widget/list/SUISectionIndexer;)V
    .registers 3
    .parameter "indexer"

    .prologue
    .line 143
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOnGridItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "onItemClickListener"

    .prologue
    .line 151
    .local p0, this:Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;,"Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter<TT;>;"
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIGroupedGridArrayAdapter;->mGridItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 152
    return-void
.end method
