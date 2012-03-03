.class public final Lcom/lge/provider/Andy_AdditionalContacts$Andy_Groups;
.super Ljava/lang/Object;
.source "Andy_AdditionalContacts.java"


# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/SyncConstValue;
.implements Lcom/lge/provider/Andy_AdditionalContacts$Andy_GroupsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_AdditionalContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Andy_Groups"
.end annotation


# static fields
.field public static final Andy_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_NOGROUP_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_NOGROUP_URI:Landroid/net/Uri;

.field public static final CONTENT_STARRED_URI:Landroid/net/Uri;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 463
    const-string v0, "content://contacts/groups/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_AdditionalContacts$Andy_Groups;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 473
    const-string v0, "content://contacts/groups/starred"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_AdditionalContacts$Andy_Groups;->CONTENT_STARRED_URI:Landroid/net/Uri;

    .line 483
    const-string v0, "content://contacts/groups/nogroup/members"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_AdditionalContacts$Andy_Groups;->CONTENT_NOGROUP_URI:Landroid/net/Uri;

    .line 490
    const-string v0, "content://contacts/groups/nogroup/members/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_AdditionalContacts$Andy_Groups;->CONTENT_NOGROUP_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Andy_loadGroupPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "context"
    .parameter "groupUri"
    .parameter "placeholderImageResource"
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    .line 622
    if-nez p1, :cond_8

    .line 623
    invoke-static {p2, p0, p3}, Lcom/lge/provider/Andy_AdditionalContacts$Andy_Groups;->Andy_loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 642
    :goto_7
    return-object v3

    .line 626
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/lge/provider/Andy_AdditionalContacts$Andy_Groups;->Andy_openGroupPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 627
    .local v2, stream:Ljava/io/InputStream;
    if-eqz v2, :cond_2d

    invoke-static {v2, v4, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 629
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_17
    if-nez v0, :cond_25

    .line 630
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 632
    if-eqz v2, :cond_2f

    const/4 v3, 0x0

    :try_start_20
    invoke-static {v2, v3, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_23} :catch_31

    move-result-object v3

    move-object v0, v3

    .line 639
    :cond_25
    :goto_25
    if-nez v0, :cond_2b

    .line 640
    invoke-static {p2, p0, p3}, Lcom/lge/provider/Andy_AdditionalContacts$Andy_Groups;->Andy_loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2b
    move-object v3, v0

    .line 642
    goto :goto_7

    .end local v0       #bm:Landroid/graphics/Bitmap;,
    :cond_2d
    move-object v0, v4

    .line 627
    goto :goto_17

    .restart local v0       #bm:Landroid/graphics/Bitmap;,
    :cond_2f
    move-object v0, v4

    .line 632
    goto :goto_25

    .line 633
    :catch_31
    move-exception v1

    .line 634
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "Andy_Contacts"

    const-string/jumbo v4, "out of memorry!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-static {p2, p0, p3}, Lcom/lge/provider/Andy_AdditionalContacts$Andy_Groups;->Andy_loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_25
.end method

.method private static Andy_loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "placeholderImageResource"
    .parameter "context"
    .parameter "options"

    .prologue
    .line 647
    if-nez p0, :cond_4

    .line 648
    const/4 v0, 0x0

    .line 650
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static Andy_openGroupPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 10
    .parameter "cr"
    .parameter "groupUri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 586
    const-string v0, "groupphotos"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 587
    .local v1, photoUri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 590
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_16
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_3c

    move-result v0

    if-nez v0, :cond_23

    .line 600
    if-eqz v6, :cond_21

    .line 601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_21
    move-object v0, v3

    :cond_22
    :goto_22
    return-object v0

    .line 594
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_3c

    move-result-object v7

    .line 595
    .local v7, data:[B
    if-nez v7, :cond_31

    .line 600
    if-eqz v6, :cond_2f

    .line 601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2f
    move-object v0, v3

    goto :goto_22

    .line 598
    :cond_31
    :try_start_31
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3c

    .line 600
    if-eqz v6, :cond_22

    .line 601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_22

    .line 600
    .end local v7       #data:[B,
    :catchall_3c
    move-exception v0

    if-eqz v6, :cond_42

    .line 601
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_42
    throw v0
.end method

.method public static Andy_setDrmPhotoDataWithFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 14
    .parameter "cr"
    .parameter "groupUri"
    .parameter "filename"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const-string v9, "group_id"

    const-string v8, "data"

    .line 548
    if-nez p1, :cond_8

    .line 571
    :cond_7
    :goto_7
    return-void

    .line 551
    :cond_8
    const-string v6, "groupphotos"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 552
    .local v4, photoUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 553
    .local v2, groupId:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 554
    .local v5, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 555
    .local v0, Empty:Ljava/lang/String;
    const-string v6, "data"

    invoke-virtual {v5, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0, v4, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_35

    .line 558
    const-string v6, "group_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    sget-object v6, Lcom/lge/provider/Andy_AdditionalContacts$GroupPhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 562
    :cond_35
    const-string v6, "drmphotos"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 563
    .local v1, drmphotoUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 564
    const-string v6, "filename"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v6, "data"

    invoke-virtual {v5, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 567
    invoke-virtual {p0, v1, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 568
    const-string v6, "group_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 569
    sget-object v6, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_7
.end method

.method public static Andy_setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    .registers 13
    .parameter "cr"
    .parameter "groupUri"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const-string v9, "group_id"

    const-string v8, "data"

    .line 508
    if-nez p1, :cond_8

    .line 534
    :cond_7
    :goto_7
    return-void

    .line 511
    :cond_8
    const-string v6, "groupphotos"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 512
    .local v4, photoUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 513
    .local v2, groupId:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 514
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "data"

    invoke-virtual {v5, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 516
    invoke-virtual {p0, v4, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_34

    .line 517
    const-string v6, "group_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    sget-object v6, Lcom/lge/provider/Andy_AdditionalContacts$GroupPhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 522
    :cond_34
    const-string v6, "drmphotos"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 523
    .local v0, drmphotoUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 524
    const/4 v1, 0x0

    .line 525
    .local v1, empty:Ljava/lang/String;
    const/4 p2, 0x0

    .line 526
    const-string v6, "filename"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v6, "data"

    invoke-virtual {v5, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 529
    invoke-virtual {p0, v0, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 530
    const-string v6, "group_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 531
    sget-object v6, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_7
.end method
