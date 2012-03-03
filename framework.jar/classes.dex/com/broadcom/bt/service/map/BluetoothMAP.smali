.class public Lcom/broadcom/bt/service/map/BluetoothMAP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothMAP.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;,
        Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;
    }
.end annotation


# static fields
.field public static final BTLIF_MA_CHARSET_NATIVE:I = 0x0

.field public static final BTLIF_MA_CHARSET_UNKNOWN:I = 0x2

.field public static final BTLIF_MA_CHARSET_UTF_8:I = 0x1

.field public static final BTLIF_MA_PRI_STATUS_HIGH:I = 0x1

.field public static final BTLIF_MA_PRI_STATUS_NON_HIGH:I = 0x2

.field public static final BTLIF_MA_PRI_STATUS_NO_FILTERING:I = 0x0

.field private static final D:Z = true

.field public static final LIST_STATUS_NO_LIST:B = 0x2t

.field public static final LIST_STATUS_SUCCESS:B = 0x0t

.field public static final MAP_FAIL:I = 0x1

.field public static final MAP_FAILED_TO_CREATE_MAP_SERVICE:I = 0x1

.field public static final MAP_FILTER_MSGTYPE_EMAIL:B = 0x4t

.field public static final MAP_FILTER_MSGTYPE_MMS:B = 0x8t

.field public static final MAP_FILTER_MSGTYPE_SMS_CDMA:B = 0x2t

.field public static final MAP_FILTER_MSGTYPE_SMS_GSM:B = 0x1t

.field public static final MAP_LENGTH_ADJUSTER:I = 0x16

.field public static final MAP_MSG_MASK_ATTACHMENT_SIZE:I = 0x400

.field public static final MAP_MSG_MASK_DATETIME:I = 0x2

.field public static final MAP_MSG_MASK_PRIORITY:I = 0x800

.field public static final MAP_MSG_MASK_PROTECTED:I = 0x4000

.field public static final MAP_MSG_MASK_READ:I = 0x1000

.field public static final MAP_MSG_MASK_RECEPTION_STATUS:I = 0x100

.field public static final MAP_MSG_MASK_RECIPIENT_ADDRESSING:I = 0x20

.field public static final MAP_MSG_MASK_RECIPIENT_NAME:I = 0x10

.field public static final MAP_MSG_MASK_SENDER_ADDRESSING:I = 0x8

.field public static final MAP_MSG_MASK_SENDER_NAME:I = 0x4

.field public static final MAP_MSG_MASK_SENT:I = 0x2000

.field public static final MAP_MSG_MASK_SIZE:I = 0x80

.field public static final MAP_MSG_MASK_SUBJECT:I = 0x1

.field public static final MAP_MSG_MASK_TEXT:I = 0x200

.field public static final MAP_MSG_MASK_TYPE:I = 0x40

.field public static final MAP_MSG_REPLYTO_ADDRESSING:I = 0x8000

.field public static final MAP_MSG_STATUS_FAIL:I = 0x3

.field public static final MAP_MSG_STATUS_INVALID_PARENT_PATH:I = 0x1

.field public static final MAP_MSG_STATUS_NO_MESSAGES:I = 0x2

.field public static final MAP_MSG_STATUS_SUCCESS:I = 0x0

.field public static final MAP_MSG_TYPE_EMAIL:I = 0x1

.field public static final MAP_MSG_TYPE_MMS:I = 0x8

.field public static final MAP_MSG_TYPE_SMS_CDMA:I = 0x4

.field public static final MAP_MSG_TYPE_SMS_GSM:I = 0x2

.field public static final MAP_NOTIFICATION_ALLOW:I = 0x0

.field public static final MAP_NOTIFICATION_FORBID:I = 0x1

.field public static final MAP_RCV_STATUS_COMPLETE:I = 0x0

.field public static final MAP_RCV_STATUS_FRACTIONED:I = 0x1

.field public static final MAP_RCV_STATUS_NOTIFICATION:I = 0x2

.field public static final MAP_REMOTE_EXECUTION_ERROR:I = 0x2

.field public static final MAP_STATUS_TYPE_DELETED:I = 0x2

.field public static final MAP_STATUS_TYPE_READ:I = 0x1

.field public static final MAP_SUCCESS:I = 0x0

.field public static final PROVIDER_TYPE_EMAIL:B = 0x1t

.field public static final PROVIDER_TYPE_MMS:B = 0x8t

.field public static final PROVIDER_TYPE_SMS_CDMA:B = 0x4t

.field public static final PROVIDER_TYPE_SMS_GSM:B = 0x2t

.field private static REF_COUNT:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_map"

.field private static final TAG:Ljava/lang/String; = "MAP.BluetoothMAP"



