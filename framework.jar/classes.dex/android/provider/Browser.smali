.class public Landroid/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Browser$SearchColumns;,
        Landroid/provider/Browser$BookmarkColumns;
    }
.end annotation


# static fields
.field public static final BOOKMARKS_URI:Landroid/net/Uri; = null

.field public static final DELETE_BOOKMARK_URI:Ljava/lang/String; = "content://browser/delete_bookmarks"

.field private static final DELETE_RECENT_PAGE_THUMBNAIL:[Ljava/lang/String; = null

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"

.field public static final EXTRA_HEADERS:Ljava/lang/String; = "com.android.browser.headers"

.field public static final EXTRA_SHARE_FAVICON:Ljava/lang/String; = "share_favicon"

.field public static final EXTRA_SHARE_SCREENSHOT:Ljava/lang/String; = "share_screenshot"

.field public static final HISTORY_PROJECTION:[Ljava/lang/String; = null

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5

.field public static final HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2

.field public static final INITIAL_ZOOM_LEVEL:Ljava/lang/String; = "browser.initialZoomLevel"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final MAX_HISTORY_COUNT:I = 0xfa

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String; = null

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1

.field public static final SEARCHES_URI:Landroid/net/Uri; = null

.field private static final SEARCHES_WHERE_CLAUSE:Ljava/lang/String; = "search = ?"

.field private static final THUMBNAILS_RANGE_DESC:Ljava/lang/String; = "DESC"

.field public static final TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String; = null

.field public static final TRUNCATE_HISTORY_PROJECTION_ID_INDEX:I = 0x0

.field public static final TRUNCATE_N_OLDEST:I = 0x5



# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "date"

    const-string v6, "_id"

    .line 38
    const-string v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string/jumbo v1, "url"

    aput-object v1, v0, v4

    const-string/jumbo v1, "visits"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v7, v0, v1

    const/4 v1, 0x4

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "touch_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "user_entered"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 99
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "date"

    aput-object v7, v0, v4

    sput-object v0, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    .line 106
    const-string v0, "content://browser/searches"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "date"

    aput-object v7, v0, v4

    const-string/jumbo v1, "thumbnail"

    aput-object v1, v0, v5

    sput-object v0, Landroid/provider/Browser;->DELETE_RECENT_PAGE_THUMBNAIL:[Ljava/lang/String;

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string/jumbo v1, "search"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v7, v0, v5

    sput-object v0, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    return-void
.end method

.method private static final addOrUrlEquals(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "sb"

    .prologue
    .line 219
    const-string v0, " OR url = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    return-void
.end method

.method public static final addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 13
    .parameter "cr"
    .parameter "search"

    .prologue
    .line 654
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    .line 655
    .local v9, now:J
    const/4 v6, 0x0

    .line 657
    .local v6, c:Landroid/database/Cursor;
    :try_start_a
    sget-object v1, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "search = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 663
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 664
    .local v8, map:Landroid/content/ContentValues;
    const-string/jumbo v0, "search"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 667
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 668
    sget-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_a .. :try_end_55} :catchall_70
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_55} :catch_61

    .line 675
    :goto_55
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 677
    .end local v8       #map:Landroid/content/ContentValues;,
    :cond_5a
    :goto_5a
    return-void

    .line 670
    .restart local v8       #map:Landroid/content/ContentValues;,
    :cond_5b
    :try_start_5b
    sget-object v0, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_70
    .catch Ljava/lang/IllegalStateException; {:try_start_5b .. :try_end_60} :catch_61

    goto :goto_55

    .line 672
    .end local v8       #map:Landroid/content/ContentValues;,
    :catch_61
    move-exception v0

    move-object v7, v0

    .line 673
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_63
    const-string v0, "browser"

    const-string v1, "addSearchUrl"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_70

    .line 675
    if-eqz v6, :cond_5a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    .end local v7       #e:Ljava/lang/IllegalStateException;,
    :catchall_70
    move-exception v0

    if-eqz v6, :cond_76

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_76
    throw v0
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .registers 4
    .parameter "bm"

    .prologue
    .line 740
    if-nez p0, :cond_4

    .line 741
    const/4 v1, 0x0

    .line 746
    :goto_3
    return-object v1

    .line 744
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 745
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 746
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_3
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .registers 10
    .parameter "cr"

    .prologue
    .line 508
    const/4 v6, 0x0

    .line 509
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 511
    .local v8, ret:Z
    :try_start_2
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "bookmark"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v3, "visits"

    aput-object v3, v2, v0

    const-string v3, "bookmark = 0 OR visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 520
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_39
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_23} :catch_2a

    move-result v8

    .line 524
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_29
    :goto_29
    return v8

    .line 521
    :catch_2a
    move-exception v0

    move-object v7, v0

    .line 522
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_2c
    const-string v0, "browser"

    const-string v1, "canClearHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_39

    .line 524
    if-eqz v6, :cond_29

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .end local v7       #e:Ljava/lang/IllegalStateException;,
    :catchall_39
    move-exception v0

    if-eqz v6, :cond_3f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3f
    throw v0
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "cr"

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public static final clearSearches(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "cr"

    .prologue
    .line 687
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    .line 691
    :goto_7
    return-void

    .line 688
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 689
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "browser"

    const-string v2, "clearSearches"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .parameter "cr"
    .parameter "url"

    .prologue
    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 641
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {v1, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 642
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, matchesUrl:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .registers 12
    .parameter "cr"
    .parameter "begin"
    .parameter "end"

    .prologue
    const-wide/16 v3, -0x1

    const-string v6, " >= "

    const-string v5, " < "

    .line 616
    const-string v0, "date"

    .line 617
    .local v0, date:Ljava/lang/String;
    cmp-long v2, v3, p1

    if-nez v2, :cond_33

    .line 618
    cmp-long v2, v3, p3

    if-nez v2, :cond_14

    .line 619
    invoke-static {p0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 630
    :goto_13
    return-void

    .line 622
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, whereClause:Ljava/lang/String;
    :goto_2f
    invoke-static {p0, v1}, Landroid/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_13

    .line 623
    .end local v1       #whereClause:Ljava/lang/String;,
    :cond_33
    cmp-long v2, v3, p3

    if-nez v2, :cond_53

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #whereClause:Ljava/lang/String;,
    goto :goto_2f

    .line 626
    .end local v1       #whereClause:Ljava/lang/String;,
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #whereClause:Ljava/lang/String;,
    goto :goto_2f
.end method

.method private static final deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 9
    .parameter "cr"
    .parameter "whereClause"

    .prologue
    .line 550
    const/4 v6, 0x0

    .line 552
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_bb
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_c} :catch_c1

    move-result-object v0

    .line 557
    .end local v6       #c:Landroid/database/Cursor;,
    .local v0, c:Landroid/database/Cursor;
    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 558
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v2

    .line 562
    .local v2, iconDb:Landroid/webkit/WebIconDatabase;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 563
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .line 565
    .local v1, firstTime:Z
    :cond_1d
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 566
    .local v5, url:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_96

    const/4 v3, 0x1

    .line 568
    .local v3, isBookmark:Z
    :goto_2b
    if-eqz v3, :cond_ae

    .line 569
    if-eqz v1, :cond_98

    .line 570
    const/4 v1, 0x0

    .line 574
    .end local v3       #isBookmark:Z,
    :goto_30
    const-string v3, "( _id = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 575
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 576
    const-string v3, " )"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 580
    :goto_42
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 582
    if-nez v1, :cond_6e

    .line 583
    new-instance v1, Landroid/content/ContentValues;

    .end local v1       #firstTime:Z,
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 584
    .local v1, map:Landroid/content/ContentValues;
    const-string/jumbo v2, "visits"

    .end local v2       #iconDb:Landroid/webkit/WebIconDatabase;,
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    const-string v2, "date"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 590
    .end local v1       #map:Landroid/content/ContentValues;,
    .end local v4       #sb:Ljava/lang/StringBuffer;,
    :cond_6e
    const-string v1, "bookmark = 0"

    .line 591
    .local v1, deleteWhereClause:Ljava/lang/String;
    if-eqz p1, :cond_c5

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1       #deleteWhereClause:Ljava/lang/String;,
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1       
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 594
    .local p1, deleteWhereClause:Ljava/lang/String;
    :goto_89
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_d .. :try_end_8f} :catchall_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_8f} :catch_9e

    .line 600
    .end local v5       #url:Ljava/lang/String;,
    .end local p1       #deleteWhereClause:Ljava/lang/String;,
    :cond_8f
    if-eqz v0, :cond_94

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_94
    move-object p0, v0

    .line 602
    .end local v0       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    :cond_95
    :goto_95
    return-void

    .line 566
    .restart local v0       #c:Landroid/database/Cursor;,
    .local v1, firstTime:Z
    .restart local v2       #iconDb:Landroid/webkit/WebIconDatabase;,
    .restart local v4       #sb:Ljava/lang/StringBuffer;,
    .restart local v5       #url:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :cond_96
    const/4 v3, 0x0

    goto :goto_2b

    .line 572
    .restart local v3       #isBookmark:Z,
    :cond_98
    :try_start_98
    const-string v3, " OR "

    .end local v3       #isBookmark:Z,
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_98 .. :try_end_9d} :catch_9e

    goto :goto_30

    .line 596
    .end local v1       #firstTime:Z,
    .end local v2       #iconDb:Landroid/webkit/WebIconDatabase;,
    .end local v4       #sb:Ljava/lang/StringBuffer;,
    .end local v5       #url:Ljava/lang/String;,
    .end local p1       #whereClause:Ljava/lang/String;,
    :catch_9e
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 597
    .end local v0       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    .local p1, e:Ljava/lang/IllegalStateException;
    :goto_a1
    :try_start_a1
    const-string v0, "browser"

    const-string v1, "deleteHistoryWhere"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_bf

    .line 600
    if-eqz p0, :cond_95

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_95

    .line 578
    .restart local v0       #c:Landroid/database/Cursor;,
    .restart local v1       #firstTime:Z,
    .restart local v2       #iconDb:Landroid/webkit/WebIconDatabase;,
    .restart local v3       #isBookmark:Z,
    .restart local v4       #sb:Ljava/lang/StringBuffer;,
    .restart local v5       #url:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :cond_ae
    :try_start_ae
    invoke-virtual {v2, v5}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_ae .. :try_end_b1} :catch_9e

    goto :goto_42

    .line 600
    .end local v1       #firstTime:Z,
    .end local v2       #iconDb:Landroid/webkit/WebIconDatabase;,
    .end local v3       #isBookmark:Z,
    .end local v4       #sb:Ljava/lang/StringBuffer;,
    .end local v5       #url:Ljava/lang/String;,
    .end local p1       #whereClause:Ljava/lang/String;,
    :catchall_b2
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    :goto_b5
    if-eqz p0, :cond_ba

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_ba
    throw p1

    .restart local v6       #c:Landroid/database/Cursor;,
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #whereClause:Ljava/lang/String;,
    :catchall_bb
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    goto :goto_b5

    .local p1, e:Ljava/lang/IllegalStateException;
    :catchall_bf
    move-exception p1

    goto :goto_b5

    .line 596
    .restart local v6       #c:Landroid/database/Cursor;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, whereClause:Ljava/lang/String;
    :catch_c1
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    goto :goto_a1

    .restart local v0       #c:Landroid/database/Cursor;,
    .local v1, deleteWhereClause:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    :cond_c5
    move-object p1, v1

    .end local v1       #deleteWhereClause:Ljava/lang/String;,
    .local p1, deleteWhereClause:Ljava/lang/String;
    goto :goto_89
