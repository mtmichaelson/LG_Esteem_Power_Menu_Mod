.class public Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;
.super Ljava/lang/Object;
.source "SmsProvider.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsDeletedFolder"
.end annotation


# static fields
.field private static final DATABASE_SMS_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date INTEGER,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,locked INTEGER DEFAULT 0);"

.field private static final DB_NAME:Ljava/lang/String; = "SmsDeletedFolder"

.field private static final DB_PATH:Ljava/lang/String; = "/data/data/com.broadcom.bt.app.system/map/"

.field private static final TAG:Ljava/lang/String; = "SmsDeletedFolder"



# instance fields
.field mDB:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic this$0:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;



# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;)V
    .registers 4
    .parameter

    .prologue
    const-string v1, "SmsDeletedFolder"

    .line 194
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->this$0:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 195
    const-string v0, "SmsDeletedFolder"

    const-string v0, "SmsDeletedFolder"

    invoke-static {v1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method


# virtual methods
.method public addItem(IILjava/lang/String;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 25
    .parameter "id"
    .parameter "thread_id"
    .parameter "address"
    .parameter "person"
    .parameter "date"
    .parameter "protocol"
    .parameter "read"
    .parameter "status"
    .parameter "type"
    .parameter "reply_path_present"
    .parameter "subject"
    .parameter "body"
    .parameter "service_center"
    .parameter "locked"

    .prologue
    .line 253
    const/4 v3, 0x1

    .line 254
    .local v3, fRet:Z
    const-string v5, "SmsDeletedFolder"

    const-string v6, "SmsDeletedFolder::addItem"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_da

    .line 257
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    const-string/jumbo v5, "thread_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v5, "address"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string/jumbo v5, "person"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v5, "date"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    const-string/jumbo v5, "protocol"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 264
    const-string/jumbo v5, "read"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string/jumbo v5, "status"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 266
    const-string/jumbo v5, "type"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string/jumbo v5, "reply_path_present"

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    const-string/jumbo v5, "subject"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v5, "body"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string/jumbo v5, "service_center"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, p14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v5, "locked"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 273
    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "sms"

    const-string v7, ""

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_cd

    .line 275
    const/4 v3, 0x0

    .line 276
    const-string v5, "SmsDeletedFolder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error inserting row in deleted folder"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_c7
    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 289
    .end local v4       #values:Landroid/content/ContentValues;,
    :goto_cc
    return v3

    .line 280
    .restart local v4       #values:Landroid/content/ContentValues;,
    :cond_cd
    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 281
    const-string v5, "SmsDeletedFolder"

    const-string v6, "Successfully added row in deleted folder"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 287
    .end local v4       #values:Landroid/content/ContentValues;,
    :cond_da
    const/4 v3, 0x0

    goto :goto_cc
.end method

.method public closeDeletedFolderDatabase()V
    .registers 3

    .prologue
    .line 241
    const-string v0, "SmsDeletedFolder"

    const-string v1, "SmsDeletedFolder::closeDeletedFolderDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_10

    .line 244
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 246
    :cond_10
    return-void
.end method

.method public deleteItem(I)Z
    .registers 10
    .parameter "id"

    .prologue
    const-string v7, "SmsDeletedFolder"

    .line 294
    const/4 v0, 0x1

    .line 295
    .local v0, fRet:Z
    const-string v1, "SmsDeletedFolder"

    const-string v1, "SmsDeletedFolder::deleteItem"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_67

    .line 298
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 299
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "sms"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_49

    .line 301
    const-string v1, "SmsDeletedFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsDeletedFolder::deleteItem failed id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    .line 309
    :goto_43
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 315
    :goto_48
    return v0

    .line 306
    :cond_49
    const-string v1, "SmsDeletedFolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsDeletedFolder::deleteItem successful id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_43

    .line 313
    :cond_67
    const/4 v0, 0x0

    goto :goto_48
.end method

.method public getAllItems()Landroid/database/Cursor;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 320
    const-string v0, "SmsDeletedFolder"

    const-string v1, "SmsDeletedFolder::getAllItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1c

    .line 323
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sms"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, c:Landroid/database/Cursor;
    move-object v0, v8

    .line 326
    .end local v8       #c:Landroid/database/Cursor;,
    :goto_1b
    return-object v0

    :cond_1c
    move-object v0, v2

    goto :goto_1b
.end method

.method public getAllItemsGreaterThan(I)Landroid/database/Cursor;
    .registers 12
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 331
    const-string v0, "SmsDeletedFolder"

    const-string v1, "SmsDeletedFolder::getAllItemsGreaterThan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_27

    .line 334
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sms"

    const-string v3, "_id>?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .local v9, c:Landroid/database/Cursor;
    move-object v0, v9

    .line 337
    .end local v9       #c:Landroid/database/Cursor;,
    :goto_26
    return-object v0

    :cond_27
    move-object v0, v2

    goto :goto_26
.end method

.method public getItemById(I)Landroid/database/Cursor;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 342
    const-string v0, "SmsDeletedFolder"

    const-string v1, "SmsDeletedFolder::getItemById"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_26

    .line 345
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "sms"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, c:Landroid/database/Cursor;
    move-object v0, v8

    .line 348
    .end local v8       #c:Landroid/database/Cursor;,
    :goto_25
    return-object v0

    :cond_26
    move-object v0, v2

    goto :goto_25
.end method

.method public openDeletedFolderDatabase()Z
    .registers 8

    .prologue
    const-string v6, "SmsDeletedFolder"

    .line 204
    const/4 v2, 0x0

    .line 206
    .local v2, fRet:Z
    const-string v3, "SmsDeletedFolder"

    const-string v3, "SmsDeletedFolder::openDeletedFolderDatabase"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.broadcom.bt.app.system/map"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, dbDirectory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_39

    .line 212
    const-string v3, "SmsDeletedFolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******Cannot create Database directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_39
    :try_start_39
    const-string v3, "/data/data/com.broadcom.bt.app.system/map/SmsDeletedFolder"

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 224
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "CREATE TABLE IF NOT EXISTS sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date INTEGER,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,locked INTEGER DEFAULT 0);"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_4b} :catch_58

    .line 231
    :goto_4b
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_57

    .line 233
    const-string v3, "SmsDeletedFolder"

    const-string v3, "Created deleted folder database successfully."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v2, 0x1

    .line 236
    :cond_57
    return v2

    .line 227
    :catch_58
    move-exception v3

    move-object v1, v3

    .line 229
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "SmsDeletedFolder"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method
