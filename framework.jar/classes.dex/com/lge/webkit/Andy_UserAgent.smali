.class public Lcom/lge/webkit/Andy_UserAgent;
.super Ljava/lang/Object;
.source "Andy_UserAgent.java"



# static fields
.field private static final DEFAULT_LOCALE:Ljava/lang/String; = "en-us"

.field private static final FLEX_INDEX_USERAGENT_STRING:Ljava/lang/String; = "BRW_SETTINGDB_UA_STRING_I"

.field private static final FLEX_INDEX_USE_DEFAULT_USERAGENT:Ljava/lang/String; = "BRW_SETTINGDB_USE_DEFAULT_USERAGENT_I"

.field private static final LOG_TAG:Ljava/lang/String; = "Andy_UserAgent"

.field private static sInitialized:Z = false

.field private static sUaprof:Ljava/lang/String; = null

.field private static final sUseAndroidDefault:Z = true

.field private static sUserAgentFormat:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/webkit/Andy_UserAgent;->sInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildUserAgent(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .parameter "base"
    .parameter "updateLocale"

    .prologue
    const-string v11, "Andy_UserAgent"

    .line 57
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 58
    .local v2, ANDROID_VERSION:Ljava/lang/String;
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 59
    .local v0, ANDROID_BUILDID:Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 62
    .local v1, ANDROID_MODEL:Ljava/lang/String;
    const/4 v5, 0x0

    .line 64
    .local v5, dynamicUAS:Ljava/lang/String;
    if-eqz p0, :cond_a0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a0

    .line 66
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 68
    .local v3, buffer_locale:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_91

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 70
    .local v7, locale:Ljava/util/Locale;
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, language:Ljava/lang/String;
    if-eqz v6, :cond_8b

    .line 72
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, country:Ljava/lang/String;
    if-eqz v4, :cond_41

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_41

    .line 75
    const-string v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    .end local v4       #country:Ljava/lang/String;,
    .end local v6       #language:Ljava/lang/String;,
    .end local v7       #locale:Ljava/util/Locale;,
    :cond_41
    :goto_41
    const-string v8, "${VERSION}"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_97

    move-object v9, v2

    :goto_4a
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "${LOCALE}"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "${MODEL}"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_9a

    move-object v10, v1

    :goto_61
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "${BUILD}"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_9d

    move-object v10, v0

    :goto_6e
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 96
    const-string v8, "Andy_UserAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "buildUserAgent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v3       #buffer_locale:Ljava/lang/StringBuffer;,
    :goto_8a
    return-object v5

    .line 80
    .restart local v3       #buffer_locale:Ljava/lang/StringBuffer;,
    .restart local v6       #language:Ljava/lang/String;,
    .restart local v7       #locale:Ljava/util/Locale;,
    :cond_8b
    const-string v8, "en"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 83
    .end local v6       #language:Ljava/lang/String;,
    .end local v7       #locale:Ljava/util/Locale;,
    :cond_91
    const-string v8, "en-us"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_41

    .line 86
    :cond_97
    const-string v9, "1.0"

    goto :goto_4a

    :cond_9a
    const-string v10, "generic"

    goto :goto_61

    :cond_9d
    const-string v10, "MASTER"

    goto :goto_6e

    .line 99
    .end local v3       #buffer_locale:Ljava/lang/StringBuffer;,
    :cond_a0
    const-string v8, "Andy_UserAgent"

    const-string v8, "buildUserAgent: null"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8a
.end method

.method public static getUaprof(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .parameter "context"

    .prologue
    .line 154
    invoke-static {p0}, Lcom/lge/webkit/Andy_UserAgent;->initialize(Landroid/content/Context;)V

    .line 156
    sget-object v0, Lcom/lge/webkit/Andy_UserAgent;->sUaprof:Ljava/lang/String;

    return-object v0
.end method

.method public static getUseDefaultUserAgent(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 106
    const-string v1, "BRW_SETTINGDB_USE_DEFAULT_USERAGENT_I"

    invoke-static {p0, v1}, Lcom/lge/provider/Andy_Flex;->getUserFlexValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, flexValue:Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    :cond_f
    move v1, v2

    .line 115
    :goto_10
    return v1

    .line 112
    :cond_11
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 113
    const/4 v1, 0x0

    goto :goto_10

    :cond_1b
    move v1, v2

    .line 115
    goto :goto_10
.end method

.method public static getUserAgent(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "updateLocale"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/lge/webkit/Andy_UserAgent;->initialize(Landroid/content/Context;)V

    .line 123
    invoke-static {p0}, Lcom/lge/webkit/Andy_UserAgent;->getUseDefaultUserAgent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 124
    sget-object v0, Lcom/lge/webkit/Andy_UserAgent;->sUserAgentFormat:Ljava/lang/String;

    .line 129
    .local v0, userAgent:Ljava/lang/String;
    :goto_b
    invoke-static {v0, p1}, Lcom/lge/webkit/Andy_UserAgent;->buildUserAgent(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 126
    .end local v0       #userAgent:Ljava/lang/String;,
    :cond_10
    const-string v1, "BRW_SETTINGDB_UA_STRING_I"

    invoke-static {p0, v1}, Lcom/lge/provider/Andy_Flex;->getUserFlexValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #userAgent:Ljava/lang/String;,
    goto :goto_b
.end method

.method public static getUserAgentFormat(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/lge/webkit/Andy_UserAgent;->initialize(Landroid/content/Context;)V

    .line 137
    invoke-static {p0}, Lcom/lge/webkit/Andy_UserAgent;->getUseDefaultUserAgent(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 138
    sget-object v0, Lcom/lge/webkit/Andy_UserAgent;->sUserAgentFormat:Ljava/lang/String;

    .line 143
    .local v0, userAgent:Ljava/lang/String;
    :goto_b
    return-object v0

    .line 140
    .end local v0       #userAgent:Ljava/lang/String;,
    :cond_c
    const-string v1, "BRW_SETTINGDB_UA_STRING_I"

    invoke-static {p0, v1}, Lcom/lge/provider/Andy_Flex;->getUserFlexValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #userAgent:Ljava/lang/String;,
    goto :goto_b
.end method

.method private static initialize(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 27
    sget-boolean v2, Lcom/lge/webkit/Andy_UserAgent;->sInitialized:Z

    if-nez v2, :cond_2e

    .line 29
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    .local v1, buffer:Ljava/lang/StringBuffer;
    const-string v2, "${VERSION}; ${LOCALE}; ${MODEL} Build/${BUILD}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10402df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, base:Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lge/webkit/Andy_UserAgent;->sUserAgentFormat:Ljava/lang/String;

    .line 37
    const/4 v2, 0x0

    sput-object v2, Lcom/lge/webkit/Andy_UserAgent;->sUaprof:Ljava/lang/String;

    .line 51
    sput-boolean v4, Lcom/lge/webkit/Andy_UserAgent;->sInitialized:Z

    .line 53
    .end local v0       #base:Ljava/lang/String;,
    .end local v1       #buffer:Ljava/lang/StringBuffer;,
    :cond_2e
    return-void
.end method

.method public static resetUserAgent(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 160
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/webkit/Andy_UserAgent;->sInitialized:Z

    .line 161
    invoke-static {p0}, Lcom/lge/webkit/Andy_UserAgent;->initialize(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method public static setUseDefaultUserAgent(Landroid/content/Context;Z)Z
    .registers 4
    .parameter "context"
    .parameter "useDefault"

    .prologue
    .line 148
    const-string v0, "BRW_SETTINGDB_USE_DEFAULT_USERAGENT_I"

    if-eqz p1, :cond_b

    const-string v1, "1"

    :goto_6
    invoke-static {p0, v0, v1}, Lcom/lge/provider/Andy_Flex;->setUserFlexValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_b
    const-string v1, "0"

    goto :goto_6
.end method
