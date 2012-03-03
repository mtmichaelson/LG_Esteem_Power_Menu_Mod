.class public Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;,
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    }
.end annotation


# static fields
.field private static final COMMIT_SQL:Ljava/lang/String; = "COMMIT;"

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String; = null

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field private static final EVENT_DB_OPERATION:I = 0xcb20

.field static final GET_LOCK_LOG_PREFIX:Ljava/lang/String; = "GETLOCK:"

.field private static final LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS:I = 0x64

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS:I = 0x12c

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT:I = 0x7d0

.field private static final LOCK_WARNING_WINDOW_IN_MS:I = 0x4e20

.field private static final LOG_SLOW_QUERIES_PROPERTY:Ljava/lang/String; = "db.log.slow_query_threshold"

.field public static final MAX_SQL_CACHE_SIZE:I = 0xfa

.field private static final MAX_WARNINGS_ON_CACHESIZE_CONDITION:I = 0x1

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field private static final QUERY_LOG_SQL_LENGTH:I = 0x40

.field private static final SLEEP_AFTER_YIELD_QUANTUM:I = 0x3e8

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "Database"

.field private static sQueryLogTimeInMillis:I



# instance fields
.field private mCacheFullWarnings:I

.field mCompiledQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteCompiledSql;",
            ">;"
        }
    .end annotation
.end field

.field private mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mFlags:I

.field private mInnerTransactionIsSuccessful:Z

.field private mLastLockMessageTime:J

.field private mLastSqlStatement:Ljava/lang/String;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mLockAcquiredThreadTime:J

.field private mLockAcquiredWallTime:J

.field private mLockingEnabled:Z

.field private mMaxSqlCacheSize:I

.field mNativeHandle:I

.field private mNumCacheHits:I

.field private mNumCacheMisses:I

.field private mPath:Ljava/lang/String;

.field private mPathForLogs:Ljava/lang/String;

.field private mPrograms:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteClosable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private final mSlowQueryThreshold:I

.field private mStackTrace:Ljava/lang/Throwable;

.field private final mSyncUpdateInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTempTableSequence:I

.field private mTimeClosed:Ljava/lang/String;

.field private mTimeOpened:Ljava/lang/String;

.field private mTransactionIsSuccessful:Z

.field private mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;



# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 130
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, " OR ROLLBACK "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " OR ABORT "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, " OR FAIL "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " OR IGNORE "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, " OR REPLACE "

    aput-object v2, v0, v1

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 213
    const-string v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 226
    sput v3, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 11
    .parameter "path"
    .parameter "factory"
    .parameter "flags"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 1840
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 196
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v6}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 198
    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 199
    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 215
    iput-wide v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 229
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    .line 230
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 237
    iput v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    .line 240
    iput v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mTempTableSequence:I

    .line 246
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 272
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    .line 277
    const/16 v1, 0xfa

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    .line 286
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 287
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 290
    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 350
    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 740
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    .line 1841
    if-nez p1, :cond_48

    .line 1842
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "path should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1844
    :cond_48
    iput p3, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    .line 1845
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    .line 1846
    const-string v1, "db.log.slow_query_threshold"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    .line 1847
    new-instance v1, Landroid/database/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v1}, Landroid/database/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v1}, Landroid/database/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 1848
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 1849
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iget v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    invoke-direct {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->dbopen(Ljava/lang/String;I)V

    .line 1850
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v1, :cond_73

    .line 1851
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 1853
    :cond_73
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    .line 1855
    :try_start_7a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_81
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_81} :catch_82

    .line 1864
    return-void

    .line 1856
    :catch_82
    move-exception v1

    move-object v0, v1

    .line 1857
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Database"

    const-string v2, "Failed to setLocale() when constructing, closing the database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1858
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->dbclose()V

    .line 1859
    sget-boolean v1, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v1, :cond_98

    .line 1860
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 1862
    :cond_98
    throw v0
.end method

