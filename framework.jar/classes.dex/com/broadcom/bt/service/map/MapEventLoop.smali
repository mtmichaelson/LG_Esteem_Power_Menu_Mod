.class public Lcom/broadcom/bt/service/map/MapEventLoop;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "MapEventLoop.java"


# interfaces
.implements Lcom/broadcom/bt/service/map/MAPConstants;


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "MAP.MapEventLoop"

.field private static final V:Z = true



# instance fields
.field private isAccessGranted:Z

.field private mInterrupted:Z

.field private mObexNativeData:I

.field private mSvc:Lcom/broadcom/bt/service/map/MapService;

.field private mThread:Ljava/lang/Thread;

.field private m_MapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;



# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 51
    invoke-static {}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classBluetoothMapInit()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 42
    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->isAccessGranted:Z

    .line 43
    new-instance v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->m_MapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    .line 61
    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    .line 72
    const-string v0, "MAP.MapEventLoop"

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classInitData()V

    .line 76
    new-instance v0, Lcom/broadcom/bt/service/map/MapService;

    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/MapService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 77
    return-void
.end method

.method private native Native_BluetoothMapMSEEventLoop()V
.end method

.method private static native Native_classBluetoothMapInit()V
.end method

.method private native Native_classInitData()V
.end method

.method private native Native_classUninitData()V
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/map/MapEventLoop;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/map/MapEventLoop;)Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->m_MapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/map/MapEventLoop;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    return v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/map/MapEventLoop;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_BluetoothMapMSEEventLoop()V

    return-void
.end method

.method static synthetic access$500(Lcom/broadcom/bt/service/map/MapEventLoop;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapEventLoop;->Native_classUninitData()V

    return-void
.end method

.method static synthetic access$602(Lcom/broadcom/bt/service/map/MapEventLoop;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "sCurrentPath"
    .parameter "sPath"

    .prologue
    .line 779
    move-object v0, p1

    .line 781
    .local v0, s_provider_folder:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 785
    :cond_22
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFolderEntryFromProvider(Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;IIILjava/lang/String;)V
    .registers 21
    .parameter "s"
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "s_provider_folder"

    .prologue
    .line 334
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFolderEntryFromProvider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 339
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_4e

    .line 340
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :goto_4d
    return-void

    .line 349
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :cond_4e
    const/4 v14, 0x0

    .line 350
    .local v14, status:B
    if-eqz p3, :cond_72

    .line 351
    :try_start_51
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v3, v0

    iget-object v2, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .end local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v3, v0

    iget-object v4, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v3, v0

    iget-object v5, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const/16 v7, 0x270f

    const/4 v8, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p5

    invoke-interface/range {v2 .. v8}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move v4, v14

    .end local v14       #status:B,
    .local v4, status:B
    goto :goto_4d

    .line 355
    .end local v4       #status:B,
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v14       #status:B,
    :cond_72
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v3, v0

    array-length v3, v3
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_78} :catch_d8

    move/from16 v0, p4

    move v1, v3

    if-ne v0, v1, :cond_97

    .line 359
    const/4 v4, 0x2

    .line 360
    .end local v14       #status:B,
    .restart local v4       #status:B,
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_80
    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_8a} :catch_8b

    goto :goto_4d

    .line 376
    :catch_8b
    move-exception v3

    move-object v13, v3

    .line 377
    .end local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .local v13, e:Landroid/os/RemoteException;
    :goto_8d
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4       #status:B,
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 364
    .end local v13       #e:Landroid/os/RemoteException;,
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v14       #status:B,
    :cond_97
    add-int/lit8 p4, p4, 0x1

    .line 366
    :try_start_99
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v3, v0

    const/4 v4, 0x1

    sub-int v4, p4, v4

    aget-object v3, v3, v4

    iget-wide v5, v3, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    long-to-int v9, v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v3, v0

    const/4 v4, 0x1

    sub-int v4, p4, v4

    aget-object v3, v3, v4

    iget-object v10, v3, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v3, v0

    const/4 v4, 0x1

    sub-int v4, p4, v4

    aget-object v3, v3, v4

    iget-object v11, v3, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    move-object v3, v0

    const/4 v4, 0x1

    sub-int v4, p4, v4

    aget-object v3, v3, v4

    iget-wide v5, v3, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    long-to-int v3, v5

    int-to-byte v12, v3

    move-object v5, v2

    move/from16 v6, p2

    move v7, v14

    move/from16 v8, p4

    invoke-virtual/range {v5 .. v12}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    :try_end_d5
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_d5} :catch_dc

    move v4, v14

    .end local v14       #status:B,
    .restart local v4       #status:B,
    goto/16 :goto_4d

    .line 376
    .end local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .end local v4       #status:B,
    .restart local v14       #status:B,
    :catch_d8
    move-exception v3

    move-object v13, v3

    move v4, v14

    .end local v14       #status:B,
    .restart local v4       #status:B,
    goto :goto_8d

    .end local v4       #status:B,
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v14       #status:B,
    :catch_dc
    move-exception v3

    move-object v13, v3

    move v4, v14

    .end local v14       #status:B,
    .restart local v4       #status:B,
    goto :goto_8d
