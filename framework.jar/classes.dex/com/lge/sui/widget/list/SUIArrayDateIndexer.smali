.class public Lcom/lge/sui/widget/list/SUIArrayDateIndexer;
.super Ljava/lang/Object;
.source "SUIArrayDateIndexer.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUISectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lge/sui/widget/list/SUIDateIndexable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lge/sui/widget/list/SUISectionIndexer;"
    }
.end annotation


# static fields
.field private static final mDayOfWeek:[I



# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSectionCriterions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

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



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mDayOfWeek:[I

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x8t 0x3t
        0x12t 0x0t 0x8t 0x3t
        0x13t 0x0t 0x8t 0x3t
        0x14t 0x0t 0x8t 0x3t
        0x15t 0x0t 0x8t 0x3t
        0x16t 0x0t 0x8t 0x3t
        0x17t 0x0t 0x8t 0x3t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mData:Ljava/util/List;

    .line 54
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->initSections()V

    .line 55
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->initSectionMap()V

    .line 56
    return-void
.end method

.method private findSection(I)I
    .registers 10
    .parameter "position"

    .prologue
    .line 137
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 138
    .local v0, cal:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/sui/widget/list/SUIDateIndexable;

    invoke-interface {v6}, Lcom/lge/sui/widget/list/SUIDateIndexable;->getTargetDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v4

    .line 140
    .local v4, targetScore:J
    const/4 v3, 0x0

    .local v3, index:I
    :goto_18
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_35

    .line 141
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 142
    .local v1, currSectionScore:J
    cmp-long v6, v4, v1

    if-ltz v6, :cond_32

    move v6, v3

    .line 147
    .end local v1       #currSectionScore:J,
    :goto_31
    return v6

    .line 140
    .restart local v1       #currSectionScore:J,
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 147
    .end local v1       #currSectionScore:J,
    :cond_35
    iget-object v6, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    goto :goto_31
.end method

.method private getScore(Ljava/util/Calendar;)J
    .registers 4
    .parameter "cal"

    .prologue
    .line 151
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    if-eqz p1, :cond_11

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x16d

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 155
    :goto_10
    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method private initSectionMap()V
    .registers 7

    .prologue
    .line 111
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 112
    .local v3, sectionLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v3, :cond_16

    .line 113
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 116
    :cond_16
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mData:Ljava/util/List;

    .line 118
    .local v0, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-nez v0, :cond_1b

    .line 134
    :cond_1a
    return-void

    .line 122
    :cond_1b
    const/4 v2, 0x0

    .line 123
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    :goto_1d
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3b

    .line 124
    invoke-direct {p0, v1}, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->findSection(I)I

    move-result v2

    .line 125
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 128
    :cond_3b
    const/4 v4, 0x1

    sub-int v1, v3, v4

    :goto_3e
    const/4 v4, -0x1

    if-le v1, v4, :cond_1a

    .line 129
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_59

    .line 130
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 131
    iget-object v4, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    :cond_59
    add-int/lit8 v1, v1, -0x1

    goto :goto_3e
.end method

.method private initSections()V
    .registers 16

    .prologue
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    const/4 v10, 0x7

    const/4 v14, 0x4

    const/4 v13, -0x1

    const/4 v12, 0x1

    const/4 v11, 0x5

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 61
    .local v0, current:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 62
    .local v2, diffDay:I
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 63
    .local v5, startWeek:I
    if-ne v5, v12, :cond_37

    .line 64
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 69
    :goto_14
    const/4 v3, 0x0

    .local v3, i:I
    :goto_15
    if-ge v3, v2, :cond_87

    .line 70
    if-nez v3, :cond_42

    .line 71
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mContext:Landroid/content/Context;

    const v9, 0x308000f

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 66
    .end local v3       #i:I,
    :cond_37
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v8

    sub-int v2, v7, v8

    goto :goto_14

    .line 74
    .restart local v3       #i:I,
    :cond_42
    if-ne v3, v12, :cond_63

    .line 75
    invoke-virtual {v0, v11, v13}, Ljava/util/Calendar;->add(II)V

    .line 76
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mContext:Landroid/content/Context;

    const v9, 0x3080010

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 80
    :cond_63
    invoke-virtual {v0, v11, v13}, Ljava/util/Calendar;->add(II)V

    .line 81
    sget-object v7, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mDayOfWeek:[I

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget v4, v7, v8

    .line 82
    .local v4, resId:I
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 87
    .end local v4       #resId:I,
    :cond_87
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 88
    .local v1, currentDate:I
    :goto_8b
    if-le v1, v12, :cond_d4

    .line 89
    div-int/lit8 v7, v1, 0x7

    if-lez v7, :cond_cc

    .line 90
    const/4 v7, -0x7

    invoke-virtual {v0, v11, v7}, Ljava/util/Calendar;->add(II)V

    .line 95
    :goto_95
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 96
    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    sub-int v6, v5, v7

    .line 97
    .local v6, weekAgo:I
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mContext:Landroid/content/Context;

    const v10, 0x3080018

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    .line 92
    .end local v6       #weekAgo:I,
    :cond_cc
    rem-int/lit8 v7, v1, 0x7

    sub-int/2addr v7, v12

    neg-int v7, v7

    invoke-virtual {v0, v11, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_95

    .line 102
    :cond_d4
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v13}, Ljava/util/Calendar;->add(II)V

    .line 103
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    const-string v8, "Last month"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v7, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    const-string v8, "Old items"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method


# virtual methods
.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 188
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
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
    .line 192
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
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
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    const/4 v2, 0x0

    .line 163
    if-gez p1, :cond_5

    move v0, v2

    .line 170
    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    :goto_4
    return v0

    .line 166
    .restart local p0       #this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    :cond_5
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 167
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 170
    :cond_16
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,, "Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
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
    .line 174
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    const/4 v2, 0x0

    .line 175
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    .line 176
    .local v1, map:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 177
    iget-object v3, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSectionMap:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/List;

    .line 178
    .restart local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 179
    move v2, v0

    .line 184
    :cond_1f
    return v2

    .line 176
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 159
    .local p0, this:Lcom/lge/sui/widget/list/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/list/SUIArrayDateIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIArrayDateIndexer;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
