.class public Lcom/lge/sui/widget/util/SUIArrayDateIndexer;
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

.field private mDateSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionCriterions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValidSectionMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValidSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDayOfWeek:[I

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
    .line 56
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    .local p2, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSections:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionMap:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSectionMap:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mData:Ljava/util/List;

    .line 59
    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->initSections()V

    .line 60
    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->initSectionMap()V

    .line 61
    return-void
.end method

.method private findSection(I)I
    .registers 10
    .parameter "position"

    .prologue
    .line 144
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 145
    .local v0, cal:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mData:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/sui/widget/list/SUIDateIndexable;

    invoke-interface {v6}, Lcom/lge/sui/widget/list/SUIDateIndexable;->getTargetDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 146
    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v4

    .line 147
    .local v4, targetScore:J
    const/4 v3, 0x0

    .local v3, index:I
    :goto_18
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_35

    .line 148
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 149
    .local v1, currSectionScore:J
    cmp-long v6, v4, v1

    if-ltz v6, :cond_32

    move v6, v3

    .line 154
    .end local v1       #currSectionScore:J,
    :goto_31
    return v6

    .line 147
    .restart local v1       #currSectionScore:J,
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 154
    .end local v1       #currSectionScore:J,
    :cond_35
    iget-object v6, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    goto :goto_31
.end method

.method private getScore(Ljava/util/Calendar;)J
    .registers 4
    .parameter "cal"

    .prologue
    .line 158
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    if-eqz p1, :cond_11

    .line 159
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x16d

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    .line 162
    :goto_10
    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method private initSectionMap()V
    .registers 6

    .prologue
    .line 119
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_16

    .line 120
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionMap:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_16
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mData:Ljava/util/List;

    .line 125
    .local v0, data:Ljava/util/List;,"Ljava/util/List<TT;>;"
    if-nez v0, :cond_1b

    .line 141
    :cond_1a
    return-void

    .line 129
    :cond_1b
    const/4 v2, 0x0

    .line 130
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    :goto_1d
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3b

    .line 131
    invoke-direct {p0, v1}, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->findSection(I)I

    move-result v2

    .line 132
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 135
    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1a

    .line 136
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_68

    .line 137
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSections:Ljava/util/List;

    iget-object v4, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSectionMap:Ljava/util/List;

    iget-object v4, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionMap:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c
.end method

.method private initSections()V
    .registers 15

    .prologue
    .line 64
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 66
    .local v0, current:Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 67
    .local v2, diffDay:I
    const/4 v10, 0x7

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 68
    .local v7, startDay:I
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 69
    .local v8, startWeek:I
    const/4 v10, 0x1

    if-ne v8, v10, :cond_3d

    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    .line 71
    .local v3, firstDayOfMonth:I
    sub-int v10, v7, v3

    add-int/lit8 v2, v10, 0x1

    .line 77
    .end local v3       #firstDayOfMonth:I,
    :goto_1a
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1b
    if-ge v5, v2, :cond_8f

    .line 78
    if-nez v5, :cond_44

    .line 79
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    iget-object v11, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mContext:Landroid/content/Context;

    const v12, 0x308000f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :goto_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 73
    .end local v5       #i:I,
    :cond_3d
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    .line 74
    .local v4, firstDayOfWeek:I
    sub-int v2, v7, v4

    goto :goto_1a

    .line 82
    .end local v4       #firstDayOfWeek:I,
    .restart local v5       #i:I,
    :cond_44
    const/4 v10, 0x1

    if-ne v5, v10, :cond_68

    .line 83
    const/4 v10, 0x5

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 84
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    iget-object v11, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mContext:Landroid/content/Context;

    const v12, 0x3080010

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 88
    :cond_68
    const/4 v10, 0x5

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 89
    sget-object v10, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDayOfWeek:[I

    const/4 v11, 0x7

    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    aget v6, v10, v11

    .line 90
    .local v6, resId:I
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    iget-object v11, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 95
    .end local v6       #resId:I,
    :cond_8f
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 96
    .local v1, currentDate:I
    :goto_94
    const/4 v10, 0x1

    if-le v1, v10, :cond_e3

    .line 97
    div-int/lit8 v10, v1, 0x7

    if-lez v10, :cond_d9

    .line 98
    const/4 v10, 0x5

    const/4 v11, -0x7

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 103
    :goto_a0
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 104
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int v9, v8, v10

    .line 105
    .local v9, weekAgo:I
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mContext:Landroid/content/Context;

    const v13, 0x3080018

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 100
    .end local v9       #weekAgo:I,
    :cond_d9
    const/4 v10, 0x5

    rem-int/lit8 v11, v1, 0x7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    neg-int v11, v11

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    goto :goto_a0

    .line 110
    :cond_e3
    const/4 v10, 0x2

    const/4 v11, -0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 111
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    const-string v11, "Last month"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mSectionCriterions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->getScore(Ljava/util/Calendar;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v10, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mDateSections:Ljava/util/List;

    const-string v11, "Old items"

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method


# virtual methods
.method public getDataCount(I)I
    .registers 3
    .parameter "sectionIndex"

    .prologue
    .line 201
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,, "Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataPosition(II)I
    .registers 4
    .parameter "sectionIndex"
    .parameter "dataIndex"

    .prologue
    .line 205
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,, "Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    const/4 v2, 0x0

    .line 175
    if-gez p1, :cond_5

    move v0, v2

    .line 183
    .end local p0       #this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,, "Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    :goto_4
    return v0

    .line 179
    .restart local p0       #this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,, "Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    :cond_5
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_16

    .line 180
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int p1, v0, v1

    .line 183
    :cond_16
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       #this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,, "Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    .line 187
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    const/4 v2, 0x0

    .line 188
    .local v2, sectionIndex:I
    const/4 v1, 0x0

    .line 189
    .local v1, map:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 190
    iget-object v3, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSectionMap:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    check-cast v1, Ljava/util/List;

    .line 191
    .restart local v1       #map:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_20

    .line 192
    move v2, v0

    .line 197
    :cond_1f
    return v2

    .line 189
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 171
    .local p0, this:Lcom/lge/sui/widget/util/SUIArrayDateIndexer;,"Lcom/lge/sui/widget/util/SUIArrayDateIndexer<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/util/SUIArrayDateIndexer;->mValidSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