.end method

.method public getFolderEntryforVirtualRoot(IIILjava/lang/String;)V
    .registers 13
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "folder"

    .prologue
    .line 386
    const-string v1, "MAP.MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFolderEntryforVirtualRoot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 390
    .local v0, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v0, :cond_42

    .line 391
    const-string v1, "MAP.MapEventLoop"

    const-string v2, "Service is null...."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_41
    :goto_41
    return-void

    .line 395
    :cond_42
    if-eqz p2, :cond_71

    .line 397
    const-string/jumbo v1, "root/telecom"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 399
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "msg"

    const-string v6, ""

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_41

    .line 402
    :cond_5a
    const-string/jumbo v1, "root"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 404
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "telecom"

    const-string v6, ""

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_41

    .line 414
    :cond_71
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_41
.end method

.method public getMapService()Lcom/broadcom/bt/service/map/MapService;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string v0, "bluetooth_map"

    return-object v0
.end method

.method public init()V
    .registers 3

    .prologue
    .line 89
    const-string v0, "MAP.MapEventLoop"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method public declared-synchronized onMCEConnected(IILjava/lang/String;)V
    .registers 10
    .parameter "mse_instance_id"
    .parameter "mse_session_id"
    .parameter "deviceName"

    .prologue
    const-string v3, "MAP.MapEventLoop"

    .line 253
    monitor-enter p0

    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMCEConnected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 257
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_29

    .line 258
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_48

    .line 276
    :goto_27
    monitor-exit p0

    return-void

    .line 262
    :cond_29
    :try_start_29
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 263
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_4b

    .line 265
    invoke-virtual {v0, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->addSession(ILjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_48

    .line 267
    :try_start_32
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v3, v4, v5, p3}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_48
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3c

    goto :goto_27

    .line 268
    :catch_3c
    move-exception v3

    move-object v1, v3

    .line 269
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3e
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_48

    goto :goto_27

    .line 253
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .end local v1       #e:Landroid/os/RemoteException;,
    .end local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3

    .line 273
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :cond_4b
    :try_start_4b
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMCEConnected - did not find context for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_48

    goto :goto_27
.end method

.method public declared-synchronized onMCEDisconnected(II)V
    .registers 9
    .parameter "mse_instance_id"
    .parameter "mse_session_id"

    .prologue
    const-string v3, "MAP.MapEventLoop"

    .line 281
    monitor-enter p0

    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    const-string/jumbo v4, "onMCEDisconnected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 285
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_18

    .line 286
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_37

    .line 307
    :goto_16
    monitor-exit p0

    return-void

    .line 290
    :cond_18
    :try_start_18
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 293
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_3a

    .line 296
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeSession(I)V
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_37

    .line 298
    :try_start_21
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_37
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_16

    .line 299
    :catch_2b
    move-exception v3

    move-object v1, v3

    .line 300
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2d
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_37

    goto :goto_16

    .line 281
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .end local v1       #e:Landroid/os/RemoteException;,
    .end local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :catchall_37
    move-exception v3

    monitor-exit p0

    throw v3

    .line 304
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :cond_3a
    :try_start_3a
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMCEDisconnected - did not find context for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_3a .. :try_end_53} :catchall_37

    goto :goto_16
.end method

