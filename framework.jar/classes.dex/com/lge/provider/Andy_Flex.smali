.class public Lcom/lge/provider/Andy_Flex;
.super Ljava/lang/Object;
.source "Andy_Flex.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/provider/Andy_Flex$Andy_FlexData;,
        Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;,
        Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;,
        Lcom/lge/provider/Andy_Flex$FlexProperty;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "flex"

.field private static final FLEX_NEEDDEFINE:Ljava/lang/String; = "need to define flex"

.field private static final TAG:Ljava/lang/String; = "Flex"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    return-void
.end method

.method public static getCAName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "mcc"
    .parameter "mnc"

    .prologue
    .line 282
    sget-boolean v1, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v1, :cond_8

    .line 283
    const-string/jumbo v1, "need to define flex"

    .line 287
    :goto_7
    return-object v1

    .line 286
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 287
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Lcom/lge/provider/Andy_Flex$Andy_FlexOperator;->access$400(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static getCountryCode()Ljava/lang/String;
    .registers 1

    .prologue
    .line 146
    sget-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v0, :cond_8

    .line 147
    const-string/jumbo v0, "need to define flex"

    .line 149
    :goto_7
    return-object v0

    :cond_8
    const-string v0, "FLEX_COUNTRY_CODE"

    invoke-static {v0}, Lcom/lge/provider/Andy_Flex;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static getDefaultFlexValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "name"

    .prologue
    .line 298
    sget-boolean v2, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v2, :cond_8

    .line 299
    const-string/jumbo v2, "need to define flex"

    .line 304
    :goto_7
    return-object v2

    .line 302
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 304
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_d
    invoke-static {v0, v2, p1}, Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;->access$500(Landroid/content/ContentResolver;ILjava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v2

    goto :goto_7

    .line 305
    :catch_12
    move-exception v1

    .line 306
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public static getGidCode()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v4, "Flex"

    const-string v3, ""

    .line 226
    sget-boolean v1, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v1, :cond_c

    .line 227
    const-string/jumbo v1, "need to define flex"

    .line 248
    :goto_b
    return-object v1

    .line 230
    :cond_c
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$000()Z

    move-result v1

    if-nez v1, :cond_15

    .line 231
    invoke-static {}, Lcom/lge/provider/Andy_Flex;->loadFlexXml()V

    .line 234
    :cond_15
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$300()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 235
    const-string v1, ""

    move-object v1, v3

    goto :goto_b

    .line 241
    :cond_1f
    const-string v0, ""

    .line 242
    .local v0, strGID:Ljava/lang/String;
    const-string v1, "Flex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGidCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 245
    const-string v1, "Flex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sungyeon.kim] strGID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  return \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v1, ""

    move-object v1, v3

    goto :goto_b

    :cond_6d
    move-object v1, v0

    .line 248
    goto :goto_b
.end method

.method public static getMccCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 158
    sget-boolean v1, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v1, :cond_8

    .line 159
    const-string/jumbo v1, "need to define flex"

    .line 176
    :goto_7
    return-object v1

    .line 162
    :cond_8
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$000()Z

    move-result v1

    if-nez v1, :cond_11

    .line 163
    invoke-static {}, Lcom/lge/provider/Andy_Flex;->loadFlexXml()V

    .line 166
    :cond_11
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$300()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 167
    const-string v1, "FLEX_MCC_CODE"

    invoke-static {v1}, Lcom/lge/provider/Andy_Flex;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 169
    :cond_1e
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, numeric:Ljava/lang/String;
    const-string v1, "Flex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMccCode numeric "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_52

    .line 174
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 176
    :cond_52
    const-string v1, "0"

    goto :goto_7
.end method

.method public static getMncCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 185
    sget-boolean v1, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v1, :cond_8

    .line 186
    const-string/jumbo v1, "need to define flex"

    .line 203
    :goto_7
    return-object v1

    .line 189
    :cond_8
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$000()Z

    move-result v1

    if-nez v1, :cond_11

    .line 190
    invoke-static {}, Lcom/lge/provider/Andy_Flex;->loadFlexXml()V

    .line 193
    :cond_11
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$300()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 194
    const-string v1, "FLEX_MNC_CODE"

    invoke-static {v1}, Lcom/lge/provider/Andy_Flex;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 196
    :cond_1e
    const-string v1, "gsm.sim.operator.numeric"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, numeric:Ljava/lang/String;
    const-string v1, "Flex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMncCode numeric "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_51

    .line 201
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 203
    :cond_51
    const-string v1, "0"

    goto :goto_7
.end method

.method public static getOperatorCode()Ljava/lang/String;
    .registers 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v0, :cond_8

    .line 135
    const-string/jumbo v0, "need to define flex"

    .line 137
    :goto_7
    return-object v0

    :cond_8
    const-string v0, "FLEX_OPERATOR_CODE"

    invoke-static {v0}, Lcom/lge/provider/Andy_Flex;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static getRegionCode()Ljava/lang/String;
    .registers 1

    .prologue
    .line 212
    sget-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v0, :cond_8

    .line 213
    const-string/jumbo v0, "need to define flex"

    .line 216
    :goto_7
    return-object v0

    :cond_8
    const-string v0, "FLEX_REGION_CODE"

    invoke-static {v0}, Lcom/lge/provider/Andy_Flex;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static getSpnCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 258
    sget-boolean v1, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v1, :cond_8

    .line 259
    const-string/jumbo v1, "need to define flex"

    .line 275
    :goto_7
    return-object v1

    .line 262
    :cond_8
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$000()Z

    move-result v1

    if-nez v1, :cond_11

    .line 263
    invoke-static {}, Lcom/lge/provider/Andy_Flex;->loadFlexXml()V

    .line 266
    :cond_11
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$300()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 267
    const-string v1, ""

    goto :goto_7

    .line 273
    :cond_1a
    const-string v0, ""

    .line 274
    .local v0, strSPN:Ljava/lang/String;
    const-string v1, "Flex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpnCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    .line 275
    goto :goto_7
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    .line 104
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$000()Z

    move-result v1

    if-nez v1, :cond_9

    .line 105
    invoke-static {}, Lcom/lge/provider/Andy_Flex;->loadFlexXml()V

    .line 108
    :cond_9
    invoke-static {p0}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, strRetValue:Ljava/lang/String;
    const-string v1, "Flex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-nez v0, :cond_34

    .line 112
    const-string v1, ""

    .line 113
    :goto_33
    return-object v1

    :cond_34
    move-object v1, v0

    goto :goto_33
.end method

.method public static getUserFlexValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "name"

    .prologue
    .line 318
    sget-boolean v2, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v2, :cond_8

    .line 319
    const-string/jumbo v2, "need to define flex"

    .line 324
    :goto_7
    return-object v2

    .line 322
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    :try_start_d
    invoke-static {v0, v2, p1}, Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;->access$500(Landroid/content/ContentResolver;ILjava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_10} :catch_12

    move-result-object v2

    goto :goto_7

    .line 325
    :catch_12
    move-exception v1

    .line 326
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public static isAutoProfile()Z
    .registers 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v0, :cond_6

    .line 118
    const/4 v0, 0x0

    .line 125
    :goto_5
    return v0

    .line 121
    :cond_6
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$000()Z

    move-result v0

    if-nez v0, :cond_f

    .line 122
    invoke-static {}, Lcom/lge/provider/Andy_Flex;->loadFlexXml()V

    .line 125
    :cond_f
    invoke-static {}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$300()Z

    move-result v0

    goto :goto_5
.end method

.method private static loadFlexXml()V
    .registers 13

    .prologue
    const-string v10, "Got execption parsing flex.xml."

    const-string v10, "Flexinfo"

    const-string v12, "Flex"

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, fFlexXml:Ljava/io/FileReader;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    const-string v11, "etc/flex/flex.xml"

    invoke-direct {v4, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .local v4, fileFlexXml:Ljava/io/File;
    const-string v10, "Flex"

    const-string v10, " === loadFlexXml"

    invoke-static {v12, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$002(Z)Z

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_24

    .line 100
    :goto_23
    return-void

    .line 70
    :cond_24
    :try_start_24
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_7c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_29} :catch_5e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_6d

    .line 71
    .end local v2       #fFlexXml:Ljava/io/FileReader;,
    .local v3, fFlexXml:Ljava/io/FileReader;
    :try_start_29
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 72
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 74
    const-string v10, "Flexinfo"

    invoke-static {v7, v10}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 76
    :cond_35
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 78
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, sname:Ljava/lang/String;
    const-string v10, "Flexinfo"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_85
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_41} :catch_8c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_41} :catch_88

    move-result v10

    if-nez v10, :cond_49

    .line 96
    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_81

    :goto_47
    move-object v2, v3

    .line 100
    .end local v3       #fFlexXml:Ljava/io/FileReader;,
    .restart local v2       #fFlexXml:Ljava/io/FileReader;,
    goto :goto_23

    .line 82
    .end local v2       #fFlexXml:Ljava/io/FileReader;,
    .restart local v3       #fFlexXml:Ljava/io/FileReader;,
    :cond_49
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4a
    :try_start_4a
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    if-ge v5, v10, :cond_35

    .line 83
    invoke-interface {v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, name:Ljava/lang/String;
    invoke-interface {v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, value:Ljava/lang/String;
    invoke-static {v6, v9}, Lcom/lge/provider/Andy_Flex$FlexProperty;->access$100(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_85
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_5b} :catch_8c
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5b} :catch_88

    .line 82
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 88
    .end local v3       #fFlexXml:Ljava/io/FileReader;,
    .end local v5       #i:I,
    .end local v6       #name:Ljava/lang/String;,
    .end local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    .end local v8       #sname:Ljava/lang/String;,
    .end local v9       #value:Ljava/lang/String;,
    .restart local v2       #fFlexXml:Ljava/io/FileReader;,
    :catch_5e
    move-exception v10

    move-object v0, v10

    .line 89
    .local v0, e1:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_60
    :try_start_60
    const-string v10, "Flex"

    const-string v11, "Got execption parsing flex.xml."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_7c

    .line 96
    :try_start_67
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_23

    .line 97
    :catch_6b
    move-exception v10

    goto :goto_23

    .line 91
    .end local v0       #e1:Lorg/xmlpull/v1/XmlPullParserException;,
    :catch_6d
    move-exception v10

    move-object v1, v10

    .line 92
    .local v1, e2:Ljava/io/IOException;
    :goto_6f
    :try_start_6f
    const-string v10, "Flex"

    const-string v11, "Got execption parsing flex.xml."

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_7c

    .line 96
    :try_start_76
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_23

    .line 97
    :catch_7a
    move-exception v10

    goto :goto_23

    .line 95
    .end local v1       #e2:Ljava/io/IOException;,
    :catchall_7c
    move-exception v10

    .line 96
    :goto_7d
    :try_start_7d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_83

    .line 98
    :goto_80
    throw v10

    .line 97
    .end local v2       #fFlexXml:Ljava/io/FileReader;,
    .restart local v3       #fFlexXml:Ljava/io/FileReader;,
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    .restart local v8       #sname:Ljava/lang/String;,
    :catch_81
    move-exception v10

    goto :goto_47

    .end local v3       #fFlexXml:Ljava/io/FileReader;,
    .end local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    .end local v8       #sname:Ljava/lang/String;,
    .restart local v2       #fFlexXml:Ljava/io/FileReader;,
    :catch_83
    move-exception v11

    goto :goto_80

    .line 95
    .end local v2       #fFlexXml:Ljava/io/FileReader;,
    .restart local v3       #fFlexXml:Ljava/io/FileReader;,
    :catchall_85
    move-exception v10

    move-object v2, v3

    .end local v3       #fFlexXml:Ljava/io/FileReader;,
    .restart local v2       #fFlexXml:Ljava/io/FileReader;,
    goto :goto_7d

    .line 91
    .end local v2       #fFlexXml:Ljava/io/FileReader;,
    .restart local v3       #fFlexXml:Ljava/io/FileReader;,
    :catch_88
    move-exception v10

    move-object v1, v10

    move-object v2, v3

    .end local v3       #fFlexXml:Ljava/io/FileReader;,
    .restart local v2       #fFlexXml:Ljava/io/FileReader;,
    goto :goto_6f

    .line 88
    .end local v2       #fFlexXml:Ljava/io/FileReader;,
    .restart local v3       #fFlexXml:Ljava/io/FileReader;,
    :catch_8c
    move-exception v10

    move-object v0, v10

    move-object v2, v3

    .end local v3       #fFlexXml:Ljava/io/FileReader;,
    .restart local v2       #fFlexXml:Ljava/io/FileReader;,
    goto :goto_60
.end method

.method public static setUserFlexValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 341
    sget-boolean v2, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    if-nez v2, :cond_6

    .line 342
    const/4 v2, 0x0

    .line 347
    :goto_5
    return v2

    .line 345
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_a
    invoke-static {v0, p1, p2}, Lcom/lge/provider/Andy_Flex$Andy_FlexInfo;->access$600(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_f

    move-result v2

    goto :goto_5

    .line 348
    :catch_f
    move-exception v1

    .line 349
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method
