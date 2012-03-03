.class public Lcom/broadcom/bt/service/map/MapService;
.super Ljava/lang/Object;
.source "MapService.java"



# static fields
.field private static final D:Z = true

.field private static final DISABLED_MAP_PROVIDERS:Ljava/lang/String; = "DisabledMapProviders"

.field private static REF_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MAP.MapService"



# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFinished:Z

.field private mProviders:Ljava/util/Vector;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    .line 46
    invoke-static {}, Lcom/broadcom/bt/service/map/MapService;->Native_InitMapService()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    .line 63
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 64
    sget v0, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    .line 65
    const-string v0, "MAP.MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor(): REF_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method private native Native_BluetoothMapMSEFolderListingResponse(IBIILjava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V
.end method

.method private native Native_BluetoothMapMSEMsgEntryResponse(IBIIIIBBBBBJBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native Native_BluetoothMapMSEMsgListInfoResponse(IBILjava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSENotifyClients(IBJLjava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSENotifyRegistrationResponse(IB)V
.end method

.method private native Native_BluetoothMapMSEPushResponse(IJB)V
.end method

.method private native Native_BluetoothMapMSESetMsgStatusResponse(IBB)V
.end method

.method private native Native_BluetoothMapMSEStart(Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSEStop(I)V
.end method

.method private native Native_CleanupMapService()V
.end method

.method private static native Native_InitMapService()V
.end method


# virtual methods
.method public disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    const-string v4, "MAP.MapService"

    .line 545
    const-string v3, "MAP.MapService"

    const-string v3, "disableProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 548
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_15

    .line 549
    const-string v3, "MAP.MapService"

    const-string v3, "context is null"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_14
    return-void

    .line 555
    :cond_15
    const-string v3, "DisabledMapProviders"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 556
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 557
    .local v1, se:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 558
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 560
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14
.end method

.method public enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    const-string v5, "MAP.MapService"

    .line 521
    const-string v4, "MAP.MapService"

    const-string v4, "enableProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 524
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_15

    .line 525
    const-string v4, "MAP.MapService"

    const-string v4, "context is null"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_14
    return-void

    .line 530
    :cond_15
    const-string v4, "DisabledMapProviders"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 531
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 532
    .local v2, se:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 533
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_14
.end method

.method public enumRegisteredProviders()[Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v11, 0x0

    const-string v12, "MAP.MapService"

    const-string v13, ":"

    .line 485
    const-string v10, "MAP.MapService"

    const-string v10, "enumRegisteredProviders"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 488
    .local v2, appContext:Landroid/content/Context;
    if-nez v2, :cond_1a

    .line 489
    const-string v10, "MAP.MapService"

    const-string v10, "context is null"

    invoke-static {v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-array v10, v11, [Ljava/lang/String;

    .line 516
    .end local p0       
    :goto_19
    return-object v10

    .line 493
    .restart local p0       
    :cond_1a
    const-string v10, "DisabledMapProviders"

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 494
    .local v9, sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 496
    .local v1, allProps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v7, 0x0

    .line 497
    .local v7, mProvidersCopy:Ljava/util/Vector;
    iget-object v11, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v11

    .line 498
    :try_start_28
    iget-object v10, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/Vector;

    move-object v7, v0

    .line 499
    monitor-exit v11
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_82

    .line 501
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    add-int/2addr v10, v11

    new-array v8, v10, [Ljava/lang/String;

    .line 502
    .local v8, ret:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 504
    .local v5, i:I
    :goto_3f
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v5, v10, :cond_85

    .line 506
    invoke-virtual {v7, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 507
    .local v3, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    new-instance v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":enabled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v10, v8, v5

    .line 508
    add-int/lit8 v5, v5, 0x1

    .line 509
    goto :goto_3f

    .line 499
    .end local v3       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .end local v5       #i:I,
    .end local v8       #ret:[Ljava/lang/String;,
    :catchall_82
    move-exception v10

    :try_start_83
    monitor-exit v11
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v10

    .line 511
    .restart local v5       #i:I,
    .restart local v8       #ret:[Ljava/lang/String;,
    :cond_85
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p0       
    .local v6, i$:Ljava/util/Iterator;
    :goto_8d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_ca

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 513
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":disabled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v10, v8, v5

    .line 514
    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    .end local v4       #entry:Ljava/util/Map$Entry;,, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_ca
    move-object v10, v8

    .line 516
    goto/16 :goto_19
.end method

.method protected finalize()V
    .registers 4

    .prologue
    .line 69
    sget v0, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    .line 70
    const-string v0, "MAP.MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize(): REF_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/map/MapService;->REF_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/MapService;->finish()V

    .line 73
    :try_start_23
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_27

    .line 77
    :goto_26
    return-void

    .line 74
    :catch_27
    move-exception v0

    goto :goto_26
.end method

.method public declared-synchronized finish()V
    .registers 3

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    const-string v0, "MAP.MapService"

    const-string v1, "MapService.finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    if-nez v0, :cond_12

    .line 95
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/MapService;->unregisterallProviders()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 104
    :cond_12
    monitor-exit p0

    return-void

    .line 93
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V
    .registers 19
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "folder_path"
    .parameter "status"
    .parameter "folder_info"

    .prologue
    .line 291
    const-string v2, "MAP.MapService"

    const-string v3, "FolderListingResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v11

    .line 298
    .local v11, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v11, :cond_79

    .line 299
    if-nez p5, :cond_6a

    .line 301
    const/4 v10, 0x0

    .local v10, i:I
    :goto_10
    move-object/from16 v0, p6

    array-length v0, v0

    move v2, v0

    if-ge v10, v2, :cond_45

    .line 302
    const-string v2, "MAP.MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FolderListingResponse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p6, v10

    iget-wide v4, v4, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p6, v10

    iget-object v4, v4, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p6, v10

    iget-object v4, v4, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 305
    :cond_45
    move-object/from16 v0, p6

    move-object v1, v11

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    .line 308
    const/4 v5, 0x1

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-wide v2, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    long-to-int v6, v2

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-object v7, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-object v8, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-wide v2, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    long-to-int v2, v2

    int-to-byte v9, v2

    move-object v2, p0

    move v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    .line 319
    .end local v10       #i:I,
    :goto_69
    return-void

    .line 313
    :cond_6a
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_69

    .line 316
    :cond_79
    const-string v2, "MAP.MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FolderListingResponse - session not found for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method

.method getCallback(I)Lcom/broadcom/bt/service/map/IMapCallback;
    .registers 7
    .parameter "mse_instance_id"

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, callback:Lcom/broadcom/bt/service/map/IMapCallback;
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 692
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    :try_start_5
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_1b

    .line 694
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 695
    .local v1, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget v4, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    if-ne v4, p1, :cond_1d

    .line 696
    iget-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .line 700
    .end local v1       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_1b
    monitor-exit v3

    .line 701
    return-object v0

    .line 692
    .restart local v1       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 700
    .end local v1       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :catchall_20
    move-exception v4

    monitor-exit v3
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw v4
.end method

.method getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .registers 7
    .parameter "mse_session_id"

    .prologue
    .line 676
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 677
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    :try_start_4
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_20

    .line 678
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 679
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v2

    .line 680
    .local v2, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v2, :cond_1d

    .line 681
    monitor-exit v3

    move-object v3, v2

    .line 685
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .end local v2       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :goto_1c
    return-object v3

    .line 677
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .restart local v2       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 684
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .end local v2       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_20
    monitor-exit v3

    .line 685
    const/4 v3, 0x0

    goto :goto_1c

    .line 684
    :catchall_23
    move-exception v4

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v4
.end method

.method getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    .registers 6
    .parameter "mse_instance_id"

    .prologue
    .line 647
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2

    .line 648
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1e

    .line 650
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 651
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    if-ne v3, p1, :cond_1b

    .line 652
    monitor-exit v2

    move-object v2, v0

    .line 656
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :goto_1a
    return-object v2

    .line 648
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 655
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_1e
    monitor-exit v2

    .line 656
    const/4 v2, 0x0

    goto :goto_1a

    .line 655
    :catchall_21
    move-exception v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v3
.end method

.method getContext(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;
    .registers 7
    .parameter "mse_name"
    .parameter "mse_type"

    .prologue
    .line 633
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2

    .line 634
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    .line 636
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 637
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;B)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 638
    monitor-exit v2

    move-object v2, v0

    .line 641
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :goto_1c
    return-object v2

    .line 634
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 641
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_20
    const/4 v3, 0x0

    monitor-exit v2

    move-object v2, v3

    goto :goto_1c

    .line 642
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v3
.end method

.method getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;
    .registers 7
    .parameter "provider_id"
    .parameter "data_source_id"

    .prologue
    .line 603
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2

    .line 604
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    .line 606
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 607
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 608
    monitor-exit v2

    move-object v2, v0

    .line 612
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :goto_1c
    return-object v2

    .line 604
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 611
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_20
    monitor-exit v2

    .line 612
    const/4 v2, 0x0

    goto :goto_1c

    .line 611
    :catchall_23
    move-exception v3

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v3
.end method

.method getContextByDsName(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;
    .registers 7
    .parameter "dsName"
    .parameter "mse_type"

    .prologue
    .line 618
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2

    .line 619
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_26

    .line 621
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 622
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget-byte v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    if-ne p2, v3, :cond_23

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_23

    .line 624
    monitor-exit v2

    move-object v2, v0

    .line 628
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :goto_22
    return-object v2

    .line 619
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 627
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_26
    monitor-exit v2

    .line 628
    const/4 v2, 0x0

    goto :goto_22

    .line 627
    :catchall_29
    move-exception v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v3
.end method

.method getContextFromSessionId(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    .registers 6
    .parameter "mse_session_id"

    .prologue
    .line 661
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2

    .line 662
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    .line 664
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 665
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 666
    monitor-exit v2

    move-object v2, v0

    .line 670
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :goto_1c
    return-object v2

    .line 662
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 669
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_20
    monitor-exit v2

    .line 670
    const/4 v2, 0x0

    goto :goto_1c

    .line 669
    :catchall_23
    move-exception v3

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v3
.end method

.method public getMsgFailResponse(IJB)V
    .registers 11
    .parameter "session_id"
    .parameter "message_id"
    .parameter "status"

    .prologue
    .line 424
    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    .line 427
    return-void
.end method

.method public getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .registers 13
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "message_id"
    .parameter "status"
    .parameter "msg_file_path"

    .prologue
    .line 408
    const-string v0, "MAP.MapService"

    const-string v1, "GetMsgResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-nez p5, :cond_1b

    .line 413
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, p4}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;)J

    move-result-wide v2

    move-object v0, p0

    move v1, p1

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    .line 420
    :goto_1a
    return-void

    .line 416
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, p4}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;)J

    move-result-wide v2

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    goto :goto_1a
.end method

.method public init()V
    .registers 3

    .prologue
    .line 80
    const-string v0, "MAP.MapService"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    .line 90
    return-void
.end method

.method isProviderDisabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "provider_id"
    .parameter "data_source_id"
    .parameter "data_source_name"

    .prologue
    const/4 v5, 0x0

    const-string v7, ":"

    const-string v6, "MAP.MapService"

    .line 709
    const-string v3, "MAP.MapService"

    const-string v3, "isProviderDisabled"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 711
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_19

    .line 712
    const-string v3, "MAP.MapService"

    const-string v3, "context is null"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 722
    :goto_18
    return v3

    .line 715
    :cond_19
    const-string v3, "DisabledMapProviders"

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 716
    .local v2, sp:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, sProp:Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 719
    const-string v3, "MAP.MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v3, 0x1

    goto :goto_18

    :cond_6c
    move v3, v5

    .line 722
    goto :goto_18
.end method

.method isRegistered(BLjava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 586
    const/4 v2, 0x0

    .line 587
    .local v2, ret:Z
    const-string v3, "MAP.MapService"

    const-string v4, "isRegistered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 589
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    :try_start_c
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_23

    .line 590
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 591
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(BLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 592
    const/4 v2, 0x1

    .line 596
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_23
    monitor-exit v3

    .line 597
    return v2

    .line 589
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 596
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :catchall_28
    move-exception v4

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    throw v4
.end method

.method isRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 571
    const/4 v2, 0x0

    .line 572
    .local v2, ret:Z
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 573
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    :try_start_5
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_1c

    .line 574
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 575
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 576
    const/4 v2, 0x1

    .line 580
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_1c
    monitor-exit v3

    .line 581
    return v2

    .line 573
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 580
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :catchall_21
    move-exception v4

    monitor-exit v3
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v4
.end method

.method public msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 49
    .parameter "mse_session_id"
    .parameter "status"
    .parameter "refdata"
    .parameter "parameter_mask"
    .parameter "org_msg_size"
    .parameter "attachment_size"
    .parameter "is_text"
    .parameter "is_high_priority"
    .parameter "is_read"
    .parameter "is_sent"
    .parameter "is_protected"
    .parameter "msg_handle"
    .parameter "msg_type"
    .parameter "reception_status"
    .parameter "subject"
    .parameter "date_time"
    .parameter "sender_name"
    .parameter "sender_addressing"
    .parameter "recipient_name"
    .parameter "recipient_addressing"
    .parameter "replyto_addressing"
    .parameter "folder_path"

    .prologue
    .line 368
    const-string v3, "MAP.MapService"

    const-string v4, "MsgEntryResponse"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual/range {p0 .. p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v3

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v0, v3

    move-object/from16 v1, p12

    move-object/from16 v2, p22

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v17, p13

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v23, p19

    move-object/from16 v24, p20

    move-object/from16 v25, p21

    invoke-direct/range {v3 .. v25}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEMsgEntryResponse(IBIIIIBBBBBJBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    return-void
.end method

.method public msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    .registers 16
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "parent_path"
    .parameter "status"
    .parameter "mse_time"
    .parameter "new_msg"
    .parameter "msg_info"

    .prologue
    const-string v2, "MAP.MapService"

    .line 329
    const-string v0, "MAP.MapService"

    const-string v0, "MsgListingResponse"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v6

    .line 337
    .local v6, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v6, :cond_1e

    .line 341
    const/4 v3, 0x0

    .line 342
    .local v3, listSize:I
    if-nez p5, :cond_15

    .line 343
    iput-object p8, v6, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    .line 344
    array-length v3, p8

    :cond_15
    move-object v0, p0

    move v1, p1

    move v2, p5

    move-object v4, p6

    move v5, p7

    .line 346
    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEMsgListInfoResponse(IBILjava/lang/String;B)V

    .line 352
    .end local v3       #listSize:I,
    :goto_1d
    return-void

    .line 350
    :cond_1e
    const-string v0, "MAP.MapService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No client session found for session id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .registers 11
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "message_id"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    .line 388
    const-string v2, "MAP.MapService"

    const-string v3, "MsgPushResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    .line 394
    .local v0, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v0, :cond_1a

    .line 396
    invoke-virtual {v0, p6}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, s_virtual_folder:Ljava/lang/String;
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v2, p4, v1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, p5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEPushResponse(IJB)V

    .line 400
    .end local v1       #s_virtual_folder:Ljava/lang/String;,
    :cond_1a
    return-void
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .registers 22
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "notification_type"
    .parameter "message_id"
    .parameter "folder_path"
    .parameter "old_folder_path"
    .parameter "msg_type"

    .prologue
    .line 236
    const-string v3, "MAP.MapService"

    const-string v4, "NotifyClient"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual/range {p0 .. p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v12

    .line 239
    .local v12, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v12, :cond_a4

    .line 241
    const/4 v3, 0x7

    move/from16 v0, p3

    move v1, v3

    if-eq v0, v1, :cond_1a

    const/16 v3, 0x7d

    move/from16 v0, p3

    move v1, v3

    if-ne v0, v1, :cond_20

    .line 244
    :cond_1a
    move-object v0, v12

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeMAPMsgId(Ljava/lang/String;)V

    .line 250
    :cond_20
    const/16 v3, 0x7d

    move/from16 v0, p3

    move v1, v3

    if-ne v0, v1, :cond_28

    .line 277
    :goto_27
    return-void

    .line 254
    :cond_28
    const/4 v11, 0x0

    .line 255
    .local v11, clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    iget-object v3, v12, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_7e

    .line 256
    iget-object v3, v12, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11       #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    check-cast v11, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    .line 257
    .restart local v11       #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    move-object v0, v11

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, msg_virtual_folder:Ljava/lang/String;
    const-string/jumbo v3, "root"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, msg_virtual_folder_stripped:Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, msg_old_virtual_folder:Ljava/lang/String;
    const-string/jumbo v3, "root/"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 262
    const-string/jumbo v3, "root"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 265
    :cond_6b
    iget v4, v12, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    move-object v0, v12

    move-object/from16 v1, p4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    move-object v3, p0

    move/from16 v5, p3

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSENotifyClients(IBJLjava/lang/String;Ljava/lang/String;B)V

    goto :goto_27

    .line 269
    .end local v8       #msg_virtual_folder_stripped:Ljava/lang/String;,
    .end local v9       #msg_old_virtual_folder:Ljava/lang/String;,
    .end local v13       #msg_virtual_folder:Ljava/lang/String;,
    :cond_7e
    const-string v3, "MAP.MapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotifyClient- error finding session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 273
    .end local v11       #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_a4
    const-string v3, "MAP.MapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotifyClient- error finding context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27
.end method

.method public notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V
    .registers 7
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "status"

    .prologue
    .line 472
    const-string v0, "MAP.MapService"

    const-string v1, "NotifyRegistrationResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-direct {p0, p1, p4}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSENotifyRegistrationResponse(IB)V

    .line 475
    return-void
.end method

.method public registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    .registers 20
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "provider_display_name"
    .parameter "provider_ds_id"
    .parameter "provider_ds_display_name"
    .parameter "feature_message_filter"
    .parameter "feature_message_offset_browsing"
    .parameter "folder_mappings"
    .parameter "callback"

    .prologue
    .line 137
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisterDSProvider provider_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "provider name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0, p1, p2, p4}, Lcom/broadcom/bt/service/map/MapService;->isRegistered(BLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 143
    invoke-virtual {p0, p2, p4, p5}, Lcom/broadcom/bt/service/map/MapService;->isProviderDisabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 149
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/map/MapProviderContext;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V

    .line 154
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :goto_68
    return-void

    .line 158
    :cond_69
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 162
    :cond_9c
    const-string v1, "MAP.MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method public sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    .registers 8
    .parameter "mse_session_id"
    .parameter "status"
    .parameter "ref_data"
    .parameter "file_size"
    .parameter "folder_name"
    .parameter "cr_time"
    .parameter "mode"

    .prologue
    .line 284
    invoke-direct/range {p0 .. p7}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEFolderListingResponse(IBIILjava/lang/String;Ljava/lang/String;B)V

    .line 286
    return-void
.end method

.method public setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "msg_folder"

    .prologue
    .line 435
    const-string v2, "MAP.MapService"

    const-string v3, "SetMsgStatusResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    .line 441
    .local v0, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v0, :cond_20

    .line 445
    invoke-virtual {v0, p7}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, sVirtualFolder:Ljava/lang/String;
    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 449
    if-nez p5, :cond_20

    .line 451
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v2, p6}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeMAPMsgId(Ljava/lang/String;)V

    .line 464
    .end local v1       #sVirtualFolder:Ljava/lang/String;,
    :cond_20
    :goto_20
    invoke-direct {p0, p1, p4, p5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSESetMsgStatusResponse(IBB)V

    .line 465
    return-void

    .line 459
    .restart local v1       #sVirtualFolder:Ljava/lang/String;,
    :cond_24
    if-nez p5, :cond_20

    .line 460
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    const-string/jumbo v3, "root/telecom/msg/deleted"

    invoke-virtual {v2, p6, v3}, Lcom/broadcom/bt/service/map/MapProviderContext;->setMAPMsgFolder(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_20
.end method

.method public startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v4, "MAP.MapService"

    const-string v3, " "

    .line 198
    const-string v1, "MAP.MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartMSEInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 202
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_68

    .line 203
    const-string v1, "MAP.MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartMSEInstance starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    iget-byte v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    invoke-direct {p0, v1, v2, v3}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEStart(Ljava/lang/String;Ljava/lang/String;B)V

    .line 212
    :goto_67
    return-void

    .line 208
    :cond_68
    const-string v1, "MAP.MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartMSEInstance - error finding context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67
.end method

.method public stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v3, "MAP.MapService"

    .line 218
    const-string v1, "MAP.MapService"

    const-string/jumbo v1, "stopMSEInstance"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 221
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_16

    .line 222
    iget v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEStop(I)V

    .line 228
    :goto_15
    return-void

    .line 224
    :cond_16
    const-string v1, "MAP.MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMSEInstance - error finding context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v6, "MAP.MapService"

    .line 168
    const-string v4, "MAP.MapService"

    const-string/jumbo v4, "unregisterDSProvider"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, foundCtx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v4

    .line 171
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    :try_start_f
    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_2b

    .line 172
    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 173
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 174
    move-object v1, v0

    .line 175
    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 179
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_5a

    .line 182
    if-eqz v1, :cond_56

    .line 183
    const-string v4, "MAP.MapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnregisterDSProvider - removing ctx for provider id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " provider_ds_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_50
    iget-object v4, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_56} :catch_5d

    .line 191
    :cond_56
    :goto_56
    return-void

    .line 171
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 179
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :catchall_5a
    move-exception v5

    :try_start_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v5

    .line 187
    :catch_5d
    move-exception v4

    move-object v3, v4

    .line 188
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "MAP.MapService"

    const-string v4, "Error calling callback onMSEStateChanged()"

    invoke-static {v6, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_56
.end method

.method public unregisterallProviders()V
    .registers 6

    .prologue
    const-string v1, "MAP.MapService"

    .line 108
    :try_start_2
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_5f

    .line 110
    :try_start_5
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_15

    .line 112
    const-string v2, "MAP.MapService"

    const-string/jumbo v3, "unregisterallProviders() - No Providers registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_61

    .line 118
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 119
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    const-string v2, "MAP.MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterallProviders - Stopping MSE instance Provider Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ProviderDSId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/broadcom/bt/service/map/MapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/broadcom/bt/service/map/MapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 123
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5 .. :try_end_5e} :catchall_5c

    :try_start_5e
    throw v2
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5f} :catch_5f

    .line 125
    :catch_5f
    move-exception v1

    .line 128
    :goto_60
    return-void

    .line 123
    :cond_61
    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5c

    .line 124
    :try_start_62
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapService;->Native_CleanupMapService()V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_65} :catch_5f

    goto :goto_60
.end method
