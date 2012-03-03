.class public Lcom/lge/sui/widget/util/SUIIndexerHelperManager;
.super Ljava/lang/Object;
.source "SUIIndexerHelperManager.java"



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
    .registers 3

    .prologue
    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->sHelperMap:Ljava/util/HashMap;

    .line 9
    sget-object v0, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "bg"

    const-string v2, "com.lge.sui.widget.util.SUIBulgarianIndexerHelper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "da"

    const-string v2, "com.lge.sui.widget.util.SUIDanishIndexerHelper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "es"

    const-string v2, "com.lge.sui.widget.util.SUISpanishIndexerHelper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "fi"

    const-string v2, "com.lge.sui.widget.util.SUIFinnishIndexerHelper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "ko"

    const-string v2, "com.lge.sui.widget.util.SUIKoreanIndexerHelper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->sHelperMap:Ljava/util/HashMap;

    const-string v1, "ja"

    const-string v2, "com.lge.sui.widget.util.SUIJapaneseIndexerHelper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v0, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "ru"

    const-string v2, "com.lge.sui.widget.util.SUIRussianIndexerHelper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->sHelperMap:Ljava/util/HashMap;

    const-string/jumbo v1, "sv"

    const-string v2, "com.lge.sui.widget.util.SUISwedishIndexerHelper"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndexerHelper(Ljava/util/Locale;)Lcom/lge/sui/widget/util/SUIIndexerHelper;
    .registers 7
    .parameter "locale"

    .prologue
    .line 20
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 21
    .local v2, key:Ljava/lang/String;
    sget-object v3, Lcom/lge/sui/widget/util/SUIIndexerHelperManager;->sHelperMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 22
    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_28

    .line 24
    :try_start_14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/lge/sui/widget/util/SUIIndexerHelper;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_20

    move-object v3, p0

    .line 30
    :goto_1f
    return-object v3

    .line 25
    :catch_20
    move-exception v3

    move-object v1, v3

    .line 26
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/lge/sui/widget/util/SUIEnglishIndexerHelper;

    invoke-direct {v3}, Lcom/lge/sui/widget/util/SUIEnglishIndexerHelper;-><init>()V

    goto :goto_1f

    .line 30
    .end local v1       #e:Ljava/lang/Exception;,
    .restart local p0       
    :cond_28
    new-instance v3, Lcom/lge/sui/widget/util/SUIEnglishIndexerHelper;

    invoke-direct {v3}, Lcom/lge/sui/widget/util/SUIEnglishIndexerHelper;-><init>()V

    goto :goto_1f
.end method
