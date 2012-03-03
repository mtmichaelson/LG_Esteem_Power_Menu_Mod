.class public final Lcom/lge/lgdrm/DrmDldClient;
.super Ljava/lang/Thread;
.source "DrmDldClient.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmDldClient$FailInfo;
    }
.end annotation


# static fields
.field public static final ERROR_CONNECT:I = 0x3

.field public static final ERROR_HTTP_404:I = 0x2

.field public static final ERROR_INTERNAL:I = 0x1

.field public static final ERROR_INTERRUPTED:I = 0x7

.field public static final ERROR_MIME_MISMATCHED:I = 0x6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_OUT_OF_STORAGE:I = 0x5

.field public static final ERROR_RO_CORRUPTED:I = 0x4

.field private static final READ_UNIT:I = 0x1000

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_GET_CONFIRM:I = 0x1

.field public static final STATUS_PROGRESS:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmDldClient"

.field private static final flexUAProfile:Ljava/lang/String; = "BRW_SETTINGDB_UA_PROFILE_I"

.field private static final flexUAString:Ljava/lang/String; = "BRW_SETTINGDB_UA_STRING_I"



# instance fields
.field private final HTTP_TIMEOUT:I

.field private client:Landroid/net/http/AndroidHttpClient;

.field private context:Landroid/content/Context;

.field private errorCode:I

.field private failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

.field private filename:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private interrupted:Z

.field private mimeType:Ljava/lang/String;

.field private nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private objSession:Lcom/lge/lgdrm/DrmObjectSession;

.field private uaProfile:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;

.field private userConfirm:I



# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 74
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 92
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/lge/lgdrm/DrmDldRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 8
    .parameter "request"
    .parameter "filename"
    .parameter "mimeType"
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 74
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 92
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 157
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 158
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->filename:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    .line 160
    iput-object p4, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    .line 161
    iput-object p5, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 162
    return-void
.end method

.method protected constructor <init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V
    .registers 6
    .parameter "objSession"
    .parameter "request"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 57
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 74
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 92
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 137
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 138
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 139
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 140
    return-void
.end method

