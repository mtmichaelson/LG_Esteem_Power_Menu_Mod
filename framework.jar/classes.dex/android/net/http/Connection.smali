.class abstract Landroid/net/http/Connection;
.super Ljava/lang/Object;
.source "Connection.java"



# static fields
.field private static final DONE:I = 0x3

.field private static final DRAIN:I = 0x2

.field private static final HTTP_CONNECTION:Ljava/lang/String; = "http.connection"

.field private static final MAX_PIPE:I = 0x3

.field private static final MAX_PRIORITY:I = 0x3e8

.field private static final MIN_PIPE:I = 0x2

.field private static final PRIO:I = 0x4

.field private static final READ:I = 0x1

.field private static final RETRY_REQUEST_LIMIT:I = 0x2

.field private static final SEND:I = 0x0

.field static final SOCKET_TIMEOUT:I = 0xea60

.field private static STATE_CANCEL_REQUESTED:I

.field private static STATE_NORMAL:I

.field private static final states:[Ljava/lang/String;



# instance fields
.field private mActive:I

.field private mBuf:[B

.field private mCanPersist:Z

.field protected mCertificate:Landroid/net/http/SslCertificate;

.field private mConnectionThread:Landroid/net/http/ConnectionThread;

.field mContext:Landroid/content/Context;

.field mHost:Lorg/apache/http/HttpHost;

.field protected mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

.field private mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field mRequestFeeder:Landroid/net/http/RequestFeeder;



# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SEND"

    aput-object v1, v0, v3

    const-string v1, "READ"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "DRAIN"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DONE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PRIO"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/http/Connection;->states:[Ljava/lang/String;

    .line 87
    sput v3, Landroid/net/http/Connection;->STATE_NORMAL:I

    .line 88
    sput v4, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .registers 6
    .parameter "context"
    .parameter "host"
    .parameter "requestFeeder"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v1, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 72
    iput-object v1, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 89
    sget v0, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    .line 112
    iput-object p1, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    .line 114
    iput-object p3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 117
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 118
    iput-object v1, p0, Landroid/net/http/Connection;->mConnectionThread:Landroid/net/http/ConnectionThread;

    .line 119
    return-void
.end method

.method private clearPipe(Ljava/util/LinkedList;)Z
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pipe:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 378
    const/4 v0, 0x1

    .line 381
    .local v0, empty:Z
    iget-object v2, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v2

    .line 383
    :goto_6
    :try_start_6
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 384
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/http/Request;

    .line 387
    .local v1, tReq:Landroid/net/http/Request;
    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v1, v4, v5}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;ZZ)V

    .line 388
    const/4 v0, 0x0

    goto :goto_6

    .line 390
    .end local v1       #tReq:Landroid/net/http/Request;,
    :cond_1b
    if-eqz v0, :cond_28

    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v4, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v3, v4}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v3

    if-nez v3, :cond_2a

    move v0, v7

    .line 391
    :cond_28
    :goto_28
    monitor-exit v2

    .line 392
    return v0

    :cond_2a
    move v0, v6

    .line 390
    goto :goto_28

    .line 391
    :catchall_2c
    move-exception v3

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_2c

    throw v3
.end method

.method static getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;
    .registers 6
    .parameter "context"
    .parameter "host"
    .parameter "proxy"
    .parameter "requestFeeder"

    .prologue
    .line 133
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 134
    new-instance v0, Landroid/net/http/HttpConnection;

    invoke-direct {v0, p0, p1, p3}, Landroid/net/http/HttpConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 138
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Landroid/net/http/HttpsConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/http/HttpsConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    goto :goto_11
.end method

