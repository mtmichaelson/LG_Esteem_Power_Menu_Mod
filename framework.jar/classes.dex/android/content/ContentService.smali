.class public final Landroid/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode;,
        Landroid/content/ContentService$ObserverCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"



# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Landroid/content/ContentService$ObserverNode;

.field private mSyncManager:Landroid/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;



# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 44
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    .line 96
    iput-boolean p2, p0, Landroid/content/ContentService;->mFactoryTest:Z

    .line 97
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    .line 98
    return-void
.end method

.method private getSyncManager()Landroid/content/SyncManager;
    .registers 6

    .prologue
    .line 49
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_3
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_12

    new-instance v2, Landroid/content/SyncManager;

    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Landroid/content/ContentService;->mFactoryTest:Z

    invoke-direct {v2, v3, v4}, Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_16

    .line 56
    :cond_12
    :goto_12
    :try_start_12
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    monitor-exit v1

    return-object v2

    .line 53
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 54
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 57
    .end local v0       #e:Landroid/database/sqlite/SQLiteException;,
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public static main(Landroid/content/Context;Z)Landroid/content/IContentService;
    .registers 4
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 461
    new-instance v0, Landroid/content/ContentService;

    invoke-direct {v0, p0, p1}, Landroid/content/ContentService;-><init>(Landroid/content/Context;Z)V

    .line 462
    .local v0, service:Landroid/content/ContentService;
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 463
    return-object v0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 14
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    .line 280
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v6

    .line 284
    .local v6, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_21

    .line 287
    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 289
    return-void

    .line 287
    :catchall_21
    move-exception v0

    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 7
    .parameter "mask"
    .parameter "callback"

    .prologue
    .line 437
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 439
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 440
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p2, :cond_13

    .line 441
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 444
    :cond_13
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 446
    return-void

    .line 444
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_17
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 7
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 219
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 221
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 222
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_10

    .line 223
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->clearScheduledSyncOperations(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 227
    :cond_10
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 229
    return-void

    .line 227
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_14
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "caller doesn\'t have the DUMP permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_27

    move-result-wide v0

    .line 69
    .local v0, identityToken:J
    :try_start_e
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_1c

    .line 70
    const-string v2, "No SyncManager created!  (Disk full?)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_22

    .line 75
    :goto_17
    :try_start_17
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_27

    .line 77
    monitor-exit p0

    return-void

    .line 72
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_22

    goto :goto_17

    .line 75
    :catchall_22
    move-exception v2

    :try_start_23
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    .line 62
    .end local v0       #identityToken:J,
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCurrentSync()Landroid/content/SyncInfo;
    .registers 7

    .prologue
    .line 391
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 395
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 396
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 397
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getCurrentSync()Landroid/content/SyncInfo;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result-object v3

    .line 400
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 402
    :goto_1f
    return-object v3

    .line 400
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 402
    const/4 v3, 0x0

    goto :goto_1f

    .line 400
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 9
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 315
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 319
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 320
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 321
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result v3

    .line 325
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 327
    :goto_1f
    return v3

    .line 325
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 327
    const/4 v3, -0x1

    goto :goto_1f

    .line 325
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getMasterSyncAutomatically()Z
    .registers 7

    .prologue
    .line 346
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 350
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 351
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 352
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result v3

    .line 355
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 357
    :goto_1f
    return v3

    .line 355
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 357
    const/4 v3, 0x0

    goto :goto_1f

    .line 355
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "account"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to read the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 307
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1e

    move-result-object v2

    .line 310
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 5

    .prologue
    .line 238
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 240
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 241
    .local v2, syncManager:Landroid/content/SyncManager;
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    move-result-object v3

    .line 243
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v3

    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_10
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 248
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 252
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 253
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 254
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result v3

    .line 258
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 260
    :goto_1f
    return v3

    .line 258
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 260
    const/4 v3, 0x0

    goto :goto_1f

    .line 258
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 406
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 410
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 411
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 412
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getStatusByAccountAndAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result-object v3

    .line 416
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 418
    :goto_1f
    return-object v3

    .line 416
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 418
    const/4 v3, 0x0

    goto :goto_1f

    .line 416
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 375
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 379
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 380
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 381
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result v3

    .line 385
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 387
    :goto_1f
    return v3

    .line 385
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 387
    const/4 v3, 0x0

    goto :goto_1f

    .line 385
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 422
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 426
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 427
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 428
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    move-result v3

    .line 431
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 433
    :goto_1f
    return v3

    .line 431
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 433
    const/4 v3, 0x0

    goto :goto_1f

    .line 431
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .registers 26
    .parameter "uri"
    .parameter "observer"
    .parameter "observerWantsSelfNotifications"
    .parameter "syncToNetwork"

    .prologue
    .line 124
    const-string v3, "ContentService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 125
    const-string v3, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying update of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from observer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", syncToNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_3e
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v12

    .line 132
    .local v12, identityToken:J
    :try_start_42
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v8, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object v9, v0

    monitor-enter v9
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_ba

    .line 134
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object v3, v0

    const/4 v5, 0x0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 136
    monitor-exit v9
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_b7

    .line 137
    :try_start_5d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 138
    .local v16, numCalls:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_62
    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_10a

    .line 139
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ContentService$ObserverCall;
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_ba

    .line 141
    .local v18, oc:Landroid/content/ContentService$ObserverCall;
    :try_start_6d
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v3, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/content/ContentService$ObserverCall;->mSelfNotify:Z

    move v4, v0

    invoke-interface {v3, v4}, Landroid/database/IContentObserver;->onChange(Z)V

    .line 142
    const-string v3, "ContentService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 143
    const-string v3, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notified "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "update at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_6d .. :try_end_b4} :catchall_ba
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_b4} :catch_bf

    .line 138
    :cond_b4
    :goto_b4
    add-int/lit8 v11, v11, 0x1

    goto :goto_62

    .line 136
    .end local v11       #i:I,
    .end local v16       #numCalls:I,
    .end local v18       #oc:Landroid/content/ContentService$ObserverCall;,
    :catchall_b7
    move-exception v3

    :try_start_b8
    monitor-exit v9
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    :try_start_b9
    throw v3
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_ba

    .line 171
    .end local v8       #calls:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    :catchall_ba
    move-exception v3

    invoke-static {v12, v13}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .line 145
    .restart local v8       #calls:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    .restart local v11       #i:I,
    .restart local v16       #numCalls:I,
    .restart local v18       #oc:Landroid/content/ContentService$ObserverCall;,
    :catch_bf
    move-exception v3

    move-object v10, v3

    .line 146
    .local v10, ex:Landroid/os/RemoteException;
    :try_start_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object v3, v0

    monitor-enter v3
    :try_end_c7
    .catchall {:try_start_c1 .. :try_end_c7} :catchall_ba

    .line 147
    :try_start_c7
    const-string v4, "ContentService"

    const-string v5, "Found dead observer, removing"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 149
    .local v9, binder:Landroid/os/IBinder;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mNode:Landroid/content/ContentService$ObserverNode;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/ContentService$ObserverNode;->access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v15

    .line 151
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 152
    .local v17, numList:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_e5
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_105

    .line 153
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 154
    .local v19, oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v9, :cond_102

    .line 155
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    add-int/lit8 v14, v14, -0x1

    .line 157
    add-int/lit8 v17, v17, -0x1

    .line 152
    :cond_102
    add-int/lit8 v14, v14, 0x1

    goto :goto_e5

    .line 160
    .end local v19       #oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;,
    :cond_105
    monitor-exit v3

    goto :goto_b4

    .end local v9       #binder:Landroid/os/IBinder;,
    .end local v14       #j:I,
    .end local v15       #list:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v17       #numList:I,
    :catchall_107
    move-exception v4

    monitor-exit v3
    :try_end_109
    .catchall {:try_start_c7 .. :try_end_109} :catchall_107

    :try_start_109
    throw v4

    .line 163
    .end local v10       #ex:Landroid/os/RemoteException;,
    .end local v18       #oc:Landroid/content/ContentService$ObserverCall;,
    :cond_10a
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 164
    if-eqz p4, :cond_121

    .line 165
    invoke-direct/range {p0 .. p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v20

    .line 166
    .local v20, syncManager:Landroid/content/SyncManager;
    if-eqz v20, :cond_121

    .line 167
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_121
    .catchall {:try_start_109 .. :try_end_121} :catchall_ba

    .line 171
    .end local v20       #syncManager:Landroid/content/SyncManager;,
    :cond_121
    invoke-static {v12, v13}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 173
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 84
    :catch_5
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 88
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_11
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 7
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    .line 102
    if-eqz p3, :cond_4

    if-nez p1, :cond_c

    .line 103
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_c
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 106
    :try_start_f
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    iget-object v2, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1, p3, p2, v2}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;)V

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 292
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 296
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/SyncStorageEngine;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    .line 298
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 300
    return-void

    .line 298
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 6
    .parameter "callback"

    .prologue
    .line 449
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 451
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 452
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 453
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 456
    :cond_13
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 458
    return-void

    .line 456
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_17
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 195
    invoke-static {p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 198
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v7

    .line 200
    .local v7, identityToken:J
    :try_start_7
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    .line 201
    .local v0, syncManager:Landroid/content/SyncManager;
    if-eqz v0, :cond_16

    .line 202
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1a

    .line 206
    :cond_16
    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 208
    return-void

    .line 206
    .end local v0       #syncManager:Landroid/content/SyncManager;,
    :catchall_1a
    move-exception v1

    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 10
    .parameter "account"
    .parameter "providerName"
    .parameter "syncable"

    .prologue
    .line 331
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 335
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 336
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1b

    .line 337
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 341
    :cond_1b
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 343
    return-void

    .line 341
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 8
    .parameter "flag"

    .prologue
    .line 361
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 365
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 366
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1b

    .line 367
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(Z)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 370
    :cond_1b
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 372
    return-void

    .line 370
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 10
    .parameter "account"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    .line 264
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 268
    .local v0, identityToken:J
    :try_start_e
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 269
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1b

    .line 270
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1f

    .line 274
    :cond_1b
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 276
    return-void

    .line 274
    .end local v2       #syncManager:Landroid/content/SyncManager;,
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4
    .parameter "observer"

    .prologue
    .line 113
    if-nez p1, :cond_a

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_a
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 117
    :try_start_d
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method
