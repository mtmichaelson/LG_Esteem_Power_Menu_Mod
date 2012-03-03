.class final Lcom/lge/provider/Andy_Flex$FlexProperty;
.super Ljava/lang/Object;
.source "Andy_Flex.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_Flex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlexProperty"
.end annotation


# static fields
.field private static final FLEX_AUTOPROFILE:Ljava/lang/String; = "FLEX_AUTOPROFILE"

.field private static final FLEX_COUNTRY_CODE:Ljava/lang/String; = "FLEX_COUNTRY_CODE"

.field private static final FLEX_MCC_CODE:Ljava/lang/String; = "FLEX_MCC_CODE"

.field private static final FLEX_MNC_CODE:Ljava/lang/String; = "FLEX_MNC_CODE"

.field private static final FLEX_OPERATOR_CODE:Ljava/lang/String; = "FLEX_OPERATOR_CODE"

.field private static final FLEX_REGION_CODE:Ljava/lang/String; = "FLEX_REGION_CODE"

.field private static final FLEX_XML_PATH:Ljava/lang/String; = "etc/flex/flex.xml"

.field private static mbAutoProfile:Z

.field private static mbLoad:Z

.field private static mstrCountryCode:Ljava/lang/String;

.field private static mstrMccCode:Ljava/lang/String;

.field private static mstrMncCode:Ljava/lang/String;

.field private static mstrOperatorCode:Ljava/lang/String;

.field private static mstrRegionCode:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "not definded"

    .line 367
    sput-boolean v0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mbLoad:Z

    .line 368
    sput-boolean v0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mbAutoProfile:Z

    .line 369
    const-string/jumbo v0, "not definded"

    sput-object v1, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrOperatorCode:Ljava/lang/String;

    .line 370
    const-string/jumbo v0, "not definded"

    sput-object v1, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrCountryCode:Ljava/lang/String;

    .line 371
    const-string/jumbo v0, "not definded"

    sput-object v1, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrMccCode:Ljava/lang/String;

    .line 372
    const-string/jumbo v0, "not definded"

    sput-object v1, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrMncCode:Ljava/lang/String;

    .line 373
    const-string/jumbo v0, "not definded"

    sput-object v1, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrRegionCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 357
    sget-boolean v0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mbLoad:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 357
    sput-boolean p0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mbLoad:Z

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 357
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_Flex$FlexProperty;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 357
    invoke-static {p0}, Lcom/lge/provider/Andy_Flex$FlexProperty;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 357
    sget-boolean v0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mbAutoProfile:Z

    return v0
.end method

.method private static getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "Flex"

    .line 404
    const-string v0, "FLEX_AUTOPROFILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_15

    .line 405
    const-string v0, "Flex"

    const-string v0, "error loadFlexXml"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 425
    :goto_14
    return-object v0

    .line 408
    :cond_15
    const-string v0, "FLEX_OPERATOR_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_20

    .line 409
    sget-object v0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrOperatorCode:Ljava/lang/String;

    goto :goto_14

    .line 411
    :cond_20
    const-string v0, "FLEX_COUNTRY_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2b

    .line 412
    sget-object v0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrCountryCode:Ljava/lang/String;

    goto :goto_14

    .line 414
    :cond_2b
    const-string v0, "FLEX_MCC_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_36

    .line 415
    sget-object v0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrMccCode:Ljava/lang/String;

    goto :goto_14

    .line 417
    :cond_36
    const-string v0, "FLEX_MNC_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_41

    .line 418
    sget-object v0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrMncCode:Ljava/lang/String;

    goto :goto_14

    .line 420
    :cond_41
    const-string v0, "FLEX_REGION_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_4c

    .line 421
    sget-object v0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrRegionCode:Ljava/lang/String;

    goto :goto_14

    .line 424
    :cond_4c
    const-string v0, "Flex"

    const-string v0, "error getValue"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 425
    goto :goto_14
.end method

.method private static setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const-string v3, "Flex"

    .line 375
    const-string v0, "FLEX_AUTOPROFILE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_33

    .line 376
    const-string v0, "Flex"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FLEX_AUTOPROFILE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_2f

    .line 378
    sput-boolean v2, Lcom/lge/provider/Andy_Flex$FlexProperty;->mbAutoProfile:Z

    .line 401
    :goto_2e
    return-void

    .line 380
    :cond_2f
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/provider/Andy_Flex$FlexProperty;->mbAutoProfile:Z

    goto :goto_2e

    .line 383
    :cond_33
    const-string v0, "FLEX_OPERATOR_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_3e

    .line 384
    sput-object p1, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrOperatorCode:Ljava/lang/String;

    goto :goto_2e

    .line 386
    :cond_3e
    const-string v0, "FLEX_COUNTRY_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_49

    .line 387
    sput-object p1, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrCountryCode:Ljava/lang/String;

    goto :goto_2e

    .line 389
    :cond_49
    const-string v0, "FLEX_MCC_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_54

    .line 390
    sput-object p1, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrMccCode:Ljava/lang/String;

    goto :goto_2e

    .line 392
    :cond_54
    const-string v0, "FLEX_MNC_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_5f

    .line 393
    sput-object p1, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrMncCode:Ljava/lang/String;

    goto :goto_2e

    .line 395
    :cond_5f
    const-string v0, "FLEX_REGION_CODE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_6a

    .line 396
    sput-object p1, Lcom/lge/provider/Andy_Flex$FlexProperty;->mstrRegionCode:Ljava/lang/String;

    goto :goto_2e

    .line 399
    :cond_6a
    const-string v0, "Flex"

    const-string v0, "error loadFlexXml"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method