.method private checkLockHoldTime()V
    .registers 14

    .prologue
    const-wide/16 v11, 0x7d0

    const-string v10, "Database"

    .line 438
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 439
    .local v0, elapsedTime:J
    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    sub-long v2, v0, v6

    .line 440
    .local v2, lockedTime:J
    cmp-long v6, v2, v11

    if-gez v6, :cond_24

    const-string v6, "Database"

    const/4 v6, 0x2

    invoke-static {v10, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_24

    iget-wide v6, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x4e20

    cmp-long v6, v6, v8

    if-gez v6, :cond_24

    .line 460
    :cond_23
    :goto_23
    return-void

    .line 445
    :cond_24
    const-wide/16 v6, 0x12c

    cmp-long v6, v2, v6

    if-lez v6, :cond_23

    .line 446
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    long-to-int v5, v6

    .line 448
    .local v5, threadTime:I
    const/16 v6, 0x64

    if-gt v5, v6, :cond_3e

    cmp-long v6, v2, v11

    if-lez v6, :cond_23

    .line 450
    :cond_3e
    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lock held on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms. Thread time was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, msg:Ljava/lang/String;
    sget-boolean v6, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    if-eqz v6, :cond_7e

    .line 454
    const-string v6, "Database"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v10, v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    .line 456
    :cond_7e
    const-string v6, "Database"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private closeClosable()V
    .registers 5

    .prologue
    .line 898
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->deallocCachedSqlStatements()V

    .line 900
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 901
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 902
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 903
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteClosable;

    .line 904
    .local v2, program:Landroid/database/sqlite/SQLiteClosable;
    if-eqz v2, :cond_d

    .line 905
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    goto :goto_d

    .line 908
    .end local v0       #entry:Ljava/util/Map$Entry;,, "Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteClosable;Ljava/lang/Object;>;"
    .end local v2       #program:Landroid/database/sqlite/SQLiteClosable;,
    :cond_25
    return-void
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter "factory"

    .prologue
    .line 870
    const-string v0, ":memory:"

    const/high16 v1, 0x1000

    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native dbclose()V
.end method

.method private native dbopen(Ljava/lang/String;I)V
.end method

.method private deallocCachedSqlStatements()V
    .registers 5

    .prologue
    .line 2053
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v2

    .line 2054
    :try_start_3
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;

    .line 2055
    .local v0, compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V

    goto :goto_d

    .line 2058
    .end local v0       #compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;,
    .end local v1       #i$:Ljava/util/Iterator;,
    :catchall_1d
    move-exception v3

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v3

    .line 2057
    .restart local v1       #i$:Ljava/util/Iterator;,
    :cond_20
    :try_start_20
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2058
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1d

    .line 2059
    return-void
.end method

.method private native enableSqlProfiling(Ljava/lang/String;)V
.end method

.method private native enableSqlTracing(Ljava/lang/String;)V
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "tables"

    .prologue
    const/4 v3, 0x0

    .line 1115
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1117
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1118
    .local v1, spacepos:I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1120
    .local v0, commapos:I
    if-lez v1, :cond_1e

    if-lt v1, v0, :cond_19

    if-gez v0, :cond_1e

    .line 1121
    :cond_19
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1125
    :goto_1d
    return-object v2

    .line 1122
    :cond_1e
    if-lez v0, :cond_29

    if-lt v0, v1, :cond_24

    if-gez v1, :cond_29

    .line 1123
    :cond_24
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    :cond_29
    move-object v2, p0

    .line 1125
    goto :goto_1d

    .line 1127
    .end local v0       #commapos:I,
    .end local v1       #spacepos:I,
    :cond_2b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid tables"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getAttachedDbs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 6
    .parameter "dbObj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2242
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v3

    .line 2251
    :goto_8
    return-object v2

    .line 2245
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2246
    .local v0, attachedDbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string/jumbo v2, "pragma database_list;"

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2247
    .local v1, c:Landroid/database/Cursor;
    :goto_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2248
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 2250
    :cond_2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v2, v0

    .line 2251
    goto :goto_8
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2169
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2170
    .local v9, dbStatsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->getInstance()Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;

    move-result-object v0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->access$000(Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_11
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2171
    .local v0, w:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteDatabase;

    .line 2172
    .local v8, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .end local v0       #w:Ljava/lang/ref/WeakReference;,, "Ljava/lang/ref/WeakReference<Landroid/database/sqlite/SQLiteDatabase;>;"
    if-eqz v0, :cond_11

    .line 2176
    invoke-direct {v8}, Landroid/database/sqlite/SQLiteDatabase;->native_getDbLookaside()I

    move-result v6

    .line 2179
    .local v6, lookasideUsed:I
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2180
    .local v1, path:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2181
    .local v0, indx:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8b

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2184
    .local v12, lastnode:Ljava/lang/String;
    invoke-static {v8}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v7

    .line 2185
    .local v7, attachedDbs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v7, :cond_11

    .line 2188
    const/4 v0, 0x0

    .local v0, i:I
    move v10, v0

    .end local v0       #i:I,
    .end local v1       #path:Ljava/lang/String;,
    .local v10, i:I
    :goto_4b
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v10, v0, :cond_11

    .line 2189
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 2190
    .local v4, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".page_count;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->getPragmaVal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 2195
    .local v2, pageCount:J
    if-nez v10, :cond_8d

    .line 2196
    move-object v1, v12

    .line 2207
    .end local v4       #p:Landroid/util/Pair;,, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, dbName:Ljava/lang/String;
    :cond_75
    :goto_75
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_87

    .line 2208
    new-instance v0, Landroid/database/sqlite/SQLiteDebug$DbStats;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJI)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2188
    :cond_87
    add-int/lit8 v0, v10, 0x1

    .end local v10       #i:I,
    .restart local v0       #i:I,
    move v10, v0

    .end local v0       #i:I,
    .restart local v10       #i:I,
    goto :goto_4b

    .line 2181
    .end local v2       #pageCount:J,
    .end local v7       #attachedDbs:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10       #i:I,
    .end local v12       #lastnode:Ljava/lang/String;,
    .local v0, indx:I
    .local v1, path:Ljava/lang/String;
    :cond_8b
    const/4 v2, 0x0

    goto :goto_3f

    .line 2199
    .end local v0       #indx:I,
    .end local v1       #path:Ljava/lang/String;,
    .restart local v2       #pageCount:J,
    .restart local v4       #p:Landroid/util/Pair;,, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #attachedDbs:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10       #i:I,
    .restart local v12       #lastnode:Ljava/lang/String;,
    :cond_8d
    const/4 v6, 0x0

    .line 2200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  (attached) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2202
    .local v1, dbName:Ljava/lang/String;
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_75

    .line 2203
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2204
    .local v0, idx:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1       #dbName:Ljava/lang/String;,
    const-string v5, " : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v4, -0x1

    if-eq v0, v4, :cond_e3

    .end local v4       #p:Landroid/util/Pair;,, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_d6
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .end local v0       #idx:I,
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #dbName:Ljava/lang/String;,
    goto :goto_75

    .end local v1       #dbName:Ljava/lang/String;,
    .restart local v0       #idx:I,
    :cond_e3
    const/4 v4, 0x0

    goto :goto_d6

    .line 2213
    .end local v0       #idx:I,
    .end local v2       #pageCount:J,
    .end local v6       #lookasideUsed:I,
    .end local v7       #attachedDbs:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8       #db:Landroid/database/sqlite/SQLiteDatabase;,
    .end local v10       #i:I,
    .end local v12       #lastnode:Ljava/lang/String;,
    :cond_e5
    return-object v9
.end method

.method private getPathForLogs()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1963
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 1964
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 1974
    :goto_6
    return-object v0

    .line 1966
    :cond_7
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1967
    const/4 v0, 0x0

    goto :goto_6

    .line 1969
    :cond_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 1970
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 1974
    :goto_1c
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_6

    .line 1972
    :cond_1f
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_1c
.end method

.method private static getPragmaVal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 8
    .parameter "db"
    .parameter "pragma"

    .prologue
    .line 2223
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2224
    const-wide/16 v4, 0x0

    .line 2230
    :goto_8
    return-wide v4

    .line 2226
    :cond_9
    const/4 v0, 0x0

    .line 2228
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_a
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PRAGMA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_2d

    .line 2229
    .end local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .local v1, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_22
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_34

    move-result-wide v2

    .line 2232
    .local v2, val:J
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_2b
    move-wide v4, v2

    .line 2230
    goto :goto_8

    .line 2232
    .end local v1       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .end local v2       #val:J,
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    :catchall_2d
    move-exception v4

    :goto_2e
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_33
    throw v4

    .end local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v1       #prog:Landroid/database/sqlite/SQLiteStatement;,
    :catchall_34
    move-exception v4

    move-object v0, v1

    .end local v1       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    goto :goto_2e
.end method

.method private getTime()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1867
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private lockForced()V
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 398
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_1e

    .line 399
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 402
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 405
    :cond_1e
    return-void
.end method

.method private markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "table"
    .parameter "foreignKey"
    .parameter "updateTable"
    .parameter "deletedTable"

    .prologue
    const-string v1, " LIMIT 0"

    .line 1073
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1075
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT _sync_dirty FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_59

    .line 1080
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1083
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;

    invoke-direct {v0, p3, p4, p2}, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    .local v0, info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1086
    :try_start_52
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_5e

    .line 1088
    return-void

    .line 1080
    .end local v0       #info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;,
    :catchall_59
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v1

    .line 1087
    .restart local v0       #info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;,
    :catchall_5e
    move-exception v2

    :try_start_5f
    monitor-exit v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v2
.end method

.method private native native_getDbLookaside()I
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .registers 9
    .parameter "path"
    .parameter "factory"
    .parameter "flags"

    .prologue
    .line 817
    const/4 v1, 0x0

    .line 820
    .local v1, sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v2, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_6} :catch_26

    .line 821
    .end local v1       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;,
    .local v2, sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    if-eqz v3, :cond_d

    .line 822
    invoke-direct {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlTracing(Ljava/lang/String;)V

    .line 824
    :cond_d
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    if-eqz v3, :cond_14

    .line 825
    invoke-direct {v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->enableSqlProfiling(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_14} :catch_5c

    :cond_14
    move-object v1, v2

    .line 838
    .end local v2       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;,
    .restart local v1       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;,
    :goto_15
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->getInstance()Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;

    move-result-object v3

    invoke-static {v3}, Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;->access$000(Landroid/database/sqlite/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 840
    return-object v1

    .line 827
    :catch_26
    move-exception v3

    move-object v0, v3

    .line 830
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :goto_28
    const-string v3, "Database"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting and re-creating corrupt database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    const v3, 0x124fc

    invoke-static {v3, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 832
    const-string v3, ":memory"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 834
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 836
    :cond_56
    new-instance v1, Landroid/database/sqlite/SQLiteDatabase;

    .end local v1       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;,
    invoke-direct {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .restart local v1       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;,
    goto :goto_15

    .line 827
    .end local v0       #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;,
    .end local v1       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;,
    .restart local v2       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;,
    :catch_5c
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;,
    .restart local v1       #sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;,
    goto :goto_28
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter "file"
    .parameter "factory"

    .prologue
    .line 847
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .parameter "path"
    .parameter "factory"

    .prologue
    .line 854
    const/high16 v0, 0x1000

    invoke-static {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static native releaseMemory()I
.end method

.method private unlockForced()V
    .registers 3

    .prologue
    .line 428
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_10

    .line 429
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 430
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 433
    :cond_10
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 434
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .registers 14
    .parameter "checkFullyYielded"
    .parameter "sleepAfterYieldDelay"

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x3e8

    .line 700
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_1a

    .line 703
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 704
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 705
    const/4 v4, 0x0

    .line 735
    :goto_19
    return v4

    .line 707
    :cond_1a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 708
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 709
    .local v3, transactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 710
    if-eqz p1, :cond_32

    .line 711
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 712
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Db locked more than once. yielfIfContended cannot yield"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 716
    :cond_32
    cmp-long v4, p2, v8

    if-lez v4, :cond_4c

    .line 720
    move-wide v1, p2

    .line 721
    .local v1, remainingDelay:J
    :cond_37
    cmp-long v4, v1, v8

    if-lez v4, :cond_4c

    .line 723
    cmp-long v4, v1, v6

    if-gez v4, :cond_51

    move-wide v4, v1

    :goto_40
    :try_start_40
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_43} :catch_53

    .line 728
    :goto_43
    sub-long/2addr v1, v6

    .line 729
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v4

    if-nez v4, :cond_37

    .line 734
    .end local v1       #remainingDelay:J,
    :cond_4c
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 735
    const/4 v4, 0x1

    goto :goto_19

    .restart local v1       #remainingDelay:J,
    :cond_51
    move-wide v4, v6

    .line 723
    goto :goto_40

    .line 725
    :catch_53
    move-exception v0

    .line 726
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_43
.end method


# virtual methods
.method addSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .registers 4
    .parameter "closable"

    .prologue
    .line 300
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 302
    :try_start_3
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 304
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 306
    return-void

    .line 304
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method addToCompiledQueries(Ljava/lang/String;Landroid/database/sqlite/SQLiteCompiledSql;)V
    .registers 9
    .parameter "sql"
    .parameter "compiledStatement"

    .prologue
    const-string/jumbo v5, "|"

    const-string v4, "Database"

    .line 2008
    iget v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v2, :cond_36

    .line 2010
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v2, :cond_35

    .line 2011
    const-string v2, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "|NOT adding_sql_to_cache|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2048
    :cond_35
    :goto_35
    return-void

    .line 2016
    :cond_36
    const/4 v1, 0x0

    .line 2017
    .local v1, compiledSql:Landroid/database/sqlite/SQLiteCompiledSql;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v3

    .line 2019
    :try_start_3a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;

    move-object v1, v0

    .line 2020
    if-eqz v1, :cond_4b

    .line 2021
    monitor-exit v3

    goto :goto_35

    .line 2047
    :catchall_48
    move-exception v2

    monitor-exit v3
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_48

    throw v2

    .line 2024
    :cond_4b
    :try_start_4b
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ne v2, v4, :cond_92

    .line 2032
    iget v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarnings:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCacheFullWarnings:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_90

    .line 2033
    const-string v2, "Database"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reached MAX size for compiled-sql statement cache for database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; i.e., NO space for this sql statement in cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Please change your sql statements to use \'?\' for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bindargs, instead of using actual values"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    :cond_90
    :goto_90
    monitor-exit v3

    goto :goto_35

    .line 2041
    :cond_92
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v2, :cond_90

    .line 2043
    const-string v2, "Database"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "|adding_sql_to_cache|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_4b .. :try_end_d4} :catchall_48

    goto :goto_90
.end method

.method public beginTransaction()V
    .registers 2

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 482
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .registers 7
    .parameter "transactionListener"

    .prologue
    const/4 v4, 0x1

    .line 506
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->lockForced()V

    .line 507
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_12

    .line 508
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "database not open"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 510
    :cond_12
    const/4 v2, 0x0

    .line 513
    .local v2, ok:Z
    :try_start_13
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v3

    if-le v3, v4, :cond_3c

    .line 514
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v3, :cond_35

    .line 515
    const-string v1, "Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction"

    .line 517
    .local v1, msg:Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 518
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "Database"

    const-string v4, "beginTransaction() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    throw v0
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_2e

    .line 541
    .end local v0       #e:Ljava/lang/IllegalStateException;,
    .end local v1       #msg:Ljava/lang/String;,
    :catchall_2e
    move-exception v3

    if-nez v2, :cond_34

    .line 544
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    :cond_34
    throw v3

    .line 521
    :cond_35
    const/4 v2, 0x1

    .line 541
    if-nez v2, :cond_3b

    .line 544
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 547
    :cond_3b
    :goto_3b
    return-void

    .line 527
    :cond_3c
    :try_start_3c
    const-string v3, "BEGIN EXCLUSIVE;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 528
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 529
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    .line 530
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_2e

    .line 531
    if-eqz p1, :cond_4e

    .line 533
    :try_start_4b
    invoke-interface {p1}, Landroid/database/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_2e
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4e} :catch_55

    .line 539
    :cond_4e
    const/4 v2, 0x1

    .line 541
    if-nez v2, :cond_3b

    .line 544
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    goto :goto_3b

    .line 534
    :catch_55
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_56
    const-string v3, "ROLLBACK;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 536
    throw v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_2e
.end method

.method public close()V
    .registers 2

    .prologue
    .line 877
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 888
    :goto_6
    return-void

    .line 880
    :cond_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 882
    :try_start_a
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 884
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onAllReferencesReleased()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_14

    .line 886
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_6

    :catchall_14
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .registers 4
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1144
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1145
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1149
    :cond_11
    :try_start_11
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v0, p0, p1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1a

    .line 1151
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-object v0

    :catchall_1a
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 1616
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1617
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1618
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_18

    .line 1619
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1621
    :cond_18
    const/4 v3, 0x0

    .line 1623
    .local v3, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1626
    if-eqz p3, :cond_60

    .line 1627
    array-length v2, p3

    .line 1628
    .local v2, numArgs:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_51
    if-ge v1, v2, :cond_60

    .line 1629
    add-int/lit8 v4, v1, 0x1

    aget-object v5, p3, v1

    invoke-static {v3, v4, v5}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1628
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 1623
    .end local v1       #i:I,
    .end local v2       #numArgs:I,
    :cond_5d
    const-string v5, ""

    goto :goto_41

    .line 1632
    :cond_60
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1633
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lastChangeCount()I
    :try_end_66
    .catchall {:try_start_19 .. :try_end_66} :catchall_76
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_19 .. :try_end_66} :catch_70

    move-result v4

    .line 1638
    if-eqz v3, :cond_6c

    .line 1639
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1641
    :cond_6c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1633
    return v4

    .line 1634
    :catch_70
    move-exception v4

    move-object v0, v4

    .line 1635
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_72
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1636
    throw v0
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_76

    .line 1638
    .end local v0       #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;,
    :catchall_76
    move-exception v4

    if-eqz v3, :cond_7c

    .line 1639
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1641
    :cond_7c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1638
    throw v4
.end method

.method public endTransaction()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 554
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_f

    .line 555
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "database not open"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    :cond_f
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_20

    .line 558
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no transaction pending"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 561
    :cond_20
    :try_start_20
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v2, :cond_36

    .line 562
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 566
    :goto_27
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_3a

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_41

    .line 598
    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 599
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    .line 605
    :goto_35
    return-void

    .line 564
    :cond_36
    const/4 v2, 0x0

    :try_start_37
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_3a

    goto :goto_27

    .line 598
    :catchall_3a
    move-exception v2

    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 599
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    throw v2

    .line 569
    :cond_41
    const/4 v1, 0x0

    .line 570
    .local v1, savedException:Ljava/lang/RuntimeException;
    :try_start_42
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_3a

    if-eqz v2, :cond_4f

    .line 572
    :try_start_46
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_5e

    .line 573
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v2}, Landroid/database/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_3a
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4f} :catch_64

    .line 582
    :cond_4f
    :goto_4f
    :try_start_4f
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_6b

    .line 583
    const-string v2, "COMMIT;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_3a

    .line 598
    :cond_58
    :goto_58
    iput-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 599
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlockForced()V

    goto :goto_35

    .line 575
    :cond_5e
    :try_start_5e
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    invoke-interface {v2}, Landroid/database/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_3a
    .catch Ljava/lang/RuntimeException; {:try_start_5e .. :try_end_63} :catch_64

    goto :goto_4f

    .line 577
    :catch_64
    move-exception v2

    move-object v0, v2

    .line 578
    .local v0, e:Ljava/lang/RuntimeException;
    move-object v1, v0

    .line 579
    const/4 v2, 0x0

    :try_start_68
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_6a
    .catchall {:try_start_68 .. :try_end_6a} :catchall_3a

    goto :goto_4f

    .line 586
    .end local v0       #e:Ljava/lang/RuntimeException;,
    :cond_6b
    :try_start_6b
    const-string v2, "ROLLBACK;"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 587
    if-eqz v1, :cond_58

    .line 588
    throw v1
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_3a
    .catch Landroid/database/SQLException; {:try_start_6b .. :try_end_73} :catch_73

    .line 590
    :catch_73
    move-exception v2

    move-object v0, v2

    .line 592
    .local v0, e:Landroid/database/SQLException;
    :try_start_75
    const-string v2, "Database"

    const-string v3, "exception during rollback, maybe the DB previously performed an auto-rollback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_3a

    goto :goto_58
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 8
    .parameter "sql"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const-string v5, "COMMIT;"

    .line 1755
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v3

    invoke-interface {v3}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1756
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1757
    .local v1, timeStart:J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1758
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1759
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "database not open"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1761
    :cond_1e
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v4, "GETLOCK:"

    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1763
    :try_start_25
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_3c
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_25 .. :try_end_28} :catch_37

    .line 1768
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1774
    const-string v3, "COMMIT;"

    if-ne p1, v5, :cond_41

    .line 1775
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string v4, "COMMIT;"

    invoke-virtual {p0, v3, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1779
    :goto_36
    return-void

    .line 1764
    :catch_37
    move-exception v0

    .line 1765
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_38
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1766
    throw v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 1768
    .end local v0       #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;,
    :catchall_3c
    move-exception v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3

    .line 1777
    :cond_41
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_36
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 11
    .parameter "sql"
    .parameter "bindArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1791
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    invoke-interface {v6}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1792
    if-nez p2, :cond_11

    .line 1793
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Empty bindArgs"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1795
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1796
    .local v4, timeStart:J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1797
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_26

    .line 1798
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "database not open"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1800
    :cond_26
    const/4 v3, 0x0

    .line 1802
    .local v3, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_27
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1803
    if-eqz p2, :cond_3b

    .line 1804
    array-length v2, p2

    .line 1805
    .local v2, numArgs:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2f
    if-ge v1, v2, :cond_3b

    .line 1806
    add-int/lit8 v6, v1, 0x1

    aget-object v7, p2, v1

    invoke-static {v3, v6, v7}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1805
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 1809
    .end local v1       #i:I,
    .end local v2       #numArgs:I,
    :cond_3b
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_50
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_27 .. :try_end_3e} :catch_4a

    .line 1814
    if-eqz v3, :cond_43

    .line 1815
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1817
    :cond_43
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1819
    invoke-virtual {p0, p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 1820
    return-void

    .line 1810
    :catch_4a
    move-exception v6

    move-object v0, v6

    .line 1811
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_4c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1812
    throw v0
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .line 1814
    .end local v0       #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;,
    :catchall_50
    move-exception v6

    if-eqz v3, :cond_56

    .line 1815
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1817
    :cond_56
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1814
    throw v6
.end method

.method protected finalize()V
    .registers 4

    .prologue
    .line 1824
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1825
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() was never explicitly called on database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1827
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->closeClosable()V

    .line 1828
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onAllReferencesReleased()V

    .line 1830
    :cond_2e
    return-void
.end method

.method getCompiledStatementForSql(Ljava/lang/String;)Landroid/database/sqlite/SQLiteCompiledSql;
    .registers 9
    .parameter "sql"

    .prologue
    const-string v6, "Database"

    const-string/jumbo v5, "|"

    .line 2066
    const/4 v2, 0x0

    .line 2068
    .local v2, compiledStatement:Landroid/database/sqlite/SQLiteCompiledSql;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v4

    .line 2069
    :try_start_9
    iget v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v3, :cond_31

    .line 2071
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v3, :cond_2e

    .line 2072
    const-string v3, "Database"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "|cache NOT found|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :cond_2e
    const/4 v3, 0x0

    monitor-exit v4

    .line 2090
    :goto_30
    return-object v3

    .line 2076
    :cond_31
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteCompiledSql;

    move-object v2, v0

    if-eqz v2, :cond_c7

    const/4 v3, 0x1

    move v1, v3

    .line 2077
    .local v1, cacheHit:Z
    :goto_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_cb

    .line 2078
    if-eqz v1, :cond_ce

    .line 2079
    iget v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheHits:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheHits:I

    .line 2084
    :goto_48
    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v3, :cond_c4

    .line 2085
    const-string v3, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "|cache_stats|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheHits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheMisses:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c4
    move-object v3, v2

    .line 2090
    goto/16 :goto_30

    .line 2076
    .end local v1       #cacheHit:Z,
    :cond_c7
    const/4 v3, 0x0

    move v1, v3

    goto/16 :goto_3f

    .line 2077
    :catchall_cb
    move-exception v3

    :try_start_cc
    monitor-exit v4
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v3

    .line 2081
    .restart local v1       #cacheHit:Z,
    :cond_ce
    iget v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheMisses:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mNumCacheMisses:I

    goto/16 :goto_48
.end method

.method public declared-synchronized getMaxSqlCacheSize()I
    .registers 2

    .prologue
    .line 2128
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumSize()J
    .registers 7

    .prologue
    .line 951
    const/4 v2, 0x0

    .line 952
    .local v2, prog:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 953
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_12

    .line 954
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 957
    :cond_12
    :try_start_12
    new-instance v3, Landroid/database/sqlite/SQLiteStatement;

    const-string v4, "PRAGMA max_page_count;"

    invoke-direct {v3, p0, v4}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_2b

    .line 959
    .end local v2       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .local v3, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    .line 960
    .local v0, pageCount:J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_35

    move-result-wide v4

    mul-long/2addr v4, v0

    .line 962
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 963
    :cond_27
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-wide v4

    .line 962
    .end local v0       #pageCount:J,
    .end local v3       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v2       #prog:Landroid/database/sqlite/SQLiteStatement;,
    :catchall_2b
    move-exception v4

    :goto_2c
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 963
    :cond_31
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v4

    .line 962
    .end local v2       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v3       #prog:Landroid/database/sqlite/SQLiteStatement;,
    :catchall_35
    move-exception v4

    move-object v2, v3

    .end local v3       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v2       #prog:Landroid/database/sqlite/SQLiteStatement;,
    goto :goto_2c
.end method

.method public getPageSize()J
    .registers 7

    .prologue
    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1005
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_12

    .line 1006
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1009
    :cond_12
    :try_start_12
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    const-string v4, "PRAGMA page_size;"

    invoke-direct {v1, p0, v4}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_26

    .line 1011
    .end local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .local v1, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_30

    move-result-wide v2

    .line 1014
    .local v2, size:J
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1015
    :cond_22
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-wide v2

    .line 1014
    .end local v1       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .end local v2       #size:J,
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    :catchall_26
    move-exception v4

    :goto_27
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1015
    :cond_2c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v4

    .line 1014
    .end local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v1       #prog:Landroid/database/sqlite/SQLiteStatement;,
    :catchall_30
    move-exception v4

    move-object v0, v1

    .end local v1       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    goto :goto_27
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1895
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v4

    .line 745
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 746
    .local v3, tables:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 747
    .local v2, table:Ljava/lang/String;
    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;

    .line 748
    .local v1, info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    iget-object v5, v1, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 749
    iget-object v5, v1, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 753
    .end local v0       #i$:Ljava/util/Iterator;,
    .end local v1       #info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;,
    .end local v2       #table:Ljava/lang/String;,
    .end local v3       #tables:Ljava/util/HashMap;,, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_30
    move-exception v5

    monitor-exit v4
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v5

    .line 752
    .restart local v0       #i$:Ljava/util/Iterator;,
    .restart local v3       #tables:Ljava/util/HashMap;,, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_33
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    return-object v3
.end method

.method public getVersion()I
    .registers 7

    .prologue
    .line 921
    const/4 v0, 0x0

    .line 922
    .local v0, prog:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 923
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_12

    .line 924
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "database not open"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 927
    :cond_12
    :try_start_12
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    const-string v4, "PRAGMA user_version;"

    invoke-direct {v1, p0, v4}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_27

    .line 928
    .end local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .local v1, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_19
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_31

    move-result-wide v2

    .line 929
    .local v2, version:J
    long-to-int v4, v2

    .line 931
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 932
    :cond_23
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return v4

    .line 931
    .end local v1       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .end local v2       #version:J,
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    :catchall_27
    move-exception v4

    :goto_28
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 932
    :cond_2d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v4

    .line 931
    .end local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v1       #prog:Landroid/database/sqlite/SQLiteStatement;,
    :catchall_31
    move-exception v4

    move-object v0, v1

    .end local v1       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v0       #prog:Landroid/database/sqlite/SQLiteStatement;,
    goto :goto_28
.end method

.method public inTransaction()Z
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 8
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 1426
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-wide v1

    .line 1429
    :goto_5
    return-wide v1

    .line 1427
    :catch_6
    move-exception v0

    .line 1428
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1429
    const-wide/16 v1, -0x1

    goto :goto_5
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1452
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .registers 22
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .parameter "conflictAlgorithm"

    .prologue
    .line 1524
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v14

    invoke-interface {v14}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1525
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v14

    if-nez v14, :cond_15

    .line 1526
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "database not open"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1530
    :cond_15
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v14, 0x98

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1531
    .local v11, sql:Ljava/lang/StringBuilder;
    const-string v14, "INSERT"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1532
    sget-object v14, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v14, v14, p4

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    const-string v14, " INTO "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v14, 0x28

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1538
    .local v13, values:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 1539
    .local v5, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz p3, :cond_bc

    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->size()I

    move-result v14

    if-lez v14, :cond_bc

    .line 1540
    invoke-virtual/range {p3 .. p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    .line 1541
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1542
    .local v3, entriesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v14, 0x28

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1544
    const/4 v9, 0x0

    .line 1545
    .end local p1       
    .local v9, needSeparator:Z
    :goto_51
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7c

    .line 1546
    if-eqz v9, :cond_63

    .line 1547
    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    :cond_63
    const/4 v9, 0x1

    .line 1551
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1552
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    const/16 v14, 0x3f

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 1556
    .end local v4       #entry:Ljava/util/Map$Entry;,, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7c
    const/16 v14, 0x29

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1562
    .end local v3       #entriesIter:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v9       #needSeparator:Z,
    :goto_81
    const-string v14, " VALUES("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1564
    const-string v14, ");"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1567
    const/4 v12, 0x0

    .line 1569
    .local v12, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_92
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 1572
    if-eqz v5, :cond_e1

    .line 1573
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v10

    .line 1574
    .local v10, size:I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1575
    .restart local v3       #entriesIter:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_a8
    if-ge v6, v10, :cond_e1

    .line 1576
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1577
    .restart local v4       #entry:Ljava/util/Map$Entry;,, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v14, v6, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v12, v14, v15}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_b9
    .catchall {:try_start_92 .. :try_end_b9} :catchall_15b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_92 .. :try_end_b9} :catch_155

    .line 1575
    add-int/lit8 v6, v6, 0x1

    goto :goto_a8

    .line 1558
    .end local v3       #entriesIter:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v4       #entry:Ljava/util/Map$Entry;,, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6       #i:I,
    .end local v10       #size:I,
    .end local v12       #statement:Landroid/database/sqlite/SQLiteStatement;,
    .restart local p1       
    :cond_bc
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    const-string v14, "NULL"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 1582
    .end local p1       
    .restart local v12       #statement:Landroid/database/sqlite/SQLiteStatement;,
    :cond_e1
    :try_start_e1
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1584
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->lastInsertRow()J

    move-result-wide v7

    .line 1585
    .local v7, insertedRowId:J
    const-wide/16 v14, -0x1

    cmp-long v14, v7, v14

    if-nez v14, :cond_11c

    .line 1586
    const-string v14, "Database"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error inserting "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " using "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catchall {:try_start_e1 .. :try_end_113} :catchall_15b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_e1 .. :try_end_113} :catch_155

    .line 1598
    :cond_113
    :goto_113
    if-eqz v12, :cond_118

    .line 1599
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1601
    :cond_118
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1593
    return-wide v7

    .line 1588
    :cond_11c
    :try_start_11c
    const-string v14, "Database"

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_113

    .line 1589
    const-string v14, "Database"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Inserting row "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " using "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catchall {:try_start_11c .. :try_end_154} :catchall_15b
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_11c .. :try_end_154} :catch_155

    goto :goto_113

    .line 1594
    .end local v7       #insertedRowId:J,
    :catch_155
    move-exception v14

    move-object v2, v14

    .line 1595
    .local v2, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_157
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1596
    throw v2
    :try_end_15b
    .catchall {:try_start_157 .. :try_end_15b} :catchall_15b

    .line 1598
    .end local v2       #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;,
    :catchall_15b
    move-exception v14

    if-eqz v12, :cond_161

    .line 1599
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1601
    :cond_161
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1598
    throw v14
