.class Landroid/provider/MediaStore$InternalThumbnails;
.super Ljava/lang/Object;
.source "MediaStore.java"


# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalThumbnails"
.end annotation


# static fields
.field static final DEFAULT_GROUP_ID:I = 0x0

.field private static final FULL_SCREEN_KIND:I = 0x2

.field private static final MICRO_KIND:I = 0x3

.field private static final MINI_KIND:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static sThumbBuf:[B

.field private static final sThumbBufLock:Ljava/lang/Object;



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 266
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    .line 268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cancelThumbnailRequest(Landroid/content/ContentResolver;JLandroid/net/Uri;J)V
    .registers 13
    .parameter "cr"
    .parameter "origId"
    .parameter "baseUri"
    .parameter "groupId"

    .prologue
    .line 305
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "cancel"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "orig_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "group_id"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 308
    .local v1, cancelUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 310
    .local v6, c:Landroid/database/Cursor;
    :try_start_26
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_36

    move-result-object v6

    .line 313
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_35
    return-void

    .line 313
    :catchall_36
    move-exception v0

    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3c
    throw v0
.end method

.method private static getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "c"
    .parameter "baseUri"
    .parameter "cr"
    .parameter "options"

    .prologue
    const-string v11, "couldn\'t open thumbnail "

    const-string v10, "MediaStore"

    const-string v9, "; "

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 275
    .local v6, thumbUri:Landroid/net/Uri;
    const/4 v7, 0x0

    :try_start_9
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 276
    .local v4, thumbId:J
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, filePath:Ljava/lang/String;
    invoke-static {p1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 278
    const-string/jumbo v7, "r"

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 279
    .local v3, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_29} :catch_2a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_29} :catch_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_29} :catch_74

    .line 290
    .end local v2       #filePath:Ljava/lang/String;,
    .end local v3       #pfdInput:Landroid/os/ParcelFileDescriptor;,
    .end local v4       #thumbId:J,
    :goto_29
    return-object v0

    .line 282
    :catch_2a
    move-exception v7

    move-object v1, v7

    .line 283
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v7, "MediaStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t open thumbnail "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 284
    .end local v1       #ex:Ljava/io/FileNotFoundException;,
    :catch_4f
    move-exception v7

    move-object v1, v7

    .line 285
    .local v1, ex:Ljava/io/IOException;
    const-string v7, "MediaStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t open thumbnail "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 286
    .end local v1       #ex:Ljava/io/IOException;,
    :catch_74
    move-exception v7

    move-object v1, v7

    .line 287
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v7, "MediaStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to allocate memory for thumbnail "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method static getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .registers 24
    .parameter "cr"
    .parameter "origId"
    .parameter "groupId"
    .parameter "kind"
    .parameter "options"
    .parameter "baseUri"
    .parameter "isVideo"

    .prologue
    .line 333
    const/4 v10, 0x0

    .line 334
    .local v10, bitmap:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .line 338
    .local v12, filePath:Ljava/lang/String;
    invoke-static/range {p7 .. p7}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v13

    .line 339
    .local v13, thumbFile:Landroid/media/MiniThumbFile;
    move-object v0, v13

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/media/MiniThumbFile;->getMagic(J)J

    move-result-wide v4

    .line 340
    .local v4, magic:J
    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_aa

    .line 341
    .end local v4       #magic:J,
    const/4 v4, 0x3

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_56

    .line 342
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p3       
    monitor-enter p3

    .line 343
    :try_start_1c
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p0       
    if-nez p0, :cond_26

    .line 344
    const/16 p0, 0x2710

    new-array p0, p0, [B

    sput-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 346
    :cond_26
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object v0, v13

    move-wide/from16 v1, p1

    move-object v3, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object p0

    if-eqz p0, :cond_32c

    .line 347
    sget-object p0, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/16 p1, 0x0

    sget-object p2, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local p1       
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p2, v0

    invoke-static/range {p0 .. p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_50

    move-result-object p0

    .line 348
    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    if-nez p0, :cond_4a

    .line 349
    :try_start_43
    const-string p1, "MediaStore"

    const-string p2, "couldn\'t decode byte array."

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_4a
    :goto_4a
    monitor-exit p3

    move-object/from16 p1, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 429
    .end local p6       
    :goto_4f
    return-object p2

    .line 352
    .end local p0       #bitmap:Landroid/graphics/Bitmap;,
    .end local p1       #filePath:Ljava/lang/String;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .restart local p6       
    :catchall_50
    move-exception p0

    move-object/from16 p1, p0

    move-object p0, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;,
    :goto_54
    monitor-exit p3
    :try_end_55
    .catchall {:try_start_43 .. :try_end_55} :catchall_30c

    throw p1

    .line 354
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       
    :cond_56
    const/4 v4, 0x1

    move/from16 v0, p5

    move v1, v4

    if-ne v0, v1, :cond_aa

    .line 355
    if-eqz p8, :cond_a0

    const-string/jumbo v4, "video_id="

    .line 356
    .local v4, column:Ljava/lang/String;
    :goto_61
    const/4 v11, 0x0

    .line 358
    .local v11, c:Landroid/database/Cursor;
    :try_start_62
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4       #column:Ljava/lang/String;,
    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object/from16 v5, p7

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_ed

    move-result-object v5

    .line 359
    .end local v11       #c:Landroid/database/Cursor;,
    .local v5, c:Landroid/database/Cursor;
    if-eqz v5, :cond_a3

    :try_start_83
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 360
    move-object v0, v5

    move-object/from16 v1, p7

    move-object v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_92
    .catchall {:try_start_83 .. :try_end_92} :catchall_306

    move-result-object v4

    .line 361
    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .local v4, bitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_a4

    .line 366
    if-eqz v5, :cond_9a

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_9a
    move-object/from16 p1, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p1, filePath:Ljava/lang/String;
    move-object p0, v4

    .end local v4       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p2, v4

    goto :goto_4f

    .line 355
    .end local v5       #c:Landroid/database/Cursor;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    :cond_a0
    const-string v4, "image_id="

    goto :goto_61

    .restart local v5       #c:Landroid/database/Cursor;,
    :cond_a3
    move-object v4, v10

    .line 366
    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;,
    :cond_a4
    if-eqz v5, :cond_329

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v10, v4

    .line 371
    .end local v4       #bitmap:Landroid/graphics/Bitmap;,
    .end local v5       #c:Landroid/database/Cursor;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    :cond_aa
    :goto_aa
    const/4 v11, 0x0

    .line 373
    .restart local v11       #c:Landroid/database/Cursor;,
    :try_start_ab
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "blocking"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "orig_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "group_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    .end local p3       
    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 376
    .local v5, blockingUri:Landroid/net/Uri;
    sget-object v6, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_dd
    .catchall {:try_start_ab .. :try_end_dd} :catchall_25f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ab .. :try_end_dd} :catch_2d2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ab .. :try_end_dd} :catch_245

    move-result-object p4

    .line 378
    .end local v11       #c:Landroid/database/Cursor;,
    .local p4, c:Landroid/database/Cursor;
    if-nez p4, :cond_f7

    const/4 p0, 0x0

    .line 427
    .end local p0       #cr:Landroid/content/ContentResolver;,
    if-eqz p4, :cond_e6

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    :cond_e6
    move-object/from16 p1, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p0

    move-object p0, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_4f

    .line 366
    .end local v5       #blockingUri:Landroid/net/Uri;,
    .end local p4       #c:Landroid/database/Cursor;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v11       #c:Landroid/database/Cursor;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p3       
    :catchall_ed
    move-exception p0

    move-object/from16 p1, p0

    move-object p0, v11

    .end local v11       #c:Landroid/database/Cursor;,
    .end local p1       #origId:J,
    .local p0, c:Landroid/database/Cursor;
    :goto_f1
    if-eqz p0, :cond_f6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_f6
    throw p1

    .line 381
    .end local p3       
    .restart local v5       #blockingUri:Landroid/net/Uri;,
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J,
    .restart local p4       #c:Landroid/database/Cursor;,
    :cond_f7
    const/16 p3, 0x3

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_1e1

    .line 382
    :try_start_ff
    sget-object p6, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBufLock:Ljava/lang/Object;

    .end local p6       
    monitor-enter p6
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_26d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ff .. :try_end_102} :catch_219
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ff .. :try_end_102} :catch_2a3

    .line 383
    :try_start_102
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    if-nez p3, :cond_110

    .line 384
    const/16 p3, 0x2710

    move/from16 v0, p3

    new-array v0, v0, [B

    move-object/from16 p3, v0

    sput-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .line 386
    :cond_110
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    move-object v0, v13

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MiniThumbFile;->getMiniThumbFromFile(J[B)[B

    move-result-object p3

    if-eqz p3, :cond_325

    .line 387
    sget-object p3, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    const/4 v4, 0x0

    sget-object v5, Landroid/provider/MediaStore$InternalThumbnails;->sThumbBuf:[B

    .end local v5       #blockingUri:Landroid/net/Uri;,
    array-length v5, v5

    move-object/from16 v0, p3

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_12a
    .catchall {:try_start_102 .. :try_end_12a} :catchall_1be

    move-result-object p3

    .line 388
    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .local p3, bitmap:Landroid/graphics/Bitmap;
    if-nez p3, :cond_134

    .line 389
    :try_start_12d
    const-string v4, "MediaStore"

    const-string v5, "couldn\'t decode byte array."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_134
    :goto_134
    monitor-exit p6
    :try_end_135
    .catchall {:try_start_12d .. :try_end_135} :catchall_2fc

    .line 402
    :goto_135
    if-nez p3, :cond_319

    .line 403
    :try_start_137
    const-string p6, "MediaStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create the thumbnail in memory: origId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", kind="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isVideo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p6

    move-object v1, v4

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p6

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .end local p1       #origId:J,
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "thumbnails"

    const-string p6, "media"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 408
    .local v7, uri:Landroid/net/Uri;
    if-nez v12, :cond_313

    .line 409
    if-eqz p4, :cond_19d

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_19d
    sget-object v8, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a6
    .catchall {:try_start_137 .. :try_end_1a6} :catchall_27e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_137 .. :try_end_1a6} :catch_2dc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_137 .. :try_end_1a6} :catch_2b4

    move-result-object p0

    .line 411
    .end local p4       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_1af

    :try_start_1a9
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1ac
    .catchall {:try_start_1a9 .. :try_end_1ac} :catchall_289
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a9 .. :try_end_1ac} :catch_2e7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a9 .. :try_end_1ac} :catch_2be

    move-result p1

    if-nez p1, :cond_222

    .line 412
    :cond_1af
    const/16 p1, 0x0

    .line 427
    if-eqz p0, :cond_1b6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1b6
    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p2, p1

    move-object/from16 p1, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p1, filePath:Ljava/lang/String;
    goto/16 :goto_4f

    .line 392
    .end local v7       #uri:Landroid/net/Uri;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;,
    :catchall_1be
    move-exception p0

    move-object/from16 p1, p0

    move-object p0, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .end local p1       #origId:J,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_1c2
    :try_start_1c2
    monitor-exit p6
    :try_end_1c3
    .catchall {:try_start_1c2 .. :try_end_1c3} :catchall_303

    :try_start_1c3
    throw p1
    :try_end_1c4
    .catchall {:try_start_1c3 .. :try_end_1c4} :catchall_276
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c3 .. :try_end_1c4} :catch_1c4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c3 .. :try_end_1c4} :catch_2ac

    .line 422
    :catch_1c4
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p3, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p1, p4

    .line 423
    .end local p4       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    .local p2, e:Ljava/lang/OutOfMemoryError;
    :goto_1cb
    :try_start_1cb
    const-string p4, "MediaStore"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d4
    .catchall {:try_start_1cb .. :try_end_1d4} :catchall_29b

    .line 427
    if-eqz p1, :cond_30f

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p2, p3

    .end local p3       #filePath:Ljava/lang/String;,
    .local p2, filePath:Ljava/lang/String;
    :cond_1db
    :goto_1db
    move-object/from16 p1, p2

    .end local p2       #filePath:Ljava/lang/String;,
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 429
    goto/16 :goto_4f

    .line 393
    .restart local v5       #blockingUri:Landroid/net/Uri;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;,
    .restart local p6       
    :cond_1e1
    const/16 p3, 0x1

    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_1fc

    .line 394
    :try_start_1e9
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_321

    .line 395
    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move-object v2, p0

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$InternalThumbnails;->getMiniThumbFromFile(Landroid/database/Cursor;Landroid/net/Uri;Landroid/content/ContentResolver;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p3

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .local p3, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_135

    .line 398
    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    :cond_1fc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0       #cr:Landroid/content/ContentResolver;,
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1       #origId:J,
    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported kind: "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_219
    .catchall {:try_start_1e9 .. :try_end_219} :catchall_26d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e9 .. :try_end_219} :catch_219
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e9 .. :try_end_219} :catch_2a3

    .line 422
    .end local p6       
    :catch_219
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p3, filePath:Ljava/lang/String;
    move-object p0, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_1cb

    .line 414
    .end local v5       #blockingUri:Landroid/net/Uri;,
    .end local p1       #c:Landroid/database/Cursor;,
    .restart local v7       #uri:Landroid/net/Uri;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, c:Landroid/database/Cursor;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :cond_222
    const/16 p1, 0x1

    :try_start_224
    invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_227
    .catchall {:try_start_224 .. :try_end_227} :catchall_289
    .catch Ljava/lang/OutOfMemoryError; {:try_start_224 .. :try_end_227} :catch_2e7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_224 .. :try_end_227} :catch_2be

    move-result-object p1

    .end local v12       #filePath:Ljava/lang/String;,
    .local p1, filePath:Ljava/lang/String;
    move-object/from16 p2, p1

    .end local p1       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    move-object/from16 p1, p0

    .line 416
    .end local p0       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    :goto_22c
    if-eqz p8, :cond_23c

    .line 417
    :try_start_22e
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_235
    .catchall {:try_start_22e .. :try_end_235} :catchall_294
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22e .. :try_end_235} :catch_2f2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22e .. :try_end_235} :catch_2c8

    move-result-object p0

    .line 427
    .end local v7       #uri:Landroid/net/Uri;,
    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_236
    if-eqz p1, :cond_1db

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    goto :goto_1db

    .line 419
    .end local p0       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v7       #uri:Landroid/net/Uri;,
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;,
    :cond_23c
    :try_start_23c
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_243
    .catchall {:try_start_23c .. :try_end_243} :catchall_294
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23c .. :try_end_243} :catch_2f2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23c .. :try_end_243} :catch_2c8

    move-result-object p0

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;,
    goto :goto_236

    .line 424
    .end local v7       #uri:Landroid/net/Uri;,
    .end local p2       #filePath:Ljava/lang/String;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v11       #c:Landroid/database/Cursor;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p6       
    :catch_245
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, v11

    .end local v11       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p3, filePath:Ljava/lang/String;
    move-object p0, v10

    .line 425
    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .end local p6       
    .local p0, bitmap:Landroid/graphics/Bitmap;
    .local p2, ex:Landroid/database/sqlite/SQLiteException;
    :goto_24d
    :try_start_24d
    const-string p4, "MediaStore"

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_256
    .catchall {:try_start_24d .. :try_end_256} :catchall_29b

    .line 427
    if-eqz p1, :cond_30f

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    move-object/from16 p2, p3

    .end local p3       #filePath:Ljava/lang/String;,
    .local p2, filePath:Ljava/lang/String;
    goto/16 :goto_1db

    .end local p2       #filePath:Ljava/lang/String;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v11       #c:Landroid/database/Cursor;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p6       
    :catchall_25f
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, v11

    .end local v11       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    move-object p0, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .end local p6       
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_267
    if-eqz p1, :cond_26c

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_26c
    throw p3

    .end local p0       #bitmap:Landroid/graphics/Bitmap;,
    .end local p1       #c:Landroid/database/Cursor;,
    .end local p2       #filePath:Ljava/lang/String;,
    .restart local v5       #blockingUri:Landroid/net/Uri;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .restart local p4       #c:Landroid/database/Cursor;,
    :catchall_26d
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p1, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    move-object/from16 p2, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    move-object p0, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;,
    goto :goto_267

    .end local v5       #blockingUri:Landroid/net/Uri;,
    .end local p1       #c:Landroid/database/Cursor;,
    .end local p2       #filePath:Ljava/lang/String;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .restart local p4       #c:Landroid/database/Cursor;,
    :catchall_276
    move-exception p1

    move-object/from16 p3, p1

    move-object/from16 p2, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    move-object/from16 p1, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    goto :goto_267

    .end local p1       #c:Landroid/database/Cursor;,
    .end local p2       #filePath:Ljava/lang/String;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;,
    :catchall_27e
    move-exception p0

    move-object/from16 p1, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    move-object/from16 p2, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    move-object v14, p0

    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v14

    goto :goto_267

    .end local p1       #c:Landroid/database/Cursor;,
    .end local p2       #filePath:Ljava/lang/String;,
    .restart local v7       #uri:Landroid/net/Uri;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, c:Landroid/database/Cursor;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;,
    :catchall_289
    move-exception p1

    move-object/from16 p2, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    move-object v14, p0

    .end local p0       #c:Landroid/database/Cursor;,
    .local v14, c:Landroid/database/Cursor;
    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, p1

    move-object/from16 p1, v14

    .end local v14       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    goto :goto_267

    .end local p0       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;,
    :catchall_294
    move-exception p0

    move-object v14, p0

    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;,
    move-object/from16 p3, v14

    goto :goto_267

    .end local v7       #uri:Landroid/net/Uri;,
    .end local p2       #filePath:Ljava/lang/String;,
    .local p3, filePath:Ljava/lang/String;
    :catchall_29b
    move-exception p2

    move-object/from16 v14, p2

    move-object/from16 p2, p3

    .end local p3       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    move-object/from16 p3, v14

    goto :goto_267

    .line 424
    .end local p0       #bitmap:Landroid/graphics/Bitmap;,
    .end local p1       #c:Landroid/database/Cursor;,
    .end local p2       #filePath:Ljava/lang/String;,
    .restart local v5       #blockingUri:Landroid/net/Uri;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .restart local p4       #c:Landroid/database/Cursor;,
    :catch_2a3
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    move-object/from16 p3, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .restart local p3       #filePath:Ljava/lang/String;,
    move-object p0, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;,
    goto :goto_24d

    .end local v5       #blockingUri:Landroid/net/Uri;,
    .end local p1       #c:Landroid/database/Cursor;,
    .end local p3       #filePath:Ljava/lang/String;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .restart local p4       #c:Landroid/database/Cursor;,
    :catch_2ac
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p3, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .restart local p3       #filePath:Ljava/lang/String;,
    move-object/from16 p1, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    goto :goto_24d

    .end local p1       #c:Landroid/database/Cursor;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;,
    :catch_2b4
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p3, filePath:Ljava/lang/String;
    goto :goto_24d

    .end local p1       #c:Landroid/database/Cursor;,
    .restart local v7       #uri:Landroid/net/Uri;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, c:Landroid/database/Cursor;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_2be
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    .end local p0       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p3, filePath:Ljava/lang/String;
    goto :goto_24d

    .end local p0       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p2       #filePath:Ljava/lang/String;,
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_2c8
    move-exception p0

    move-object v14, p0

    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;,
    move-object/from16 p3, p2

    .end local p2       #filePath:Ljava/lang/String;,
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p2, v14

    goto/16 :goto_24d

    .line 422
    .end local v7       #uri:Landroid/net/Uri;,
    .end local p3       #filePath:Ljava/lang/String;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v11       #c:Landroid/database/Cursor;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p6       
    :catch_2d2
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, v11

    .end local v11       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p3, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .restart local p3       #filePath:Ljava/lang/String;,
    move-object p0, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_1cb

    .end local p1       #c:Landroid/database/Cursor;,
    .end local p6       
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;,
    :catch_2dc
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_1cb

    .end local p1       #c:Landroid/database/Cursor;,
    .restart local v7       #uri:Landroid/net/Uri;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, c:Landroid/database/Cursor;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_2e7
    move-exception p1

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    .end local p0       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 p3, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .local p3, filePath:Ljava/lang/String;
    goto/16 :goto_1cb

    .end local p0       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p2       #filePath:Ljava/lang/String;,
    .local p3, bitmap:Landroid/graphics/Bitmap;
    :catch_2f2
    move-exception p0

    move-object v14, p0

    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;,
    move-object/from16 p3, p2

    .end local p2       #filePath:Ljava/lang/String;,
    .local p3, filePath:Ljava/lang/String;
    move-object/from16 p2, v14

    goto/16 :goto_1cb

    .line 392
    .end local v7       #uri:Landroid/net/Uri;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;,
    :catchall_2fc
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_1c2

    .end local p1       #origId:J,
    :catchall_303
    move-exception p1

    goto/16 :goto_1c2

    .line 366
    .end local p4       #c:Landroid/database/Cursor;,
    .local v5, c:Landroid/database/Cursor;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p1       #origId:J,
    .local p3, groupId:J
    .restart local p6       
    :catchall_306
    move-exception p0

    move-object/from16 p1, p0

    move-object p0, v5

    .end local v5       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_f1

    .line 352
    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .end local p1       #origId:J,
    .end local p3       #groupId:J,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :catchall_30c
    move-exception p1

    goto/16 :goto_54

    .end local v12       #filePath:Ljava/lang/String;,
    .end local p6       
    .local p1, c:Landroid/database/Cursor;
    .local p3, filePath:Ljava/lang/String;
    :cond_30f
    move-object/from16 p2, p3

    .end local p3       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    goto/16 :goto_1db

    .end local p1       #c:Landroid/database/Cursor;,
    .end local p2       #filePath:Ljava/lang/String;,
    .restart local v7       #uri:Landroid/net/Uri;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p3, bitmap:Landroid/graphics/Bitmap;
    .restart local p4       #c:Landroid/database/Cursor;,
    :cond_313
    move-object/from16 p1, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    move-object/from16 p2, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    goto/16 :goto_22c

    .end local v7       #uri:Landroid/net/Uri;,
    .end local p2       #filePath:Ljava/lang/String;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;,
    :cond_319
    move-object/from16 p1, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    move-object/from16 p2, v12

    .end local v12       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    move-object/from16 p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_236

    .end local p2       #filePath:Ljava/lang/String;,
    .local v5, blockingUri:Landroid/net/Uri;
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v12       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .local p1, origId:J
    .restart local p4       #c:Landroid/database/Cursor;,
    .restart local p6       
    :cond_321
    move-object/from16 p3, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;,
    goto/16 :goto_135

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .end local p6       
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    :cond_325
    move-object/from16 p3, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;,
    goto/16 :goto_134

    .end local p4       #c:Landroid/database/Cursor;,
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;,
    .local v5, c:Landroid/database/Cursor;
    .local p3, groupId:J
    .restart local p6       
    :cond_329
    move-object v10, v4

    .end local v4       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;,
    goto/16 :goto_aa

    .end local v5       #c:Landroid/database/Cursor;,
    .end local p0       #cr:Landroid/content/ContentResolver;,
    .end local p3       #groupId:J,
    :cond_32c
    move-object p0, v10

    .end local v10       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_4a