.method public declared-synchronized onMCEGetFolderEntry(IIILjava/lang/String;)V
    .registers 12
    .parameter "mse_session_id"
    .parameter "first_item"
    .parameter "ref_data"
    .parameter "folder"

    .prologue
    const-string v0, "MAP.MapEventLoop"

    const-string v0, " "

    .line 422
    monitor-enter p0

    :try_start_5
    const-string v0, "MAP.MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMCEGetFolderEntry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v6, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 427
    .local v6, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v6, :cond_49

    .line 428
    const-string v0, "MAP.MapEventLoop"

    const-string v2, "Service is null...."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_5 .. :try_end_47} :catchall_69

    .line 453
    :goto_47
    monitor-exit p0

    return-void

    .line 432
    :cond_49
    :try_start_49
    invoke-virtual {v6, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v1

    .line 433
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v1, :cond_74

    .line 435
    invoke-virtual {v1, p4}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, s_provider_folder:Ljava/lang/String;
    const-string/jumbo v0, "root/telecom"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string/jumbo v0, "root"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 440
    :cond_65
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/broadcom/bt/service/map/MapEventLoop;->getFolderEntryforVirtualRoot(IIILjava/lang/String;)V
    :try_end_68
    .catchall {:try_start_49 .. :try_end_68} :catchall_69

    goto :goto_47

    .line 422
    .end local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    .end local v5       #s_provider_folder:Ljava/lang/String;,
    .end local v6       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    .restart local v5       #s_provider_folder:Ljava/lang/String;,
    .restart local v6       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :cond_6c
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 445
    :try_start_70
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapEventLoop;->getFolderEntryFromProvider(Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;IIILjava/lang/String;)V

    goto :goto_47

    .line 450
    .end local v5       #s_provider_folder:Ljava/lang/String;,
    :cond_74
    const-string v0, "MAP.MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMCEGetFolderEntry - did not find session for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_70 .. :try_end_8d} :catchall_69

    goto :goto_47
.end method

.method public declared-synchronized onMCEGetMsg(IBJB)V
    .registers 24
    .parameter "mse_session_id"
    .parameter "include_attachment"
    .parameter "message_handle"
    .parameter "char_set"

    .prologue
    .line 571
    monitor-enter p0

    :try_start_1
    const-string v5, "MAP.MapEventLoop"

    const-string/jumbo v6, "onMCEGetMsg"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move-object v15, v0

    .line 575
    .local v15, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v15, :cond_19

    .line 576
    const-string v5, "MAP.MapEventLoop"

    const-string v6, "Service is null...."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_4f

    .line 623
    :goto_17
    monitor-exit p0

    return-void

    .line 580
    :cond_19
    :try_start_19
    move-object v0, v15

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_4f

    move-result-object v16

    .line 581
    .local v16, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v16, :cond_a7

    .line 584
    :try_start_22
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v11

    .line 585
    .local v11, s_provider_id:Ljava/lang/String;
    if-eqz v11, :cond_38

    const-string v5, ""

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 592
    :cond_38
    const/4 v5, 0x2

    move-object v0, v15

    move/from16 v1, p1

    move-wide/from16 v2, p3

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/MapService;->getMsgFailResponse(IJB)V
    :try_end_42
    .catchall {:try_start_22 .. :try_end_42} :catchall_4f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_42} :catch_43

    goto :goto_17

    .line 617
    .end local v11       #s_provider_id:Ljava/lang/String;,
    :catch_43
    move-exception v5

    move-object v14, v5

    .line 618
    .local v14, e:Landroid/os/RemoteException;
    :try_start_45
    const-string v5, "MAP.MapEventLoop"

    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4f

    goto :goto_17

    .line 571
    .end local v14       #e:Landroid/os/RemoteException;,
    .end local v15       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .end local v16       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :catchall_4f
    move-exception v5

    monitor-exit p0

    throw v5

    .line 597
    .restart local v11       #s_provider_id:Ljava/lang/String;,
    .restart local v15       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v16       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_52
    :try_start_52
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v5, v0

    invoke-virtual {v5, v11}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 598
    .local v17, s_virtual_folder:Ljava/lang/String;
    if-eqz v17, :cond_68

    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 605
    :cond_68
    const/4 v5, 0x2

    move-object v0, v15

    move/from16 v1, p1

    move-wide/from16 v2, p3

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/MapService;->getMsgFailResponse(IJB)V

    goto :goto_17

    .line 610
    :cond_73
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v5, v0

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v6, v0

    iget-object v7, v6, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v6, v0

    iget-object v8, v6, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v6, "root"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v6, p1

    move/from16 v12, p5

    move/from16 v13, p2

    invoke-interface/range {v5 .. v13}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    :try_end_a5
    .catchall {:try_start_52 .. :try_end_a5} :catchall_4f
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_a5} :catch_43

    goto/16 :goto_17

    .line 621
    .end local v11       #s_provider_id:Ljava/lang/String;,
    .end local v17       #s_virtual_folder:Ljava/lang/String;,
    :cond_a7
    :try_start_a7
    const-string v5, "MAP.MapEventLoop"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onMCEGetMsg - did not find session for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_a7 .. :try_end_c3} :catchall_4f

    goto/16 :goto_17
.end method

