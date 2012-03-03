.class public final Landroid/provider/Settings$AssistDial;
.super Ljava/lang/Object;
.source "Settings.java"


# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistDial"
.end annotation


# static fields
.field public static final AREA:Ljava/lang/String; = "area"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final COUNTRYCODE:Ljava/lang/String; = "countrycode"

.field public static final COUNTRYINDEX:Ljava/lang/String; = "countryindex"

.field public static final COUNTRYNAME:Ljava/lang/String; = "countryname"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "countryindex ASC"

.field public static final IDDPREFIX:Ljava/lang/String; = "iddprefix"

.field public static final LENGTH:Ljava/lang/String; = "length"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final NANP:Ljava/lang/String; = "nanp"

.field public static final NDDPREFIX:Ljava/lang/String; = "nddprefix"

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "assist_dial"

.field private static countryOriginDataTable:[Landroid/provider/ReferenceCountry;



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 4436
    const-string v0, "content://settings/assist_dial"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    .line 4460
    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    .line 4462
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "countryindex"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "countryname"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "countrycode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "iddprefix"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "nddprefix"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "nanp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "area"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "length"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$AssistDial;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAssistDialCountryDetailList(Landroid/content/ContentResolver;)V
    .registers 10
    .parameter "resolver"

    .prologue
    const-string v8, "Settings"

    .line 4467
    const-string v5, "HEEJIN.NOH"

    const-string v6, "initAssistDialCountryDetailList()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4468
    invoke-static {}, Landroid/provider/Settings$AssistDial;->initCountryOriginDataTable()V

    .line 4470
    const-string v0, "000"

    .line 4471
    .local v0, areaCode:Ljava/lang/String;
    const-string v2, "10"

    .line 4473
    .local v2, numLength:Ljava/lang/String;
    sget-object v5, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    if-nez v5, :cond_1c

    .line 4474
    const-string v5, "Settings"

    const-string v5, "List is null"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4501
    :goto_1b
    return-void

    .line 4476
    :cond_1c
    sget-object v5, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    array-length v3, v5

    .line 4477
    .local v3, size:I
    new-array v4, v3, [Landroid/content/ContentValues;

    .line 4479
    .local v4, values:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v3, :cond_ac

    .line 4480
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v4, v1

    .line 4481
    aget-object v5, v4, v1

    const-string v6, "countryindex"

    sget-object v7, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/provider/ReferenceCountry;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4482
    aget-object v5, v4, v1

    const-string v6, "countryname"

    sget-object v7, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/provider/ReferenceCountry;->getCountryName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4483
    aget-object v5, v4, v1

    const-string v6, "mcc"

    sget-object v7, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/provider/ReferenceCountry;->getMccCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4484
    aget-object v5, v4, v1

    const-string v6, "countrycode"

    sget-object v7, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/provider/ReferenceCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4485
    aget-object v5, v4, v1

    const-string v6, "iddprefix"

    sget-object v7, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/provider/ReferenceCountry;->getIddPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4486
    aget-object v5, v4, v1

    const-string/jumbo v6, "nddprefix"

    sget-object v7, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/provider/ReferenceCountry;->getNddPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4487
    aget-object v5, v4, v1

    const-string/jumbo v6, "nanp"

    sget-object v7, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/provider/ReferenceCountry;->getNanp()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4488
    aget-object v5, v4, v1

    const-string v6, "area"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4489
    aget-object v5, v4, v1

    const-string v6, "length"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4479
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_22

    .line 4492
    :cond_ac
    if-nez p0, :cond_b7

    .line 4494
    const-string v5, "Settings"

    const-string v5, "Resolver is null"

    invoke-static {v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 4497
    :cond_b7
    sget-object v5, Landroid/provider/Settings$AssistDial;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_1b
.end method

.method private static initCountryOriginDataTable()V
    .registers 13

    .prologue
    .line 4505
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 4506
    .local v10, r:Landroid/content/res/Resources;
    const/16 v0, 0xdf

    new-array v11, v0, [Landroid/provider/ReferenceCountry;

    const/4 v12, 0x0

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/4 v1, 0x0

    const v2, 0x2080112

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "310,311,312,313,314,315,316"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x1

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/4 v1, 0x1

    const v2, 0x2080178

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "412"

    const-string v4, "93"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x2

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/4 v1, 0x2

    const v2, 0x2080179

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "276"

    const-string v4, "355"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x3

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/4 v1, 0x3

    const v2, 0x2080113

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "603"

    const-string v4, "213"

    const-string v5, "00"

    const-string v6, "7"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x4

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/4 v1, 0x4

    const v2, 0x208017a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "544"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x5

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/4 v1, 0x5

    const v2, 0x208017b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "213"

    const-string v4, "376"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x6

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/4 v1, 0x6

    const v2, 0x2080114

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "631"

    const-string v4, "244"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/4 v12, 0x7

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/4 v1, 0x7

    const v2, 0x208017c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "365"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x8

    const v2, 0x208017d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "344"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x9

    const v2, 0x2080115

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "722"

    const-string v4, "54"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa

    const v2, 0x208017e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "283"

    const-string v4, "374"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb

    const v2, 0x208017f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "363"

    const-string v4, "297"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc

    const v2, 0x2080180

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "505"

    const-string v4, "61"

    const-string v5, "0011"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd

    const v2, 0x2080181

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "232"

    const-string v4, "43"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xe

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xe

    const v2, 0x2080182

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "400"

    const-string v4, "994"

    const-string v5, "00"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xf

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xf

    const v2, 0x2080116

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "364"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x10

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x10

    const v2, 0x2080183

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "426"

    const-string v4, "973"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x11

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x11

    const v2, 0x2080117

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "470"

    const-string v4, "880"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x12

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x12

    const v2, 0x2080118

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "342"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x13

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x13

    const v2, 0x2080119

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "257"

    const-string v4, "375"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x14

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x14

    const v2, 0x2080184

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "206"

    const-string v4, "32"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x15

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x15

    const v2, 0x208011a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "702"

    const-string v4, "501"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x16

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x16

    const v2, 0x2080185

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "616,"

    const-string v4, "229"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x17

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x17

    const v2, 0x208011b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "350"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x18

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x18

    const v2, 0x2080186

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "402"

    const-string v4, "975"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x19

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x19

    const v2, 0x2080187

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "736"

    const-string v4, "591"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1a

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x1a

    const v2, 0x2080188

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "218"

    const-string v4, "387"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1b

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x1b

    const v2, 0x208011c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "652"

    const-string v4, "267"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1c

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x1c

    const v2, 0x208011d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "724"

    const-string v4, "55"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1d

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x1d

    const v2, 0x208011e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "348"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1e

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x1e

    const v2, 0x2080189

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "528"

    const-string v4, "673"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x1f

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x1f

    const v2, 0x208018a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "284"

    const-string v4, "359"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x20

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x20

    const v2, 0x208018b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "613"

    const-string v4, "226"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x21

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x21

    const v2, 0x208018c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "642"

    const-string v4, "257"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x22

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x22

    const v2, 0x208018d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "456"

    const-string v4, "855"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x23

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x23

    const v2, 0x208011f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "624"

    const-string v4, "237"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x24

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x24

    const v2, 0x2080120

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "302"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x25

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x25

    const v2, 0x2080121

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "625"

    const-string v4, "238"

    const-string v5, "0"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x26

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x26

    const v2, 0x2080122

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "346"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x27

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x27

    const v2, 0x2080123

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "623"

    const-string v4, "238"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x28

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x28

    const v2, 0x208018e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "622"

    const-string v4, "235"

    const-string v5, "15"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x29

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x29

    const v2, 0x2080124

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "730"

    const-string v4, "56"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2a

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x2a

    const v2, 0x2080125

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "460"

    const-string v4, "86"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2b

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x2b

    const v2, 0x2080126

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "732"

    const-string v4, "57"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2c

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x2c

    const v2, 0x208018f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "654"

    const-string v4, "269"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2d

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x2d

    const v2, 0x2080190

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "548"

    const-string v4, "682"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2e

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x2e

    const v2, 0x2080191

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "712"

    const-string v4, "506"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x2f

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x2f

    const v2, 0x2080127

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "612"

    const-string v4, "225"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x30

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x30

    const v2, 0x2080192

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "219"

    const-string v4, "385"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x31

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x31

    const v2, 0x2080193

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "368"

    const-string v4, "53"

    const-string v5, "119"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x32

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x32

    const v2, 0x2080194

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "280"

    const-string v4, "357"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x33

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x33

    const v2, 0x2080128

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "230"

    const-string v4, "420"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x34

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x34

    const v2, 0x2080129

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "630"

    const-string v4, "243"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x35

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x35

    const v2, 0x208012a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "238"

    const-string v4, "45"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x36

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x36

    const v2, 0x208012b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "638"

    const-string v4, "253"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x37

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x37

    const v2, 0x2080195

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "366"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x38

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x38

    const v2, 0x208012c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "370"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x39

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x39

    const v2, 0x2080196

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "514"

    const-string v4, "670"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3a

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x3a

    const v2, 0x208012d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "740"

    const-string v4, "593"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3b

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x3b

    const v2, 0x208012e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "602"

    const-string v4, "20"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3c

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x3c

    const v2, 0x208012f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "706"

    const-string v4, "593"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3d

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x3d

    const v2, 0x2080197

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "627"

    const-string v4, "240"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3e

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x3e

    const v2, 0x2080198

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "657"

    const-string v4, "291"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x3f

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x3f

    const v2, 0x2080130

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "248"

    const-string v4, "372"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x40

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x40

    const v2, 0x2080131

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "636"

    const-string v4, "251"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x41

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x41

    const v2, 0x2080199

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "288"

    const-string v4, "298"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x42

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x42

    const v2, 0x208019a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "550"

    const-string v4, "691"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x43

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x43

    const v2, 0x2080132

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "542"

    const-string v4, "679"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x44

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x44

    const v2, 0x208019b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "244"

    const-string v4, "358"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x45

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x45

    const v2, 0x208019c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "208"

    const-string v4, "33"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x46

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x46

    const v2, 0x208019d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "742"

    const-string v4, "594"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x47

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x47

    const v2, 0x208019e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "547"

    const-string v4, "689"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x48

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x48

    const v2, 0x208019f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "628"

    const-string v4, "241"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x49

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x49

    const v2, 0x2080133

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "607"

    const-string v4, "220"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4a

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x4a

    const v2, 0x20801a0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "282"

    const-string v4, "995"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4b

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x4b

    const v2, 0x20801a1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "262"

    const-string v4, "49"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4c

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x4c

    const v2, 0x2080134

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "620"

    const-string v4, "233"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4d

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x4d

    const v2, 0x20801a2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "266"

    const-string v4, "350"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4e

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x4e

    const v2, 0x20801a3

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "202"

    const-string v4, "30"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x4f

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x4f

    const v2, 0x20801a4

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "290"

    const-string v4, "299"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x50

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x50

    const v2, 0x20801a5

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "352"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x51

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x51

    const v2, 0x20801a6

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "340"

    const-string v4, "590"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x52

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x52

    const v2, 0x2080135

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "535"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x53

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x53

    const v2, 0x2080136

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "704"

    const-string v4, "502"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x54

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x54

    const v2, 0x20801a7

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "611"

    const-string v4, "224"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x55

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x55

    const v2, 0x20801a8

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "632"

    const-string v4, "245"

    const-string v5, "0"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x56

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x56

    const v2, 0x20801a9

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "738"

    const-string v4, "592"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x57

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x57

    const v2, 0x2080137

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "372"

    const-string v4, "509"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x58

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x58

    const v2, 0x2080138

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "708"

    const-string v4, "504"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x59

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x59

    const v2, 0x2080139

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "454"

    const-string v4, "852"

    const-string v5, "001"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5a

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x5a

    const v2, 0x208013a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "216"

    const-string v4, "36"

    const-string v5, "00"

    const-string v6, "06"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5b

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x5b

    const v2, 0x208013b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "274"

    const-string v4, "354"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5c

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x5c

    const v2, 0x208013c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "404,405"

    const-string v4, "91"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5d

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x5d

    const v2, 0x208013d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "510"

    const-string v4, "62"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5e

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x5e

    const v2, 0x20801aa

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "432"

    const-string v4, "98"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x5f

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x5f

    const v2, 0x208013e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "418"

    const-string v4, "964"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x60

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x60

    const v2, 0x208013f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "272"

    const-string v4, "353"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x61

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x61

    const v2, 0x2080140

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "425"

    const-string v4, "972"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x62

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x62

    const v2, 0x20801ab

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "222"

    const-string v4, "39"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x63

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x63

    const v2, 0x2080141

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "338"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x64

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x64

    const v2, 0x2080142

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "440,441"

    const-string v4, "81"

    const-string v5, "010"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x65

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x65

    const v2, 0x2080143

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "416"

    const-string v4, "962"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x66

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x66

    const v2, 0x20801ac

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "401"

    const-string v4, "7"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x67

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x67

    const v2, 0x2080144

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "639"

    const-string v4, "254"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x68

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x68

    const v2, 0x20801ad

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "545"

    const-string v4, "686"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x69

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x69

    const v2, 0x2080145

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "467"

    const-string v4, "850"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6a

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x6a

    const v2, 0x2080146

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "450"

    const-string v4, "82"

    const-string v5, "00700"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6b

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x6b

    const v2, 0x2080147

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "419"

    const-string v4, "965"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6c

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x6c

    const v2, 0x20801ae

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "437"

    const-string v4, "996"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6d

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x6d

    const v2, 0x2080148

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "457"

    const-string v4, "856"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6e

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x6e

    const v2, 0x2080149

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "247"

    const-string v4, "371"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x6f

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x6f

    const v2, 0x20801af

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "415"

    const-string v4, "961"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x70

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x70

    const v2, 0x20801b0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "651"

    const-string v4, "266"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x71

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x71

    const v2, 0x20801b1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "618"

    const-string v4, "231"

    const-string v5, "00"

    const-string v6, "22"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x72

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x72

    const v2, 0x20801b2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "606"

    const-string v4, "218"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x73

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x73

    const v2, 0x20801b3

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "295"

    const-string v4, "423"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x74

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x74

    const v2, 0x20801b4

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "246"

    const-string v4, "370"

    const-string v5, "00"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x75

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x75

    const v2, 0x20801b5

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "270"

    const-string v4, "352"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x76

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x76

    const v2, 0x20801b6

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "455"

    const-string v4, "853"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x77

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x77

    const v2, 0x208014a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "646"

    const-string v4, "261"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x78

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x78

    const v2, 0x20801b7

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "650"

    const-string v4, "265"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x79

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x79

    const v2, 0x208014b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "502"

    const-string v4, "60"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7a

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x7a

    const v2, 0x20801b8

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "472"

    const-string v4, "960"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7b

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x7b

    const v2, 0x208014c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "610"

    const-string v4, "223"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7c

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x7c

    const v2, 0x20801b9

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "278"

    const-string v4, "356"

    const-string v5, "00"

    const-string v6, "21"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7d

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x7d

    const v2, 0x20801ba

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "901"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7e

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x7e

    const v2, 0x20801bb

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "551"

    const-string v4, "692"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x7f

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x7f

    const v2, 0x20801bc

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "340"

    const-string v4, "596"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x80

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x80

    const v2, 0x208014d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "609"

    const-string v4, "222"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x81

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x81

    const v2, 0x208014e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "617"

    const-string v4, "230"

    const-string v5, "010"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x82

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x82

    const v2, 0x208014f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "334"

    const-string v4, "52"

    const-string v5, "00"

    const-string v6, "01"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x83

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x83

    const v2, 0x2080150

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "259"

    const-string v4, "373"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x84

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x84

    const v2, 0x20801bd

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "212"

    const-string v4, "377"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x85

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x85

    const v2, 0x2080151

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "428"

    const-string v4, "976"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x86

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x86

    const v2, 0x20801be

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "354"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x87

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x87

    const v2, 0x2080152

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "604"

    const-string v4, "212"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x88

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x88

    const v2, 0x2080153

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "643"

    const-string v4, "258"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x89

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x89

    const v2, 0x2080154

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "414"

    const-string v4, "95"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8a

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x8a

    const v2, 0x2080155

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "649"

    const-string v4, "264"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8b

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x8b

    const v2, 0x20801bf

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "536"

    const-string v4, "674"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8c

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x8c

    const v2, 0x20801c0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "429"

    const-string v4, "977"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8d

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x8d

    const v2, 0x20801c1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "204"

    const-string v4, "31"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8e

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x8e

    const v2, 0x2080156

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "362"

    const-string v4, "599"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x8f

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x8f

    const v2, 0x20801c2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "546"

    const-string v4, "687"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x90

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x90

    const v2, 0x2080157

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "530"

    const-string v4, "64"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x91

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x91

    const v2, 0x2080158

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "710"

    const-string v4, "505"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x92

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x92

    const v2, 0x2080159

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "614"

    const-string v4, "227"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x93

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x93

    const v2, 0x208015a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "621"

    const-string v4, "234"

    const-string v5, "9"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x94

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x94

    const v2, 0x208015b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "534"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x95

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x95

    const v2, 0x208015c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "242"

    const-string v4, "47"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x96

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x96

    const v2, 0x208015d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "422"

    const-string v4, "968"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x97

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x97

    const v2, 0x208015e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "410"

    const-string v4, "92"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x98

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x98

    const v2, 0x20801c3

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "552"

    const-string v4, "680"

    const-string v5, "11"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x99

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x99

    const v2, 0x20801c4

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "714"

    const-string v4, "507"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9a

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x9a

    const v2, 0x20801c5

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "537"

    const-string v4, "675"

    const-string v5, "5"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9b

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x9b

    const v2, 0x20801c6

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "744"

    const-string v4, "595"

    const-string v5, "2"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9c

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x9c

    const v2, 0x208015f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "716"

    const-string v4, "51"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9d

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x9d

    const v2, 0x20801c7

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "515"

    const-string v4, "63"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9e

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x9e

    const v2, 0x2080160

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "260"

    const-string v4, "48"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0x9f

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0x9f

    const v2, 0x2080161

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "268"

    const-string v4, "351"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa0

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa0

    const v2, 0x2080162

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "330"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa1

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa1

    const v2, 0x20801c8

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "427"

    const-string v4, "974"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa2

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa2

    const v2, 0x20801ca

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "294"

    const-string v4, "389"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa3

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa3

    const v2, 0x20801cb

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "629"

    const-string v4, "243"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa4

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa4

    const v2, 0x20801c9

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "647"

    const-string v4, "262"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa5

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa5

    const v2, 0x2080163

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "226"

    const-string v4, "40"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa6

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa6

    const v2, 0x2080164

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "250"

    const-string v4, "7"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa7

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa7

    const v2, 0x2080165

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "635"

    const-string v4, "250"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa8

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa8

    const v2, 0x20801cd

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "356"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xa9

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xa9

    const v2, 0x20801ce

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "358"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xaa

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xaa

    const v2, 0x20801cf

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "308"

    const-string v4, "508"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xab

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xab

    const v2, 0x20801d0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "360"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xac

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xac

    const v2, 0x20801d1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "549"

    const-string v4, "685"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xad

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xad

    const v2, 0x20801d2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "292"

    const-string v4, "378"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xae

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xae

    const v2, 0x20801cc

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "626"

    const-string v4, "239"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xaf

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xaf

    const v2, 0x2080166

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "420"

    const-string v4, "966"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb0

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb0

    const v2, 0x20801d3

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "608"

    const-string v4, "221"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb1

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb1

    const v2, 0x20801d4

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "220"

    const-string v4, "381"

    const-string v5, "99"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb2

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb2

    const v2, 0x20801d5

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "633"

    const-string v4, "248"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb3

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb3

    const v2, 0x20801d6

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "619"

    const-string v4, "232"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb4

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb4

    const v2, 0x20801d7

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "525"

    const-string v4, "65"

    const-string v5, "001"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb5

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb5

    const v2, 0x20801d8

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "231"

    const-string v4, "421"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb6

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb6

    const v2, 0x20801d9

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "293"

    const-string v4, "386"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb7

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb7

    const v2, 0x20801da

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "540"

    const-string v4, "677"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb8

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb8

    const v2, 0x20801db

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "637"

    const-string v4, "252"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xb9

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xb9

    const v2, 0x2080167

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "655"

    const-string v4, "27"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xba

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xba

    const v2, 0x20801dc

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "214"

    const-string v4, "34"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbb

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xbb

    const v2, 0x20801dd

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "413"

    const-string v4, "94"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbc

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xbc

    const v2, 0x20801de

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "634"

    const-string v4, "249"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbd

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xbd

    const v2, 0x2080168

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "746"

    const-string v4, "597"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbe

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xbe

    const v2, 0x2080169

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "653"

    const-string v4, "268"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xbf

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xbf

    const v2, 0x208016a

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "240"

    const-string v4, "46"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc0

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc0

    const v2, 0x20801df

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "228"

    const-string v4, "41"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc1

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc1

    const v2, 0x20801e0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "417"

    const-string v4, "963"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc2

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc2

    const v2, 0x20801e1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "466"

    const-string v4, "886"

    const-string v5, "002"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc3

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc3

    const v2, 0x20801e2

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "436"

    const-string v4, "992"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc4

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc4

    const v2, 0x208016b

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "640"

    const-string v4, "255"

    const-string v5, "000"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc5

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc5

    const v2, 0x208016c

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "520"

    const-string v4, "66"

    const-string v5, "001"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc6

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc6

    const v2, 0x208016d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "615"

    const-string v4, "228"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc7

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc7

    const v2, 0x208016e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "539"

    const-string v4, "676"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc8

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc8

    const v2, 0x208016f

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "374"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xc9

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xc9

    const v2, 0x20801e3

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "605"

    const-string v4, "216"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xca

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xca

    const v2, 0x20801e4

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "286"

    const-string v4, "90"

    const-string v5, "00"

    const-string v6, "00"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcb

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xcb

    const v2, 0x20801e5

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "438"

    const-string v4, "993"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcc

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xcc

    const v2, 0x20801e6

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "376"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcd

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xcd

    const v2, 0x2080170

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "641"

    const-string v4, "256"

    const-string v5, "000"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xce

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xce

    const v2, 0x2080171

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "255"

    const-string v4, "380"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xcf

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xcf

    const v2, 0x20801e7

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "424"

    const-string v4, "971"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd0

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd0

    const v2, 0x20801e8

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "430"

    const-string v4, "971"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd1

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd1

    const v2, 0x20801e9

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "431"

    const-string v4, "971"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd2

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd2

    const v2, 0x20801ea

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "234"

    const-string v4, "44"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd3

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd3

    const v2, 0x2080172

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "332"

    const-string v4, "1"

    const-string v5, "011"

    const-string v6, "1"

    const-string v7, "1"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd4

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd4

    const v2, 0x20801eb

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "748"

    const-string v4, "598"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd5

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd5

    const v2, 0x2080173

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "434"

    const-string v4, "998"

    const-string v5, "810"

    const-string v6, "8"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd6

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd6

    const v2, 0x20801ec

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "541"

    const-string v4, "678"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd7

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd7

    const v2, 0x20801ed

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "225"

    const-string v4, "39"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd8

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd8

    const v2, 0x2080174

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "734"

    const-string v4, "58"

    const-string v5, "00"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xd9

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xd9

    const v2, 0x20801ee

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "452"

    const-string v4, "84"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xda

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xda

    const v2, 0x20801ef

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "543"

    const-string v4, "681"

    const-string v5, "19"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xdb

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xdb

    const v2, 0x2080175

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "421"

    const-string v4, "967"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xdc

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xdc

    const v2, 0x2080176

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "645"

    const-string v4, "260"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xdd

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xdd

    const v2, 0x20801f0

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "648"

    const-string v4, "263"

    const-string v5, "00"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "000"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    const/16 v12, 0xde

    new-instance v0, Landroid/provider/ReferenceCountry;

    const/16 v1, 0xde

    const v2, 0x20801f1

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1024"

    const-string v4, "None"

    const-string v5, "None"

    const-string v6, "None"

    const-string v7, "0"

    const-string v8, "None"

    const-string v9, "10"

    invoke-direct/range {v0 .. v9}, Landroid/provider/ReferenceCountry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v11, v12

    sput-object v11, Landroid/provider/Settings$AssistDial;->countryOriginDataTable:[Landroid/provider/ReferenceCountry;

    .line 4737
    return-void
.end method
