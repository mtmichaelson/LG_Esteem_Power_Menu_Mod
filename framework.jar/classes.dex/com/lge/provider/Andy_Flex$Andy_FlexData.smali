.class final Lcom/lge/provider/Andy_Flex$Andy_FlexData;
.super Ljava/lang/Object;
.source "Andy_Flex.java"


# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_Flex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Andy_FlexData"
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static final mstrSelection:Ljava/lang/String; = "name=?"



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 638
    const-string v0, "content://flex/flexdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_Flex$Andy_FlexData;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 637
    invoke-static {p0, p1, p2}, Lcom/lge/provider/Andy_Flex$Andy_FlexData;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .registers 5
    .parameter "cr"
    .parameter "name"

    .prologue
    .line 694
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_Flex$Andy_FlexData;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, v:Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    .line 697
    :catch_9
    move-exception v0

    .line 698
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method private static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "cr"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 650
    sget-object v1, Lcom/lge/provider/Andy_Flex$Andy_FlexData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "value"

    aput-object v0, v2, v5

    const-string/jumbo v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 652
    .local v6, c:Landroid/database/Cursor;
    :try_start_18
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 653
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_2d

    move-result-object v0

    .line 656
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 659
    :goto_26
    return-object v0

    .line 656
    :cond_27
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 659
    const-string v0, ""

    goto :goto_26

    .line 656
    :catchall_2d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .registers 4
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 703
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/lge/provider/Andy_Flex$Andy_FlexData;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "cr"
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const-string/jumbo v3, "name=?"

    const-string/jumbo v4, "value"

    .line 671
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 672
    .local v8, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/lge/provider/Andy_Flex$Andy_FlexData;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v0, "value"

    aput-object v4, v2, v5

    const-string/jumbo v0, "name=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 674
    .local v6, c:Landroid/database/Cursor;
    :try_start_23
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 675
    const-string/jumbo v0, "value"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    sget-object v0, Lcom/lge/provider/Andy_Flex$Andy_FlexData;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 678
    .local v7, i:I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_4c

    .line 679
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_47

    .line 689
    .end local v7       #i:I,
    :catchall_47
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #i:I,
    :cond_4c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .end local v7       #i:I,
    :goto_50
    return v0

    .line 683
    :cond_51
    :try_start_51
    const-string/jumbo v0, "name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string/jumbo v0, "value"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    sget-object v0, Lcom/lge/provider/Andy_Flex$Andy_FlexData;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_62
    .catchall {:try_start_51 .. :try_end_62} :catchall_47

    .line 689
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_50
.end method
