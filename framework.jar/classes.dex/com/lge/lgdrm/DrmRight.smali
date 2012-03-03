.class public final Lcom/lge/lgdrm/DrmRight;
.super Ljava/lang/Object;
.source "DrmRight.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "DrmRight"



# instance fields
.field private accumulated:Ljava/lang/String;

.field private count:Ljava/lang/String;

.field private dateTime:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private index:I

.field private individual:Ljava/lang/String;

.field private interval:Ljava/lang/String;

.field private metering:Z

.field private mid:Ljava/lang/String;

.field private permission:I

.field private previewContent:I

.field private system:Ljava/lang/String;

.field private timedCount:Ljava/lang/String;

.field private unlimited:Z

.field private useLeft:Ljava/lang/String;

.field private validFor:Ljava/lang/String;



# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method protected constructor <init>(Lcom/lge/lgdrm/DrmContent;)V
    .registers 3
    .parameter "content"

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iget-object v0, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    .line 202
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    .line 203
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->previewContent:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->previewContent:I

    .line 204
    iget v0, p1, Lcom/lge/lgdrm/DrmContent;->permisson:I

    iput v0, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    .line 205
    return-void
.end method

.method public static getKeyByCID(Ljava/lang/String;[B[B)I
    .registers 5
    .parameter "cid"
    .parameter "encKey"
    .parameter "authSeed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 229
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_8

    .line 231
    const/4 v0, -0x1

    .line 256
    :goto_7
    return v0

    .line 234
    :cond_8
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_16

    .line 236
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_16
    if-nez p0, :cond_20

    .line 241
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cid is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_20
    if-eqz p1, :cond_24

    if-nez p2, :cond_2d

    .line 245
    :cond_24
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "one of the key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_2d
    array-length v0, p1

    if-ge v0, v1, :cond_38

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encKey length is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_38
    array-length v0, p2

    if-ge v0, v1, :cond_43

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authSeed length is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_43
    invoke-static {p0, p1, p2}, Lcom/lge/lgdrm/DrmRight;->nativeGetKeyByCID(Ljava/lang/String;[B[B)I

    move-result v0

    goto :goto_7
.end method

.method public static getRegistrationCode()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 292
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_6

    .line 294
    const/4 v0, 0x0

    .line 302
    :goto_5
    return-object v0

    .line 297
    :cond_6
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_14

    .line 299
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_14
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeGetRegistrationCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private native nativeCheckMetering(Ljava/lang/String;)Z
.end method

.method private static native nativeGetKeyByCID(Ljava/lang/String;[B[B)I
.end method

.method private static native nativeGetRegistrationCode()Ljava/lang/String;
.end method

.method private native nativeGetRightInfo(Ljava/lang/String;III)I
.end method

.method private native nativeManageMetering(Ljava/lang/String;Z)I
.end method

.method private static native nativeSetRandomSample()V
.end method

.method public static setRandomSample()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 268
    sget-boolean v0, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v0, :cond_5

    .line 279
    :goto_4
    return-void

    .line 273
    :cond_5
    invoke-static {}, Lcom/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_13

    .line 275
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_13
    invoke-static {}, Lcom/lge/lgdrm/DrmRight;->nativeSetRandomSample()V

    goto :goto_4
.end method

.method private setRightInfo(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "unlimited"
    .parameter "metering"
    .parameter "useLeft"
    .parameter "validFor"
    .parameter "count"
    .parameter "dateTime"
    .parameter "interval"
    .parameter "timedCount"
    .parameter "accumulated"
    .parameter "individual"
    .parameter "system"
    .parameter "mid"

    .prologue
    .line 583
    iput-boolean p1, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    .line 584
    iput-object p3, p0, Lcom/lge/lgdrm/DrmRight;->useLeft:Ljava/lang/String;

    .line 585
    iput-object p4, p0, Lcom/lge/lgdrm/DrmRight;->validFor:Ljava/lang/String;

    .line 586
    iput-object p5, p0, Lcom/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    .line 587
    iput-object p6, p0, Lcom/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    .line 588
    iput-object p7, p0, Lcom/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    .line 589
    iput-object p8, p0, Lcom/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    .line 590
    iput-object p9, p0, Lcom/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    .line 591
    iput-object p10, p0, Lcom/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    .line 592
    iput-object p11, p0, Lcom/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    .line 593
    iput-boolean p2, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    .line 594
    iput-object p12, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    .line 595
    return-void
.end method


# virtual methods
.method public disableMetering()I
    .registers 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmRight;->nativeManageMetering(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public enableMetering()I
    .registers 3

    .prologue
    .line 531
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/lgdrm/DrmRight;->nativeManageMetering(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getConstraint(I)Ljava/lang/String;
    .registers 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    if-eqz v0, :cond_6

    .line 494
    const/4 v0, 0x0

    .line 505
    :goto_5
    return-object v0

    .line 497
    :cond_6
    packed-switch p1, :pswitch_data_26

    .line 507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :pswitch_11
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    goto :goto_5

    .line 500
    :pswitch_14
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    goto :goto_5

    .line 501
    :pswitch_17
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    goto :goto_5

    .line 502
    :pswitch_1a
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    goto :goto_5

    .line 503
    :pswitch_1d
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    goto :goto_5

    .line 504
    :pswitch_20
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    goto :goto_5

    .line 505
    :pswitch_23
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    goto :goto_5

    .line 497
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public getConstraintList()[I
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 403
    const/4 v0, 0x0

    .line 407
    .local v0, indx:I
    iget-boolean v3, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    if-eqz v3, :cond_9

    move-object v3, v4

    .line 467
    :goto_8
    return-object v3

    .line 412
    :cond_9
    const/16 v3, 0x8

    new-array v2, v3, [I

    .line 413
    .local v2, tmp:[I
    if-nez v2, :cond_11

    move-object v3, v4

    .line 415
    goto :goto_8

    .line 418
    :cond_11
    iget-object v3, p0, Lcom/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 420
    const/4 v3, 0x1

    aput v3, v2, v0

    .line 421
    add-int/lit8 v0, v0, 0x1

    .line 423
    :cond_1a
    iget-object v3, p0, Lcom/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    if-eqz v3, :cond_23

    .line 425
    const/4 v3, 0x2

    aput v3, v2, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    .line 428
    :cond_23
    iget-object v3, p0, Lcom/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    if-eqz v3, :cond_2c

    .line 430
    const/4 v3, 0x3

    aput v3, v2, v0

    .line 431
    add-int/lit8 v0, v0, 0x1

    .line 433
    :cond_2c
    iget-object v3, p0, Lcom/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    if-eqz v3, :cond_35

    .line 435
    const/4 v3, 0x4

    aput v3, v2, v0

    .line 436
    add-int/lit8 v0, v0, 0x1

    .line 438
    :cond_35
    iget-object v3, p0, Lcom/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    if-eqz v3, :cond_3e

    .line 440
    const/4 v3, 0x5

    aput v3, v2, v0

    .line 441
    add-int/lit8 v0, v0, 0x1

    .line 443
    :cond_3e
    iget-object v3, p0, Lcom/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    if-eqz v3, :cond_47

    .line 445
    const/4 v3, 0x6

    aput v3, v2, v0

    .line 446
    add-int/lit8 v0, v0, 0x1

    .line 448
    :cond_47
    iget-object v3, p0, Lcom/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    if-eqz v3, :cond_50

    .line 450
    const/4 v3, 0x7

    aput v3, v2, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    .line 454
    :cond_50
    if-nez v0, :cond_54

    move-object v3, v4

    .line 456
    goto :goto_8

    .line 459
    :cond_54
    new-array v1, v0, [I

    .line 460
    .local v1, list:[I
    if-nez v1, :cond_5a

    move-object v3, v4

    .line 462
    goto :goto_8

    .line 465
    :cond_5a
    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    .line 467
    goto :goto_8
.end method

.method public getPermission()I
    .registers 2

    .prologue
    .line 358
    iget v0, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    return v0
.end method

.method public getSummaryInfo(I)Ljava/lang/String;
    .registers 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 377
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->validFor:Ljava/lang/String;

    .line 382
    :goto_5
    return-object v0

    .line 380
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 382
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->useLeft:Ljava/lang/String;

    goto :goto_5

    .line 385
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isMatched(Lcom/lge/lgdrm/DrmContent;)Z
    .registers 5
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 565
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    iget-object v1, p1, Lcom/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    .line 573
    :goto_c
    return v0

    .line 569
    :cond_d
    iget v0, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    iget v1, p1, Lcom/lge/lgdrm/DrmContent;->index:I

    if-eq v0, v1, :cond_15

    move v0, v2

    .line 571
    goto :goto_c

    .line 573
    :cond_15
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public isMeteringEnabled()Z
    .registers 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmRight;->nativeCheckMetering(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMeteringRight()Z
    .registers 2

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    return v0
.end method

.method public isUnlimited()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    return v0
.end method

.method public isValidRight()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 313
    iget-object v1, p0, Lcom/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    iget v2, p0, Lcom/lge/lgdrm/DrmRight;->index:I

    iget v3, p0, Lcom/lge/lgdrm/DrmRight;->previewContent:I

    iget v4, p0, Lcom/lge/lgdrm/DrmRight;->permission:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/lge/lgdrm/DrmRight;->nativeGetRightInfo(Ljava/lang/String;III)I

    move-result v0

    .line 315
    .local v0, retVal:I
    if-eqz v0, :cond_26

    .line 318
    iput-boolean v6, p0, Lcom/lge/lgdrm/DrmRight;->unlimited:Z

    .line 319
    iput-boolean v6, p0, Lcom/lge/lgdrm/DrmRight;->metering:Z

    .line 320
    iput-object v5, p0, Lcom/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    .line 321
    iput-object v5, p0, Lcom/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    .line 322
    iput-object v5, p0, Lcom/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    .line 323
    iput-object v5, p0, Lcom/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    .line 324
    iput-object v5, p0, Lcom/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    .line 325
    iput-object v5, p0, Lcom/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    .line 326
    iput-object v5, p0, Lcom/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    .line 327
    iput-object v5, p0, Lcom/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    move v1, v6

    .line 331
    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x1

    goto :goto_25
.end method
