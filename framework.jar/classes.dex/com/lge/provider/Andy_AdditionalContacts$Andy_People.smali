.class public final Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;
.super Ljava/lang/Object;
.source "Andy_AdditionalContacts.java"


# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/SyncConstValue;
.implements Lcom/lge/provider/Andy_AdditionalContacts$Andy_PeopleColumns;
.implements Landroid/provider/Contacts$PhonesColumns;
.implements Landroid/provider/Contacts$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_AdditionalContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Andy_People"
.end annotation


# static fields
.field private static final CONTACT_DRMPHOTO_INDEX:I = 0x3

.field private static final CONTACT_PHOTO_INDEX:I = 0x2

.field private static final CONTACT_RINGTONE_INDEX:I = 0x1

.field public static final CONTENT_SYSTEM_URI:Landroid/net/Uri; = null

.field private static final GROUP_PHOTO_INDEX:I = 0x4

.field private static final GROUP_RINGTONE_INDEX:I = 0x1

.field private static final GROUP_SYSTEM_ID_INDEX:I = 0x2

.field private static final MEMBERSHIP_PROJECTION:[Ljava/lang/String; = null

.field public static final PERSON_MY_PROFILE:Ljava/lang/String; = "My profile"

.field private static final PERSON_PROJECTION:[Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    const-string v0, "content://contacts/people/system_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->CONTENT_SYSTEM_URI:Landroid/net/Uri;

    .line 284
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "custom_ringtone"

    aput-object v1, v0, v3

    const-string/jumbo v1, "photo_data"

    aput-object v1, v0, v4

    const-string v1, "drmphoto_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->PERSON_PROJECTION:[Ljava/lang/String;

    .line 294
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "custom_ringtone"

    aput-object v1, v0, v3

    const-string/jumbo v1, "system_id"

    aput-object v1, v0, v4

    const-string v1, "isprimary"

    aput-object v1, v0, v5

    const-string v1, "groupphoto_data"

    aput-object v1, v0, v6

    sput-object v0, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->MEMBERSHIP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Andy_getDisplayPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 9
    .parameter "context"
    .parameter "personUri"

    .prologue
    .line 360
    if-nez p1, :cond_4

    .line 361
    const/4 p0, 0x0

    .line 418
    .end local p0       
    .end local p1       
    :cond_3
    :goto_3
    return-object p0

    .line 363
    .restart local p0       
    .restart local p1       
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->PERSON_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 367
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_a6

    move-result v0

    if-nez v0, :cond_1f

    .line 368
    const/4 p0, 0x0

    .line 413
    .end local p0       
    if-eqz v6, :cond_3

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 370
    .restart local p0       
    :cond_1f
    const/4 v0, 0x2

    :try_start_20
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 371
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 372
    const-string v0, "groupmembership"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 373
    .local v1, groupUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->MEMBERSHIP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "isprimary DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_a6

    move-result-object v1

    .line 378
    .local v1, groupsCursor:Landroid/database/Cursor;
    :cond_41
    :try_start_41
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 379
    const-string v0, "Contacts"

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 380
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 381
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5e
    .catchall {:try_start_41 .. :try_end_5e} :catchall_9f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5e} :catch_91

    move-result-object v0

    .line 382
    .local v0, stream:Ljava/io/InputStream;
    if-eqz v0, :cond_41

    .line 396
    if-eqz v1, :cond_66

    .line 397
    :try_start_63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_a6

    .line 413
    :cond_66
    if-eqz v6, :cond_6b

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6b
    move-object p0, v0

    goto :goto_3

    .line 386
    .end local v0       #stream:Ljava/io/InputStream;,
    :cond_6d
    const/4 v0, 0x4

    :try_start_6e
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 387
    .local v0, data:[B
    if-eqz v0, :cond_41

    .line 388
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .end local p0       
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_79
    .catchall {:try_start_6e .. :try_end_79} :catchall_9f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_79} :catch_91

    .line 396
    if-eqz v1, :cond_7e

    .line 397
    :try_start_7b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_a6

    .line 413
    :cond_7e
    if-eqz v6, :cond_3

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 396
    .end local v0       #data:[B,
    .restart local p0       
    :cond_84
    if-eqz v1, :cond_89

    .line 397
    :try_start_86
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_a6

    .line 413
    :cond_89
    if-eqz v6, :cond_8e

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_8e
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 393
    .end local p0       
    :catch_91
    move-exception p0

    .line 394
    .local p0, e:Ljava/lang/Exception;
    const/4 p0, 0x0

    .line 396
    .end local p0       #e:Ljava/lang/Exception;,
    if-eqz v1, :cond_98

    .line 397
    :try_start_95
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_a6

    .line 413
    :cond_98
    if-eqz v6, :cond_3

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 396
    :catchall_9f
    move-exception p0

    if-eqz v1, :cond_a5

    .line 397
    :try_start_a2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a5
    throw p0
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a6} :catch_a6

    .line 410
    .end local v1       #groupsCursor:Landroid/database/Cursor;,
    .end local p1       
    :catch_a6
    move-exception p0

    .line 411
    .restart local p0       #e:Ljava/lang/Exception;,
    const/4 p0, 0x0

    .line 413
    .end local p0       #e:Ljava/lang/Exception;,
    if-eqz v6, :cond_3

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 401
    .local p0, context:Landroid/content/Context;
    .restart local p1       
    :cond_af
    :try_start_af
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_a6

    move-result-object p0

    .line 413
    .end local p0       #context:Landroid/content/Context;,
    if-eqz v6, :cond_3

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 404
    .restart local p0       #context:Landroid/content/Context;,
    :cond_ba
    const/4 p0, 0x2

    :try_start_bb
    invoke-interface {v6, p0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_a6

    .end local p0       #context:Landroid/content/Context;,
    move-result-object p0

    .line 405
    .local p0, data:[B
    if-nez p0, :cond_c9

    .line 406
    const/4 p0, 0x0

    .line 413
    .end local p0       #data:[B,
    if-eqz v6, :cond_3

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 408
    .restart local p0       #data:[B,
    :cond_c9
    :try_start_c9
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .end local p1       
    invoke-direct {p1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_ce
    .catchall {:try_start_c9 .. :try_end_ce} :catchall_d6
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_ce} :catch_a6

    .line 413
    if-eqz v6, :cond_d3

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d3
    move-object p0, p1

    goto/16 :goto_3

    .line 413
    .end local p0       #data:[B,
    :catchall_d6
    move-exception p0

    if-eqz v6, :cond_dc

    .line 414
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_dc
    throw p0
.end method

.method public static Andy_getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 14
    .parameter "context"
    .parameter "personUri"

    .prologue
    const/4 v3, 0x0

    .line 311
    if-nez p1, :cond_5

    move-object v1, v3

    .line 346
    :goto_4
    return-object v1

    .line 314
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 315
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->PERSON_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 319
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_12
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_6c

    move-result v1

    if-nez v1, :cond_1d

    .line 343
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v1, v3

    goto :goto_4

    .line 322
    :cond_1d
    const/4 v1, 0x1

    :try_start_1e
    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 323
    const-string v1, "groupmembership"

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 324
    .local v5, uri:Landroid/net/Uri;
    sget-object v6, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->MEMBERSHIP_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "isprimary DESC"

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_6c

    move-result-object v11

    .line 329
    .local v11, groupsCursor:Landroid/database/Cursor;
    :cond_35
    :try_start_35
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 330
    const-string v1, "Contacts"

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 331
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 332
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_67

    move-result-object v1

    .line 337
    :try_start_58
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_6c

    .line 343
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 337
    :cond_5f
    :try_start_5f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6c

    .line 343
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v1, v3

    .line 346
    goto :goto_4

    .line 337
    :catchall_67
    move-exception v1

    :try_start_68
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6c

    .line 343
    .end local v5       #uri:Landroid/net/Uri;,
    .end local v11       #groupsCursor:Landroid/database/Cursor;,
    :catchall_6c
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 340
    :cond_71
    const/4 v1, 0x1

    :try_start_72
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_6c

    move-result-object v1

    .line 343
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method public static Andy_loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "context"
    .parameter "personUri"
    .parameter "placeholderImageResource"
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    .line 252
    if-nez p1, :cond_8

    .line 253
    invoke-static {p2, p0, p3}, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 272
    :goto_7
    return-object v3

    .line 256
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->Andy_openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 257
    .local v2, stream:Ljava/io/InputStream;
    if-eqz v2, :cond_2d

    invoke-static {v2, v4, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 259
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_17
    if-nez v0, :cond_25

    .line 260
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_2f

    const/4 v3, 0x0

    :try_start_20
    invoke-static {v2, v3, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_23
    .catch Ljava/lang/OutOfMemoryError; {:try_start_20 .. :try_end_23} :catch_31

    move-result-object v3

    move-object v0, v3

    .line 269
    :cond_25
    :goto_25
    if-nez v0, :cond_2b

    .line 270
    invoke-static {p2, p0, p3}, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2b
    move-object v3, v0

    .line 272
    goto :goto_7

    .end local v0       #bm:Landroid/graphics/Bitmap;,
    :cond_2d
    move-object v0, v4

    .line 257
    goto :goto_17

    .restart local v0       #bm:Landroid/graphics/Bitmap;,
    :cond_2f
    move-object v0, v4

    .line 262
    goto :goto_25

    .line 263
    :catch_31
    move-exception v1

    .line 264
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "Andy_Contacts"

    const-string/jumbo v4, "out of memorry!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {p2, p0, p3}, Lcom/lge/provider/Andy_AdditionalContacts$Andy_People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_25
.end method

.method public static Andy_openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 11
    .parameter "cr"
    .parameter "personUri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 220
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 221
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

    .line 224
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_17
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_3d

    move-result v0

    if-nez v0, :cond_24

    .line 235
    if-eqz v6, :cond_22

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_22
    move-object v0, v3

    :cond_23
    :goto_23
    return-object v0

    .line 227
    :cond_24
    const/4 v0, 0x0

    :try_start_25
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_3d

    move-result-object v7

    .line 228
    .local v7, data:[B
    if-nez v7, :cond_32

    .line 235
    if-eqz v6, :cond_30

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_30
    move-object v0, v3

    goto :goto_23

    .line 231
    :cond_32
    :try_start_32
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_46
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_37} :catch_3d

    .line 235
    if-eqz v6, :cond_23

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_23

    .line 232
    .end local v7       #data:[B,
    :catch_3d
    move-exception v0

    move-object v8, v0

    .line 235
    .local v8, e:Ljava/lang/Exception;
    if-eqz v6, :cond_44

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    move-object v0, v3

    goto :goto_23

    .line 235
    .end local v8       #e:Ljava/lang/Exception;,
    :catchall_46
    move-exception v0

    if-eqz v6, :cond_4c

    .line 236
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4c
    throw v0
.end method

.method public static Andy_setDrmPhotoDataWithFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[B)V
    .registers 14
    .parameter "cr"
    .parameter "personUri"
    .parameter "filename"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v9, "person"

    const-string v8, "data"

    .line 193
    if-nez p1, :cond_9

    .line 216
    :cond_8
    :goto_8
    return-void

    .line 196
    :cond_9
    const-string/jumbo v6, "photo"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 197
    .local v4, photoUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 198
    .local v2, personId:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .local v5, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 200
    .local v1, empty:Ljava/lang/String;
    const-string v6, "data"

    invoke-virtual {v5, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0, v4, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_38

    .line 203
    const-string/jumbo v6, "person"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    sget-object v6, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 207
    :cond_38
    const-string v6, "drmphotos"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 208
    .local v0, drmphotoUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 209
    const-string v6, "filename"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v6, "data"

    invoke-virtual {v5, v8, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 212
    invoke-virtual {p0, v0, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 213
    const-string/jumbo v6, "person"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    sget-object v6, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_8
.end method

.method public static Andy_setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    .registers 13
    .parameter "cr"
    .parameter "personUri"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const-string/jumbo v9, "person"

    const-string v8, "data"

    .line 153
    if-nez p1, :cond_9

    .line 179
    :cond_8
    :goto_8
    return-void

    .line 156
    :cond_9
    const-string/jumbo v6, "photo"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 157
    .local v4, photoUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 158
    .local v2, personId:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "data"

    invoke-virtual {v5, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 161
    invoke-virtual {p0, v4, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_37

    .line 162
    const-string/jumbo v6, "person"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    sget-object v6, Landroid/provider/Contacts$Photos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 167
    :cond_37
    const-string v6, "drmphotos"

    invoke-static {p1, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 168
    .local v0, drmphotoUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, empty:Ljava/lang/String;
    const/4 p2, 0x0

    .line 171
    const-string v6, "filename"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v6, "data"

    invoke-virtual {v5, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 174
    invoke-virtual {p0, v0, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 175
    const-string/jumbo v6, "person"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    sget-object v6, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotos;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_8
.end method

.method private static loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "placeholderImageResource"
    .parameter "context"
    .parameter "options"

    .prologue
    .line 277
    if-nez p0, :cond_4

    .line 278
    const/4 v0, 0x0

    .line 280
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method