.method private checkMimeType()I
    .registers 14

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 273
    const/4 v3, 0x0

    .line 276
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 278
    invoke-direct {p0, v12, v8, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 348
    :goto_10
    return v5

    .line 282
    :cond_11
    iget-object v5, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v5, v5, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    if-nez v5, :cond_20

    .line 284
    :cond_1b
    invoke-direct {p0, v10, v8, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 285
    goto :goto_10

    .line 291
    :cond_20
    :try_start_20
    iget-object v5, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    new-instance v6, Lorg/apache/http/client/methods/HttpHead;

    iget-object v7, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v7, v7, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2e
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_20 .. :try_end_2e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2e} :catch_48
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2e} :catch_52

    move-result-object v3

    .line 312
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 314
    .local v4, status:I
    sparse-switch v4, :sswitch_data_88

    .line 329
    invoke-direct {p0, v11, v8, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 330
    goto :goto_10

    .line 293
    .end local v4       #status:I,
    :catch_3f
    move-exception v5

    move-object v0, v5

    .line 295
    .local v0, e:Ljava/nio/channels/ClosedByInterruptException;
    iput-boolean v10, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 296
    invoke-direct {p0, v12, v8, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 297
    goto :goto_10

    .line 299
    .end local v0       #e:Ljava/nio/channels/ClosedByInterruptException;,
    :catch_48
    move-exception v5

    move-object v0, v5

    .line 301
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 302
    invoke-direct {p0, v11, v8, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 303
    goto :goto_10

    .line 305
    .end local v0       #e:Ljava/io/IOException;,
    :catch_52
    move-exception v5

    move-object v0, v5

    .line 307
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    invoke-direct {p0, v10, v8, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 309
    goto :goto_10

    .line 324
    .end local v0       #e:Ljava/lang/Exception;,
    .restart local v4       #status:I,
    :sswitch_5c
    const/4 v5, 0x2

    invoke-direct {p0, v5, v8, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 325
    goto :goto_10

    .line 334
    :sswitch_62
    const-string v5, "Content-Type"

    invoke-interface {v3, v5}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 335
    .local v1, httpHeaders:[Lorg/apache/http/Header;
    if-eqz v1, :cond_81

    .line 337
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6b
    array-length v5, v1

    if-ge v2, v5, :cond_81

    .line 340
    aget-object v5, v1, v2

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 342
    const/4 v5, 0x0

    goto :goto_10

    .line 337
    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    .line 347
    .end local v2       #i:I,
    :cond_81
    const/4 v5, 0x6

    invoke-direct {p0, v5, v8, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v9

    .line 348
    goto :goto_10

    .line 314
    nop

    :sswitch_data_88
    .sparse-switch
        0xc8 -> :sswitch_62
        0x194 -> :sswitch_5c
        0x1f6 -> :sswitch_62
    .end sparse-switch
.end method

.method private httpTransaction(Lcom/lge/lgdrm/DrmDldRequest;)I
    .registers 23
    .parameter "request"

    .prologue
    .line 361
    const/4 v5, 0x0

    .line 362
    .local v5, content:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 365
    .local v10, httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct/range {p0 .. p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 367
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 368
    const/16 v18, -0x1

    .line 663
    :goto_1b
    return v18

    .line 373
    :cond_1c
    :try_start_1c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_58

    .line 376
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_38} :catch_68
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_38} :catch_89

    .end local v10       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;,
    .local v11, httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v10, v11

    .line 400
    .end local v11       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;,
    .restart local v10       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;,
    :goto_39
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/lge/lgdrm/DrmDldClient;->setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lge/lgdrm/DrmDldRequest;)I

    move-result v18

    if-eqz v18, :cond_a4

    .line 403
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 404
    const/16 v18, -0x1

    goto :goto_1b

    .line 381
    :cond_58
    :try_start_58
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_66} :catch_68
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_66} :catch_89

    .end local v10       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;,
    .restart local v11       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;,
    move-object v10, v11

    .end local v11       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;,
    .restart local v10       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;,
    goto :goto_39

    .line 384
    :catch_68
    move-exception v18

    move-object/from16 v7, v18

    .line 386
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "DrmDldClient"

    const-string v19, "httpTransaction() : Invalid URL"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 390
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 391
    const/16 v18, -0x1

    goto :goto_1b

    .line 393
    .end local v7       #e:Ljava/lang/IllegalArgumentException;,
    :catch_89
    move-exception v18

    move-object/from16 v7, v18

    .line 395
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 408
    .end local v7       #e:Ljava/lang/Exception;,
    :cond_a4
    invoke-direct/range {p0 .. p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v18

    if-eqz v18, :cond_bf

    .line 410
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 411
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 415
    :cond_bf
    const/4 v14, 0x0

    .line 418
    .local v14, response:Lorg/apache/http/HttpResponse;
    :try_start_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_cc
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c0 .. :try_end_cc} :catch_ed
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_cc} :catch_10d
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_cc} :catch_128

    move-result-object v14

    .line 439
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 441
    .local v16, status:I
    sparse-switch v16, :sswitch_data_3e6

    .line 469
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 420
    .end local v16       #status:I,
    :catch_ed
    move-exception v18

    move-object/from16 v7, v18

    .line 422
    .local v7, e:Ljava/nio/channels/ClosedByInterruptException;
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 423
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 424
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 426
    .end local v7       #e:Ljava/nio/channels/ClosedByInterruptException;,
    :catch_10d
    move-exception v18

    move-object/from16 v7, v18

    .line 428
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 429
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 430
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 432
    .end local v7       #e:Ljava/io/IOException;,
    :catch_128
    move-exception v18

    move-object/from16 v7, v18

    .line 434
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 436
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 451
    .end local v7       #e:Ljava/lang/Exception;,
    .restart local v16       #status:I,
    :sswitch_143
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16f

    .line 474
    :sswitch_151
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 475
    .local v8, entity:Lorg/apache/http/HttpEntity;
    if-nez v8, :cond_199

    .line 477
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 478
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 479
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 459
    .end local v8       #entity:Lorg/apache/http/HttpEntity;,
    :cond_16f
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 460
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 464
    :sswitch_184
    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 465
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 483
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;,
    :cond_199
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v9

    .line 484
    .local v9, hdr:Lorg/apache/http/Header;
    if-nez v9, :cond_1b7

    .line 486
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 487
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 488
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 492
    :cond_1b7
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, contentType:Ljava/lang/String;
    if-nez v6, :cond_1d5

    .line 495
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 496
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 497
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 501
    :cond_1d5
    const-string v18, "[;]"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 502
    .local v17, subs:[Ljava/lang/String;
    if-nez v17, :cond_1f8

    .line 504
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 505
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 506
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 508
    :cond_1f8
    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 522
    invoke-direct/range {p0 .. p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v18

    if-eqz v18, :cond_21b

    .line 524
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 525
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 530
    :cond_21b
    :try_start_21b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v18, v0

    if-nez v18, :cond_25c

    .line 533
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/lge/lgdrm/DrmManager;->createObjectSession(ILandroid/content/Context;)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v18, v0

    if-nez v18, :cond_25c

    .line 536
    const-string v18, "DrmDldClient"

    const-string v19, "Failed to create DRM object session"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 538
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 539
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 544
    :cond_25c
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_25f
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_21b .. :try_end_25f} :catch_2a1
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_25f} :catch_2c1
    .catch Ljava/lang/IllegalStateException; {:try_start_21b .. :try_end_25f} :catch_2dc
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_25f} :catch_2fa

    move-result-object v5

    .line 584
    const/4 v4, 0x0

    .line 585
    .local v4, attribute:I
    :try_start_261
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_271

    .line 587
    const/16 v4, 0x8

    .line 590
    :cond_271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->filename:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object v1, v6

    move-object/from16 v2, v19

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_354

    .line 592
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 593
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_29d
    .catch Ljava/lang/IllegalStateException; {:try_start_261 .. :try_end_29d} :catch_318
    .catch Ljava/lang/Exception; {:try_start_261 .. :try_end_29d} :catch_336

    .line 594
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 546
    .end local v4       #attribute:I,
    :catch_2a1
    move-exception v18

    move-object/from16 v7, v18

    .line 548
    .local v7, e:Ljava/nio/channels/ClosedByInterruptException;
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 549
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 550
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 552
    .end local v7       #e:Ljava/nio/channels/ClosedByInterruptException;,
    :catch_2c1
    move-exception v18

    move-object/from16 v7, v18

    .line 554
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 559
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 560
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 562
    .end local v7       #e:Ljava/io/IOException;,
    :catch_2dc
    move-exception v18

    move-object/from16 v7, v18

    .line 564
    .local v7, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 565
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 566
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 567
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 569
    .end local v7       #e:Ljava/lang/IllegalStateException;,
    :catch_2fa
    move-exception v18

    move-object/from16 v7, v18

    .line 571
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 578
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 579
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 597
    .end local v7       #e:Ljava/lang/Exception;,
    .restart local v4       #attribute:I,
    :catch_318
    move-exception v18

    move-object/from16 v7, v18

    .line 599
    .local v7, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 600
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 601
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 602
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 604
    .end local v7       #e:Ljava/lang/IllegalStateException;,
    :catch_336
    move-exception v18

    move-object/from16 v7, v18

    .line 606
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 607
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 608
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 609
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 612
    .end local v7       #e:Ljava/lang/Exception;,
    :cond_354
    const/4 v15, 0x0

    .line 613
    .local v15, retVal:I
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v18

    if-eqz v18, :cond_370

    .line 616
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v15

    .line 640
    :goto_366
    :try_start_366
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 642
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_36c
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_366 .. :try_end_36c} :catch_38f
    .catch Ljava/io/IOException; {:try_start_366 .. :try_end_36c} :catch_3af
    .catch Ljava/lang/Exception; {:try_start_366 .. :try_end_36c} :catch_3ca

    move/from16 v18, v15

    .line 663
    goto/16 :goto_1b

    .line 620
    :cond_370
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    .line 622
    .local v12, length:J
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-gtz v18, :cond_386

    .line 628
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v15

    goto :goto_366

    .line 633
    :cond_386
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v15

    goto :goto_366

    .line 644
    .end local v12       #length:J,
    :catch_38f
    move-exception v18

    move-object/from16 v7, v18

    .line 646
    .local v7, e:Ljava/nio/channels/ClosedByInterruptException;
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 647
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 648
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 650
    .end local v7       #e:Ljava/nio/channels/ClosedByInterruptException;,
    :catch_3af
    move-exception v18

    move-object/from16 v7, v18

    .line 652
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 653
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 654
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 656
    .end local v7       #e:Ljava/io/IOException;,
    :catch_3ca
    move-exception v18

    move-object/from16 v7, v18

    .line 658
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 659
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 660
    const/16 v18, -0x1

    goto/16 :goto_1b

    .line 441
    nop

    :sswitch_data_3e6
    .sparse-switch
        0xc8 -> :sswitch_151
        0x194 -> :sswitch_184
        0x1f4 -> :sswitch_143
        0x1f6 -> :sswitch_151
    .end sparse-switch