.method private httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z
    .registers 10
    .parameter "req"
    .parameter "errorId"
    .parameter "e"

    .prologue
    .line 478
    const/4 v2, 0x1

    .line 485
    .local v2, ret:Z
    iget v3, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Landroid/net/http/Request;->mFailCount:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_24

    .line 486
    const/4 v2, 0x0

    .line 488
    if-gez p2, :cond_2f

    .line 489
    iget-object v3, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/net/http/EventHandler;->errorStringResources:[I

    neg-int v5, p2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, error:Ljava/lang/String;
    :goto_1c
    iget-object v3, p1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v3, p2, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Landroid/net/http/Request;->complete()V

    .line 499
    .end local v1       #error:Ljava/lang/String;,
    :cond_24
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 500
    iget-object v3, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v4, "http.connection"

    invoke-interface {v3, v4}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 502
    return v2

    .line 492
    :cond_2f
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 493
    .local v0, cause:Ljava/lang/Throwable;
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .restart local v1       #error:Ljava/lang/String;,
    :goto_3a
    goto :goto_1c

    .end local v1       #error:Ljava/lang/String;,
    :cond_3b
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_3a
.end method

.method private keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 12
    .parameter "entity"
    .parameter "ver"
    .parameter "connType"
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 515
    const-string v1, "http.connection"

    invoke-interface {p4, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 518
    .local v0, conn:Lorg/apache/http/HttpConnection;
    if-eqz v0, :cond_14

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_14

    move v1, v5

    .line 538
    :goto_13
    return v1

    .line 522
    :cond_14
    if-eqz p1, :cond_30

    .line 523
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_30

    .line 524
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v1

    if-eqz v1, :cond_2e

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2e
    move v1, v5

    .line 527
    goto :goto_13

    .line 532
    :cond_30
    if-ne p3, v6, :cond_34

    move v1, v5

    .line 533
    goto :goto_13

    .line 534
    :cond_34
    const/4 v1, 0x2

    if-ne p3, v1, :cond_39

    move v1, v6

    .line 535
    goto :goto_13

    .line 538
    :cond_39
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v1

    if-nez v1, :cond_43

    move v1, v6

    goto :goto_13

    :cond_43
    move v1, v5

    goto :goto_13
.end method

.method private openHttpConnection(Landroid/net/http/Request;)Z
    .registers 13
    .parameter "req"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 400
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 401
    .local v3, now:J
    const/4 v1, 0x0

    .line 402
    .local v1, error:I
    const/4 v2, 0x0

    .line 406
    .local v2, exception:Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_a
    iput-object v5, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 407
    invoke-virtual {p0, p1}, Landroid/net/http/Connection;->openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;

    move-result-object v5

    iput-object v5, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 408
    iget-object v5, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v5, :cond_2b

    .line 409
    iget-object v5, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    const v6, 0xea60

    invoke-virtual {v5, v6}, Landroid/net/http/AndroidHttpClientConnection;->setSocketTimeout(I)V

    .line 410
    iget-object v5, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v6, "http.connection"

    iget-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-interface {v5, v6, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    :goto_27
    if-nez v1, :cond_4f

    move v5, v10

    .line 463
    :goto_2a
    return v5

    .line 416
    :cond_2b
    const/4 v5, 0x2

    iput v5, p1, Landroid/net/http/Request;->mFailCount:I
    :try_end_2e
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_2e} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_2e} :catch_35
    .catch Landroid/net/http/SSLConnectionClosedByUserException; {:try_start_a .. :try_end_2e} :catch_3c
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_a .. :try_end_2e} :catch_42
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2e} :catch_4a

    move v5, v9

    .line 417
    goto :goto_2a

    .line 419
    :catch_30
    move-exception v5

    move-object v0, v5

    .line 421
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, -0x2

    .line 422
    move-object v2, v0

    .line 445
    goto :goto_27

    .line 423
    .end local v0       #e:Ljava/net/UnknownHostException;,
    :catch_35
    move-exception v5

    move-object v0, v5

    .line 425
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v1, -0x6

    .line 426
    iput v8, p1, Landroid/net/http/Request;->mFailCount:I

    .line 427
    move-object v2, v0

    .line 445
    goto :goto_27

    .line 428
    .end local v0       #e:Ljava/lang/IllegalArgumentException;,
    :catch_3c
    move-exception v5

    move-object v0, v5

    .line 431
    .local v0, e:Landroid/net/http/SSLConnectionClosedByUserException;
    iput v8, p1, Landroid/net/http/Request;->mFailCount:I

    move v5, v9

    .line 433
    goto :goto_2a

    .line 434
    .end local v0       #e:Landroid/net/http/SSLConnectionClosedByUserException;,
    :catch_42
    move-exception v5

    move-object v0, v5

    .line 437
    .local v0, e:Ljavax/net/ssl/SSLHandshakeException;
    iput v8, p1, Landroid/net/http/Request;->mFailCount:I

    .line 440
    const/16 v1, -0xb

    .line 441
    move-object v2, v0

    .line 445
    goto :goto_27

    .line 442
    .end local v0       #e:Ljavax/net/ssl/SSLHandshakeException;,
    :catch_4a
    move-exception v5

    move-object v0, v5

    .line 443
    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x6

    .line 444
    move-object v2, v0

    goto :goto_27

    .line 456
    .end local v0       #e:Ljava/io/IOException;,
    :cond_4f
    iget v5, p1, Landroid/net/http/Request;->mFailCount:I

    if-ge v5, v8, :cond_62

    .line 458
    iget-object v5, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v5, p1, v10, v9}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;ZZ)V

    .line 459
    iget v5, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroid/net/http/Request;->mFailCount:I

    .line 463
    :goto_5e
    if-nez v1, :cond_66

    move v5, v10

    goto :goto_2a

    .line 461
    :cond_62
    invoke-direct {p0, p1, v1, v2}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    goto :goto_5e

    :cond_66
    move v5, v9

    .line 463
    goto :goto_2a
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 158
    sget v0, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    .line 159
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 162
    return-void
