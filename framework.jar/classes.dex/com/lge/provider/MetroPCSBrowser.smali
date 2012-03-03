.class public Lcom/lge/provider/MetroPCSBrowser;
.super Ljava/lang/Object;
.source "MetroPCSBrowser.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/provider/MetroPCSBrowser$MMCReq;,
        Lcom/lge/provider/MetroPCSBrowser$Purchase;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.browser.metropcs"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "cr"
    .parameter "filepath"

    .prologue
    const/4 v1, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "page_url"

    aput-object v0, v2, v1

    .line 59
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 63
    .local v7, url:Ljava/lang/String;
    :try_start_25
    sget-object v1, Lcom/lge/provider/MetroPCSBrowser$Purchase;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 73
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_38} :catch_3f

    move-result-object v7

    .line 81
    :cond_39
    if-eqz v6, :cond_3e

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_3e
    :goto_3e
    return-object v7

    .line 76
    :catch_3f
    move-exception v0

    .line 81
    if-eqz v6, :cond_3e

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    .line 81
    :catchall_46
    move-exception v0

    if-eqz v6, :cond_4c

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v0
.end method
