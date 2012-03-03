.class final Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;
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
    name = "Andy_FlexInfo"
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DEFAULT_VALUES:Ljava/lang/String; = "default_values"

.field private static final USER_VALUES:Ljava/lang/String; = "user_values"

.field private static final VALUETYPE_DEFAULT:I = 0x0

.field private static final VALUETYPE_USER:I = 0x1

.field private static final mstrSelection:Ljava/lang/String; = "operator_index=? and flex_name=?"



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 548
    const-string v0, "content://flex/flexinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/ContentResolver;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 547
    invoke-static {p0, p1, p2}, Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;->getFlexValue(Landroid/content/ContentResolver;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-static {p0, p1, p2}, Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;->setUserFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static getFlexValue(Landroid/content/ContentResolver;ILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "cr"
    .parameter "nValueType"
    .parameter "name"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 564
    new-array v2, v7, [Ljava/lang/String;

    .line 565
    .local v2, strProjection:[Ljava/lang/String;
    packed-switch p1, :pswitch_data_4c

    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 567
    :pswitch_d
    const-string v0, "default_values"

    aput-object v0, v2, v5

    .line 576
    :goto_11
    sget-object v1, Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "operator_index=? and flex_name=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p0}, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->access$800(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    aput-object p2, v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 579
    .local v6, c:Landroid/database/Cursor;
    :try_start_2b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 580
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_46

    move-result-object v0

    .line 583
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 586
    :goto_39
    return-object v0

    .line 570
    .end local v6       #c:Landroid/database/Cursor;,
    :pswitch_3a
    const-string/jumbo v0, "user_values"

    aput-object v0, v2, v5

    goto :goto_11

    .line 583
    .restart local v6       #c:Landroid/database/Cursor;,
    :cond_40
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 586
    const-string v0, ""

    goto :goto_39

    .line 583
    :catchall_46
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 565
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_d
        :pswitch_3a
    .end packed-switch
.end method

.method private static setUserFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
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
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    const-string v3, ""

    const-string/jumbo v1, "user_values"

    .line 598
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 599
    .local v8, values:Landroid/content/ContentValues;
    new-array v2, v9, [Ljava/lang/String;

    .line 601
    .local v2, strProjection:[Ljava/lang/String;
    const-string v0, ""

    if-eq p1, v3, :cond_17

    const-string v0, ""

    if-ne p2, v3, :cond_1d

    .line 602
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 604
    :cond_1d
    const-string/jumbo v0, "user_values"

    aput-object v1, v2, v5

    .line 606
    sget-object v1, Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "operator_index=? and flex_name=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0}, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->access$800(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    aput-object p1, v4, v9

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 609
    .local v6, c:Landroid/database/Cursor;
    :try_start_3b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 610
    const-string/jumbo v0, "user_values"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    sget-object v0, Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "operator_index=? and flex_name=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->access$800(Landroid/content/ContentResolver;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {p0, v0, v8, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 613
    .local v7, i:I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_6f

    .line 614
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_6a
    .catchall {:try_start_3b .. :try_end_6a} :catchall_6a

    .line 626
    .end local v7       #i:I,
    :catchall_6a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #i:I,
    :cond_6f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .end local v7       #i:I,
    :goto_73
    return v0

    .line 618
    :cond_74
    :try_start_74
    const-string v0, "flex_name"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "default_values"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string/jumbo v0, "user_values"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string/jumbo v0, "operator_index"

    invoke-static {p0}, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->access$800(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    sget-object v0, Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_97
    .catchall {:try_start_74 .. :try_end_97} :catchall_6a

    .line 626
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_73
.end method