# instance fields
.field protected mFeatureMessageFilter:Z

.field protected mFolderMappings:[Ljava/lang/String;

.field protected mMapCallback:Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

.field protected mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

.field protected mMapService:Lcom/broadcom/bt/service/map/IMapService;

.field protected mProviderDisplayName:Ljava/lang/String;

.field protected mProviderDsDisplayName:Ljava/lang/String;

.field protected mProviderDsId:Ljava/lang/String;

.field protected mProviderId:Ljava/lang/String;

.field protected mProviderType:B

.field protected mfeatureMessageOffsetBrowsing:Z



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 144
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 287
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 146
    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    .line 147
    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    .line 289
    sget v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    .line 290
    const-string v0, "MAP.BluetoothMAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothMAP(): instance= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", REF_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 7
    .parameter "ctx"
    .parameter "cb"

    .prologue
    const-string/jumbo v4, "null"

    const-string v3, "MAP.BluetoothMAP"

    .line 129
    const-string v1, "MAP.BluetoothMAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProxy() ctx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p0, :cond_44

    const-string/jumbo v2, "null"

    move-object v2, v4

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cb ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_46

    const-string/jumbo v2, "null"

    move-object v2, v4

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v1, "bluetooth_map"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 134
    const-string v1, "MAP.BluetoothMAP"

    const-string v1, "Unable to get proxy: service is not enabled."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    .line 139
    :goto_43
    return v1

    :cond_44
    move-object v2, p0

    .line 129
    goto :goto_18

    :cond_46
    move-object v2, p1

    goto :goto_28

    .line 137
    :cond_48
    new-instance v0, Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/BluetoothMAP;-><init>()V

    .line 139
    .local v0, p:Lcom/broadcom/bt/service/map/BluetoothMAP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.MapService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_43
.end method

.method public static isValidMsgStatus(B)Z
    .registers 3
    .parameter "val"

    .prologue
    const/4 v1, 0x1

    .line 113
    if-eq v1, p0, :cond_6

    const/4 v0, 0x2

    if-ne v0, p0, :cond_8

    :cond_6
    move v0, v1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    const-string v2, "MAP.BluetoothMAP"

    .line 623
    const-string v1, "MAP.BluetoothMAP"

    const-string v1, "disableProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/map/IMapService;->disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 635
    :goto_e
    return-void

    .line 630
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    const-string v2, "MAP.BluetoothMAP"

    .line 606
    const-string v1, "MAP.BluetoothMAP"

    const-string v1, "enableProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :try_start_9
    iget-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v1, p1, p2, p3}, Lcom/broadcom/bt/service/map/IMapService;->enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    .line 618
    :goto_e
    return-void

    .line 613
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 615
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public enumRegisteredProviders()[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "MAP.BluetoothMAP"

    .line 579
    const-string v5, "MAP.BluetoothMAP"

    const-string v5, "BluetoothMAP::enumRegisteredProviders"

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :try_start_b
    iget-object v5, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v5}, Lcom/broadcom/bt/service/map/IMapService;->enumRegisteredProviders()[Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, providers:[Ljava/lang/String;
    array-length v5, v3

    new-array v4, v5, [Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    .line 585
    .local v4, rp:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    array-length v5, v3

    if-ge v1, v5, :cond_51

    .line 587
    aget-object v5, v3, v1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, parts:[Ljava/lang/String;
    new-instance v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;

    invoke-direct {v5, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;-><init>(Lcom/broadcom/bt/service/map/BluetoothMAP;)V

    aput-object v5, v4, v1

    .line 589
    aget-object v5, v4, v1

    const/4 v6, 0x0

    aget-object v6, v2, v6

    iput-object v6, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->providerID:Ljava/lang/String;

    .line 590
    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v6, v2, v6

    iput-object v6, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceID:Ljava/lang/String;

    .line 591
    aget-object v5, v4, v1

    const/4 v6, 0x2

    aget-object v6, v2, v6

    iput-object v6, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->datasourceName:Ljava/lang/String;

    .line 592
    aget-object v5, v4, v1

    const/4 v6, 0x3

    aget-object v6, v2, v6

    const-string v7, "enabled"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4f

    move v6, v9

    :goto_4a
    iput-boolean v6, v5, Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;->fEnabled:Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_4c} :catch_53

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_4f
    move v6, v8

    .line 592
    goto :goto_4a

    .end local v2       #parts:[Ljava/lang/String;,
    :cond_51
    move-object v5, v4

    .line 600
    .end local v1       #i:I,
    .end local v3       #providers:[Ljava/lang/String;,
    .end local v4       #rp:[Lcom/broadcom/bt/service/map/BluetoothMAP$RegisteredProvider;,
    :goto_52
    return-object v5

    .line 596
    :catch_53
    move-exception v5

    move-object v0, v5

    .line 598
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/4 v5, 0x0

    goto :goto_52
.end method

.method protected finalize()V
    .registers 4

    .prologue
    .line 296
    sget v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    .line 297
    const-string v0, "MAP.BluetoothMAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize(): REF_COUNT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/map/BluetoothMAP;->REF_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 301
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    if-eqz v0, :cond_2a

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    .line 304
    :cond_2a
    return-void
.end method

.method public declared-synchronized finish()V
    .registers 3

    .prologue
    const-string v0, "MAP.BluetoothMAP"

    .line 329
    monitor-enter p0

    :try_start_3
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    if-eqz v0, :cond_18

    .line 334
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "Finishing service reference..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    .line 340
    :cond_18
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapCallback:Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

    if-eqz v0, :cond_24

    .line 341
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapCallback:Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;->mmapAPI:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapCallback:Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

    .line 344
    :cond_24
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    .line 345
    monitor-exit p0

    return-void

    .line 329
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)I
    .registers 16
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "folder_path"
    .parameter "status"
    .parameter "folder_info"

    .prologue
    .line 463
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "folderListingResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v8, 0x0

    .line 468
    .local v8, ret:I
    :try_start_8
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    .line 475
    :goto_13
    return v8

    .line 470
    :catch_14
    move-exception v0

    move-object v7, v0

    .line 471
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v8, 0x2

    goto :goto_13
.end method

.method public getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I
    .registers 16
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msgFilePath"

    .prologue
    .line 534
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "getMsgResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v8, 0x0

    .line 539
    .local v8, ret:I
    :try_start_8
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    .line 546
    :goto_13
    return v8

    .line 541
    :catch_14
    move-exception v0

    move-object v7, v0

    .line 542
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v8, 0x2

    goto :goto_13
.end method

.method public init(Landroid/content/Context;Lcom/broadcom/bt/service/map/IMapEventHandler;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)I
    .registers 14
    .parameter "context"
    .parameter "mapEventHandler"
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "provider_display_name"
    .parameter "provider_ds_id"
    .parameter "provider_ds_display_name"
    .parameter "feature_message_filter"
    .parameter "feature_message_offset_browsing"
    .parameter "folder_mappings"

    .prologue
    const-string v2, "MAP.BluetoothMAP"

    .line 352
    const-string v1, "MAP.BluetoothMAP"

    const-string v1, "init(Context context, IMapEventHandler mapEventHandler, byte provider_type, String provider_id, String provider_display_name, String provider_ds_id, String provider_ds_display_name, boolean feature_message_filter, boolean feature_message_offset_browsing, String[] folder_mappings)"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x0

    .line 356
    .local v0, ret:I
    iput-object p2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapEventHandler:Lcom/broadcom/bt/service/map/IMapEventHandler;

    .line 357
    iget-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    if-nez v1, :cond_19

    .line 358
    const-string v1, "MAP.BluetoothMAP"

    const-string v1, "init() - error getting map service"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v0, 0x1

    .line 373
    :goto_18
    return v0

    .line 364
    :cond_19
    iput-byte p3, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderType:B

    .line 365
    iput-object p4, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderId:Ljava/lang/String;

    .line 366
    iput-object p5, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDisplayName:Ljava/lang/String;

    .line 367
    iput-object p6, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsId:Ljava/lang/String;

    .line 368
    iput-object p7, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsDisplayName:Ljava/lang/String;

    .line 369
    iput-boolean p8, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFeatureMessageFilter:Z

    .line 370
    iput-boolean p9, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mfeatureMessageOffsetBrowsing:Z

    .line 371
    iput-object p10, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFolderMappings:[Ljava/lang/String;

    goto :goto_18
.end method

.method protected init(Landroid/os/IBinder;)Z
    .registers 6
    .parameter "service"

    .prologue
    const-string v3, "MAP.BluetoothMAP"

    .line 315
    const-string v1, "MAP.BluetoothMAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :try_start_1a
    invoke-static {p1}, Lcom/broadcom/bt/service/map/IMapService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/map/IMapService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_20} :catch_22

    .line 320
    const/4 v1, 0x1

    .line 323
    :goto_21
    return v1

    .line 321
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 322
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MAP.BluetoothMAP"

    const-string v1, "Unable to initialize proxy with service"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)I
    .registers 20
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "parentPath"
    .parameter "status"
    .parameter "mseTime"
    .parameter "newMsg"
    .parameter "msgInfo"

    .prologue
    .line 483
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "msgListingResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v10, 0x0

    .line 487
    .local v10, ret:I
    :try_start_8
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/map/IMapService;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 494
    :goto_19
    return v10

    .line 489
    :catch_1a
    move-exception v0

    move-object v9, v0

    .line 490
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v10, 0x2

    goto :goto_19
.end method

.method public msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)I
    .registers 16
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "messageId"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    .line 500
    const-string v0, "MAP.BluetoothMAP"

    const-string v1, "msgPushResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v8, 0x0

    .line 505
    .local v8, ret:I
    :try_start_8
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_13} :catch_14

    .line 511
    :goto_13
    return v8

    .line 506
    :catch_14
    move-exception v0

    move-object v7, v0

    .line 507
    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v8, 0x2

    goto :goto_13
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)I
    .registers 18
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "notification_type"
    .parameter "message_id"
    .parameter "folder_path"
    .parameter "old_folder_path"
    .parameter "msg_type"

    .prologue
    .line 444
    const-string v0, "MAP.BluetoothMAP"

    const-string/jumbo v1, "notifyClient()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v9, 0x0

    .line 450
    .local v9, ret:I
    :try_start_9
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapService;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    .line 457
    :goto_17
    return v9

    .line 452
    :catch_18
    move-exception v0

    move-object v8, v0

    .line 453
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v9, 0x2

    goto :goto_17