.end method

.method public isDbLockedByCurrentThread()Z
    .registers 2

    .prologue
    .line 643
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .registers 2

    .prologue
    .line 655
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isInCompiledSqlCache(Ljava/lang/String;)Z
    .registers 4
    .parameter "sql"

    .prologue
    .line 2098
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v0

    .line 2099
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2100
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 1882
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mNativeHandle:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isReadOnly()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1875
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method native lastChangeCount()I
.end method

.method native lastInsertRow()J
.end method

.method lock()V
    .registers 3

    .prologue
    .line 377
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_5

    .line 386
    :cond_4
    :goto_4
    return-void

    .line 378
    :cond_5
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 379
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_4

    .line 380
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 383
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    goto :goto_4
.end method

.method logTimeStat(Ljava/lang/String;J)V
    .registers 5
    .parameter "sql"
    .parameter "beginMillis"

    .prologue
    .line 1899
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1900
    return-void
.end method

.method logTimeStat(Ljava/lang/String;JLjava/lang/String;)V
    .registers 15
    .parameter "sql"
    .parameter "beginMillis"
    .parameter "prefix"

    .prologue
    const/16 v9, 0x40

    const/4 v8, 0x0

    .line 1906
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 1913
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v1, v4, p2

    .line 1914
    .local v1, durationMillis:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_16

    const-string v4, "GETLOCK:"

    if-ne p4, v4, :cond_16

    .line 1955
    :goto_15
    return-void

    .line 1919
    :cond_16
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    if-nez v4, :cond_24

    .line 1920
    const-string v4, "db.db_operation.threshold_ms"

    const/16 v5, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 1922
    :cond_24
    sget v4, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v4, v4

    cmp-long v4, v1, v4

    if-ltz v4, :cond_76

    .line 1923
    const/16 v3, 0x64

    .line 1931
    .local v3, samplePercent:I
    :cond_2d
    if-eqz p4, :cond_40

    .line 1932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1935
    :cond_40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v9, :cond_4a

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1945
    :cond_4a
    invoke-static {}, Landroid/app/AppGlobals;->getInitialPackage()Ljava/lang/String;

    move-result-object v0

    .line 1946
    .local v0, blockingPackage:Ljava/lang/String;
    if-nez v0, :cond_52

    const-string v0, ""

    .line 1948
    :cond_52
    const v4, 0xcb20

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPathForLogs()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_15

    .line 1925
    .end local v0       #blockingPackage:Ljava/lang/String;,
    .end local v3       #samplePercent:I,
    :cond_76
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v1

    sget v6, Landroid/database/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    long-to-int v4, v4

    add-int/lit8 v3, v4, 0x1

    .line 1926
    .restart local v3       #samplePercent:I,
    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    if-lt v4, v3, :cond_2d

    goto :goto_15
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "table"
    .parameter "deletedTable"

    .prologue
    .line 1039
    const-string v0, "_id"

    invoke-direct {p0, p1, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "table"
    .parameter "foreignKey"
    .parameter "updateTable"

    .prologue
    .line 1055
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method native native_execSQL(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation.end method

.method native native_setLocale(Ljava/lang/String;I)V
.end method

.method public needUpgrade(I)Z
    .registers 3
    .parameter "newVersion"

    .prologue
    .line 1886
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onAllReferencesReleased()V
    .registers 2

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 320
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_10

    .line 321
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 323
    :cond_10
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->dbclose()V

    .line 325
    :cond_13
    return-void
.end method

.method onCorruption()V
    .registers 5

    .prologue
    const-string v3, ":memory"

    .line 353
    const-string v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing corrupt database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const v0, 0x124fc

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 357
    :try_start_24
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_3c

    .line 361
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v1, ":memory"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 363
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 366
    :cond_3b
    return-void

    .line 361
    :catchall_3c
    move-exception v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string v2, ":memory"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 363
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_51
    throw v0
.end method

.method public purgeFromCompiledSqlCache(Ljava/lang/String;)V
    .registers 4
    .parameter "sql"

    .prologue
    .line 2108
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v0

    .line 2109
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2110
    monitor-exit v0

    .line 2111
    return-void

    .line 2110
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 1271
    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1309
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1189
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 20
    .parameter "cursorFactory"
    .parameter "distinct"
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 1229
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1232
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1235
    .local v8, sql:Ljava/lang/String;
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v8, p6, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    const/4 v0, 0x0

    .line 1324
    invoke-virtual {p0, v0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;II)Landroid/database/Cursor;
    .registers 7
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "initialRead"
    .parameter "maxRead"

    .prologue
    const/4 v1, 0x0

    .line 1402
    invoke-virtual {p0, v1, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    .line 1404
    .local v0, c:Landroid/database/sqlite/SQLiteCursor;
    invoke-virtual {v0, p3, p4}, Landroid/database/sqlite/SQLiteCursor;->setLoadStyle(II)V

    .line 1405
    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "cursorFactory"
    .parameter "sql"
    .parameter "selectionArgs"
    .parameter "editTable"

    .prologue
    .line 1342
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-nez v7, :cond_e

    .line 1343
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "database not open"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1345
    :cond_e
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v7

    invoke-interface {v7}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 1346
    const-wide/16 v5, 0x0

    .line 1348
    .local v5, timeStart:J
    iget v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_20

    .line 1349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1352
    :cond_20
    new-instance v2, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v2, p0, p2, p4}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    .local v2, driver:Landroid/database/sqlite/SQLiteCursorDriver;
    const/4 v1, 0x0

    .line 1356
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_8a

    move-object v7, p1

    :goto_29
    :try_start_29
    invoke-interface {v2, v7, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_a5

    move-result-object v1

    .line 1360
    iget v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_89

    .line 1363
    const/4 v0, -0x1

    .line 1364
    .local v0, count:I
    if-eqz v1, :cond_39

    .line 1365
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1368
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v3, v7, v5

    .line 1370
    .local v3, duration:J
    iget v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v7, v7

    cmp-long v7, v3, v7

    if-ltz v7, :cond_89

    .line 1371
    const-string v7, "Cursor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "query ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", args are "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p3, :cond_ee

    const-string v9, ","

    invoke-static {v9, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", count is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    .end local v0       #count:I,
    .end local v3       #duration:J,
    :cond_89
    return-object v1

    .line 1356
    :cond_8a
    :try_start_8a
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_a5

    goto :goto_29

    .line 1371
    .restart local v0       #count:I,
    .restart local v3       #duration:J,
    :cond_8d
    const-string v10, "<null>"

    :goto_8f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", count is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    .end local v0       #count:I,
    .end local v3       #duration:J,
    :cond_a4
    throw v7

    :catchall_a5
    move-exception v7

    iget v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_a4

    .line 1363
    const/4 v0, -0x1

    .line 1364
    .restart local v0       #count:I,
    if-eqz v1, :cond_b2

    .line 1365
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1368
    :cond_b2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v3, v8, v5

    .line 1370
    .restart local v3       #duration:J,
    iget v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v8, v8

    cmp-long v8, v3, v8

    if-ltz v8, :cond_a4

    .line 1371
    const-string v8, "Cursor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "query ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", args are "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p3, :cond_8d

    const-string v10, ","

    invoke-static {v10, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_8f

    :cond_ee
    const-string v9, "<null>"

    goto :goto_74
.end method

.method removeSQLiteClosable(Landroid/database/sqlite/SQLiteClosable;)V
    .registers 3
    .parameter "closable"

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 311
    :try_start_3
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_c

    .line 313
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 315
    return-void

    .line 313
    :catchall_c
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 8
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"

    .prologue
    .line 1472
    const/4 v1, 0x5

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-wide v1

    .line 1476
    :goto_5
    return-wide v1

    .line 1474
    :catch_6
    move-exception v0

    .line 1475
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1476
    const-wide/16 v1, -0x1

    goto :goto_5
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 6
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "initialValues"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1498
    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetCompiledSqlCache()V
    .registers 3

    .prologue
    .line 2118
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v0

    .line 2119
    :try_start_3
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2120
    monitor-exit v0

    .line 2121
    return-void

    .line 2120
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method rowUpdated(Ljava/lang/String;J)V
    .registers 7
    .parameter "table"
    .parameter "rowId"

    .prologue
    .line 1098
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1099
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;

    .line 1100
    .local v0, info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_4d

    .line 1101
    if-eqz v0, :cond_4c

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->masterTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SET _sync_dirty=1 WHERE _id=(SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;->foreignKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1106
    :cond_4c
    return-void

    .line 1100
    .end local v0       #info:Landroid/database/sqlite/SQLiteDatabase$SyncUpdateInfo;,
    :catchall_4d
    move-exception v2

    :try_start_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v2
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 4
    .parameter "locale"

    .prologue
    .line 1985
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1987
    :try_start_3
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mFlags:I

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->native_setLocale(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 1989
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1991
    return-void

    .line 1989
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public setLockingEnabled(Z)V
    .registers 2
    .parameter "lockingEnabled"

    .prologue
    .line 343
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 344
    return-void
.end method

.method public declared-synchronized setMaxSqlCacheSize(I)V
    .registers 4
    .parameter "cacheSize"

    .prologue
    .line 2147
    monitor-enter p0

    const/16 v0, 0xfa

    if-gt p1, v0, :cond_7

    if-gez p1, :cond_12

    .line 2148
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "expected value between 0 and 250"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_f

    .line 2147
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2149
    :cond_12
    :try_start_12
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ge p1, v0, :cond_1e

    .line 2150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2153
    :cond_1e
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_f

    .line 2154
    monitor-exit p0

    return-void
.end method

.method public setMaximumSize(J)J
    .registers 15
    .parameter "numBytes"

    .prologue
    .line 975
    const/4 v6, 0x0

    .line 976
    .local v6, prog:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 977
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-nez v8, :cond_12

    .line 978
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "database not open"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 981
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 982
    .local v4, pageSize:J
    div-long v2, p1, v4

    .line 984
    .local v2, numPages:J
    rem-long v8, p1, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_23

    .line 985
    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    .line 987
    :cond_23
    new-instance v7, Landroid/database/sqlite/SQLiteStatement;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PRAGMA max_page_count = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_4a

    .line 989
    .end local v6       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .local v7, prog:Landroid/database/sqlite/SQLiteStatement;
    :try_start_3b
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_54

    move-result-wide v0

    .line 990
    .local v0, newPageCount:J
    mul-long v8, v0, v4

    .line 992
    if-eqz v7, :cond_46

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 993
    :cond_46
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-wide v8

    .line 992
    .end local v0       #newPageCount:J,
    .end local v2       #numPages:J,
    .end local v4       #pageSize:J,
    .end local v7       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v6       #prog:Landroid/database/sqlite/SQLiteStatement;,
    :catchall_4a
    move-exception v8

    :goto_4b
    if-eqz v6, :cond_50

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 993
    :cond_50
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v8

    .line 992
    .end local v6       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v2       #numPages:J,
    .restart local v4       #pageSize:J,
    .restart local v7       #prog:Landroid/database/sqlite/SQLiteStatement;,
    :catchall_54
    move-exception v8

    move-object v6, v7

    .end local v7       #prog:Landroid/database/sqlite/SQLiteStatement;,
    .restart local v6       #prog:Landroid/database/sqlite/SQLiteStatement;,
    goto :goto_4b
.end method

.method public setPageSize(J)V
    .registers 5
    .parameter "numBytes"

    .prologue
    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method public setTransactionSuccessful()V
    .registers 3

    .prologue
    .line 617
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 618
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_e
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 621
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_1f
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2c

    .line 624
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setTransactionSuccessful may only be called once per call to beginTransaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 628
    return-void
.end method

.method public setVersion(I)V
    .registers 4
    .parameter "version"

    .prologue
    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 943
    return-void
.end method

.method unlock()V
    .registers 3

    .prologue
    .line 413
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_5

    .line 420
    :goto_4
    return-void

    .line 414
    :cond_5
    sget-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_15

    .line 415
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 416
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 419
    :cond_15
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 1656
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 21
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"
    .parameter "conflictAlgorithm"

    .prologue
    .line 1672
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v12

    invoke-interface {v12}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1673
    if-eqz p2, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v12

    if-nez v12, :cond_17

    .line 1674
    :cond_f
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Empty values"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1677
    :cond_17
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v12, 0x78

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1678
    .local v10, sql:Ljava/lang/StringBuilder;
    const-string v12, "UPDATE "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1679
    sget-object v12, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v12, v12, p5

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    const-string v12, " SET "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1683
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v6

    .line 1684
    .local v6, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1686
    .end local p1       
    .local v4, entriesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_3d
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_66

    .line 1687
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1688
    .local v5, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    const-string v12, "=?"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 1691
    const-string v12, ", "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    .line 1695
    .end local v5       #entry:Ljava/util/Map$Entry;,, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_66
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_77

    .line 1696
    const-string v12, " WHERE "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    move-object v0, v10

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    :cond_77
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 1701
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v12

    if-nez v12, :cond_88

    .line 1702
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "database not open"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1704
    :cond_88
    const/4 v11, 0x0

    .line 1706
    .local v11, statement:Landroid/database/sqlite/SQLiteStatement;
    :try_start_89
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 1709
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    .line 1710
    .local v9, size:I
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1711
    const/4 v2, 0x1

    .line 1712
    .local v2, bindArg:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_9b
    if-ge v7, v9, :cond_af

    .line 1713
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1714
    .restart local v5       #entry:Ljava/util/Map$Entry;,, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v2, v12}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1715
    add-int/lit8 v2, v2, 0x1

    .line 1712
    add-int/lit8 v7, v7, 0x1

    goto :goto_9b

    .line 1718
    .end local v5       #entry:Ljava/util/Map$Entry;,, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_af
    if-eqz p4, :cond_c2

    .line 1719
    move-object/from16 v0, p4

    array-length v0, v0

    move v9, v0

    .line 1720
    const/4 v7, 0x0

    :goto_b6
    if-ge v7, v9, :cond_c2

    .line 1721
    aget-object v12, p4, v7

    invoke-virtual {v11, v2, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1722
    add-int/lit8 v2, v2, 0x1

    .line 1720
    add-int/lit8 v7, v7, 0x1

    goto :goto_b6

    .line 1727
    :cond_c2
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1728
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->lastChangeCount()I

    move-result v8

    .line 1729
    .local v8, numChangedRows:I
    const-string v12, "Database"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_101

    .line 1730
    const-string v12, "Database"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updated "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " using "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " and "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catchall {:try_start_89 .. :try_end_101} :catchall_110
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_89 .. :try_end_101} :catch_10a
    .catch Landroid/database/SQLException; {:try_start_89 .. :try_end_101} :catch_11a

    .line 1740
    :cond_101
    if-eqz v11, :cond_106

    .line 1741
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1743
    :cond_106
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1732
    return v8

    .line 1733
    .end local v2       #bindArg:I,
    .end local v7       #i:I,
    .end local v8       #numChangedRows:I,
    .end local v9       #size:I,
    :catch_10a
    move-exception v12

    move-object v3, v12

    .line 1734
    .local v3, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_10c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1735
    throw v3
    :try_end_110
    .catchall {:try_start_10c .. :try_end_110} :catchall_110

    .line 1740
    .end local v3       #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;,
    :catchall_110
    move-exception v12

    if-eqz v11, :cond_116

    .line 1741
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1743
    :cond_116
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 1740
    throw v12

    .line 1736
    :catch_11a
    move-exception v12

    move-object v3, v12

    .line 1737
    .local v3, e:Landroid/database/SQLException;
    :try_start_11c
    const-string v12, "Database"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error updating "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " using "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    throw v3
    :try_end_142
    .catchall {:try_start_11c .. :try_end_142} :catchall_110
.end method

.method public yieldIfContended()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 668
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .registers 4

    .prologue
    .line 681
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .registers 4
    .parameter "sleepAfterYieldDelay"

    .prologue
    .line 696
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
