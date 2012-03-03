.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"



# static fields
.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String; = null

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String; = null

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String; = null

.field public static final ICC_STATE_RUIM_CORPORATE_LOCKED:I = 0xe

.field public static final ICC_STATE_RUIM_HRPD_LOCKED:I = 0xd

.field public static final ICC_STATE_RUIM_NETWORK1_LOCKED:I = 0xb

.field public static final ICC_STATE_RUIM_NETWORK2_LOCKED:I = 0xc

.field public static final ICC_STATE_RUIM_RUIM_LOCKED:I = 0x10

.field public static final ICC_STATE_RUIM_SERVICE_PROVIDER_LOCKED:I = 0xf

.field public static final ICC_STATE_SIM_CORPORATE_LOCKED:I = 0x8

.field public static final ICC_STATE_SIM_NETWORK_SUBSET_LOCKED:I = 0x7

.field public static final ICC_STATE_SIM_SERVICE_PROVIDER_LOCKED:I = 0x9

.field public static final ICC_STATE_SIM_SIM_LOCKED:I = 0xa

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x6

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field private static sInstance:Landroid/telephony/TelephonyManager;



# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 143
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 149
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$State;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 75
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 77
    return-void
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .registers 1

    .prologue
    .line 87
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .prologue
    .line 1164
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneTypeFromNetworkType()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 330
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 331
    .local v0, mode:I
    if-ne v0, v2, :cond_c

    .line 332
    const/4 v1, 0x0

    .line 333
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v1

    goto :goto_b
.end method

.method private getPhoneTypeFromProperty()I
    .registers 4

    .prologue
    .line 320
    const-string v1, "gsm.current.phone-type"

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 323
    .local v0, type:I
    return v0
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .registers 2

    .prologue
    .line 1066
    const-string v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public static isDsdsEnabled()Z
    .registers 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public ConfirmIMSPDNCLOSE()V
    .registers 4

    .prologue
    .line 1480
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1481
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 1482
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->ConfirmIMSPDNCLOSE()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_d

    .line 1494
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_9
    :goto_9
    return-void

    .line 1487
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1489
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 1490
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_d
    move-exception v2

    move-object v0, v2

    .line 1492
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public ConfirmLTENetDetach()V
    .registers 4

    .prologue
    .line 1455
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1456
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_9

    .line 1457
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->ConfirmLTENetDetach()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_d

    .line 1469
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_9
    :goto_9
    return-void

    .line 1462
    :catch_a
    move-exception v2

    move-object v0, v2

    .line 1464
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_9

    .line 1465
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_d
    move-exception v2

    move-object v0, v2

    .line 1467
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_9
.end method