.end method

.method static getThumbnailWithoutCache(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "cr"
    .parameter "origId"
    .parameter "groupId"
    .parameter "kind"
    .parameter "options"
    .parameter "baseUri"
    .parameter "isVideo"

    .prologue
    .line 435
    const/4 p3, 0x0

    .line 436
    .local p3, bitmap:Landroid/graphics/Bitmap;
    const/4 p6, 0x0

    .line 437
    .local p6, filePath:Ljava/lang/String;
    const/4 p4, 0x0

    .line 443
    .local p4, c:Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p7

    .end local p7       
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .end local p1       
    invoke-virtual {p7, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "thumbnails"

    const-string p7, "media"

    invoke-virtual {p1, p2, p7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 447
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Landroid/provider/MediaStore$InternalThumbnails;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_29} :catch_54

    move-result-object p1

    .line 448
    .end local p4       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    if-eqz p1, :cond_32

    :try_start_2c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_2f} :catch_7f

    move-result p0

    .end local p0       
    if-nez p0, :cond_3d

    .line 449
    :cond_32
    const/4 p0, 0x0

    .line 461
    if-eqz p1, :cond_38

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_38
    move-object p2, p6

    .end local p6       #filePath:Ljava/lang/String;,
    .local p2, filePath:Ljava/lang/String;
    move-object v6, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local v6, bitmap:Landroid/graphics/Bitmap;
    move-object p3, p0

    move-object p0, v6

    .line 463
    .end local v1       #uri:Landroid/net/Uri;,
    .end local v6       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    :goto_3c
    return-object p3

    .line 451
    .end local p0       #bitmap:Landroid/graphics/Bitmap;,
    .end local p2       #filePath:Ljava/lang/String;,
    .restart local v1       #uri:Landroid/net/Uri;,
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p6       #filePath:Ljava/lang/String;,
    :cond_3d
    const/4 p0, 0x1

    :try_start_3e
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_41} :catch_7f

    move-result-object p2

    .line 453
    .end local p6       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    if-eqz p8, :cond_4f

    .line 454
    :try_start_44
    invoke-static {p2, p5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_74
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_47} :catch_85

    move-result-object p0

    .line 461
    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;,
    :goto_48
    if-eqz p1, :cond_4d

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .end local v1       #uri:Landroid/net/Uri;,
    :cond_4d
    :goto_4d
    move-object p3, p0

    .line 463
    goto :goto_3c

    .line 456
    .end local p0       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v1       #uri:Landroid/net/Uri;,
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;,
    :cond_4f
    :try_start_4f
    invoke-static {p2, p5}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_74
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_52} :catch_85

    move-result-object p0

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p0       #bitmap:Landroid/graphics/Bitmap;,
    goto :goto_48

    .line 458
    .end local v1       #uri:Landroid/net/Uri;,
    .end local p1       #c:Landroid/database/Cursor;,
    .end local p2       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p4       #c:Landroid/database/Cursor;,
    .restart local p6       #filePath:Ljava/lang/String;,
    :catch_54
    move-exception p0

    move-object p1, p0

    move-object p2, p6

    .end local p6       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    move-object p0, p4

    .line 459
    .end local p4       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    .local p1, ex:Landroid/database/sqlite/SQLiteException;
    :goto_58
    :try_start_58
    const-string p4, "MediaStore"

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_7a

    .line 461
    if-eqz p0, :cond_8a

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    move-object p1, p0

    .end local p0       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    move-object p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_4d

    .end local p1       #c:Landroid/database/Cursor;,
    .end local p2       #filePath:Ljava/lang/String;,
    .local p0, cr:Landroid/content/ContentResolver;
    .restart local p3       #bitmap:Landroid/graphics/Bitmap;,
    .restart local p4       #c:Landroid/database/Cursor;,
    .restart local p6       #filePath:Ljava/lang/String;,
    :catchall_65
    move-exception p0

    move-object p2, p0

    move-object p1, p6

    .end local p6       #filePath:Ljava/lang/String;,
    .local p1, filePath:Ljava/lang/String;
    move-object p0, p4

    .end local p4       #c:Landroid/database/Cursor;,
    .local p0, c:Landroid/database/Cursor;
    :goto_69
    if-eqz p0, :cond_6e

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6e
    throw p2

    .end local p0       #c:Landroid/database/Cursor;,
    .restart local v1       #uri:Landroid/net/Uri;,
    .local p1, c:Landroid/database/Cursor;
    .restart local p6       #filePath:Ljava/lang/String;,
    :catchall_6f
    move-exception p0

    move-object p2, p0

    move-object p0, p1

    .end local p1       #c:Landroid/database/Cursor;,
    .restart local p0       #c:Landroid/database/Cursor;,
    move-object p1, p6

    .end local p6       #filePath:Ljava/lang/String;,
    .local p1, filePath:Ljava/lang/String;
    goto :goto_69

    .end local p0       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    .restart local p2       #filePath:Ljava/lang/String;,
    :catchall_74
    move-exception p0

    move-object v6, p0

    move-object p0, p1

    .end local p1       #c:Landroid/database/Cursor;,
    .restart local p0       #c:Landroid/database/Cursor;,
    move-object p1, p2

    .end local p2       #filePath:Ljava/lang/String;,
    .local p1, filePath:Ljava/lang/String;
    move-object p2, v6

    goto :goto_69

    .end local v1       #uri:Landroid/net/Uri;,
    .local p1, ex:Landroid/database/sqlite/SQLiteException;
    .restart local p2       #filePath:Ljava/lang/String;,
    :catchall_7a
    move-exception p1

    move-object v6, p1

    move-object p1, p2

    .end local p2       #filePath:Ljava/lang/String;,
    .local p1, filePath:Ljava/lang/String;
    move-object p2, v6

    goto :goto_69

    .line 458
    .end local p0       #c:Landroid/database/Cursor;,
    .restart local v1       #uri:Landroid/net/Uri;,
    .local p1, c:Landroid/database/Cursor;
    .restart local p6       #filePath:Ljava/lang/String;,
    :catch_7f
    move-exception p0

    move-object p2, p6

    .end local p6       #filePath:Ljava/lang/String;,
    .restart local p2       #filePath:Ljava/lang/String;,
    move-object v6, p1

    .end local p1       #c:Landroid/database/Cursor;,
    .local v6, c:Landroid/database/Cursor;
    move-object p1, p0

    move-object p0, v6

    .end local v6       #c:Landroid/database/Cursor;,
    .restart local p0       #c:Landroid/database/Cursor;,
    goto :goto_58

    .end local p0       #c:Landroid/database/Cursor;,
    .restart local p1       #c:Landroid/database/Cursor;,
    :catch_85
    move-exception p0

    move-object v6, p0

    move-object p0, p1

    .end local p1       #c:Landroid/database/Cursor;,
    .restart local p0       #c:Landroid/database/Cursor;,
    move-object p1, v6

    goto :goto_58

    .end local v1       #uri:Landroid/net/Uri;,
    .local p1, ex:Landroid/database/sqlite/SQLiteException;
    :cond_8a
    move-object p1, p0

    .end local p0       #c:Landroid/database/Cursor;,
    .local p1, c:Landroid/database/Cursor;
    move-object p0, p3

    .end local p3       #bitmap:Landroid/graphics/Bitmap;,
    .local p0, bitmap:Landroid/graphics/Bitmap;
    goto :goto_4d
.end method
