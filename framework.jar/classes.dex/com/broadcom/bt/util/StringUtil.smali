.class public Lcom/broadcom/bt/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 4
    .parameter "s"
    .parameter "defaultVal"

    .prologue
    .line 24
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 26
    :goto_4
    return v1

    .line 25
    :catch_5
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, p1

    .line 26
    goto :goto_4
.end method