.end method

.method public static final deleteRecentpageThumbnail(Landroid/content/ContentResolver;)V
    .registers 13
    .parameter "cr"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x3

    .line 461
    const/4 v6, 0x0

    .line 463
    .local v6, c:Landroid/database/Cursor;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->DELETE_RECENT_PAGE_THUMBNAIL:[Ljava/lang/String;

    const-string v3, "bookmark = 0 and thumbnail not null"

    const-string v5, "date DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 471
    if-eqz v6, :cond_68

    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 472
    const/4 v10, 0x0

    .line 473
    .local v10, thumnailId:I
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 475
    .local v9, thumbnailCnt:I
    if-le v9, v11, :cond_63

    .line 476
    const/4 v7, 0x0

    .local v7, i:I
    :goto_20
    if-ge v7, v9, :cond_5e

    .line 477
    if-ge v7, v11, :cond_2a

    .line 478
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 476
    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 481
    :cond_2a
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 482
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 483
    .local v8, map:Landroid/content/ContentValues;
    const-string/jumbo v0, "thumbnail"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 484
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_27

    .line 489
    .end local v8       #map:Landroid/content/ContentValues;,
    :cond_5e
    if-eqz v6, :cond_63

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 491
    .end local v7       #i:I,
    :cond_63
    if-eqz v6, :cond_68

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_68
    .catchall {:try_start_12 .. :try_end_68} :catchall_6e

    .line 495
    .end local v9       #thumbnailCnt:I,
    .end local v10       #thumnailId:I,
    :cond_68
    if-eqz v6, :cond_6d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_6d
    return-void

    .line 495
    :catchall_6e
    move-exception v0

    if-eqz v6, :cond_74

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_74
    throw v0
.end method

.method public static final getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 202
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "url"

    aput-object v3, v2, v0

    const-string v3, "bookmark = 1"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getAllVisitedUrls(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 7
    .parameter "cr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 214
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "url"

    aput-object v4, v2, v0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .registers 11
    .parameter "cr"

    .prologue
    .line 364
    const/4 v6, 0x0

    .line 365
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 367
    .local v9, str:[Ljava/lang/String;
    const/4 v0, 0x1

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "url"

    aput-object v1, v2, v0

    .line 370
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v3, "visits > 0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 372
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v9, v0, [Ljava/lang/String;

    .line 373
    const/4 v8, 0x0

    .line 374
    .local v8, i:I
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 375
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_46
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_2b} :catch_34

    .line 376
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 382
    :cond_2e
    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 384
    .end local v2       #projection:[Ljava/lang/String;,
    .end local v8       #i:I,
    :cond_33
    :goto_33
    return-object v9

    .line 378
    :catch_34
    move-exception v0

    move-object v7, v0

    .line 379
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_36
    const-string v0, "browser"

    const-string v1, "getVisitedHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    const/4 v0, 0x0

    new-array v9, v0, [Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_46

    .line 382
    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .end local v7       #e:Ljava/lang/IllegalStateException;,
    :catchall_46
    move-exception v0

    if-eqz v6, :cond_4c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v0
.end method

.method public static final getVisitedHistoryByOrder(Landroid/content/ContentResolver;Ljava/lang/String;I)[Ljava/lang/String;
    .registers 14
    .parameter "cr"
    .parameter "order"
    .parameter "num"

    .prologue
    .line 394
    const/4 v6, 0x0

    .line 396
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_2
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "url"

    aput-object v1, v2, v0

    .line 399
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string/jumbo v3, "visits > 0"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 402
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, p2, :cond_32

    move v7, p2

    .line 403
    .local v7, count:I
    :goto_1d
    new-array v10, v7, [Ljava/lang/String;

    .line 404
    .local v10, str:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 405
    .local v9, i:I
    :goto_20
    if-ge v9, v7, :cond_38

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 406
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9

    .line 407
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    .line 402
    .end local v7       #count:I,
    .end local v9       #i:I,
    .end local v10       #str:[Ljava/lang/String;,
    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_35
    .catchall {:try_start_2 .. :try_end_35} :catchall_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_35} :catch_3f

    move-result v0

    move v7, v0

    goto :goto_1d

    .line 414
    .restart local v7       #count:I,
    .restart local v9       #i:I,
    .restart local v10       #str:[Ljava/lang/String;,
    :cond_38
    if-eqz v6, :cond_3d

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3d
    move-object v0, v10

    .end local v2       #projection:[Ljava/lang/String;,
    .end local v7       #count:I,
    .end local v9       #i:I,
    .end local v10       #str:[Ljava/lang/String;,
    :cond_3e
    :goto_3e
    return-object v0

    .line 410
    :catch_3f
    move-exception v0

    move-object v8, v0

    .line 411
    .local v8, e:Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    :try_start_42
    new-array v0, v0, [Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_4a

    .line 414
    if-eqz v6, :cond_3e

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3e

    .end local v8       #e:Ljava/lang/IllegalStateException;,
    :catchall_4a
    move-exception v0

    if-eqz v6, :cond_50

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v0
.end method

.method public static final getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "cr"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v5, "www."

    const-string/jumbo v1, "url = "

    const-string v3, "https://"

    const-string v2, "http://"

    .line 231
    const/4 v7, 0x0

    .line 232
    .local v7, secure:Z
    move-object v6, p1

    .line 233
    .local v6, compareString:Ljava/lang/String;
    const-string v0, "http://"

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 234
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 239
    :cond_1a
    :goto_1a
    const-string/jumbo v0, "www."

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 240
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 242
    :cond_28
    const/4 v8, 0x0

    .line 243
    .local v8, whereClause:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_81

    .line 244
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8       #whereClause:Ljava/lang/StringBuilder;,
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;,
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 247
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://www."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 265
    :goto_62
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 235
    .end local v8       #whereClause:Ljava/lang/StringBuilder;,
    :cond_71
    const-string v0, "https://"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 236
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 237
    const/4 v7, 0x1

    goto :goto_1a

    .line 251
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;,
    :cond_81
    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8       #whereClause:Ljava/lang/StringBuilder;,
    const-string/jumbo v0, "url = "

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v8       #whereClause:Ljava/lang/StringBuilder;,
    invoke-static {v8, v6}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 254
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "www."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, wwwString:Ljava/lang/String;
    invoke-static {v8, v9}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 258
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 261
    invoke-static {v8}, Landroid/provider/Browser;->addOrUrlEquals(Ljava/lang/StringBuilder;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_62
.end method

.method public static final requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V
    .registers 4
    .parameter "cr"
    .parameter "where"
    .parameter "listener"

    .prologue
    .line 706
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/webkit/WebIconDatabase;->bulkRequestIconForPageUrl(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 708
    return-void
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "c"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v0, i:Landroid/content/Intent;
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "c"
    .parameter "s"

    .prologue
    .line 168
    const v0, 0x1040338

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static final sendString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "c"
    .parameter "stringToSend"
    .parameter "chooserDialogTitle"

    .prologue
    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, send:Landroid/content/Intent;
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :try_start_12
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 193
    :goto_19
    return-void

    .line 190
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .registers 10
    .parameter "cr"

    .prologue
    .line 430
    const/4 v6, 0x0

    .line 433
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->TRUNCATE_HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "bookmark = 0"

    const/4 v4, 0x0

    const-string v5, "date"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 440
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0xfa

    if-lt v0, v1, :cond_45

    .line 442
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1e
    const/4 v0, 0x5

    if-ge v8, v0, :cond_45

    .line 445
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 448
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_5e
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_42} :catch_4e

    move-result v0

    if-nez v0, :cond_4b

    .line 454
    .end local v8       #i:I,
    :cond_45
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_4a
    :goto_4a
    return-void

    .line 442
    .restart local v8       #i:I,
    :cond_4b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    .line 451
    .end local v8       #i:I,
    :catch_4e
    move-exception v0

    move-object v7, v0

    .line 452
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_50
    const-string v0, "browser"

    const-string/jumbo v1, "truncateHistory"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_50 .. :try_end_58} :catchall_5e

    .line 454
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4a

    .end local v7       #e:Ljava/lang/IllegalStateException;,
    :catchall_5e
    move-exception v0

    if-eqz v6, :cond_64

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0
.end method

.method public static final updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 13
    .parameter "cr"
    .parameter "url"
    .parameter "real"

    .prologue
    const-string/jumbo v8, "visits"

    const-string/jumbo v8, "user_entered"

    const-string v8, "date"

    .line 310
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 311
    .local v3, now:J
    const/4 v0, 0x0

    .line 313
    .local v0, c:Landroid/database/Cursor;
    :try_start_12
    invoke-static {p0, p1}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 315
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_79

    .line 316
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 317
    .local v2, map:Landroid/content/ContentValues;
    if-eqz p2, :cond_5d

    .line 318
    const-string/jumbo v8, "visits"

    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    :goto_34
    const-string v8, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 326
    .local v5, projection:[Ljava/lang/String;
    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v9, "_id = ?"

    invoke-virtual {p0, v8, v2, v9, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_12 .. :try_end_57} :catchall_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_57} :catch_69

    .line 353
    .end local v5       #projection:[Ljava/lang/String;,
    :goto_57
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 355
    .end local v2       #map:Landroid/content/ContentValues;,
    :cond_5c
    :goto_5c
    return-void

    .line 321
    .restart local v2       #map:Landroid/content/ContentValues;,
    :cond_5d
    :try_start_5d
    const-string/jumbo v8, "user_entered"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_68
    .catchall {:try_start_5d .. :try_end_68} :catchall_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_34

    .line 350
    .end local v2       #map:Landroid/content/ContentValues;,
    :catch_69
    move-exception v8

    move-object v1, v8

    .line 351
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_6b
    const-string v8, "browser"

    const-string/jumbo v9, "updateVisitedHistory"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_c8

    .line 353
    if-eqz v0, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5c

    .line 328
    .end local v1       #e:Ljava/lang/IllegalStateException;,
    :cond_79
    :try_start_79
    invoke-static {p0}, Landroid/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 329
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 332
    .restart local v2       #map:Landroid/content/ContentValues;,
    if-eqz p2, :cond_cf

    .line 333
    const/4 v7, 0x1

    .line 334
    .local v7, visits:I
    const/4 v6, 0x0

    .line 339
    .local v6, user_entered:I
    :goto_85
    const-string/jumbo v8, "url"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string/jumbo v8, "visits"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v8, "date"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    const-string v8, "bookmark"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string/jumbo v8, "title"

    invoke-virtual {v2, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v8, "created"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    const-string/jumbo v8, "user_entered"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    sget-object v8, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v8, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c7
    .catchall {:try_start_79 .. :try_end_c7} :catchall_c8
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_c7} :catch_69

    goto :goto_57

    .line 353
    .end local v2       #map:Landroid/content/ContentValues;,
    .end local v6       #user_entered:I,
    .end local v7       #visits:I,
    :catchall_c8
    move-exception v8

    if-eqz v0, :cond_ce

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_ce
    throw v8

    .line 336
    .restart local v2       #map:Landroid/content/ContentValues;,
    :cond_cf
    const/4 v7, 0x0

    .line 337
    .restart local v7       #visits:I,
    const/4 v6, 0x1

    .restart local v6       #user_entered:I,
    goto :goto_85
.end method

.method public static final updateVisitedHistoryThumbnail(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 9
    .parameter "cr"
    .parameter "url"
    .parameter "thumbnail"

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 275
    .local v0, c:Landroid/database/Cursor;
    :try_start_1
    invoke-static {p0, p1}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 278
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v2, map:Landroid/content/ContentValues;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 285
    .local v3, projection:[Ljava/lang/String;
    const-string/jumbo v4, "thumbnail"

    invoke-static {p2}, Landroid/provider/Browser;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 287
    const-string v4, "Thumbnail"

    const-string/jumbo v5, "updateVisitedHistory thumbnail"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v5, "_id = ?"

    invoke-virtual {p0, v4, v2, v5, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_52
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_3c} :catch_42

    .line 293
    .end local v2       #map:Landroid/content/ContentValues;,
    .end local v3       #projection:[Ljava/lang/String;,
    :cond_3c
    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 295
    :cond_41
    :goto_41
    return-void

    .line 290
    :catch_42
    move-exception v4

    move-object v1, v4

    .line 291
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_44
    const-string v4, "browser"

    const-string/jumbo v5, "updateVisitedHistory"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_52

    .line 293
    if-eqz v0, :cond_41

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_41

    .end local v1       #e:Ljava/lang/IllegalStateException;,
    :catchall_52
    move-exception v4

    if-eqz v0, :cond_58

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v4
.end method
