.class public Lcom/broadcom/bt/service/map/provider/ProviderHelper;
.super Ljava/lang/Object;
.source "ProviderHelper.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "MAP.ProviderHelper"



# instance fields
.field mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

.field mProviderId:Ljava/lang/String;



# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .registers 3
    .parameter "provider"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    .line 72
    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public static addFilter_DSDiscover(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .registers 2
    .parameter "filter"

    .prologue
    .line 58
    if-nez p0, :cond_7

    .line 59
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0       
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .restart local p0       
    :cond_7
    const-string v0, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    return-object p0
.end method

.method public static createIntent_DSDiscover()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getMSETime()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x8

    .line 80
    const-string v2, ""

    .line 85
    .local v2, sMSEDateTime:Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 86
    .local v0, d:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "T"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v3, "MAP.ProviderHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSEDateTime :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-object v2
.end method

.method private getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private paramsValid(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"

    .prologue
    const-string v3, "(null)"

    .line 394
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 395
    :cond_e
    const-string v0, "MAP.ProviderHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid param!. requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "datasourceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p2, :cond_40

    const-string v2, "(null)"

    move-object v2, v3

    :goto_2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_42

    const-string v2, "(null)"

    move-object v2, v3

    :goto_33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_3f
    return v0

    :cond_40
    move-object v2, p2

    .line 395
    goto :goto_2a

    :cond_42
    move-object v2, p3

    goto :goto_33

    .line 400
    :cond_44
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method private sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .parameter "datasourceId"
    .parameter "notificationType"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "oldFolderPath"

    .prologue
    const/4 v2, 0x0

    const-string v3, "MAP.ProviderHelper"

    .line 277
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 279
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_b

    if-nez p1, :cond_14

    .line 280
    :cond_b
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "Unable to send notification. Proxy or datasource is null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 290
    :goto_13
    return v1

    .line 283
    :cond_14
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-boolean v1, v1, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-nez v1, :cond_23

    .line 284
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "Unable to send notification. Notification is not enabled"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 285
    goto :goto_13

    .line 287
    :cond_23
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProvider:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    iget-byte v7, v2, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)I

    .line 290
    const/4 v1, 0x1

    goto :goto_13
.end method


# virtual methods
.method public returnMessage(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 13
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "msgCharset"
    .parameter "msgUri"

    .prologue
    const-string v2, "MAP.ProviderHelper"

    .line 363
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->paramsValid(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 364
    const-string v1, "MAP.ProviderHelper"

    const-string/jumbo v1, "returnMessage(): invalid params. ignoring request."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_10
    return-void

    .line 367
    :cond_11
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 368
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_1e

    .line 369
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "Proxy is not available...Ignoring request..."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1e
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    goto :goto_10
.end method

.method public returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"

    .prologue
    const-string v2, "MAP.ProviderHelper"

    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->paramsValid(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 348
    const-string v1, "MAP.ProviderHelper"

    const-string/jumbo v1, "returnNoMessage(): invalid params. ignoring request."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_10
    return-void

    .line 352
    :cond_11
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 353
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_1e

    .line 354
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "Proxy is not available...Ignoring request..."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1e
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    goto :goto_10
.end method

.method public sendFolderInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)Z
    .registers 16
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "status"
    .parameter "folderInfo"

    .prologue
    const/4 v8, 0x0

    .line 247
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 249
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    if-nez p3, :cond_14

    .line 250
    :cond_b
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send FolderInfo. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 257
    :goto_13
    return v1

    :cond_14
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 254
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    move-result v7

    .line 257
    .local v7, ret:I
    if-nez v7, :cond_22

    const/4 v1, 0x1

    goto :goto_13

    :cond_22
    move v1, v8

    goto :goto_13
.end method

.method public sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 190
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_d

    .line 191
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_d
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    .line 196
    return-void
.end method

.method public sendFolderListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p4, folderInfos:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/FolderInfo;>;"
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Lcom/broadcom/bt/service/map/FolderInfo;

    .line 208
    .local v6, fldInfoArray:[Lcom/broadcom/bt/service/map/FolderInfo;
    invoke-interface {p4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 210
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 211
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_16

    .line 212
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_16
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    .line 217
    return-void
.end method

.method public sendFolderListings(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 15
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "folderNames"

    .prologue
    const-string v2, "MAP.ProviderHelper"

    .line 221
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 222
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_f

    .line 223
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "Proxy is not available...Ignoring request..."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_f
    if-eqz p4, :cond_14

    array-length v1, p4

    if-nez v1, :cond_1c

    .line 227
    :cond_14
    const-string v1, "MAP.ProviderHelper"

    const-string v1, "No folders specified"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_1b
    return-void

    .line 231
    :cond_1c
    new-instance v7, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 233
    .local v7, folderInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/service/map/FolderInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_23
    array-length v1, p4

    if-ge v8, v1, :cond_35

    .line 234
    new-instance v9, Lcom/broadcom/bt/service/map/FolderInfo;

    invoke-direct {v9}, Lcom/broadcom/bt/service/map/FolderInfo;-><init>()V

    .line 235
    .local v9, info:Lcom/broadcom/bt/service/map/FolderInfo;
    aget-object v1, p4, v8

    iput-object v1, v9, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    .line 236
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 238
    .end local v9       #info:Lcom/broadcom/bt/service/map/FolderInfo;,
    :cond_35
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v6, v1, [Lcom/broadcom/bt/service/map/FolderInfo;

    .line 239
    .local v6, fldInfoArray:[Lcom/broadcom/bt/service/map/FolderInfo;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I

    goto :goto_1b
.end method

.method public sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 111
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_d

    .line 112
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_d
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, mseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .line 117
    .local v7, newMsg:B
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v8, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    .line 119
    return-void
.end method

.method public sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 15
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/MessageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p4, msgInfos:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 125
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_d

    .line 126
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_d
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getMSETime()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, mseTime:Ljava/lang/String;
    const/4 v7, 0x0

    .line 131
    .local v7, newMsg:B
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Lcom/broadcom/bt/service/map/MessageInfo;

    .line 132
    .local v8, msgInfoArray:[Lcom/broadcom/bt/service/map/MessageInfo;
    invoke-interface {p4, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 133
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1c
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_2d

    .line 136
    invoke-interface {p4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MessageInfo;

    iget-boolean v1, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    if-nez v1, :cond_37

    .line 137
    const/4 v7, 0x1

    .line 141
    :cond_2d
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    .line 143
    return-void

    .line 133
    :cond_37
    add-int/lit8 v9, v9, 0x1

    goto :goto_1c
.end method

.method public sendMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .registers 16
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msgFilePath"

    .prologue
    const/4 v8, 0x0

    .line 175
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 177
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    if-nez p3, :cond_14

    .line 178
    :cond_b
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send sendMsg. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 183
    :goto_13
    return v1

    :cond_14
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 181
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    move-result v7

    .line 183
    .local v7, ret:I
    if-nez v7, :cond_22

    const/4 v1, 0x1

    goto :goto_13

    :cond_22
    move v1, v8

    goto :goto_13
.end method

.method public sendMsgListInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)Z
    .registers 19
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "parentPath"
    .parameter "status"
    .parameter "mseTime"
    .parameter "newMsg"
    .parameter "msgInfo"

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 150
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_a

    if-eqz p2, :cond_a

    if-nez p3, :cond_13

    .line 151
    :cond_a
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send MsgListInfo. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v1, 0x0

    .line 156
    :goto_12
    return v1

    :cond_13
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 154
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I

    move-result v9

    .line 156
    .local v9, ret:I
    if-nez v9, :cond_26

    const/4 v1, 0x1

    goto :goto_12

    :cond_26
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z
    .registers 17
    .parameter "requestId"
    .parameter "providerId"
    .parameter "dataSourceId"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 264
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_a

    if-eqz p2, :cond_a

    if-nez p3, :cond_13

    .line 265
    :cond_a
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send FolderInfo. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v1, 0x0

    .line 271
    :goto_12
    return v1

    :cond_13
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 268
    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/BluetoothMAP;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 271
    .local v8, ret:I
    if-nez v8, :cond_23

    const/4 v1, 0x1

    goto :goto_12

    :cond_23
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public sendNotification_DeleteFromMAPOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 337
    const/16 v2, 0x7d

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 339
    return-void
.end method

.method public sendNotification_DeliveryFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 318
    const/4 v2, 0x3

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    return-void
.end method

.method public sendNotification_DeliverySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 312
    const/4 v2, 0x1

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 314
    return-void
.end method

.method public sendNotification_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 342
    const/4 v2, 0x7

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 344
    return-void
.end method

.method public sendNotification_MessageDelivered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 324
    const/4 v2, 0x1

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 326
    return-void
.end method

.method public sendNotification_MessageShift(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"
    .parameter "oldFolderPath"

    .prologue
    .line 330
    const/16 v2, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 332
    return-void
.end method

.method public sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 294
    const/4 v2, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 296
    return-void
.end method

.method public sendNotification_SendingFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 306
    const/4 v2, 0x4

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    return-void
.end method

.method public sendNotification_SendingSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 300
    const/4 v2, 0x2

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification(Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    return-void
.end method

.method public sendPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z
    .registers 16
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    const/4 v8, 0x0

    .line 162
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 164
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-eqz v0, :cond_b

    if-eqz p2, :cond_b

    if-nez p3, :cond_14

    .line 165
    :cond_b
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Unable to send sendPushResponse. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 169
    :goto_13
    return v1

    :cond_14
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 168
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    move-result v7

    .line 169
    .local v7, ret:I
    if-nez v7, :cond_22

    const/4 v1, 0x1

    goto :goto_13

    :cond_22
    move v1, v8

    goto :goto_13
.end method

.method public setMsgPushStatus_Error(ILjava/lang/String;)V
    .registers 10
    .parameter "requestId"
    .parameter "datasourceId"

    .prologue
    const-string v4, ""

    .line 385
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 386
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_f

    .line 387
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_f
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const-string v1, ""

    const/4 v5, 0x1

    const-string v1, ""

    move v1, p1

    move-object v3, p2

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    .line 391
    return-void
.end method

.method public setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "folderPath"

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->getProxy()Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-result-object v0

    .line 377
    .local v0, mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;
    if-nez v0, :cond_d

    .line 378
    const-string v1, "MAP.ProviderHelper"

    const-string v2, "Proxy is not available...Ignoring request..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_d
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->mProviderId:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/BluetoothMAP;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I

    .line 382
    return-void
.end method