.end method

.method abstract closeConnection()V
.end method

.method getBuf()[B
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    if-nez v0, :cond_a

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    .line 568
    :cond_a
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    return-object v0
.end method

.method getCanPersist()Z
    .registers 2

    .prologue
    .line 550
    iget-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return v0
.end method

.method getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method getHost()Lorg/apache/http/HttpHost;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method abstract getScheme()Ljava/lang/String;
.end method

.method abstract openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation.end method

.method processRequests(Landroid/net/http/Request;)V
    .registers 22
    .parameter "firstRequest"

    .prologue
    .line 169
    const/4 v15, 0x0

    .line 170
    .local v15, req:Landroid/net/http/Request;
    const/4 v11, 0x0

    .line 172
    .local v11, peek:Landroid/net/http/Request;
    const/4 v6, 0x0

    .line 173
    .local v6, error:I
    const/4 v7, 0x0

    .line 175
    .local v7, exception:Ljava/lang/Exception;
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 177
    .local v12, pipe:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v9, 0x2

    .local v9, minPipe:I
    const/4 v8, 0x3

    .line 178
    .local v8, maxPipe:I
    const/16 v16, 0x0

    .line 180
    .local v16, state:I
    :cond_d
    :goto_d
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_26e

    .line 187
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/http/Connection;->mActive:I

    move/from16 v17, v0

    sget v18, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_30

    .line 189
    const-wide/16 v17, 0x64

    :try_start_25
    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_28} :catch_26b

    .line 191
    :goto_28
    sget v17, Landroid/net/http/Connection;->STATE_NORMAL:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/http/Connection;->mActive:I

    .line 194
    :cond_30
    packed-switch v16, :pswitch_data_270

    :pswitch_33
    goto :goto_d

    .line 196
    :pswitch_34
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-ne v0, v1, :cond_40

    .line 197
    const/16 v16, 0x1

    .line 198
    goto :goto_d

    .line 201
    :cond_40
    if-nez p1, :cond_57

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/net/http/RequestFeeder;->getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;

    move-result-object v15

    .line 207
    :goto_52
    if-nez v15, :cond_5c

    .line 208
    const/16 v16, 0x2

    .line 209
    goto :goto_d

    .line 204
    :cond_57
    move-object/from16 v15, p1

    .line 205
    const/16 p1, 0x0

    goto :goto_52

    .line 214
    :cond_5c
    move-object v0, v15

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_76

    move-object v0, v15

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d4

    .line 220
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/net/http/RequestFeeder;->peekRequest()Landroid/net/http/Request;

    move-result-object v11

    .line 221
    if-eqz v11, :cond_d4

    .line 222
    iget v14, v11, Landroid/net/http/Request;->mPriority:I

    .line 223
    .local v14, ppri:I
    move-object v0, v15

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_93

    if-gez v14, :cond_a4

    :cond_93
    move-object v0, v15

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    if-ltz v17, :cond_d4

    move-object v0, v15

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_d4

    .line 225
    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/net/http/RequestFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v10

    .line 226
    .local v10, newreq:Landroid/net/http/Request;
    if-eqz v10, :cond_d4

    .line 227
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c0

    move-object v0, v11

    iget v0, v0, Landroid/net/http/Request;->mPriority:I

    move/from16 v17, v0

    move/from16 v0, v17

    move v1, v14

    if-eq v0, v1, :cond_e6

    .line 229
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object v1, v10

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;ZZ)V

    .line 241
    .end local v10       #newreq:Landroid/net/http/Request;,
    .end local v14       #ppri:I,
    :cond_d4
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/net/http/Request;->setConnection(Landroid/net/http/Connection;)V

    .line 244
    move-object v0, v15

    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10a

    .line 248
    invoke-virtual {v15}, Landroid/net/http/Request;->complete()V

    goto/16 :goto_d

    .line 231
    .restart local v10       #newreq:Landroid/net/http/Request;,
    .restart local v14       #ppri:I,
    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mConnectionThread:Landroid/net/http/ConnectionThread;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/net/http/ConnectionThread;->setNewRequest(Landroid/net/http/Request;)V

    .line 232
    const/16 v16, 0x4

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object v1, v15

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;ZZ)V

    goto/16 :goto_d

    .line 252
    .end local v10       #newreq:Landroid/net/http/Request;,
    .end local v14       #ppri:I,
    :cond_10a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v17

    if-nez v17, :cond_12b

    .line 260
    :cond_11e
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/net/http/Connection;->openHttpConnection(Landroid/net/http/Request;)Z

    move-result v17

    if-nez v17, :cond_12b

    .line 261
    const/16 v16, 0x3

    .line 262
    goto/16 :goto_d

    .line 270
    :cond_12b
    move-object v0, v15

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    .line 276
    :try_start_139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/http/Request;->sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_145
    .catch Lorg/apache/http/HttpException; {:try_start_139 .. :try_end_145} :catch_16c
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_145} :catch_172
    .catch Ljava/lang/IllegalStateException; {:try_start_139 .. :try_end_145} :catch_178

    .line 287
    :goto_145
    if-eqz v7, :cond_189

    .line 288
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v17

    if-eqz v17, :cond_15c

    move-object v0, v15

    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    move/from16 v17, v0

    if-nez v17, :cond_15c

    .line 292
    invoke-virtual {v12, v15}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 294
    :cond_15c
    const/4 v7, 0x0

    .line 295
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    move-result v17

    if-eqz v17, :cond_17e

    .line 296
    const/16 v16, 0x3

    .line 299
    :cond_168
    :goto_168
    const/4 v8, 0x1

    move v9, v8

    .line 300
    goto/16 :goto_d

    .line 277
    :catch_16c
    move-exception v17

    move-object/from16 v4, v17

    .line 278
    .local v4, e:Lorg/apache/http/HttpException;
    move-object v7, v4

    .line 279
    const/4 v6, -0x1

    .line 286
    goto :goto_145

    .line 280
    .end local v4       #e:Lorg/apache/http/HttpException;,
    :catch_172
    move-exception v17

    move-object/from16 v4, v17

    .line 281
    .local v4, e:Ljava/io/IOException;
    move-object v7, v4

    .line 282
    const/4 v6, -0x7

    .line 286
    goto :goto_145

    .line 283
    .end local v4       #e:Ljava/io/IOException;,
    :catch_178
    move-exception v17

    move-object/from16 v4, v17

    .line 284
    .local v4, e:Ljava/lang/IllegalStateException;
    move-object v7, v4

    .line 285
    const/4 v6, -0x7

    goto :goto_145

    .line 297
    .end local v4       #e:Ljava/lang/IllegalStateException;,
    :cond_17e
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_168

    .line 298
    const/16 v16, 0x0

    goto :goto_168

    .line 303
    :cond_189
    invoke-virtual {v12, v15}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 304
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Connection;->mCanPersist:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    const/16 v16, 0x1

    goto/16 :goto_d

    .line 311
    :pswitch_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v17

    if-nez v17, :cond_1da

    const/16 v17, 0x1

    move/from16 v5, v17

    .line 312
    .local v5, empty:Z
    :goto_1b6
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v13

    .line 313
    .local v13, pipeSize:I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1df

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1df

    if-ge v13, v9, :cond_1df

    if-nez v5, :cond_1df

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Connection;->mCanPersist:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1df

    .line 315
    const/16 v16, 0x0

    .line 316
    goto/16 :goto_d

    .line 311
    .end local v5       #empty:Z,
    .end local v13       #pipeSize:I,
    :cond_1da
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_1b6

    .line 317
    .restart local v5       #empty:Z,
    .restart local v13       #pipeSize:I,
    :cond_1df
    if-nez v13, :cond_1fa

    .line 319
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1ed

    .line 320
    const/16 v16, 0x3

    goto/16 :goto_d

    .line 322
    :cond_1ed
    if-eqz v5, :cond_1f5

    const/16 v17, 0x3

    move/from16 v16, v17

    .line 323
    :goto_1f3
    goto/16 :goto_d

    .line 322
    :cond_1f5
    const/16 v17, 0x0

    move/from16 v16, v17

    goto :goto_1f3

    .line 326
    :cond_1fa
    invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v15

    .end local v15       #req:Landroid/net/http/Request;,
    check-cast v15, Landroid/net/http/Request;

    .line 331
    .restart local v15       #req:Landroid/net/http/Request;,
    :try_start_200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    move-object/from16 v17, v0

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/http/Request;->readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_20c
    .catch Lorg/apache/http/ParseException; {:try_start_200 .. :try_end_20c} :catch_259
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_20c} :catch_25f
    .catch Ljava/lang/IllegalStateException; {:try_start_200 .. :try_end_20c} :catch_265

    .line 342
    :goto_20c
    if-eqz v7, :cond_22f

    .line 343
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v17

    if-eqz v17, :cond_226

    move-object v0, v15

    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    move/from16 v17, v0

    if-nez v17, :cond_226

    .line 347
    invoke-virtual {v15}, Landroid/net/http/Request;->reset()V

    .line 348
    invoke-virtual {v12, v15}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 350
    :cond_226
    const/4 v7, 0x0

    .line 351
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/Connection;->mCanPersist:Z

    .line 353
    :cond_22f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Connection;->mCanPersist:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v17, v0

    const-string v18, "http.connection"

    invoke-interface/range {v17 .. v18}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    .line 362
    const/4 v8, 0x1

    move v9, v8

    .line 363
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 364
    const/16 v16, 0x0

    goto/16 :goto_d

    .line 332
    :catch_259
    move-exception v17

    move-object/from16 v4, v17

    .line 333
    .local v4, e:Lorg/apache/http/ParseException;
    move-object v7, v4

    .line 334
    const/4 v6, -0x7

    .line 341
    goto :goto_20c

    .line 335
    .end local v4       #e:Lorg/apache/http/ParseException;,
    :catch_25f
    move-exception v17

    move-object/from16 v4, v17

    .line 336
    .local v4, e:Ljava/io/IOException;
    move-object v7, v4

    .line 337
    const/4 v6, -0x7

    .line 341
    goto :goto_20c

    .line 338
    .end local v4       #e:Ljava/io/IOException;,
    :catch_265
    move-exception v17

    move-object/from16 v4, v17

    .line 339
    .local v4, e:Ljava/lang/IllegalStateException;
    move-object v7, v4

    .line 340
    const/4 v6, -0x7

    goto :goto_20c

    .line 190
    .end local v4       #e:Ljava/lang/IllegalStateException;,
    .end local v5       #empty:Z,
    .end local v13       #pipeSize:I,
    :catch_26b
    move-exception v17

    goto/16 :goto_28

    .line 370
    :cond_26e
    return-void

    .line 194
    nop

    :pswitch_data_270
    .packed-switch 0x0
        :pswitch_34
        :pswitch_1a0
        :pswitch_1a0
        :pswitch_33
        :pswitch_1a0
    .end packed-switch
.end method

.method setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V
    .registers 5
    .parameter "entity"
    .parameter "ver"
    .parameter "connType"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/http/Connection;->keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 543
    return-void
.end method

.method setCanPersist(Z)V
    .registers 2
    .parameter "canPersist"

    .prologue
    .line 546
    iput-boolean p1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 547
    return-void
.end method

.method setConnectionThread(Landroid/net/http/ConnectionThread;)V
    .registers 2
    .parameter "thread"

    .prologue
    .line 150
    iput-object p1, p0, Landroid/net/http/Connection;->mConnectionThread:Landroid/net/http/ConnectionThread;

    .line 151
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 563
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
