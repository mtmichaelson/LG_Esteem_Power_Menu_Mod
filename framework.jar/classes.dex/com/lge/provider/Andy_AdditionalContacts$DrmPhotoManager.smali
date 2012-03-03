.class public final Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;
.super Ljava/lang/Object;
.source "Andy_AdditionalContacts.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/Andy_AdditionalContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmPhotoManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 1406
    if-eqz p1, :cond_1c

    .line 1407
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1408
    .local v2, values:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 1409
    .local v1, empty:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1410
    .local v0, data:[B
    const-string v3, "filename"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string v3, "data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1412
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1414
    .end local v0       #data:[B,
    .end local v1       #empty:Ljava/lang/String;,
    .end local v2       #values:Landroid/content/ContentValues;,
    :cond_1c
    return-void
.end method

.method private static openDrmPhotoDrmStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/lge/lgdrm/DrmStream;
    .registers 6
    .parameter "context"
    .parameter "uri"
    .parameter "drmFilename"

    .prologue
    .line 1318
    if-nez p2, :cond_4

    .line 1319
    const/4 p0, 0x0

    .line 1402
    .end local p0       
    .end local p1       
    .end local p2       
    :goto_3
    return-object p0

    .line 1323
    .restart local p0       
    .restart local p1       
    .restart local p2       
    :cond_4
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1326
    .local v0, isSdPresent:Z
    if-nez v0, :cond_19

    .line 1327
    const-string p0, "Andy_Contacts"

    .end local p0       
    const-string p1, "SD card is removal"

    .end local p1       
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 p0, 0x0

    goto :goto_3

    .line 1330
    .restart local p0       
    .restart local p1       
    :cond_19
    const-string v0, "Andy_Contacts"

    .end local v0       #isSdPresent:Z,
    const-string v1, ">> sd card is inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_20} :catch_cf
    .catch Lcom/lge/lgdrm/DrmException; {:try_start_4 .. :try_end_20} :catch_e0

    .line 1334
    :try_start_20
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1335
    .local v0, exists:Z
    if-nez v0, :cond_51

    .line 1336
    const-string p2, "Andy_Contacts"

    .end local p2       
    const-string v0, "file was not found"

    .end local v0       #exists:Z,
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_35
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_35} :catch_37
    .catch Ljava/lang/SecurityException; {:try_start_20 .. :try_end_35} :catch_44
    .catch Lcom/lge/lgdrm/DrmException; {:try_start_20 .. :try_end_35} :catch_e0

    .line 1338
    const/4 p0, 0x0

    goto :goto_3

    .line 1340
    :catch_37
    move-exception p2

    .line 1341
    .local p2, e:Ljava/lang/NullPointerException;
    :try_start_38
    const-string p2, "Andy_Contacts"

    .end local p2       #e:Ljava/lang/NullPointerException;,
    const-string v0, "NullPointerException occured"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1343
    const/4 p0, 0x0

    goto :goto_3

    .line 1344
    :catch_44
    move-exception p2

    .line 1345
    .local p2, e:Ljava/lang/SecurityException;
    const-string p2, "Andy_Contacts"

    .end local p2       #e:Ljava/lang/SecurityException;,
    const-string v0, "SecurityException occured"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1347
    const/4 p0, 0x0

    goto :goto_3

    .line 1349
    .restart local v0       #exists:Z,
    .local p2, drmFilename:Ljava/lang/String;
    :cond_51
    const-string v0, "Andy_Contacts"

    .end local v0       #exists:Z,
    const-string v1, ">> finish file check"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-static {p2, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .line 1353
    .local v0, session:Lcom/lge/lgdrm/DrmContentSession;
    if-nez v0, :cond_6b

    .line 1354
    const-string p2, "Andy_Contacts"

    .end local p2       #drmFilename:Ljava/lang/String;,
    const-string/jumbo v0, "session is null"

    .end local v0       #session:Lcom/lge/lgdrm/DrmContentSession;,
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1356
    const/4 p0, 0x0

    goto :goto_3

    .line 1358
    .restart local v0       #session:Lcom/lge/lgdrm/DrmContentSession;,
    .restart local p2       #drmFilename:Ljava/lang/String;,
    :cond_6b
    const-string p2, "Andy_Contacts"

    .end local p2       #drmFilename:Ljava/lang/String;,
    const-string v1, ">> create session success"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/lge/lgdrm/DrmContentSession;->getSelectedContent(Z)Lcom/lge/lgdrm/DrmContent;

    move-result-object p2

    .line 1361
    .local p2, drmContent:Lcom/lge/lgdrm/DrmContent;
    if-nez p2, :cond_86

    .line 1362
    const-string p2, "Andy_Contacts"

    .end local p2       #drmContent:Lcom/lge/lgdrm/DrmContent;,
    const-string v0, "drmContent is null"

    .end local v0       #session:Lcom/lge/lgdrm/DrmContentSession;,
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1364
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1366
    .restart local v0       #session:Lcom/lge/lgdrm/DrmContentSession;,
    .restart local p2       #drmContent:Lcom/lge/lgdrm/DrmContent;,
    :cond_86
    const-string p2, "Andy_Contacts"

    .end local p2       #drmContent:Lcom/lge/lgdrm/DrmContent;,
    const-string v1, ">> create drmContent success"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 p2, 0x2

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result p2

    .line 1370
    .local p2, status:I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_a3

    .line 1371
    const-string p2, "Andy_Contacts"

    .end local p2       #status:I,
    const-string v0, "judgeRight() : state invalid"

    .end local v0       #session:Lcom/lge/lgdrm/DrmContentSession;,
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    invoke-static {p0, p1}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->deleteDrmPhoto(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1373
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1374
    .restart local v0       #session:Lcom/lge/lgdrm/DrmContentSession;,
    .restart local p2       #status:I,
    :cond_a3
    if-eqz p2, :cond_af

    .line 1375
    const-string p0, "Andy_Contacts"

    .end local p0       
    const-string p1, "judgeRight() : Abnormal failure"

    .end local p1       
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1380
    .restart local p0       
    .restart local p1       
    :cond_af
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide p0

    .line 1382
    .end local p1       
    .local p0, startTime:J
    const-wide/16 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I

    move-result p0

    .line 1386
    .local p0, retVal:I
    const-string p0, "Andy_Contacts"

    .end local p0       #retVal:I,
    const-string p1, ">> start openDrmStream"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream()Lcom/lge/lgdrm/DrmStream;

    move-result-object p0

    .line 1389
    .local p0, drmStream:Lcom/lge/lgdrm/DrmStream;
    if-eqz p0, :cond_d6

    .line 1390
    const-string p1, "Andy_Contacts"

    const-string p2, "drmStream is not null"

    .end local p2       #status:I,
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_cd} :catch_cf
    .catch Lcom/lge/lgdrm/DrmException; {:try_start_38 .. :try_end_cd} :catch_e0

    goto/16 :goto_3

    .line 1394
    .end local v0       #session:Lcom/lge/lgdrm/DrmContentSession;,
    .end local p0       #drmStream:Lcom/lge/lgdrm/DrmStream;,
    :catch_cf
    move-exception p0

    .line 1395
    .local p0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1396
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1393
    .restart local v0       #session:Lcom/lge/lgdrm/DrmContentSession;,
    .local p0, drmStream:Lcom/lge/lgdrm/DrmStream;
    .restart local p2       #status:I,
    :cond_d6
    :try_start_d6
    const-string p0, "Andy_Contacts"

    .end local p0       #drmStream:Lcom/lge/lgdrm/DrmStream;,
    const-string p1, "drmStream is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catch Ljava/lang/SecurityException; {:try_start_d6 .. :try_end_dd} :catch_cf
    .catch Lcom/lge/lgdrm/DrmException; {:try_start_d6 .. :try_end_dd} :catch_e0

    .line 1402
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 1397
    .end local v0       #session:Lcom/lge/lgdrm/DrmContentSession;,
    .end local p2       #status:I,
    :catch_e0
    move-exception p0

    .line 1398
    .local p0, e:Lcom/lge/lgdrm/DrmException;
    invoke-virtual {p0}, Lcom/lge/lgdrm/DrmException;->printStackTrace()V

    .line 1399
    const/4 p0, 0x0

    goto/16 :goto_3
.end method

.method public static openDrmPhotoInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 15
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1270
    if-nez p1, :cond_8

    move-object v0, v3

    .line 1309
    :cond_7
    :goto_7
    return-object v0

    .line 1273
    :cond_8
    const-string v0, "drmphotos"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1274
    .local v1, drmphotoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string v4, "filename"

    aput-object v4, v2, v11

    const-string v4, "data"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1279
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_71

    move-result v0

    if-nez v0, :cond_34

    .line 1305
    if-eqz v6, :cond_32

    .line 1306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_32
    move-object v0, v3

    goto :goto_7

    .line 1282
    :cond_34
    const/4 v0, 0x1

    :try_start_35
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_71

    move-result-object v8

    .line 1283
    .local v8, drmFilename:Ljava/lang/String;
    if-nez v8, :cond_42

    .line 1305
    if-eqz v6, :cond_40

    .line 1306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_40
    move-object v0, v3

    goto :goto_7

    .line 1287
    :cond_42
    :try_start_42
    sget-object v0, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotos;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1288
    invoke-static {p0, v1, v8}, Lcom/lge/provider/Andy_AdditionalContacts$DrmPhotoManager;->openDrmPhotoDrmStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/lge/lgdrm/DrmStream;
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_50} :catch_71

    move-result-object v9

    .line 1290
    .local v9, drmStream:Lcom/lge/lgdrm/DrmStream;
    if-eqz v9, :cond_7a

    .line 1292
    :try_start_53
    invoke-virtual {v9}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_81
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_68
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_71

    .line 1297
    :goto_56
    const/4 v0, 0x2

    :try_start_57
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 1298
    .local v7, data:[B
    if-eqz v7, :cond_7a

    .line 1299
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_62
    .catchall {:try_start_57 .. :try_end_62} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_62} :catch_71

    .line 1305
    if-eqz v6, :cond_7

    .line 1306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 1293
    .end local v7       #data:[B,
    :catch_68
    move-exception v10

    .line 1294
    .local v10, e:Ljava/io/IOException;
    :try_start_69
    const-string v0, "Andy_Contacts"

    const-string v2, "drmStream wasn\'t closed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_81
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_70} :catch_71

    goto :goto_56

    .line 1302
    .end local v8       #drmFilename:Ljava/lang/String;,
    .end local v9       #drmStream:Lcom/lge/lgdrm/DrmStream;,
    .end local v10       #e:Ljava/io/IOException;,
    :catch_71
    move-exception v0

    move-object v10, v0

    .line 1305
    .local v10, e:Ljava/lang/Exception;
    if-eqz v6, :cond_78

    .line 1306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_78
    move-object v0, v3

    goto :goto_7

    .line 1305
    .end local v10       #e:Ljava/lang/Exception;,
    .restart local v8       #drmFilename:Ljava/lang/String;,
    .restart local v9       #drmStream:Lcom/lge/lgdrm/DrmStream;,
    :cond_7a
    if-eqz v6, :cond_7f

    .line 1306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7f
    move-object v0, v3

    .line 1309
    goto :goto_7

    .line 1305
    .end local v8       #drmFilename:Ljava/lang/String;,
    .end local v9       #drmStream:Lcom/lge/lgdrm/DrmStream;,
    :catchall_81
    move-exception v0

    if-eqz v6, :cond_87

    .line 1306
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_87
    throw v0
.end method
