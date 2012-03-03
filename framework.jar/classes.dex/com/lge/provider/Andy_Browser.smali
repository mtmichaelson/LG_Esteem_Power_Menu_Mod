.class public Lcom/lge/provider/Andy_Browser;
.super Landroid/provider/Browser;
.source "Andy_Browser.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/provider/Andy_Browser$Andy_BookmarkColumns;
    }
.end annotation


# static fields
.field public static final Andy_DELETE_BOOKMARK_URI:Ljava/lang/String; = "content://browser/delete_bookmarks"

.field public static final Andy_HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final Andy_HISTORY_PROJECTION_DEFAULTBOOKMARK_INDEX:I

.field public static final Andy_HISTORY_PROJECTION_READONLY_INDEX:I

.field public static final Andy_HISTORY_PROJECTION_SEQUENCE_INDEX:I



# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 31
    sget-object v0, Lcom/lge/provider/Andy_Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x0

    sput v0, Lcom/lge/provider/Andy_Browser;->Andy_HISTORY_PROJECTION_READONLY_INDEX:I

    .line 33
    sget-object v0, Lcom/lge/provider/Andy_Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/provider/Andy_Browser;->Andy_HISTORY_PROJECTION_SEQUENCE_INDEX:I

    .line 35
    sget-object v0, Lcom/lge/provider/Andy_Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/lge/provider/Andy_Browser;->Andy_HISTORY_PROJECTION_DEFAULTBOOKMARK_INDEX:I

    .line 37
    sget-object v0, Lcom/lge/provider/Andy_Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/lge/provider/Andy_Browser;->Andy_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/lge/provider/Andy_Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/lge/provider/Andy_Browser;->Andy_HISTORY_PROJECTION:[Ljava/lang/String;

    sget-object v2, Lcom/lge/provider/Andy_Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    sget-object v0, Lcom/lge/provider/Andy_Browser;->Andy_HISTORY_PROJECTION:[Ljava/lang/String;

    sget v1, Lcom/lge/provider/Andy_Browser;->Andy_HISTORY_PROJECTION_READONLY_INDEX:I

    const-string/jumbo v2, "readonly"

    aput-object v2, v0, v1

    .line 45
    sget-object v0, Lcom/lge/provider/Andy_Browser;->Andy_HISTORY_PROJECTION:[Ljava/lang/String;

    sget v1, Lcom/lge/provider/Andy_Browser;->Andy_HISTORY_PROJECTION_SEQUENCE_INDEX:I

    const-string/jumbo v2, "sequence"

    aput-object v2, v0, v1

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/provider/Browser;-><init>()V

    .line 51
    return-void
.end method
