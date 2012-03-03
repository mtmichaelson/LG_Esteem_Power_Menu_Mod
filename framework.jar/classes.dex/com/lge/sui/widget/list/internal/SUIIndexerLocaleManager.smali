.class public Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;
.super Ljava/lang/Object;
.source "SUIIndexerLocaleManager.java"



# static fields
.field static sHelperMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-string v5, "com.lge.sui.widget.list.internal.SUIArabicIndexerLocaleUtils"

    const-string v4, "com.lge.sui.widget.list.internal.SUICyrillicIndexerLocaleUtils"

    const-string v3, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    .line 9
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "ar"

    const-string v2, "com.lge.sui.widget.list.internal.SUIArabicIndexerLocaleUtils"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "bg"

    const-string v2, "com.lge.sui.widget.list.internal.SUICyrillicIndexerLocaleUtils"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "hr"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "cs"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "da"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "et"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "fa"

    const-string v2, "com.lge.sui.widget.list.internal.SUIArabicIndexerLocaleUtils"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "fi"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "ed"

    const-string v2, "com.lge.sui.widget.list.internal.SUIGreekIndexerLocaleUtils"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "hu"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "ja"

    const-string v2, "com.lge.sui.widget.list.internal.SUIJapaneseIndexerLocaleUtils"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "kk"

    const-string v2, "com.lge.sui.widget.list.internal.SUICyrillicIndexerLocaleUtils"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "ko"

    const-string v2, "com.lge.sui.widget.list.internal.SUIKoreanIndexerLocaleUtils"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "lv"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "lt"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "mk"

    const-string v2, "com.lge.sui.widget.list.internal.SUICyrillicIndexerLocaleUtils"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "no"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "pl"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ro"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ru"

    const-string v2, "com.lge.sui.widget.list.internal.SUICyrillicIndexerLocaleUtils"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sr"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sk"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sl"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "es"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sv"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "th"

    const-string v2, "com.lge.sui.widget.list.internal.SUIThaiIndexerLocaleUtils"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "tr"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "uk"

    const-string v2, "com.lge.sui.widget.list.internal.SUICyrillicIndexerLocaleUtils"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "vi"

    const-string v2, "com.lge.sui.widget.list.internal.SUILatinIndexerLocaleUtils"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocaleUtils(Ljava/util/Locale;)Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;
    .registers 7
    .parameter "locale"

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, className:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, localeInfo:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, language:Ljava/lang/String;
    const-string/jumbo v4, "zh"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 45
    const-string/jumbo v4, "zh_CN"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 46
    const-string v0, "com.lge.sui.widget.list.internal.SUISimplifiedChineseIndexerLocaleUtils"

    .line 56
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_53

    .line 58
    :try_start_21
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleUtils;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_4b

    move-object v4, p0

    .line 64
    :goto_2c
    return-object v4

    .line 48
    .restart local p0       
    :cond_2d
    const-string/jumbo v4, "zh_TW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    const-string/jumbo v4, "zh_HK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 49
    :cond_3f
    const-string v0, "com.lge.sui.widget.list.internal.SUITraditionalChineseIndexerLocaleUtils"

    goto :goto_1f

    .line 53
    :cond_42
    sget-object v4, Lcom/lge/sui/widget/list/internal/SUIIndexerLocaleManager;->sHelperMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0       #className:Ljava/lang/String;,
    check-cast v0, Ljava/lang/String;

    .restart local v0       #className:Ljava/lang/String;,
    goto :goto_1f

    .line 59
    .end local p0       
    :catch_4b
    move-exception v4

    move-object v1, v4

    .line 60
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Lcom/lge/sui/widget/list/internal/SUIEnglishIndexerLocaleUtils;

    invoke-direct {v4}, Lcom/lge/sui/widget/list/internal/SUIEnglishIndexerLocaleUtils;-><init>()V

    goto :goto_2c

    .line 64
    .end local v1       #e:Ljava/lang/Exception;,
    .restart local p0       
    :cond_53
    new-instance v4, Lcom/lge/sui/widget/list/internal/SUIEnglishIndexerLocaleUtils;

    invoke-direct {v4}, Lcom/lge/sui/widget/list/internal/SUIEnglishIndexerLocaleUtils;-><init>()V

    goto :goto_2c
.end method
