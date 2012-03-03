.class public final Lcom/android/internal/telephony/cdma/RuimRecords;
.super Lcom/android/internal/telephony/UiccApplicationRecords;
.source "RuimRecords.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/RuimRecords$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_IMSI_M_DONE:I = 0x6

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"



# instance fields
.field private mContext:Landroid/content/Context;

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private m_ota_commited:Z



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 8
    .parameter "parent"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/android/internal/telephony/UiccApplicationRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccRecords;)V

    .line 56
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 96
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 103
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    .line 106
    iput v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->resetRecords()V

    .line 113
    return-void
.end method

.method private fetchRuimRecords()V
    .registers 6

    .prologue
    const-string v4, "RuimRecords:fetchRuimRecords "

    const-string v3, "CDMA"

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    .line 363
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords:fetchRuimRecords "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f22

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 369
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x2fe2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 374
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    .line 376
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords:fetchRuimRecords "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method

.method private handleRuimRefresh(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    .line 394
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/IccRefreshResponse;

    .line 395
    .local v0, state:Lcom/android/internal/telephony/IccRefreshResponse;
    if-nez v0, :cond_c

    .line 396
    const-string v1, "handleRuimRefresh received without input"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 427
    :goto_b
    return-void

    .line 400
    :cond_c
    sget-object v1, Lcom/android/internal/telephony/cdma/RuimRecords$1;->$SwitchMap$com$android$internal$telephony$IccRefreshResponse$Result:[I

    iget-object v2, v0, Lcom/android/internal/telephony/IccRefreshResponse;->refreshResult:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRefreshResponse$Result;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_44

    .line 424
    const-string v1, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 402
    :pswitch_1f
    const-string v1, "handleRuimRefresh with SIM_FILE_UPDATED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 404
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_b

    .line 407
    :pswitch_2d
    const-string v1, "handleRuimRefresh with SIM_INIT"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_b

    .line 412
    :pswitch_36
    const-string v1, "handleRuimRefresh with SIM_RESET"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_b

    .line 400
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2d
        :pswitch_36
    .end packed-switch
.end method

.method private onRuimReady()V
    .registers 3

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 357
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 4

    .prologue
    .line 116
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disposing RuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->resetRecords()V

    .line 120
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 124
    const-string v0, "CDMA"

    const-string v1, "RuimRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method protected getDisplayRule(Ljava/lang/String;)I
    .registers 3
    .parameter "plmn"

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 194
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 195
    const/4 v1, 0x0

    .line 208
    :goto_6
    return-object v1

    .line 198
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1b

    iget v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    if-eqz v1, :cond_1b

    .line 201
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 207
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const-string/jumbo v6, "persist.radio.refresh_status"

    const-string v8, "CDMA"

    .line 217
    const/4 v4, 0x0

    .line 219
    .local v4, isRecordLoadResponse:Z
    iget-boolean v6, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mDestroyed:Z

    if-eqz v6, :cond_35

    .line 220
    const-string v6, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] while being destroyed. Ignoring."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_34
    :goto_34
    return-void

    .line 225
    :cond_35
    :try_start_35
    iget v6, p1, Landroid/os/Message;->what:I
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_58
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_37} :catch_44

    packed-switch v6, :pswitch_data_16a

    .line 323
    :cond_3a
    :goto_3a
    :pswitch_3a
    if-eqz v4, :cond_34

    .line 324
    :goto_3c
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    goto :goto_34

    .line 227
    :pswitch_40
    :try_start_40
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRuimReady()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_58
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_3a

    .line 318
    :catch_44
    move-exception v6

    move-object v3, v6

    .line 320
    .local v3, exc:Ljava/lang/RuntimeException;
    :try_start_46
    const-string v6, "CDMA"

    const-string v7, "Exception parsing RUIM record"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_58

    .line 323
    if-eqz v4, :cond_34

    goto :goto_3c

    .line 231
    .end local v3       #exc:Ljava/lang/RuntimeException;,
    :pswitch_50
    :try_start_50
    const-string v6, "CDMA"

    const-string v7, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_58
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_57} :catch_44

    goto :goto_3a

    .line 323
    :catchall_58
    move-exception v6

    if-eqz v4, :cond_5e

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    .line 323
    :cond_5e
    throw v6

    .line 237
    :pswitch_5f
    :try_start_5f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 238
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 239
    .local v5, localTemp:[Ljava/lang/String;
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3a

    .line 243
    const/4 v6, 0x0

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 244
    const/4 v6, 0x3

    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 245
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MDN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " MIN: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 250
    .end local v1       #ar:Landroid/os/AsyncResult;,
    .end local v5       #localTemp:[Ljava/lang/String;,
    :pswitch_a0
    const/4 v4, 0x1

    .line 252
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 253
    .restart local v1       #ar:Landroid/os/AsyncResult;,
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 255
    .local v2, data:[B
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3a

    .line 259
    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v6, v7}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->iccid:Ljava/lang/String;

    .line 261
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iccid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 267
    .end local v1       #ar:Landroid/os/AsyncResult;,
    .end local v2       #data:[B,
    :pswitch_d5
    const/4 v4, 0x1

    .line 269
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 270
    .restart local v1       #ar:Landroid/os/AsyncResult;,
    iget-object v6, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v2, v0

    .line 272
    .restart local v2       #data:[B,
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3a

    .line 275
    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->imsi_m:Ljava/lang/String;

    .line 277
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "imsi_m: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->imsi_m:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 282
    .end local v1       #ar:Landroid/os/AsyncResult;,
    .end local v2       #data:[B,
    :pswitch_108
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 283
    .restart local v1       #ar:Landroid/os/AsyncResult;,
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_3a

    .line 284
    const-string v6, "CDMA"

    const-string v7, "RuimRecords update failed"

    iget-object v8, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v6, v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3a

    .line 292
    .end local v1       #ar:Landroid/os/AsyncResult;,
    :pswitch_11b
    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 297
    :pswitch_137
    const-string v6, "CDMA"

    const-string v7, "Event EVENT_GET_SST_DONE Received"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 301
    :pswitch_140
    const/4 v4, 0x0

    .line 302
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 303
    .restart local v1       #ar:Landroid/os/AsyncResult;,
    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3a

    .line 308
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "persist.radio.refresh_status"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    const-string/jumbo v6, "persist.radio.refresh_status"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v6, "CDMA"

    const-string v7, "Event EVENT_RUIM_REFRESH Received"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->handleRuimRefresh(Landroid/os/AsyncResult;)V
    :try_end_168
    .catchall {:try_start_5f .. :try_end_168} :catchall_58
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_168} :catch_44

    goto/16 :goto_3a

    .line 225
    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_40
        :pswitch_140
        :pswitch_3a
        :pswitch_50
        :pswitch_a0
        :pswitch_d5
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_5f
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_108
        :pswitch_3a
        :pswitch_3a
        :pswitch_137
        :pswitch_11b
        :pswitch_11b
        :pswitch_3a
        :pswitch_11b
        :pswitch_11b
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 431
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 346
    const-string v0, "CDMA"

    const-string v1, "RuimRecords: record load complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 352
    return-void
