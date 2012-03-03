.class Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable;
.super Ljava/lang/Object;
.source "SUIChineseStrokeCounter.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChineseTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable3;,
        Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable2;,
        Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable1;,
        Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable0;
    }
.end annotation


# static fields
.field public static CHARACTER:[[C

.field public static STROKE:[[I



# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3366
    new-array v0, v6, [[C

    sget-object v1, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable0;->CHARACTER:[C

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable1;->CHARACTER:[C

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable2;->CHARACTER:[C

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable3;->CHARACTER:[C

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable;->CHARACTER:[[C

    .line 3369
    new-array v0, v6, [[I

    sget-object v1, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable0;->STROKE:[I

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable1;->STROKE:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable2;->STROKE:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable$ChineseTable3;->STROKE:[I

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUIChineseStrokeCounter$ChineseTable;->STROKE:[[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3164
    return-void
.end method