.end method

.method private isInterrupt()Z
    .registers 3

    .prologue
    .line 1018
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    if-eqz v0, :cond_17

    .line 1020
    :cond_e
    const-string v0, "DrmDldClient"

    const-string v1, "Thread was interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v0, 0x1

    .line 1023
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private processData(Ljava/io/InputStream;J)I
    .registers 14
    .parameter "in"
    .parameter "length"

    .prologue
    .line 785
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 789
    .local v0, data:[B
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_3d

    .line 795
    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 797
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 798
    const/4 v6, -0x1

    .line 958
    :goto_17
    return v6

    .line 801
    :cond_18
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 802
    .local v3, readLen:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_2d

    .line 847
    .end local v3       #readLen:I,
    :cond_1f
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 849
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v6, -0x1

    goto :goto_17

    .line 808
    .restart local v3       #readLen:I,
    :cond_2d
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v6

    if-eqz v6, :cond_a

    .line 811
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 812
    const/4 v6, -0x1

    goto :goto_17

    .line 818
    .end local v3       #readLen:I,
    :cond_3d
    const/4 v2, 0x0

    .line 819
    .local v2, index:I
    :goto_3e
    int-to-long v6, v2

    cmp-long v6, v6, p2

    if-gez v6, :cond_1f

    .line 822
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 824
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 825
    const/4 v6, -0x1

    goto :goto_17

    .line 828
    :cond_51
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 829
    .restart local v3       #readLen:I,
    const/4 v6, -0x1

    if-ne v3, v6, :cond_60

    .line 832
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 833
    const/4 v6, -0x1

    goto :goto_17

    .line 836
    :cond_60
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v6

    if-eqz v6, :cond_70

    .line 839
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 840
    const/4 v6, -0x1

    goto :goto_17

    .line 842
    :cond_70
    add-int/2addr v2, v3

    goto :goto_3e

    .line 853
    .end local v2       #index:I,
    .end local v3       #readLen:I,
    :cond_72
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v4

    .line 854
    .local v4, retVal:I
    const/4 v5, 0x2

    .line 855
    .local v5, userResponse:I
    packed-switch v4, :pswitch_data_144

    .line 893
    :goto_7c
    :pswitch_7c
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 895
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 896
    const/4 v6, -0x1

    goto :goto_17

    .line 858
    :pswitch_8a
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 859
    const/4 v6, -0x1

    goto :goto_17

    .line 863
    :pswitch_92
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-eqz v6, :cond_d7

    .line 866
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 869
    :goto_9a
    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    if-eqz v6, :cond_b0

    .line 875
    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    if-eqz v6, :cond_a7

    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c4

    .line 878
    :cond_a7
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 879
    const/4 v6, -0x1

    goto/16 :goto_17

    .line 873
    :cond_b0
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b5
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_b5} :catch_b6
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_a .. :try_end_b5} :catch_c9
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_b5} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b5} :catch_11d

    goto :goto_9a

    .line 932
    .end local v4       #retVal:I,
    .end local v5       #userResponse:I,
    :catch_b6
    move-exception v6

    move-object v1, v6

    .line 934
    .local v1, e:Ljava/lang/InterruptedException;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 935
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 936
    const/4 v6, -0x1

    goto/16 :goto_17

    .line 882
    .end local v1       #e:Ljava/lang/InterruptedException;,
    .restart local v4       #retVal:I,
    .restart local v5       #userResponse:I,
    :cond_c4
    const/4 v6, 0x2

    :try_start_c5
    invoke-direct {p0, v6}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V
    :try_end_c8
    .catch Ljava/lang/InterruptedException; {:try_start_c5 .. :try_end_c8} :catch_b6
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c5 .. :try_end_c8} :catch_c9
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_11d

    goto :goto_7c

    .line 938
    .end local v4       #retVal:I,
    .end local v5       #userResponse:I,
    :catch_c9
    move-exception v6

    move-object v1, v6

    .line 940
    .local v1, e:Ljava/nio/channels/ClosedByInterruptException;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 941
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 942
    const/4 v6, -0x1

    goto/16 :goto_17

    .line 887
    .end local v1       #e:Ljava/nio/channels/ClosedByInterruptException;,
    .restart local v4       #retVal:I,
    .restart local v5       #userResponse:I,
    :cond_d7
    const/4 v5, 0x1

    goto :goto_7c

    .line 899
    :cond_d9
    :try_start_d9
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v4

    .line 900
    const/4 v6, -0x1

    if-ne v4, v6, :cond_136

    .line 902
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->getFailReason()I

    move-result v6

    packed-switch v6, :pswitch_data_152

    .line 921
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 924
    :goto_f2
    const/4 v6, -0x1

    goto/16 :goto_17

    .line 905
    :pswitch_f5
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/InterruptedException; {:try_start_d9 .. :try_end_fb} :catch_b6
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d9 .. :try_end_fb} :catch_c9
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_fb} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_fb} :catch_11d

    goto :goto_f2

    .line 944
    .end local v4       #retVal:I,
    .end local v5       #userResponse:I,
    :catch_fc
    move-exception v6

    move-object v1, v6

    .line 946
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 948
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 949
    const/4 v6, -0x1

    goto/16 :goto_17

    .line 910
    .end local v1       #e:Ljava/io/IOException;,
    .restart local v4       #retVal:I,
    .restart local v5       #userResponse:I,
    :pswitch_10a
    const/4 v6, 0x1

    :try_start_10b
    iget-object v7, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lge/lgdrm/DrmObjectSession;->getFailInfo(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/lge/lgdrm/DrmObjectSession;->getFailInfo(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_11c
    .catch Ljava/lang/InterruptedException; {:try_start_10b .. :try_end_11c} :catch_b6
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_10b .. :try_end_11c} :catch_c9
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_11c} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_11c} :catch_11d

    goto :goto_f2

    .line 951
    .end local v4       #retVal:I,
    .end local v5       #userResponse:I,
    :catch_11d
    move-exception v6

    move-object v1, v6

    .line 954
    .local v1, e:Ljava/lang/Exception;
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v6, -0x1

    goto/16 :goto_17

    .line 915
    .end local v1       #e:Ljava/lang/Exception;,
    .restart local v4       #retVal:I,
    .restart local v5       #userResponse:I,
    :pswitch_128
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_12b
    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f2

    .line 918
    :pswitch_12f
    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f2

    .line 926
    :cond_136
    const/4 v6, 0x4

    if-ne v4, v6, :cond_141

    .line 929
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->getNextRequest()Lcom/lge/lgdrm/DrmDldRequest;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;
    :try_end_141
    .catch Ljava/lang/InterruptedException; {:try_start_12b .. :try_end_141} :catch_b6
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_12b .. :try_end_141} :catch_c9
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_141} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_141} :catch_11d

    .line 958
    :cond_141
    const/4 v6, 0x0

    goto/16 :goto_17

    .line 855
    :pswitch_data_144
    .packed-switch -0x1
        :pswitch_8a
        :pswitch_7c
        :pswitch_7c
        :pswitch_92
        :pswitch_92
    .end packed-switch

    .line 902
    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_f5
        :pswitch_10a
        :pswitch_10a
        :pswitch_128
        :pswitch_10a
        :pswitch_12f
    .end packed-switch