.method public declared-synchronized onMCEGetMsgEntry(ILjava/lang/String;BI)V
    .registers 56
    .parameter "session_id"
    .parameter "folder_path"
    .parameter "first_item"
    .parameter "ref_data"

    .prologue
    .line 511
    monitor-enter p0

    :try_start_1
    const-string v4, "MAP.MapEventLoop"

    const-string/jumbo v5, "onMCEGetMsgEntry"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    .line 515
    .local v3, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v3, :cond_19

    .line 516
    const-string v4, "MAP.MapEventLoop"

    const-string v5, "Service is null...."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_df

    .line 566
    :goto_17
    monitor-exit p0

    return-void

    .line 520
    :cond_19
    :try_start_19
    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v50

    .line 521
    .local v50, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v50, :cond_132

    .line 522
    const/16 v49, 0x0

    .line 523
    .local v49, msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/4 v5, 0x0

    .line 524
    .local v5, status:B
    if-eqz p3, :cond_29

    .line 525
    const/16 p4, 0x0

    .line 533
    :cond_29
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 535
    .local v25, s_virtual_folder:Ljava/lang/String;
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    move-object v4, v0

    if-eqz v4, :cond_f1

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    move-object v4, v0

    array-length v4, v4

    add-int/lit8 v6, p4, 0x1

    if-lt v4, v6, :cond_f1

    .line 536
    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    move-object v4, v0

    aget-object v49, v4, p4

    .line 537
    add-int/lit8 p4, p4, 0x1

    .line 538
    const-string v4, "MAP.MapEventLoop"

    invoke-virtual/range {v49 .. v49}, Lcom/broadcom/bt/service/map/MessageInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    move-object/from16 v0, v49

    iget v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    move v7, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    move v8, v0

    move-object/from16 v0, v49

    iget v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    move v9, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e2

    const/4 v4, 0x1

    move v10, v4

    :goto_73
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e5

    const/4 v4, 0x1

    move v11, v4

    :goto_7d
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e8

    const/4 v4, 0x1

    move v12, v4

    :goto_87
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_eb

    const/4 v4, 0x1

    move v13, v4

    :goto_91
    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    move v4, v0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_ee

    const/4 v4, 0x1

    move v14, v4

    :goto_9b
    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, v49

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    move/from16 v16, v0

    move-object/from16 v0, v49

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    move/from16 v17, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v4, p1

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v25}, Lcom/broadcom/bt/service/map/MapService;->msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catchall {:try_start_19 .. :try_end_dd} :catchall_df

    goto/16 :goto_17

    .line 511
    .end local v3       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .end local v5       #status:B,
    .end local v25       #s_virtual_folder:Ljava/lang/String;,
    .end local v49       #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;,
    .end local v50       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :catchall_df
    move-exception v4

    monitor-exit p0

    throw v4

    .line 539
    .restart local v3       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v5       #status:B,
    .restart local v25       #s_virtual_folder:Ljava/lang/String;,
    .restart local v49       #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;,
    .restart local v50       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_e2
    const/4 v4, 0x0

    move v10, v4

    goto :goto_73

    :cond_e5
    const/4 v4, 0x0

    move v11, v4

    goto :goto_7d

    :cond_e8
    const/4 v4, 0x0

    move v12, v4

    goto :goto_87

    :cond_eb
    const/4 v4, 0x0

    move v13, v4

    goto :goto_91

    :cond_ee
    const/4 v4, 0x0

    move v14, v4

    goto :goto_9b

    .line 553
    :cond_f1
    const/4 v5, 0x2

    .line 554
    const/4 v4, 0x0

    :try_start_f3
    move-object v0, v4

    move-object/from16 v1, v50

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    .line 556
    const-string v4, "MAP.MapEventLoop"

    const-string v6, "No more messages"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string v38, "0"

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-string v41, ""

    const-string v42, ""

    const-string v43, ""

    const-string v44, ""

    const-string v45, ""

    const-string v46, ""

    const-string v47, ""

    const-string v48, ""

    move-object/from16 v26, v3

    move/from16 v27, p1

    move/from16 v28, v5

    invoke-virtual/range {v26 .. v48}, Lcom/broadcom/bt/service/map/MapService;->msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    .line 564
    .end local v5       #status:B,
    .end local v25       #s_virtual_folder:Ljava/lang/String;,
    .end local v49       #msgInfo:Lcom/broadcom/bt/service/map/MessageInfo;,
    :cond_132
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMCEGetMsgEntry - did not find session for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catchall {:try_start_f3 .. :try_end_14e} :catchall_df

    goto/16 :goto_17
.end method