.end method

.method public notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I
    .registers 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "status"

    .prologue
    const-string v3, "MAP.BluetoothMAP"

    .line 553
    const-string v2, "MAP.BluetoothMAP"

    const-string/jumbo v2, "notifyRegistrationResponse"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x0

    .line 558
    .local v1, ret:I
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/broadcom/bt/service/map/IMapService;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 564
    :goto_10
    return v1

    .line 559
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 560
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v1, 0x2

    goto :goto_10
.end method

.method public registerDSProvider()I
    .registers 14

    .prologue
    const-string v12, "MAP.BluetoothMAP"

    .line 379
    const-string v0, "MAP.BluetoothMAP"

    const-string/jumbo v0, "registerDSProvider()"

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v11, 0x0

    .line 384
    .local v11, ret:I
    :try_start_b
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    iget-byte v1, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderType:B

    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDisplayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mProviderDsDisplayName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFeatureMessageFilter:Z

    iget-boolean v7, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mfeatureMessageOffsetBrowsing:Z

    iget-object v8, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mFolderMappings:[Ljava/lang/String;

    new-instance v9, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;

    invoke-direct {v9, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP$MapCallback;-><init>(Lcom/broadcom/bt/service/map/BluetoothMAP;)V

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/map/IMapService;->registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_25} :catch_26

    .line 391
    :goto_25
    return v11

    .line 387
    :catch_26
    move-exception v0

    move-object v10, v0

    .line 388
    .local v10, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v11, 0x2

    goto :goto_25
.end method

.method public setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)I
    .registers 18
    .parameter "requestId"
    .parameter "providerId"
    .parameter "dataSourceId"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "msg_folder"

    .prologue
    .line 517
    const-string v0, "MAP.BluetoothMAP"

    const-string/jumbo v1, "setMsgStatusResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const/4 v9, 0x0

    .line 522
    .local v9, ret:I
    :try_start_9
    iget-object v0, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapService;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_18

    .line 528
    :goto_17
    return v9

    .line 524
    :catch_18
    move-exception v0

    move-object v8, v0

    .line 525
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "MAP.BluetoothMAP"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v9, 0x2

    goto :goto_17