.end method

.method protected onRecordLoaded()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const-string v3, "CDMA"

    .line 333
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    .line 334
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RuimRecords:onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    if-ne v0, v2, :cond_3a

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onAllRecordsLoaded()V

    .line 342
    :cond_39
    :goto_39
    return-void

    .line 338
    :cond_3a
    iget v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    if-gez v0, :cond_39

    .line 339
    const-string v0, "CDMA"

    const-string v0, "RuimRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsToLoad:I

    goto :goto_39
.end method

.method public onRefresh(Z[I)V
    .registers 3
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 181
    if-eqz p1, :cond_5

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 187
    :cond_5
    return-void
.end method

.method protected resetRecords()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mncLength:I

    .line 129
    iput-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->iccid:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->imsi_m:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->recordsRequested:Z

    .line 146
    const-string/jumbo v0, "persist.radio.refresh_status"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .registers 3
    .parameter "imsi"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsi:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/UiccApplicationRecords;->mImsiReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 172
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 163
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/IccException;

    const-string/jumbo v2, "setVoiceMailNumber not implemented"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 165
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 166
    const-string v0, "CDMA"

    const-string v1, "method setVoiceMailNumber is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public setVoiceMessageWaiting(IILandroid/os/Message;)V
    .registers 6
    .parameter "line"
    .parameter "countWaiting"
    .parameter "onComplete"

    .prologue
    .line 390
    const-string v0, "CDMA"

    const-string v1, "RuimRecords:setVoiceMessageWaiting - NOP for CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    return-void
.end method