.method public declared-synchronized onMCEGetMsgListInfo(ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .registers 36
    .parameter "session_id"
    .parameter "folder_path"
    .parameter "parameter_mask"
    .parameter "max_list_cnt"
    .parameter "list_start_offset"
    .parameter "subject_length"
    .parameter "msg_mask"
    .parameter "period_begin"
    .parameter "period_end"
    .parameter "read_status"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 461
    monitor-enter p0

    :try_start_1
    const-string v4, "MAP.MapEventLoop"

    const-string/jumbo v5, "onMCEGetMsgListInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    .line 465
    .local v3, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v3, :cond_19

    .line 466
    const-string v4, "MAP.MapEventLoop"

    const-string v5, "Service is null...."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_67

    .line 505
    :goto_17
    monitor-exit p0

    return-void

    .line 470
    :cond_19
    :try_start_19
    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_67

    move-result-object v21

    .line 471
    .local v21, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v21, :cond_9c

    .line 479
    :try_start_22
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 481
    .local v8, s_provider_folder:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 482
    const-string/jumbo v4, "root/telecom"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string/jumbo v4, "root"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 488
    :cond_49
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x2

    const-string v9, ""

    .end local v8       #s_provider_folder:Ljava/lang/String;,
    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/broadcom/bt/service/map/MapService;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    :try_end_59
    .catchall {:try_start_22 .. :try_end_59} :catchall_67
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_59} :catch_5a

    goto :goto_17

    .line 499
    :catch_5a
    move-exception v4

    move-object/from16 v20, v4

    .line 500
    .local v20, e:Landroid/os/RemoteException;
    :try_start_5d
    const-string v4, "MAP.MapEventLoop"

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_5d .. :try_end_66} :catchall_67

    goto :goto_17

    .line 461
    .end local v3       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .end local v20       #e:Landroid/os/RemoteException;,
    .end local v21       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :catchall_67
    move-exception v4

    monitor-exit p0

    throw v4

    .line 494
    .restart local v3       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v8       #s_provider_folder:Ljava/lang/String;,
    .restart local v21       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_6a
    :try_start_6a
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v4, v0

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v5, v0

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v6, v0

    iget-object v6, v6, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    move/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v17, p11

    move-object/from16 v18, p12

    move/from16 v19, p13

    invoke-interface/range {v4 .. v19}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    :try_end_9a
    .catchall {:try_start_6a .. :try_end_9a} :catchall_67
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_9a} :catch_5a

    goto/16 :goto_17

    .line 503
    .end local v8       #s_provider_folder:Ljava/lang/String;,
    :cond_9c
    :try_start_9c
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMCEGetMsgListInfo - did not find session for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_9c .. :try_end_b8} :catchall_67

    goto/16 :goto_17
.end method

.method public declared-synchronized onMCENotifyRegister(IB)V
    .registers 10
    .parameter "mse_session_id"
    .parameter "on_off"

    .prologue
    const-string v4, "MAP.MapEventLoop"

    .line 710
    monitor-enter p0

    :try_start_3
    const-string v4, "MAP.MapEventLoop"

    const-string/jumbo v5, "onMCENotifyRegister"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 714
    .local v1, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v1, :cond_18

    .line 715
    const-string v4, "MAP.MapEventLoop"

    const-string v5, "Service is null...."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_42

    .line 734
    :goto_16
    monitor-exit p0

    return-void

    .line 719
    :cond_18
    :try_start_18
    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_42

    move-result-object v3

    .line 720
    .local v3, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v3, :cond_45

    .line 722
    :try_start_1e
    const-string/jumbo v2, "off"

    .line 723
    .local v2, notificationmode:Ljava/lang/String;
    if-eqz p2, :cond_26

    .line 724
    const-string/jumbo v2, "on"

    .line 726
    :cond_26
    iget-object v4, v3, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v5, v3, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v5, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v6, v3, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v6, v6, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v4, p1, v5, v6, v2}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_42
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_35} :catch_36

    goto :goto_16

    .line 728
    .end local v2       #notificationmode:Ljava/lang/String;,
    :catch_36
    move-exception v4

    move-object v0, v4

    .line 729
    .local v0, e:Landroid/os/RemoteException;
    :try_start_38
    const-string v4, "MAP.MapEventLoop"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_42

    goto :goto_16

    .line 710
    .end local v0       #e:Landroid/os/RemoteException;,
    .end local v1       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .end local v3       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :catchall_42
    move-exception v4

    monitor-exit p0

    throw v4

    .line 732
    .restart local v1       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v3       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_45
    :try_start_45
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMCENotifyRegister - did not find session for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_42

    goto :goto_16
.end method