.method public closeImsPdn(I)Z
    .registers 6
    .parameter "reason"

    .prologue
    const/4 v3, 0x0

    .line 1505
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1506
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 1507
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->requestDetachFromNetwork(I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_12

    move-result v2

    .line 1517
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_b
    return v2

    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_c
    move v2, v3

    .line 1510
    goto :goto_b

    .line 1512
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_e
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    .line 1514
    goto :goto_b

    .line 1515
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_12
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    .line 1517
    goto :goto_b
.end method

.method public disableLocationUpdates()V
    .registers 2

    .prologue
    .line 260
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 264
    :goto_7
    return-void

    .line 262
    :catch_8
    move-exception v0

    goto :goto_7

    .line 261
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public enableLocationUpdates()V
    .registers 2

    .prologue
    .line 243
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdates()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    .line 247
    :goto_7
    return-void

    .line 245
    :catch_8
    move-exception v0

    goto :goto_7

    .line 244
    :catch_a
    move-exception v0

    goto :goto_7
.end method

.method public getActiveGateway(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .registers 10
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    const-string v6, "TelephonyManager"

    .line 690
    :try_start_3
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 691
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_22

    .line 692
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveGateway(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, gatewayAddr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 694
    const-string v3, "TelephonyManager"

    const-string v4, "gatewayAddr is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1e} :catch_28

    move-object v3, v5

    .line 709
    .end local v1       #gatewayAddr:Ljava/lang/String;,
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_1f
    return-object v3

    .restart local v1       #gatewayAddr:Ljava/lang/String;,
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_20
    move-object v3, v1

    .line 697
    goto :goto_1f

    .end local v1       #gatewayAddr:Ljava/lang/String;,
    :cond_22
    move-object v3, v5

    .line 701
    goto :goto_1f

    .line 703
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_24
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    move-object v3, v5

    .line 705
    goto :goto_1f

    .line 706
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_28
    move-exception v3

    move-object v0, v3

    .line 708
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    const-string/jumbo v3, "null pointer access"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 709
    goto :goto_1f
.end method

.method public getActiveInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .registers 10
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    const-string v6, "TelephonyManager"

    .line 578
    :try_start_3
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 579
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_22

    .line 580
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveInterfaceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, ifName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 582
    const-string v3, "TelephonyManager"

    const-string v4, "interface name is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1e} :catch_28

    move-object v3, v5

    .line 597
    .end local v1       #ifName:Ljava/lang/String;,
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_1f
    return-object v3

    .restart local v1       #ifName:Ljava/lang/String;,
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_20
    move-object v3, v1

    .line 585
    goto :goto_1f

    .end local v1       #ifName:Ljava/lang/String;,
    :cond_22
    move-object v3, v5

    .line 589
    goto :goto_1f

    .line 591
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_24
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    move-object v3, v5

    .line 593
    goto :goto_1f

    .line 594
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_28
    move-exception v3

    move-object v0, v3

    .line 596
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    const-string/jumbo v3, "null pointer access"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 597
    goto :goto_1f
.end method

.method public getActiveIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "apnType"

    .prologue
    const/4 v3, 0x0

    .line 635
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 636
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 637
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_12

    move-result-object v2

    .line 647
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_b
    return-object v2

    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_c
    move-object v2, v3

    .line 640
    goto :goto_b

    .line 642
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_e
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move-object v2, v3

    .line 644
    goto :goto_b

    .line 645
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_12
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v2, v3

    .line 647
    goto :goto_b
.end method

.method public getActiveIpAddress(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .registers 10
    .parameter "apnType"
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    const-string v6, "TelephonyManager"

    .line 664
    :try_start_3
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 665
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_22

    .line 666
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone$IPVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveIpAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, ipAddr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 668
    const-string v3, "TelephonyManager"

    const-string v4, "ipAddr is null or empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_1e} :catch_28

    move-object v3, v5

    .line 683
    .end local v1       #ipAddr:Ljava/lang/String;,
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_1f
    return-object v3

    .restart local v1       #ipAddr:Ljava/lang/String;,
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_20
    move-object v3, v1

    .line 671
    goto :goto_1f

    .end local v1       #ipAddr:Ljava/lang/String;,
    :cond_22
    move-object v3, v5

    .line 675
    goto :goto_1f

    .line 677
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_24
    move-exception v3

    move-object v0, v3

    .local v0, ex:Landroid/os/RemoteException;
    move-object v3, v5

    .line 679
    goto :goto_1f

    .line 680
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_28
    move-exception v3

    move-object v0, v3

    .line 682
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v3, "TelephonyManager"

    const-string/jumbo v3, "null pointer access"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 683
    goto :goto_1f
.end method

.method public getAllDataServiceEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1548
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 1549
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 1550
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getAllDataServiceEnabled()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_12

    move-result v2

    .line 1560
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_b
    return v2

    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_c
    move v2, v3

    .line 1553
    goto :goto_b

    .line 1555
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_e
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    .line 1557
    goto :goto_b

    .line 1558
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_12
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    .line 1560
    goto :goto_b
.end method

.method public getBackupedPhoneNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 954
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getBackupedPhoneNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 959
    :goto_9
    return-object v1

    .line 955
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 957
    goto :goto_9

    .line 958
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 959
    goto :goto_9
.end method

.method public getCallState()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1086
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 1092
    :goto_9
    return v1

    .line 1087
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1089
    goto :goto_9

    .line 1090
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1092
    goto :goto_9
.end method

.method public getCdmaEriHomeSystems()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1268
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriHomeSystems()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 1273
    :goto_9
    return-object v1

    .line 1269
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1271
    goto :goto_9

    .line 1272
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1273
    goto :goto_9
.end method

.method public getCdmaEriIconIndex()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 1215
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndex()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 1220
    :goto_9
    return v1

    .line 1216
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1218
    goto :goto_9

    .line 1219
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1220
    goto :goto_9
.end method

.method public getCdmaEriIconMode()I
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 1233
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconMode()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 1238
    :goto_9
    return v1

    .line 1234
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1236
    goto :goto_9

    .line 1237
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1238
    goto :goto_9
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1249
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriText()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 1254
    :goto_9
    return-object v1

    .line 1250
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1252
    goto :goto_9

    .line 1253
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1254
    goto :goto_9
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1289
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getCdmaPrlVersion()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 1294
    :goto_9
    return-object v1

    .line 1290
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1292
    goto :goto_9

    .line 1293
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1294
    goto :goto_9
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 220
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v0

    .line 221
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 222
    .local v1, cl:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_10} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_10} :catch_1b

    move-result v3

    if-eqz v3, :cond_15

    move-object v3, v4

    .line 228
    .end local v0       #bundle:Landroid/os/Bundle;,
    .end local v1       #cl:Landroid/telephony/CellLocation;,
    :goto_14
    return-object v3

    .restart local v0       #bundle:Landroid/os/Bundle;,
    .restart local v1       #cl:Landroid/telephony/CellLocation;,
    :cond_15
    move-object v3, v1

    .line 224
    goto :goto_14

    .line 225
    .end local v0       #bundle:Landroid/os/Bundle;,
    .end local v1       #cl:Landroid/telephony/CellLocation;,
    :catch_17
    move-exception v3

    move-object v2, v3

    .local v2, ex:Landroid/os/RemoteException;
    move-object v3, v4

    .line 226
    goto :goto_14

    .line 227
    .end local v2       #ex:Landroid/os/RemoteException;,
    :catch_1b
    move-exception v3

    move-object v2, v3

    .local v2, ex:Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 228
    goto :goto_14
.end method

.method public getCombinedIPAdress(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "apnType"

    .prologue
    const/4 v4, 0x0

    .line 609
    const/4 v0, 0x0

    .line 611
    .local v0, PDN_Adress:Ljava/lang/String;
    :try_start_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 612
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_19

    .line 613
    const-string v3, "6"

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveIpAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_12

    move-object v3, v0

    .line 627
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_11
    return-object v3

    .line 617
    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_12
    const-string v3, "4"

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getActiveIpAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_17} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_17} :catch_1f

    move-result-object v3

    goto :goto_11

    :cond_19
    move-object v3, v4

    .line 620
    goto :goto_11

    .line 622
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_1b
    move-exception v3

    move-object v1, v3

    .local v1, ex:Landroid/os/RemoteException;
    move-object v3, v4

    .line 624
    goto :goto_11

    .line 625
    .end local v1       #ex:Landroid/os/RemoteException;,
    :catch_1f
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 627
    goto :goto_11
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1019
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 1024
    :goto_9
    return-object v1

    .line 1020
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1021
    goto :goto_9

    .line 1022
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1024
    goto :goto_9
.end method

.method public getDataActivity()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1122
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 1128
    :goto_9
    return v1

    .line 1123
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1125
    goto :goto_9

    .line 1126
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1128
    goto :goto_9
.end method

.method public getDataState()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1154
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 1159
    :goto_9
    return v1

    .line 1155
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1157
    goto :goto_9

    .line 1158
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1159
    goto :goto_9
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 202
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 206
    :goto_9
    return-object v1

    .line 203
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 204
    goto :goto_9

    .line 205
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 206
    goto :goto_9
.end method

.method public getDeviceImei()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 916
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceImei()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 921
    :goto_9
    return-object v1

    .line 917
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 918
    goto :goto_9

    .line 919
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 921
    goto :goto_9
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 185
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 189
    :goto_9
    return-object v1

    .line 186
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 187
    goto :goto_9

    .line 188
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 189
    goto :goto_9
.end method

.method public getEhrpdInfo()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1432
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 1434
    .local v0, ehrpdInfo:[B
    :try_start_5
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1435
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_11

    .line 1436
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getEhrpdInfoForIms()[B
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_e} :catch_17

    move-result-object v0

    move-object v3, v0

    .line 1446
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_10
    return-object v3

    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_11
    move-object v3, v4

    .line 1438
    goto :goto_10

    .line 1440
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_13
    move-exception v3

    move-object v1, v3

    .local v1, ex:Landroid/os/RemoteException;
    move-object v3, v4

    .line 1441
    goto :goto_10

    .line 1442
    .end local v1       #ex:Landroid/os/RemoteException;,
    :catch_17
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 1443
    goto :goto_10
.end method

.method public getLGEmergencyNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1333
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getLGEmergencyNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 1338
    :goto_9
    return-object v1

    .line 1334
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1336
    goto :goto_9

    .line 1337
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1338
    goto :goto_9
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 938
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 943
    :goto_9
    return-object v1

    .line 939
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 940
    goto :goto_9

    .line 941
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 943
    goto :goto_9
.end method

.method public getLine1Number()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 871
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 876
    :goto_9
    return-object v1

    .line 872
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 873
    goto :goto_9

    .line 874
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 876
    goto :goto_9
.end method

.method public getLteConnectEnabled()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1571
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "test_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_13

    move v0, v4

    .line 1573
    .local v0, retVal:Z
    :goto_12
    return v0

    .end local v0       #retVal:Z,
    :cond_13
    move v0, v3

    .line 1571
    goto :goto_12
.end method

.method public getLteInfo()[I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1404
    const/4 v3, 0x4

    new-array v0, v3, [I

    .line 1406
    .local v0, LTEinfo:[I
    :try_start_4
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1407
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_10

    .line 1408
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getLteInfoForIMS()[I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_d} :catch_16

    move-result-object v0

    move-object v3, v0

    .line 1421
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_f
    return-object v3

    .restart local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_10
    move-object v3, v4

    .line 1411
    goto :goto_f

    .line 1413
    .end local v2       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_12
    move-exception v3

    move-object v1, v3

    .local v1, ex:Landroid/os/RemoteException;
    move-object v3, v4

    .line 1415
    goto :goto_f

    .line 1416
    .end local v1       #ex:Landroid/os/RemoteException;,
    :catch_16
    move-exception v3

    move-object v1, v3

    .local v1, ex:Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 1418
    goto :goto_f
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 276
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 280
    :goto_9
    return-object v1

    .line 277
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 278
    goto :goto_9

    .line 279
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 280
    goto :goto_9
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 382
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 349
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 438
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 439
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_c

    .line 440
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_a} :catch_12

    move-result v2

    .line 450
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_b
    return v2

    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_c
    move v2, v3

    .line 443
    goto :goto_b

    .line 445
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_e
    move-exception v2

    move-object v0, v2

    .local v0, ex:Landroid/os/RemoteException;
    move v2, v3

    .line 447
    goto :goto_b

    .line 448
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_12
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/NullPointerException;
    move v2, v3

    .line 450
    goto :goto_b
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 462
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 490
    :pswitch_7
    const-string v0, "UNKNOWN"

    :goto_9
    return-object v0

    .line 464
    :pswitch_a
    const-string v0, "GPRS"

    goto :goto_9

    .line 466
    :pswitch_d
    const-string v0, "EDGE"

    goto :goto_9

    .line 468
    :pswitch_10
    const-string v0, "UMTS"

    goto :goto_9

    .line 470
    :pswitch_13
    const-string v0, "HSDPA"

    goto :goto_9

    .line 472
    :pswitch_16
    const-string v0, "HSUPA"

    goto :goto_9

    .line 474
    :pswitch_19
    const-string v0, "HSPA"

    goto :goto_9

    .line 476
    :pswitch_1c
    const-string v0, "CDMA"

    goto :goto_9

    .line 478
    :pswitch_1f
    const-string v0, "CDMA - EvDo rev. 0"

    goto :goto_9

    .line 480
    :pswitch_22
    const-string v0, "CDMA - EvDo rev. A"

    goto :goto_9

    .line 482
    :pswitch_25
    const-string v0, "CDMA - EvDo rev. B"

    goto :goto_9

    .line 484
    :pswitch_28
    const-string v0, "CDMA - 1xRTT"

    goto :goto_9

    .line 486
    :pswitch_2b
    const-string v0, "CDMA - EHRPD"

    goto :goto_9

    .line 488
    :pswitch_2e
    const-string v0, "LTE"

    goto :goto_9

    .line 462
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_28
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_7
        :pswitch_25
        :pswitch_2e
        :pswitch_2b
    .end packed-switch
.end method

.method public getPcscfAddrIpv6()[Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1366
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1e

    .line 1368
    :try_start_9
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1369
    .local v3, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_14

    .line 1370
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getPcscfIpv6Address()[Ljava/lang/String;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_16
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_12} :catch_1a

    move-result-object v4

    .line 1393
    .end local v3       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_13
    return-object v4

    .restart local v3       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_14
    move-object v4, v6

    .line 1372
    goto :goto_13

    .line 1374
    .end local v3       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_16
    move-exception v4

    move-object v1, v4

    .local v1, ex:Landroid/os/RemoteException;
    move-object v4, v6

    .line 1375
    goto :goto_13

    .line 1376
    .end local v1       #ex:Landroid/os/RemoteException;,
    :catch_1a
    move-exception v4

    move-object v1, v4

    .local v1, ex:Ljava/lang/NullPointerException;
    move-object v4, v6

    .line 1377
    goto :goto_13

    .line 1380
    .end local v1       #ex:Ljava/lang/NullPointerException;,
    :cond_1e
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/16 v5, 0xe

    if-ne v4, v5, :cond_5f

    .line 1381
    const-string v0, "0000:0000:0000:0000:0000:0000:0000:0000"

    .line 1382
    .local v0, defaultAddress:Ljava/lang/String;
    const/4 v4, 0x5

    new-array v2, v4, [Ljava/lang/String;

    .line 1384
    .local v2, pcscfAddresses:[Ljava/lang/String;
    const/4 v4, 0x0

    const-string/jumbo v5, "net.ims.p-cscf_addr0"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1385
    const/4 v4, 0x1

    const-string/jumbo v5, "net.ims.p-cscf_addr1"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1386
    const/4 v4, 0x2

    const-string/jumbo v5, "net.ims.p-cscf_addr2"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1387
    const/4 v4, 0x3

    const-string/jumbo v5, "net.ims.p-cscf_addr3"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1388
    const/4 v4, 0x4

    const-string/jumbo v5, "net.ims.p-cscf_addr4"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    move-object v4, v2

    .line 1390
    goto :goto_13

    .end local v0       #defaultAddress:Ljava/lang/String;,
    .end local v2       #pcscfAddresses:[Ljava/lang/String;,
    :cond_5f
    move-object v4, v6

    .line 1393
    goto :goto_13
.end method

.method public getPhoneType()I
    .registers 4

    .prologue
    .line 300
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 301
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_b

    .line 302
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v2

    .line 314
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_a
    return v2

    .line 305
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_17

    move-result v2

    goto :goto_a

    .line 307
    .end local v1       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 310
    .local v0, ex:Landroid/os/RemoteException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a

    .line 311
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 314
    .local v0, ex:Ljava/lang/NullPointerException;
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty()I

    move-result v2

    goto :goto_a
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 817
    const-string v0, "gsm.sim.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 799
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 810
    const-string v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 829
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 834
    :goto_9
    return-object v1

    .line 830
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 831
    goto :goto_9

    .line 832
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 834
    goto :goto_9
.end method

.method public getSimState()I
    .registers 3

    .prologue
    .line 736
    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 738
    const/4 v1, 0x1

    .line 786
    :goto_f
    return v1

    .line 740
    :cond_10
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 741
    const/4 v1, 0x2

    goto :goto_f

    .line 743
    :cond_1a
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 744
    const/4 v1, 0x3

    goto :goto_f

    .line 746
    :cond_24
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 747
    const/4 v1, 0x4

    goto :goto_f

    .line 749
    :cond_2e
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 750
    const/4 v1, 0x5

    goto :goto_f

    .line 752
    :cond_38
    const-string v1, "CARD_IO_ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 753
    const/4 v1, 0x6

    goto :goto_f

    .line 755
    :cond_42
    const-string v1, "SIM_NETWORK_SUBSET_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 756
    const/4 v1, 0x7

    goto :goto_f

    .line 758
    :cond_4c
    const-string v1, "SIM_CORPORATE_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 759
    const/16 v1, 0x8

    goto :goto_f

    .line 761
    :cond_57
    const-string v1, "SIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 762
    const/16 v1, 0x9

    goto :goto_f

    .line 764
    :cond_62
    const-string v1, "SIM_SIM_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 765
    const/16 v1, 0xa

    goto :goto_f

    .line 767
    :cond_6d
    const-string v1, "RUIM_NETWORK1_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 768
    const/16 v1, 0xb

    goto :goto_f

    .line 770
    :cond_78
    const-string v1, "RUIM_NETWORK2_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 771
    const/16 v1, 0xc

    goto :goto_f

    .line 773
    :cond_83
    const-string v1, "RUIM_HRPD_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 774
    const/16 v1, 0xd

    goto :goto_f

    .line 776
    :cond_8e
    const-string v1, "RUIM_CORPORATE_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 777
    const/16 v1, 0xe

    goto/16 :goto_f

    .line 779
    :cond_9a
    const-string v1, "RUIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 780
    const/16 v1, 0xf

    goto/16 :goto_f

    .line 782
    :cond_a6
    const-string v1, "RUIM_RUIM_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 783
    const/16 v1, 0x10

    goto/16 :goto_f

    .line 786
    :cond_b2
    const/4 v1, 0x0

    goto/16 :goto_f
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 853
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 858
    :goto_9
    return-object v1

    .line 854
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 855
    goto :goto_9

    .line 856
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 858
    goto :goto_9
.end method

.method public getUsimMsisdn()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 893
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getUsimMsisdn()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 898
    :goto_9
    return-object v1

    .line 894
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 895
    goto :goto_9

    .line 896
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 898
    goto :goto_9
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1055
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTag()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 1060
    :goto_9
    return-object v1

    .line 1056
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1057
    goto :goto_9

    .line 1058
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1060
    goto :goto_9
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1000
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumber()Ljava/lang/String;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v1

    .line 1005
    :goto_9
    return-object v1

    .line 1001
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    .line 1002
    goto :goto_9

    .line 1003
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    .line 1005
    goto :goto_9
.end method

.method public getVoiceMessageCount()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1037
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCount()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 1042
    :goto_9
    return v1

    .line 1038
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 1039
    goto :goto_9

    .line 1040
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 1042
    goto :goto_9
.end method

.method public hasIccCard()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 565
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_8} :catch_e

    move-result v1

    .line 571
    :goto_9
    return v1

    .line 566
    :catch_a
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move v1, v2

    .line 568
    goto :goto_9

    .line 569
    .end local v0       #ex:Landroid/os/RemoteException;,
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move v1, v2

    .line 571
    goto :goto_9
.end method

.method public isNetworkRoaming()Z
    .registers 3

    .prologue
    .line 370
    const-string/jumbo v0, "true"

    const-string v1, "gsm.operator.isroaming"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .registers 8
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 1197
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1199
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_b
    :try_start_b
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1200
    .local v0, notifyNow:Ljava/lang/Boolean;
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_21} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_21} :catch_28

    .line 1206
    .end local v0       #notifyNow:Ljava/lang/Boolean;,
    :goto_21
    return-void

    .line 1197
    .end local v1       #pkgForDebug:Ljava/lang/String;,
    :cond_22
    const-string v2, "<unknown>"

    move-object v1, v2

    goto :goto_b

    .line 1199
    .restart local v1       #pkgForDebug:Ljava/lang/String;,
    :cond_26
    const/4 v2, 0x0

    goto :goto_12

    .line 1203
    :catch_28
    move-exception v2

    goto :goto_21

    .line 1201
    :catch_2a
    move-exception v2

    goto :goto_21
.end method

.method public setAllDataServiceEnabled(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 1532
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1533
    .local v0, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 1534
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setAllDataServiceEnabled(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1543
    .end local v0       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_9
    :goto_9
    return-void

    .line 1540
    :catch_a
    move-exception v1

    goto :goto_9

    .line 1538
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public setBackupedPhoneNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "number"

    .prologue
    .line 969
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setBackupedPhoneNumber(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 974
    :goto_7
    return-void

    .line 970
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 972
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_7
.end method

.method public setLGEmergencyNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "number"

    .prologue
    .line 1346
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setLGEmergencyNumber(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1351
    :goto_7
    return-void

    .line 1347
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 1349
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_7
.end method

.method public setLteConnectEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 1580
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1581
    .local v0, telephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setLteConnectEnabledForTest(Z)V

    .line 1582
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "test_mode_setting"

    if-eqz p1, :cond_17

    const/4 v3, 0x1

    :goto_13
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_19

    .line 1586
    .end local v0       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_16
    return-void

    .line 1582
    .restart local v0       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_17
    const/4 v3, 0x0

    goto :goto_13

    .line 1584
    .end local v0       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :catch_19
    move-exception v1

    goto :goto_16
.end method

.method public setNetworkModePreference(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 1610
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1611
    .local v0, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_9

    .line 1612
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setNetworkModePreference(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1617
    .end local v0       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :cond_9
    :goto_9
    return-void

    .line 1615
    :catch_a
    move-exception v1

    goto :goto_9

    .line 1614
    :catch_c
    move-exception v1

    goto :goto_9
.end method

.method public setOTADMenableAdmin(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 1597
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1598
    .local v0, telephony:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ITelephony;->setOTADMenableAdmin(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1601
    .end local v0       #telephony:Lcom/android/internal/telephony/ITelephony;,
    :goto_7
    return-void

    .line 1599
    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public storeVoiceMailNumber(Ljava/lang/String;)V
    .registers 4
    .parameter "number"

    .prologue
    .line 984
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->storeVoiceMailNumber(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 989
    :goto_7
    return-void

    .line 985
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 987
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_7
.end method
