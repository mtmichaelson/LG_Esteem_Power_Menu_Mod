.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"



# static fields
.field private static final DEBUG:Z = false

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    const-string/jumbo v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 107
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 108
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 111
    .end local v1       #u:Landroid/net/Uri;,
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public static final getDefaultPort()I
    .registers 3

    .prologue
    .line 121
    const-string/jumbo v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 123
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 124
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 126
    .end local v1       #u:Landroid/net/Uri;,
    :goto_11
    return v2

    :cond_12
    const/4 v2, -0x1

    goto :goto_11
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "ctx"

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 48
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 49
    const-string v3, "http_proxy"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 53
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 54
    .local v2, i:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    .line 58
    const/4 v3, 0x0

    .line 62
    .end local v2       #i:I,
    :goto_19
    return-object v3

    .line 60
    .restart local v2       #i:I,
    :cond_1a
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    .line 62
    .end local v2       #i:I,
    :cond_20
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    goto :goto_19
.end method

.method public static final getPort(Landroid/content/Context;)I
    .registers 7
    .parameter "ctx"

    .prologue
    const/4 v5, -0x1

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 73
    const-string v4, "http_proxy"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 77
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 78
    .local v2, i:I
    if-ne v2, v5, :cond_1a

    move v4, v5

    .line 96
    .end local v2       #i:I,
    :goto_19
    return v4

    .line 89
    .restart local v2       #i:I,
    :cond_1a
    const/4 v3, -0x1

    .line 90
    .local v3, retPort:I
    add-int/lit8 v4, v2, 0x1

    :try_start_1d
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_2c

    move-result v3

    :goto_25
    move v4, v3

    .line 92
    goto :goto_19

    .line 96
    .end local v2       #i:I,
    .end local v3       #retPort:I,
    :cond_27
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    goto :goto_19

    .line 91
    .restart local v2       #i:I,
    .restart local v3       #retPort:I,
    :catch_2c
    move-exception v4

    goto :goto_25
.end method