.method public declared-synchronized onMCEPushMsg(IBBBLjava/lang/String;Ljava/lang/String;)V
    .registers 24
    .parameter "request_id"
    .parameter "msg_transparent"
    .parameter "msg_retry"
    .parameter "msg_charset"
    .parameter "msg_folder"
    .parameter "msg_content_uri"

    .prologue
    .line 629
    monitor-enter p0

    :try_start_1
    const-string v4, "MAP.MapEventLoop"

    const-string/jumbo v5, "onMCEPushMsg"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    move-object v3, v0

    .line 633
    .local v3, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v3, :cond_19

    .line 634
    const-string v4, "MAP.MapEventLoop"

    const-string v5, "Service is null...."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_5e

    .line 666
    :goto_17
    monitor-exit p0

    return-void

    .line 638
    :cond_19
    :try_start_19
    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_5e

    move-result-object v15

    .line 639
    .local v15, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v15, :cond_8b

    .line 642
    :try_start_22
    iget-object v4, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapEventLoop;->fixPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 643
    .local v16, s_virtual_folder:Ljava/lang/String;
    invoke-virtual/range {v15 .. v16}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 644
    .local v11, s_provider_folder:Ljava/lang/String;
    const-string/jumbo v4, "root/telecom"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_43

    const-string/jumbo v4, "root"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 650
    :cond_43
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const/4 v8, 0x1

    move/from16 v4, p1

    move-object/from16 v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/broadcom/bt/service/map/MapService;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    :try_end_51
    .catchall {:try_start_22 .. :try_end_51} :catchall_5e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_51} :catch_52

    goto :goto_17

    .line 660
    .end local v11       #s_provider_folder:Ljava/lang/String;,
    .end local v16       #s_virtual_folder:Ljava/lang/String;,
    :catch_52
    move-exception v4

    move-object v14, v4

    .line 661
    .local v14, e:Landroid/os/RemoteException;
    :try_start_54
    const-string v4, "MAP.MapEventLoop"

    invoke-virtual {v14}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_5e

    goto :goto_17

    .line 629
    .end local v3       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .end local v14       #e:Landroid/os/RemoteException;,
    .end local v15       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :catchall_5e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 654
    .restart local v3       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v11       #s_provider_folder:Ljava/lang/String;,
    .restart local v15       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    .restart local v16       #s_virtual_folder:Ljava/lang/String;,
    :cond_61
    :try_start_61
    iget-object v4, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v4, v4, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v5, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v6, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v15, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v7, v5, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const-string/jumbo v5, "root"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v5, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v13, p6

    invoke-interface/range {v4 .. v13}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_61 .. :try_end_8a} :catchall_5e
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_8a} :catch_52

    goto :goto_17

    .line 664
    .end local v11       #s_provider_folder:Ljava/lang/String;,
    .end local v16       #s_virtual_folder:Ljava/lang/String;,
    :cond_8b
    :try_start_8b
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMCEPushMsg - did not find session for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_8b .. :try_end_a7} :catchall_5e

    goto/16 :goto_17
.end method

.method public declared-synchronized onMCESetMsgStatus(IJBB)V
    .registers 18
    .parameter "session_id"
    .parameter "msg_handle"
    .parameter "status_type"
    .parameter "status_value"

    .prologue
    .line 671
    monitor-enter p0

    :try_start_1
    const-string v1, "MAP.MapEventLoop"

    const-string/jumbo v2, "onMCESetMsgStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 675
    .local v0, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v0, :cond_16

    .line 676
    const-string v1, "MAP.MapEventLoop"

    const-string v2, "Service is null...."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_57

    .line 705
    .end local v0       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :goto_14
    monitor-exit p0

    return-void

    .line 680
    .restart local v0       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :cond_16
    :try_start_16
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_57

    move-result-object v9

    .line 681
    .local v9, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v9, :cond_70

    .line 683
    const/4 v10, 0x0

    .line 685
    .local v10, s_provider_id:Ljava/lang/String;
    :try_start_1d
    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v1, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v10

    .line 686
    if-eqz v10, :cond_5a

    .line 687
    const/4 v11, 0x0

    .line 688
    .local v11, s_virtual_folder:Ljava/lang/String;
    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v1, v10}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgIdFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 689
    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .end local v0       #mService:Lcom/broadcom/bt/service/map/MapService;,
    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v2, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    iget-object v3, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v9, v11}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getProviderFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v9, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v1, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->getProviderMsgId(J)Ljava/lang/String;

    move-result-object v5

    move v1, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    :try_end_4a
    .catchall {:try_start_1d .. :try_end_4a} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_4a} :catch_4b

    goto :goto_14

    .line 699
    .end local v11       #s_virtual_folder:Ljava/lang/String;,
    :catch_4b
    move-exception v1

    move-object v8, v1

    .line 700
    .local v8, e:Landroid/os/RemoteException;
    :try_start_4d
    const-string v1, "MAP.MapEventLoop"

    invoke-virtual {v8}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_57

    goto :goto_14

    .line 671
    .end local v8       #e:Landroid/os/RemoteException;,
    .end local v9       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    .end local v10       #s_provider_id:Ljava/lang/String;,
    :catchall_57
    move-exception v1

    monitor-exit p0

    throw v1

    .line 695
    .restart local v0       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v9       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    .restart local v10       #s_provider_id:Ljava/lang/String;,
    :cond_5a
    :try_start_5a
    const-string v1, "MAP.MapEventLoop"

    const-string/jumbo v2, "onMCESetMsgStatus : Cannot get provider id failing.  Oops how did this happen?"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, ""

    move v1, p1

    move-object v2, v10

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/MapService;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_5a .. :try_end_6f} :catchall_57
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_6f} :catch_4b

    goto :goto_14

    .line 703
    .end local v10       #s_provider_id:Ljava/lang/String;,
    :cond_70
    :try_start_70
    const-string v1, "MAP.MapEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMCESetMsgStatus - did not find session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_70 .. :try_end_89} :catchall_57

    goto :goto_14
