.class final Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;
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
    name = "Andy_FlexOperator"
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final COUNTRY:Ljava/lang/String; = "nation"

.field private static final MCC_MMC_CONDITION:Ljava/lang/String; = "MCC=? and MNC=?"

.field private static final OPERATOR:Ljava/lang/String; = "operator"

.field private static final OPERATORKEY:Ljava/lang/String; = "operatorkey"

.field private static mOperatorIndex:I

.field private static mbSIMInitialized:Z



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 436
    const-string v0, "content://flex/flexoperator"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->CONTENT_URI:Landroid/net/Uri;

    .line 442
    const/4 v0, -0x1

    sput v0, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mOperatorIndex:I

    .line 443
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mbSIMInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 435
    invoke-static {p0, p1, p2}, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->getCAName(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/ContentResolver;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 435
    invoke-static {p0}, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->getOperatorIndex(Landroid/content/ContentResolver;)I

    move-result v0

    return v0
.end method

.method private static getCAName(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "cr"
    .parameter "mcc"
    .parameter "mnc"

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 527
    sget-object v1, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "operator"

    aput-object v0, v2, v5

    const-string/jumbo v0, "nation"

    aput-object v0, v2, v10

    const-string v3, "MCC=? and MNC=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v10

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 529
    .local v6, c:Landroid/database/Cursor;
    :try_start_1f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 530
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 531
    .local v9, operator:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 532
    .local v8, country:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_1f .. :try_end_45} :catchall_51

    move-result-object v7

    .line 536
    .local v7, caname:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 538
    .end local v7       #caname:Ljava/lang/String;,
    .end local v8       #country:Ljava/lang/String;,
    .end local v9       #operator:Ljava/lang/String;,
    :goto_4a
    return-object v0

    .line 536
    :cond_4b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 538
    const-string v0, ""

    goto :goto_4a

    .line 536
    :catchall_51
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getOperatorIndex(Landroid/content/ContentResolver;)I
    .registers 2
    .parameter "cr"

    .prologue
    .line 446
    sget-boolean v0, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mbSIMInitialized:Z

    if-nez v0, :cond_9

    .line 447
    invoke-static {p0}, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->loadOperatorCode(Landroid/content/ContentResolver;)I

    move-result v0

    .line 449
    :goto_8
    return v0

    :cond_9
    sget v0, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mOperatorIndex:I

    goto :goto_8
.end method

.method private static loadOperatorCode(Landroid/content/ContentResolver;)I
    .registers 16
    .parameter "cr"

    .prologue
    .line 454
    const/4 v6, 0x0

    .line 455
    .local v6, c:Landroid/database/Cursor;
    invoke-static {}, Lcom/lge/provider/Andy_Flex;->getMccCode()Ljava/lang/String;

    move-result-object v11

    .line 456
    .local v11, strMCC:Ljava/lang/String;
    invoke-static {}, Lcom/lge/provider/Andy_Flex;->getMncCode()Ljava/lang/String;

    move-result-object v12

    .line 457
    .local v12, strMNC:Ljava/lang/String;
    invoke-static {}, Lcom/lge/provider/Andy_Flex;->getGidCode()Ljava/lang/String;

    move-result-object v7

    .line 458
    .local v7, strGID:Ljava/lang/String;
    invoke-static {}, Lcom/lge/provider/Andy_Flex;->getSpnCode()Ljava/lang/String;

    move-result-object v8

    .line 460
    .local v8, strSPN:Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a7

    const-string v9, "0"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a7

    .line 461
    const-string v7, "FF"

    .line 462
    const-string v8, "Default"

    .line 467
    :goto_25
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$300()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_131

    .line 468
    const-string v6, ""

    .line 469
    .local v6, strAdditionalCondition:Ljava/lang/String;
    const-string v9, "Flex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadOperatorCode() strMCC ==> "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v9, "Flex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadOperatorCode() strMNC ==> "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string v9, "Flex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadOperatorCode() strGID ==> "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string v9, "Flex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "loadOperatorCode() strSPN ==> "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "\n"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d2

    .line 474
    const-string v9, "Flex"

    const-string v10, "loadOperatorCode() cr.query strMCC strMNC and GID like\n"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6       #strAdditionalCondition:Ljava/lang/String;,
    const-string v9, " and GID like \'%"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\'"

    .end local v7       #strGID:Ljava/lang/String;,
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 477
    .restart local v6       #strAdditionalCondition:Ljava/lang/String;,
    :cond_d2
    const-string v7, ""

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_241

    .line 478
    const-string v7, "Flex"

    const-string v9, "loadOperatorCode() cr.query strMCC strMNC and SPN like\n"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6       #strAdditionalCondition:Ljava/lang/String;,
    const-string v7, " and SPN like \'%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #strAdditionalCondition:Ljava/lang/String;,
    move-object v8, v6

    .line 481
    .end local v6       #strAdditionalCondition:Ljava/lang/String;,
    .local v8, strAdditionalCondition:Ljava/lang/String;
    :goto_ff
    sget-object v6, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "operatorkey"

    aput-object v10, v7, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MCC=? and MNC=?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .end local v8       #strAdditionalCondition:Ljava/lang/String;,
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v12, v9, v10

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 484
    .local v6, c:Landroid/database/Cursor;
    :cond_131
    if-eqz v6, :cond_139

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gtz v7, :cond_161

    .line 485
    :cond_139
    const-string v6, "Flex"

    .end local v6       #c:Landroid/database/Cursor;,
    const-string v7, "loadOperatorCode() cr.query strMCC strMNC \n"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-object v6, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "operatorkey"

    aput-object v9, v7, v8

    const-string v8, "MCC=? and MNC=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v12, v9, v10

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 489
    .restart local v6       #c:Landroid/database/Cursor;,
    :cond_161
    if-eqz v6, :cond_1ba

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_1ba

    .line 491
    :try_start_169
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1ac

    .line 492
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sput v7, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mOperatorIndex:I

    .line 493
    const-string v7, "Flex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadOperatorCode() mOperatorIndex ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mOperatorIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string/jumbo v7, "operatorkey"

    sget v8, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mOperatorIndex:I

    invoke-static {p0, v7, v8}, Lcom/lge/provider/Andy_Flex$Andy_FlexData;->access$700(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    sget p0, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mOperatorIndex:I
    :try_end_1a0
    .catchall {:try_start_169 .. :try_end_1a0} :catchall_1b5

    .line 498
    .end local p0       
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v14, v6

    .end local v6       #c:Landroid/database/Cursor;,
    .local v14, c:Landroid/database/Cursor;
    move v6, p0

    move-object p0, v14

    .line 513
    .end local v11       #strMCC:Ljava/lang/String;,
    .end local v14       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    :goto_1a6
    return v6

    .line 464
    .restart local v6       #c:Landroid/database/Cursor;,
    .restart local v7       #strGID:Ljava/lang/String;,
    .local v8, strSPN:Ljava/lang/String;
    .restart local v11       #strMCC:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_1a7
    const/4 v9, 0x1

    sput-boolean v9, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mbSIMInitialized:Z

    goto/16 :goto_25

    .line 498
    .end local v7       #strGID:Ljava/lang/String;,
    .end local v8       #strSPN:Ljava/lang/String;,
    :cond_1ac
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 500
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0       #cr:Landroid/content/ContentResolver;,
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 498
    .restart local p0       #cr:Landroid/content/ContentResolver;,
    :catchall_1b5
    move-exception p0

    .end local p0       #cr:Landroid/content/ContentResolver;,
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw p0

    .line 502
    .restart local p0       #cr:Landroid/content/ContentResolver;,
    :cond_1ba
    const-string v6, "Flex"

    .end local v6       #c:Landroid/database/Cursor;,
    const-string v7, "loadOperatorCode() cr.query 0 0 \n"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    sget-object v6, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "operatorkey"

    aput-object v9, v7, v8

    const-string v8, "MCC=? and MNC=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "0"

    .end local v11       #strMCC:Ljava/lang/String;,
    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "0"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 504
    .restart local v6       #c:Landroid/database/Cursor;,
    if-eqz v6, :cond_23b

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_23b

    .line 506
    :try_start_1ee
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_22d

    .line 507
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sput v7, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mOperatorIndex:I

    .line 508
    const-string v7, "Flex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadOperatorCode() mOperatorIndex ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mOperatorIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string/jumbo v7, "operatorkey"

    sget v8, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mOperatorIndex:I

    invoke-static {p0, v7, v8}, Lcom/lge/provider/Andy_Flex$Andy_FlexData;->access$700(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    sget p0, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->mOperatorIndex:I
    :try_end_225
    .catchall {:try_start_1ee .. :try_end_225} :catchall_236

    .line 513
    .end local p0       #cr:Landroid/content/ContentResolver;,
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v14, v6

    .end local v6       #c:Landroid/database/Cursor;,
    .restart local v14       #c:Landroid/database/Cursor;,
    move v6, p0

    move-object p0, v14

    .end local v14       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_1a6

    .restart local v6       #c:Landroid/database/Cursor;,
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_22d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 515
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0       #cr:Landroid/content/ContentResolver;,
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .line 513
    .restart local p0       #cr:Landroid/content/ContentResolver;,
    :catchall_236
    move-exception p0

    .end local p0       #cr:Landroid/content/ContentResolver;,
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw p0

    .line 518
    .restart local p0       #cr:Landroid/content/ContentResolver;,
    :cond_23b
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0       #cr:Landroid/content/ContentResolver;,
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    .local v6, strAdditionalCondition:Ljava/lang/String;
    .restart local v8       #strSPN:Ljava/lang/String;,
    .restart local v11       #strMCC:Ljava/lang/String;,
    .restart local p0       #cr:Landroid/content/ContentResolver;,
    :cond_241
    move-object v8, v6

    .end local v6       #strAdditionalCondition:Ljava/lang/String;,
    .local v8, strAdditionalCondition:Ljava/lang/String;
    goto/16 :goto_ff
.end method
