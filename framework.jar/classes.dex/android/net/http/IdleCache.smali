.class Landroid/net/http/IdleCache;
.super Ljava/lang/Object;
.source "IdleCache.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/IdleCache$1;,
        Landroid/net/http/IdleCache$IdleReaper;,
        Landroid/net/http/IdleCache$Entry;
    }
.end annotation


# static fields
.field private static final CHECK_INTERVAL:I = 0x7d0

.field private static final EMPTY_CHECK_MAX:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final IDLE_CACHE_MAX:I = 0x0

.field private static final TIMEOUT:I = 0x1770



# instance fields
.field private mCached:I

.field private mCount:I

.field private mEntries:[Landroid/net/http/IdleCache$Entry;

.field private mReused:I

.field private mShutdownOnPageFinish:Z

.field private mThread:Landroid/net/http/IdleCache$IdleReaper;

.field public pageFinished:Z



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    const-string v0, "http.idle_cache.size"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget v1, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    new-array v1, v1, [Landroid/net/http/IdleCache$Entry;

    iput-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    .line 53
    iput v2, p0, Landroid/net/http/IdleCache;->mCount:I

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    .line 58
    iput v2, p0, Landroid/net/http/IdleCache;->mCached:I

    .line 59
    iput v2, p0, Landroid/net/http/IdleCache;->mReused:I

    .line 62
    invoke-virtual {p0, v2}, Landroid/net/http/IdleCache;->setShutdownFeature(Z)V

    .line 63
    iput-boolean v2, p0, Landroid/net/http/IdleCache;->pageFinished:Z

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    sget v1, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v0, v1, :cond_29

    .line 65
    iget-object v1, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    new-instance v2, Landroid/net/http/IdleCache$Entry;

    invoke-direct {v2, p0}, Landroid/net/http/IdleCache$Entry;-><init>(Landroid/net/http/IdleCache;)V

    aput-object v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 67
    :cond_29
    return-void
.end method

.method static synthetic access$100(Landroid/net/http/IdleCache;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Landroid/net/http/IdleCache;->mShutdownOnPageFinish:Z

    return v0
.end method

.method static synthetic access$200(Landroid/net/http/IdleCache;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Landroid/net/http/IdleCache;->mCount:I

    return v0
.end method

.method static synthetic access$300(Landroid/net/http/IdleCache;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/net/http/IdleCache;->clearIdle()V

    return-void
.end method

.method static synthetic access$402(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)Landroid/net/http/IdleCache$IdleReaper;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    return-object p1
.end method

.method private declared-synchronized clearIdle()V
    .registers 7

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v4, :cond_34

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 146
    .local v2, time:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v4, :cond_34

    sget v4, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v1, v4, :cond_34

    .line 147
    iget-object v4, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v0, v4, v1

    .line 148
    .local v0, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v4, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v4, :cond_31

    iget-wide v4, v0, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_31

    .line 149
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 150
    iget-object v4, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v4}, Landroid/net/http/Connection;->closeConnection()V

    .line 151
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 152
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_36

    .line 146
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 156
    .end local v0       #entry:Landroid/net/http/IdleCache$Entry;,
    .end local v1       #i:I,
    .end local v2       #time:J,
    :cond_34
    monitor-exit p0

    return-void

    .line 144
    :catchall_36
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method declared-synchronized cacheConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z
    .registers 10
    .parameter "host"
    .parameter "connection"

    .prologue
    .line 76
    monitor-enter p0

    const/4 v2, 0x0

    .line 82
    .local v2, ret:Z
    :try_start_2
    iget v5, p0, Landroid/net/http/IdleCache;->mCount:I

    sget v6, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v5, v6, :cond_3a

    .line 83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 84
    .local v3, time:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    sget v5, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v1, v5, :cond_3a

    .line 85
    iget-object v5, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v0, v5, v1

    .line 86
    .local v0, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v5, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-nez v5, :cond_3c

    .line 87
    iput-object p1, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 88
    iput-object p2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 89
    const-wide/16 v5, 0x1770

    add-long/2addr v5, v3

    iput-wide v5, v0, Landroid/net/http/IdleCache$Entry;->mTimeout:J

    .line 90
    iget v5, p0, Landroid/net/http/IdleCache;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/net/http/IdleCache;->mCount:I

    .line 92
    const/4 v2, 0x1

    .line 93
    iget-object v5, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    if-nez v5, :cond_3a

    .line 94
    new-instance v5, Landroid/net/http/IdleCache$IdleReaper;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$1;)V

    iput-object v5, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    .line 95
    iget-object v5, p0, Landroid/net/http/IdleCache;->mThread:Landroid/net/http/IdleCache$IdleReaper;

    invoke-virtual {v5}, Landroid/net/http/IdleCache$IdleReaper;->start()V
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_3f

    .line 101
    .end local v0       #entry:Landroid/net/http/IdleCache$Entry;,
    .end local v1       #i:I,
    .end local v3       #time:J,
    :cond_3a
    monitor-exit p0

    return v2

    .line 84
    .restart local v0       #entry:Landroid/net/http/IdleCache$Entry;,
    .restart local v1       #i:I,
    .restart local v3       #time:J,
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 76
    .end local v0       #entry:Landroid/net/http/IdleCache$Entry;,
    .end local v1       #i:I,
    .end local v3       #time:J,
    :catchall_3f
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized clear()V
    .registers 5

    .prologue
    .line 132
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    :try_start_2
    iget v2, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v2, :cond_26

    sget v2, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v1, v2, :cond_26

    .line 133
    iget-object v2, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v0, v2, v1

    .line 134
    .local v0, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_23

    .line 135
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 136
    iget-object v2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->closeConnection()V

    .line 137
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 138
    iget v2, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_28

    .line 132
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 141
    .end local v0       #entry:Landroid/net/http/IdleCache$Entry;,
    :cond_26
    monitor-exit p0

    return-void

    .line 132
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getConnection(Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;
    .registers 8
    .parameter "host"

    .prologue
    .line 105
    monitor-enter p0

    const/4 v3, 0x0

    .line 107
    .local v3, ret:Landroid/net/http/Connection;
    :try_start_2
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    if-lez v4, :cond_27

    .line 108
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    sget v4, Landroid/net/http/IdleCache;->IDLE_CACHE_MAX:I

    if-ge v2, v4, :cond_27

    .line 109
    iget-object v4, p0, Landroid/net/http/IdleCache;->mEntries:[Landroid/net/http/IdleCache$Entry;

    aget-object v1, v4, v2

    .line 110
    .local v1, entry:Landroid/net/http/IdleCache$Entry;
    iget-object v0, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 111
    .local v0, eHost:Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_29

    invoke-virtual {v0, p1}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 112
    iget-object v3, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 113
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/net/http/IdleCache$Entry;->mHost:Lorg/apache/http/HttpHost;

    .line 114
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/net/http/IdleCache$Entry;->mConnection:Landroid/net/http/Connection;

    .line 115
    iget v4, p0, Landroid/net/http/IdleCache;->mCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/net/http/IdleCache;->mCount:I
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_2c

    .line 121
    .end local v0       #eHost:Lorg/apache/http/HttpHost;,
    .end local v1       #entry:Landroid/net/http/IdleCache$Entry;,
    .end local v2       #i:I,
    :cond_27
    monitor-exit p0

    return-object v3

    .line 108
    .restart local v0       #eHost:Lorg/apache/http/HttpHost;,
    .restart local v1       #entry:Landroid/net/http/IdleCache$Entry;,
    .restart local v2       #i:I,
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 105
    .end local v0       #eHost:Lorg/apache/http/HttpHost;,
    .end local v1       #entry:Landroid/net/http/IdleCache$Entry;,
    .end local v2       #i:I,
    :catchall_2c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setShutdownFeature(Z)V
    .registers 4
    .parameter "isOn"

    .prologue
    .line 125
    if-eqz p1, :cond_a

    .line 126
    const-string/jumbo v0, "net.http.idle_cache.shutdown"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 128
    :cond_a
    iput-boolean p1, p0, Landroid/net/http/IdleCache;->mShutdownOnPageFinish:Z

    .line 129
    return-void
.end method

.method public declared-synchronized wakeup()V
    .registers 2

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 160
    monitor-exit p0

    return-void

    .line 159
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