.end method

.method public declared-synchronized onMCEUpdateInbox(I)V
    .registers 8
    .parameter "mse_session_id"

    .prologue
    const-string v3, "MAP.MapEventLoop"

    .line 739
    monitor-enter p0

    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    const-string/jumbo v4, "onMCEUpdateInbox"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 743
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_18

    .line 744
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_34

    .line 760
    :goto_16
    monitor-exit p0

    return-void

    .line 748
    :cond_18
    :try_start_18
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContextFromSessionId(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_34

    move-result-object v0

    .line 749
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_37

    .line 752
    :try_start_1e
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/broadcom/bt/service/map/IMapCallback;->onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_34
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_16

    .line 753
    :catch_28
    move-exception v3

    move-object v1, v3

    .line 754
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2a
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_16

    .line 739
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .end local v1       #e:Landroid/os/RemoteException;,
    .end local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :catchall_34
    move-exception v3

    monitor-exit p0

    throw v3

    .line 757
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :cond_37
    :try_start_37
    const-string v3, "MAP.MapEventLoop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMCEUpdateInbox - did not find context for"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_37 .. :try_end_50} :catchall_34

    goto :goto_16
.end method

.method public declared-synchronized onMSESetFolder(ILjava/lang/String;)V
    .registers 8
    .parameter "mse_session_id"
    .parameter "current_folder"

    .prologue
    const-string v2, "MAP.MapEventLoop"

    .line 311
    monitor-enter p0

    :try_start_3
    const-string v2, "MAP.MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMSESetFolder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 315
    .local v0, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v0, :cond_29

    .line 316
    const-string v2, "MAP.MapEventLoop"

    const-string v3, "Service is null...."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_32

    .line 328
    :goto_27
    monitor-exit p0

    return-void

    .line 320
    :cond_29
    :try_start_29
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v1

    .line 321
    .local v1, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v1, :cond_35

    .line 323
    iput-object p2, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mProviderCurrentPath:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_32

    goto :goto_27

    .line 311
    .end local v0       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .end local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :catchall_32
    move-exception v2

    monitor-exit p0

    throw v2

    .line 325
    .restart local v0       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v1       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;,
    :cond_35
    :try_start_35
    const-string v2, "MAP.MapEventLoop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMSESetFolder - did not find session for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_32

    goto :goto_27
.end method

.method public declared-synchronized onMSEStarted(Ljava/lang/String;BII)V
    .registers 12
    .parameter "mse_name"
    .parameter "mse_type"
    .parameter "mse_instance_id"
    .parameter "status_code"

    .prologue
    const-string v4, ")"

    const-string v4, "MAP.MapEventLoop"

    .line 189
    monitor-enter p0

    :try_start_5
    const-string v4, "MAP.MapEventLoop"

    const-string/jumbo v5, "onMSEStarted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 193
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_1a

    .line 194
    const-string v4, "MAP.MapEventLoop"

    const-string v5, "Service is null...."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_5c

    .line 221
    :goto_18
    monitor-exit p0

    return-void

    .line 199
    :cond_1a
    :try_start_1a
    invoke-virtual {v2, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContextByDsName(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 200
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_80

    .line 201
    const/4 v3, 0x1

    .line 202
    .local v3, mse_status:B
    iput p3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    .line 203
    if-nez p4, :cond_5f

    .line 204
    const/4 v3, 0x2

    .line 205
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mse service started successfully ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_1a .. :try_end_46} :catchall_5c

    .line 212
    :goto_46
    :try_start_46
    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v6, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v3}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_5c
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4f} :catch_50

    goto :goto_18

    .line 214
    :catch_50
    move-exception v4

    move-object v1, v4

    .line 215
    .local v1, e:Landroid/os/RemoteException;
    :try_start_52
    const-string v4, "MAP.MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_5c

    goto :goto_18

    .line 189
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .end local v1       #e:Landroid/os/RemoteException;,
    .end local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .end local v3       #mse_status:B,
    :catchall_5c
    move-exception v4

    monitor-exit p0

    throw v4

    .line 209
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .restart local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    .restart local v3       #mse_status:B,
    :cond_5f
    :try_start_5f
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not start mse service ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 218
    .end local v3       #mse_status:B,
    :cond_80
    const-string v4, "MAP.MapEventLoop"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onMSEStarted - did not find context for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_5f .. :try_end_a3} :catchall_5c

    goto/16 :goto_18
