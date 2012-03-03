.class public Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;
.super Ljava/lang/Object;
.source "SUIArrayGroupIndexer.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUISectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lge/sui/widget/list/SUIGroupIndexable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lge/sui/widget/list/SUISectionIndexer;"
    }
.end annotation


# instance fields
.field protected mAllGroupNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mSectionLength:I

.field protected mSectionMap:Ljava/util/ArrayList;
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

.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,"Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    .local p2, allGroupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, dataList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mAllGroupNames:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mAllGroupNames:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    .line 65
    iput-object p3, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mDataList:Ljava/util/List;

    .line 66
    invoke-virtual {p0}, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->initSections()V

    .line 67
    return-void
.end method


# virtual methods
.method protected findSectionIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "group"

    .prologue
    .line 99
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,"Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 138
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,"Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
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
    .line 142
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,"Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPositionForSection(I)I
    .registers 5
    .parameter "sectionIndex"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,"Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    const/4 v2, 0x0

    .line 107
    if-gez p1, :cond_5

    move v0, v2

    .line 117
    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    :goto_4
    return v0

    .line 114
    .restart local p0       #this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    :cond_5
    iget v0, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionLength:I

    if-lt p1, v0, :cond_e

    .line 115
    iget v0, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionLength:I

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 117
    :cond_e
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
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
    .line 121
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,"Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    const/4 v2, 0x0

    .line 122
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    .line 123
    .local v1, map:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget v3, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionLength:I

    if-ge v0, v3, :cond_1b

    .line 124
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/List;

    .line 125
    .restart local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1c

    .line 126
    move v2, v0

    .line 131
    :cond_1b
    return v2

    .line 123
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 103
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,"Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected initSections()V
    .registers 7

    .prologue
    .line 70
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;,"Lcom/lge/sui/widget/list/SUIArrayGroupIndexer<TT;>;"
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mDataList:Ljava/util/List;

    if-nez v4, :cond_5

    .line 96
    :goto_4
    return-void

    .line 74
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    .line 76
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 77
    .local v3, sectionSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    if-ge v1, v3, :cond_22

    .line 78
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 81
    :cond_22
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 82
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_4d

    .line 83
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mDataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/sui/widget/list/SUIGroupIndexable;

    invoke-interface {v4}, Lcom/lge/sui/widget/list/SUIGroupIndexable;->getTargetGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->findSectionIndex(Ljava/lang/String;)I

    move-result v2

    .line 84
    .local v2, sectionIndex:I
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 88
    .end local v2       #sectionIndex:I,
    :cond_4d
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v1, v4, v5

    :goto_56
    const/4 v4, -0x1

    if-le v1, v4, :cond_74

    .line 89
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_71

    .line 90
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 91
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 88
    :cond_71
    add-int/lit8 v1, v1, -0x1

    goto :goto_56

    .line 95
    :cond_74
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/lge/sui/widget/list/SUIArrayGroupIndexer;->mSectionLength:I

    goto :goto_4
.end method