.end method

.method public startMSEInstance(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v3, "MAP.BluetoothMAP"

    .line 412
    const-string v2, "MAP.BluetoothMAP"

    const-string/jumbo v2, "startMSEInstance()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x0

    .line 416
    .local v1, ret:I
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/map/IMapService;->startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 422
    :goto_10
    return v1

    .line 417
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v1, 0x2

    goto :goto_10
.end method

.method public stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v3, "MAP.BluetoothMAP"

    .line 427
    const-string v2, "MAP.BluetoothMAP"

    const-string/jumbo v2, "stopMSEInstance()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v1, 0x0

    .line 432
    .local v1, ret:I
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/map/IMapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 438
    :goto_10
    return v1

    .line 433
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 434
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v1, 0x2

    goto :goto_10
.end method

.method public unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v3, "MAP.BluetoothMAP"

    .line 396
    const-string v2, "MAP.BluetoothMAP"

    const-string/jumbo v2, "unregisterDSProvider()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, 0x0

    .line 401
    .local v1, ret:I
    :try_start_b
    iget-object v2, p0, Lcom/broadcom/bt/service/map/BluetoothMAP;->mMapService:Lcom/broadcom/bt/service/map/IMapService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/map/IMapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 407
    :goto_10
    return v1

    .line 402
    :catch_11
    move-exception v2

    move-object v0, v2

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MAP.BluetoothMAP"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v1, 0x2

    goto :goto_10
.end method