.end method

.method public declared-synchronized onMSEStopped(II)V
    .registers 10
    .parameter "mse_instance_id"
    .parameter "status_code"

    .prologue
    const-string v3, "MAP.MapEventLoop"

    .line 226
    monitor-enter p0

    :try_start_3
    const-string v3, "MAP.MapEventLoop"

    const-string/jumbo v4, "onMSEStopped"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    .line 230
    .local v2, mService:Lcom/broadcom/bt/service/map/MapService;
    if-nez v2, :cond_18

    .line 231
    const-string v3, "MAP.MapEventLoop"

    const-string v4, "Service is null...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_44

    .line 247
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 235
    :cond_18
    :try_start_18
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/service/map/MapService;->getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_44

    move-result-object v0

    .line 237
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_2c

    :try_start_1e
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    if-eqz v3, :cond_2c

    .line 238
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V

    .line 241
    :cond_2c
    if-eqz v2, :cond_16

    if-eqz v0, :cond_16

    .line 242
    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/service/map/MapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_44
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_37} :catch_38

    goto :goto_16

    .line 244
    :catch_38
    move-exception v3

    move-object v1, v3

    .line 245
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3a
    const-string v3, "MAP.MapEventLoop"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_44

    goto :goto_16

    .line 226
    .end local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;,
    .end local v1       #e:Landroid/os/RemoteException;,
    .end local v2       #mService:Lcom/broadcom/bt/service/map/MapService;,
    :catchall_44
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized onMsgGetInProgress()V
    .registers 3

    .prologue
    .line 765
    monitor-enter p0

    :try_start_1
    const-string v0, "MAP.MapEventLoop"

    const-string/jumbo v1, "onMsgGetInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 767
    monitor-exit p0

    return-void

    .line 765
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMsgPushInProgress()V
    .registers 3

    .prologue
    .line 772
    monitor-enter p0

    :try_start_1
    const-string v0, "MAP.MapEventLoop"

    const-string/jumbo v1, "onMsgPushInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 774
    monitor-exit p0

    return-void

    .line 772
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .registers 5

    .prologue
    const-string v0, "MAP.MapEventLoop"

    .line 108
    monitor-enter p0

    :try_start_3
    const-string v0, "MAP.MapEventLoop"

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_48

    if-eqz v0, :cond_11

    .line 156
    :goto_f
    monitor-exit p0

    return-void

    .line 115
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/MapService;->init()V

    .line 117
    new-instance v0, Lcom/broadcom/bt/service/map/MapEventLoop$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAP Event Loop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/broadcom/bt/service/map/MapEventLoop$1;-><init>(Lcom/broadcom/bt/service/map/MapEventLoop;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    .line 151
    const-string v0, "MAP.MapEventLoop"

    const-string v1, "Starting Event Loop thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z

    .line 154
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/MapEventLoop;->onStateChangeEvent(Z)V
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_48

    goto :goto_f

    .line 108
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 4

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    const-string v1, "MAP.MapEventLoop"

    const-string v2, "Stop called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mSvc:Lcom/broadcom/bt/service/map/MapService;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/MapService;->finish()V

    .line 167
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1c

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mInterrupted:Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_28

    .line 173
    :try_start_14
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/map/MapEventLoop;->mThread:Ljava/lang/Thread;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1c} :catch_22

    .line 180
    :cond_1c
    :goto_1c
    const/4 v1, 0x0

    :try_start_1d
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/map/MapEventLoop;->onStateChangeEvent(Z)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_28

    .line 182
    monitor-exit p0

    return-void

    .line 176
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 177
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_24
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_1c

    .line 162
    .end local v0       #e:Ljava/lang/InterruptedException;,
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method