.end method

.method private processRequest()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 234
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 237
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_13

    .line 239
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->checkMimeType()I

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    .line 262
    :goto_12
    return v1

    .line 245
    :cond_13
    const/4 v0, 0x0

    .line 246
    .local v0, currentRequest:Lcom/lge/lgdrm/DrmDldRequest;
    :cond_14
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-eqz v1, :cond_24

    .line 248
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 249
    iput-object v4, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 251
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmDldClient;->httpTransaction(Lcom/lge/lgdrm/DrmDldRequest;)I

    move-result v1

    if-ne v2, v1, :cond_14

    move v1, v2

    .line 253
    goto :goto_12

    .line 257
    :cond_24
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    if-eqz v1, :cond_2f

    .line 259
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v1, v3}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 260
    iput-object v4, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    :cond_2f
    move v1, v3

    .line 262
    goto :goto_12
.end method

.method private sendStatus(I)V
    .registers 8
    .parameter "processStatus"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 1037
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-nez v1, :cond_9

    .line 1081
    :cond_8
    :goto_8
    return-void

    .line 1043
    :cond_9
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1048
    if-nez p1, :cond_17

    .line 1050
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 1052
    :cond_17
    if-ne p1, v3, :cond_1f

    .line 1054
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 1056
    :cond_1f
    if-ne p1, v2, :cond_27

    .line 1058
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    .line 1060
    :cond_27
    if-ne p1, v5, :cond_8

    .line 1062
    iget v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    if-eqz v1, :cond_8

    .line 1067
    const/4 v0, 0x0

    .line 1068
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    if-eqz v1, :cond_42

    .line 1071
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1079
    :goto_3c
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8

    .line 1075
    :cond_42
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    invoke-virtual {v1, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    goto :goto_3c
.end method

.method private setError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "errorCode"
    .parameter "errorMsg"
    .parameter "redirectURL"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 980
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    if-eqz v0, :cond_2a

    .line 982
    const-string v0, "DrmDldClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setError() : Destroy session errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    if-ne p1, v3, :cond_2f

    .line 985
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 995
    :goto_27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 998
    :cond_2a
    iget v0, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    if-eqz v0, :cond_3d

    .line 1009
    :cond_2e
    :goto_2e
    return-void

    .line 987
    :cond_2f
    if-ne p1, v4, :cond_37

    .line 989
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_27

    .line 993
    :cond_37
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v0, v4}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_27

    .line 1004
    :cond_3d
    iput p1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 1005
    if-eqz p2, :cond_2e

    .line 1007
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lge/lgdrm/DrmDldClient$FailInfo;-><init>(Lcom/lge/lgdrm/DrmDldClient;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    goto :goto_2e
.end method

.method private setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lge/lgdrm/DrmDldRequest;)I
    .registers 11
    .parameter "httpRequest"
    .parameter "request"

    .prologue
    const/4 v5, 0x1

    const-string/jumbo v7, "no-cache"

    const-string v6, "Accept"

    const-string v4, "SOAPAction"

    .line 678
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4d

    .line 681
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_45

    .line 683
    const-string v2, "Accept"

    const-string v2, "application/vnd.oma.drm.roap-trigger+xml, application/vnd.oma.drm.roap-pdu+xml, multipart/related"

    invoke-virtual {p1, v6, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :goto_19
    const-string v2, "Connection"

    const-string v3, "Keep Alive, Keep-Alive"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v2, "Cache-Control"

    const-string/jumbo v3, "no-cache"

    invoke-virtual {p1, v2, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v2, "Pragma"

    const-string/jumbo v3, "no-cache"

    invoke-virtual {p1, v2, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const-string/jumbo v2, "x-wap-profile"

    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->uaProfile:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_43

    .line 766
    const-string v2, "DRM-Version"

    const-string v3, "2.1"

    invoke-virtual {p1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :cond_43
    const/4 v2, 0x0

    :goto_44
    return v2

    .line 687
    :cond_45
    const-string v2, "Accept"

    const-string v2, "*/*"

    invoke-virtual {p1, v6, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 693
    :cond_4d
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_74

    .line 695
    const-string v2, "Accept"

    const-string v2, "application/vnd.oma.drm.roap-trigger+xml, multipart/related"

    invoke-virtual {p1, v6, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :cond_58
    :goto_58
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p2, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v3, p2, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    array-length v3, v3

    int-to-long v3, v3

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 725
    .local v1, postEntity:Lorg/apache/http/entity/InputStreamEntity;
    if-nez v1, :cond_c4

    .line 727
    const-string v2, "DrmDldClient"

    const-string/jumbo v3, "setHttpHeader() : Fail to create postEntity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v2, -0x1

    goto :goto_44

    .line 697
    .end local v1       #postEntity:Lorg/apache/http/entity/InputStreamEntity;,
    :cond_74
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_81

    .line 699
    const-string v2, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    invoke-virtual {p1, v4, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 701
    :cond_81
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8e

    .line 703
    const-string v2, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcknowledgeLicense"

    invoke-virtual {p1, v4, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 705
    :cond_8e
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_9b

    .line 707
    const-string v2, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/JoinDomain"

    invoke-virtual {p1, v4, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 709
    :cond_9b
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_a8

    .line 711
    const-string v2, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/LeaveDomain"

    invoke-virtual {p1, v4, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 713
    :cond_a8
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_b6

    .line 715
    const-string v2, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/ProcessMeteringData"

    invoke-virtual {p1, v4, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 717
    :cond_b6
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_58

    .line 719
    const-string v2, "SOAPAction"

    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/GetMeteringCertificate"

    invoke-virtual {p1, v4, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 732
    .restart local v1       #postEntity:Lorg/apache/http/entity/InputStreamEntity;,
    :cond_c4
    iget v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v2, v5, :cond_d6

    .line 734
    const-string v2, "application/vnd.oma.drm.roap-pdu+xml"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 741
    :goto_cd
    move-object v0, p1

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v2, v0

    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_19

    .line 738
    :cond_d6
    const-string/jumbo v2, "text/xml; charset=utf-8"

    invoke-virtual {v1, v2}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_cd
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    const-string v5, "DrmDldClient"

    .line 168
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 170
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 174
    :cond_e
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    const-string v1, "BRW_SETTINGDB_UA_STRING_I"

    invoke-static {v0, v1}, Lcom/lge/provider/Andy_Flex;->getUserFlexValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    const-string v1, "BRW_SETTINGDB_UA_PROFILE_I"

    invoke-static {v0, v1}, Lcom/lge/provider/Andy_Flex;->getUserFlexValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->uaProfile:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_35

    .line 179
    const-string v0, "DrmDldClient"

    const-string/jumbo v0, "run() : Fail to get UAString"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0, v2, v3, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, v4}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 223
    :goto_34
    return-void

    .line 184
    :cond_35
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->uaProfile:Ljava/lang/String;

    if-nez v0, :cond_48

    .line 186
    const-string v0, "DrmDldClient"

    const-string/jumbo v0, "run() : Fail to get UAProfile"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-direct {p0, v2, v3, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0, v4}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    goto :goto_34

    .line 200
    :cond_48
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    .line 201
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_63

    .line 203
    const-string v0, "DrmDldClient"

    const-string/jumbo v0, "run() : Fail to create http client"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0, v2, v3, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v4}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    goto :goto_34

    .line 209
    :cond_63
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.socket.timeout"

    const/16 v2, 0x7530

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 211
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->processRequest()I

    move-result v0

    if-nez v0, :cond_89

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 220
    :goto_7a
    const-string v0, "DrmDldClient"

    const-string v0, "Close HTTP Client"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 222
    iput-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    goto :goto_34

    .line 217
    :cond_89
    invoke-direct {p0, v4}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    goto :goto_7a
.end method

.method public setUserConfirm(Z)V
    .registers 3
    .parameter "agreed"

    .prologue
    .line 1090
    if-eqz p1, :cond_6

    .line 1092
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    .line 1098
    :goto_5
    return-void

    .line 1096
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    goto :goto_5
.end method
