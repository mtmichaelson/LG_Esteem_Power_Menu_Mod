.class public Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
.super Ljava/lang/Object;
.source "IMSPhoneManager.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;,
        Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;,
        Lcom/android/internal/telephony/lgeims/IMSPhoneManager$DataRequestHandler;,
        Lcom/android/internal/telephony/lgeims/IMSPhoneManager$RILRequestHandler;
    }
.end annotation


# static fields
.field private static final IMS_APN_TYPE:Ljava/lang/String; = "ims"

.field private static final IMS_DATA_CONNECTION_CONNECTED:I = 0x0

.field private static final IMS_DATA_CONNECTION_DISCONNECTED:I = 0x1

.field private static final IMS_DATA_CONNECTION_DISCONNECTING_REQUESTED_BY_IMSPDN_CLOSE:I = 0x4

.field private static final IMS_DATA_CONNECTION_DISCONNECTING_REQUESTED_BY_LTE_DETACH:I = 0x3

.field private static final IMS_DATA_CONNECTION_FAILED:I = 0x2

.field private static final IMS_DATA_CONNECTION_STATE_CHANGED:I = 0xc8

.field private static final IMS_RADIO_ACCESS_TECH_EHRPD:I = 0x1

.field private static final IMS_RADIO_ACCESS_TECH_LTE:I = 0x2

.field private static final IMS_RADIO_ACCESS_TECH_LTE_LENGTH:I = 0xf

.field private static final IMS_RADIO_ACCESS_TECH_WLAN:I = 0x3

.field private static final IMS_RADIO_ACCESS_TECH_WLAN_LENGTH:I = 0xf

.field private static final IMS_RADIO_TECH_STATE_CHANGED:I = 0xc9

.field private static final LOG_D:I = 0x1

.field private static final LOG_E:I = 0x4

.field private static final LOG_ENABLED:Z = true

.field private static final LOG_I:I = 0x2

.field private static final LOG_W:I = 0x3

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field private static final TAG:Ljava/lang/String; = "IMSPhoneManager"

.field public static final WLAN_ACCESS_TYPE_IEEE_802_11:I = 0x0

.field public static final WLAN_ACCESS_TYPE_IEEE_802_11B:I = 0x1

.field public static final WLAN_ACCESS_TYPE_IEEE_802_11G:I = 0x2

.field public static final WLAN_ACCESS_TYPE_IEEE_802_11N:I = 0x3

.field private static alarmManager:Landroid/app/AlarmManager;

.field private static connectionManager:Landroid/net/ConnectivityManager;

.field private static mDataCnxState:I

.field private static mIMSPhoneManager:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

.field private static mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private static mWifiMgrService:Landroid/net/wifi/IWifiManager;



# instance fields
.field private mCSCallServiceEnabled:Z

.field private mContext:Landroid/content/Context;

.field private mDataNoti:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

.field private mDataRequestHandler:Landroid/os/Handler;

.field private mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

.field private mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRILRequestHandler:Landroid/os/Handler;

.field private mRadioState:I

.field private mServiceState:I

.field private mSimState:I

.field private mWiFiServiceEnabled:Z



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 118
    sput-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSPhoneManager:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    .line 119
    sput-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 120
    sput-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mWifiMgrService:Landroid/net/wifi/IWifiManager;

    .line 121
    sput-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->alarmManager:Landroid/app/AlarmManager;

    .line 122
    sput-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->connectionManager:Landroid/net/ConnectivityManager;

    .line 144
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataCnxState:I

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    .line 129
    iput-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 131
    iput-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mRILRequestHandler:Landroid/os/Handler;

    .line 132
    iput-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataRequestHandler:Landroid/os/Handler;

    .line 134
    iput-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataNoti:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    .line 135
    iput-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    .line 136
    iput-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mCSCallServiceEnabled:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mWiFiServiceEnabled:Z

    .line 141
    iput v2, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mServiceState:I

    .line 142
    iput v2, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mRadioState:I

    .line 143
    iput v2, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mSimState:I

    .line 559
    new-instance v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;-><init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 243
    new-instance v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$RILRequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$RILRequestHandler;-><init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mRILRequestHandler:Landroid/os/Handler;

    .line 246
    new-instance v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$DataRequestHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$DataRequestHandler;-><init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataRequestHandler:Landroid/os/Handler;

    .line 249
    const-string v0, "imssysif"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x4

    const-string v1, "imssysif is loadeded"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 251
    return-void
.end method

.method static synthetic access$200(ILjava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->handleDataConnectionEvent(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->sendIntent(Ljava/lang/String;)V

    return-void
.end method

.method public static disableDataConnectivity()Z
    .registers 5

    .prologue
    .line 1191
    const/4 v0, 0x0

    .line 1194
    .local v0, bRet:Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getPhoneService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1196
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getPhoneService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z

    move-result v0

    .line 1199
    :cond_f
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableDataConnectivity() : returned - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_26} :catch_27

    .line 1206
    :goto_26
    return v0

    .line 1201
    :catch_27
    move-exception v2

    move-object v1, v2

    .line 1203
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "Unexpected remote exception"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public static enableDataConnectivity()Z
    .registers 5

    .prologue
    .line 1171
    const/4 v0, 0x0

    .line 1174
    .local v0, bRet:Z
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getPhoneService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 1176
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getPhoneService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    move-result v0

    .line 1179
    :cond_f
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableDataConnectivity() : returned - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_26} :catch_27

    .line 1186
    :goto_26
    return v0

    .line 1181
    :catch_27
    move-exception v2

    move-object v1, v2

    .line 1183
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "Unexpected remote exception"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public static getAccessNetworkInfo()[B
    .registers 13

    .prologue
    const v12, 0xff00

    const/high16 v11, -0x100

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1502
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getNetworkType()I

    move-result v4

    .line 1503
    .local v4, nRadioTech:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nRadioTech = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1505
    const/16 v5, 0xe

    if-ne v4, v5, :cond_db

    .line 1507
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLteInfo()[I

    move-result-object v0

    .line 1508
    .local v0, accessNetInfo:[I
    array-length v3, v0

    .line 1510
    .local v3, nLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_31
    const/4 v5, 0x4

    if-ge v1, v5, :cond_59

    .line 1512
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accessNetInfo index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " valuse = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1510
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1516
    :cond_59
    const/16 v5, 0xf

    new-array v2, v5, [B

    .line 1518
    .local v2, imsAccessNetInfo:[B
    const/4 v5, 0x0

    aput-byte v9, v2, v5

    .line 1520
    const/4 v5, 0x0

    aget v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 1522
    aget v5, v0, v8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v2, v9

    .line 1523
    aget v5, v0, v8

    and-int/2addr v5, v12

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v10

    .line 1524
    const/4 v5, 0x4

    aget v6, v0, v8

    const/high16 v7, 0xff

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 1525
    const/4 v5, 0x5

    aget v6, v0, v8

    and-int/2addr v6, v11

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 1527
    const/4 v5, 0x6

    aget v6, v0, v9

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 1528
    const/4 v5, 0x7

    aget v6, v0, v9

    and-int/2addr v6, v12

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 1529
    const/16 v5, 0x8

    aget v6, v0, v9

    const/high16 v7, 0xff

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 1530
    const/16 v5, 0x9

    aget v6, v0, v9

    and-int/2addr v6, v11

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 1532
    const/16 v5, 0xa

    aget v6, v0, v10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 1533
    const/16 v5, 0xb

    aget v6, v0, v10

    and-int/2addr v6, v12

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 1534
    const/16 v5, 0xc

    aget v6, v0, v10

    const/high16 v7, 0xff

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 1535
    const/16 v5, 0xd

    aget v6, v0, v10

    and-int/2addr v6, v11

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    move-object v5, v2

    .line 1550
    .end local v0       #accessNetInfo:[I,
    .end local v1       #i:I,
    .end local v2       #imsAccessNetInfo:[B,
    .end local v3       #nLength:I,
    :goto_da
    return-object v5

    .line 1539
    :cond_db
    const/16 v5, 0xd

    if-ne v4, v5, :cond_e9

    .line 1541
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getEhrpdInfo()[B

    move-result-object v0

    .local v0, accessNetInfo:[B
    move-object v5, v0

    .line 1542
    goto :goto_da

    .line 1547
    .end local v0       #accessNetInfo:[B,
    :cond_e9
    const-string v5, "getAccessNetworkInfo() : Not Support Types"

    invoke-static {v8, v5}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1550
    const/4 v5, 0x0

    goto :goto_da
.end method

.method public static getCallState()I
    .registers 1

    .prologue
    .line 1221
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    return v0
.end method

.method public static getCellID()I
    .registers 1

    .prologue
    .line 1395
    const/4 v0, -0x1

    .line 1397
    .local v0, cid:I
    return v0
.end method

.method public static getDataActivity()I
    .registers 1

    .prologue
    .line 1234
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v0

    return v0
.end method

.method public static getDataConnectionState()I
    .registers 1

    .prologue
    .line 389
    sget v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataCnxState:I

    return v0
.end method

.method public static getDataState()I
    .registers 1

    .prologue
    .line 1249
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getDataConnectionState()I

    move-result v0

    return v0
.end method

.method public static getImsAccessNetworkInfo(I)[B
    .registers 15
    .parameter "nFlowId"

    .prologue
    const/4 v9, 0x0

    const/16 v13, 0xd

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1663
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getNetworkType()I

    move-result v6

    .line 1666
    .local v6, nRadioTech:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "nRadioTech = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1669
    if-ne v6, v13, :cond_2d

    .line 1671
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getEhrpdInfo()[B

    move-result-object v2

    .local v2, accessNetInfo:[B
    move-object v7, v2

    .line 1796
    .end local v2       #accessNetInfo:[B,
    :goto_2c
    return-object v7

    .line 1674
    :cond_2d
    if-ne p0, v11, :cond_117

    .line 1676
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 1678
    .local v1, MacAddr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WIFI MacAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1680
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 1682
    .restart local v2       #accessNetInfo:[B,
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ByteArray WIFI MAC Address1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1684
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    .line 1686
    .local v0, LinkSpeed:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WIFI LinkSpeed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1689
    const/16 v7, 0xf

    new-array v4, v7, [B

    .line 1691
    .local v4, imsAccessNetInfo:[B
    aput-byte v12, v4, v9

    .line 1693
    aget-byte v7, v2, v9

    aput-byte v7, v4, v10

    .line 1694
    aget-byte v7, v2, v10

    aput-byte v7, v4, v11

    .line 1695
    aget-byte v7, v2, v12

    aput-byte v7, v4, v12

    .line 1696
    const/4 v7, 0x4

    const/4 v8, 0x4

    aget-byte v8, v2, v8

    aput-byte v8, v4, v7

    .line 1697
    const/4 v7, 0x5

    const/4 v8, 0x6

    aget-byte v8, v2, v8

    aput-byte v8, v4, v7

    .line 1698
    const/4 v7, 0x6

    const/4 v8, 0x7

    aget-byte v8, v2, v8

    aput-byte v8, v4, v7

    .line 1699
    const/4 v7, 0x7

    const/16 v8, 0x9

    aget-byte v8, v2, v8

    aput-byte v8, v4, v7

    .line 1700
    const/16 v7, 0x8

    const/16 v8, 0xa

    aget-byte v8, v2, v8

    aput-byte v8, v4, v7

    .line 1701
    const/16 v7, 0x9

    const/16 v8, 0xc

    aget-byte v8, v2, v8

    aput-byte v8, v4, v7

    .line 1702
    const/16 v7, 0xa

    aget-byte v8, v2, v13

    aput-byte v8, v4, v7

    .line 1703
    const/16 v7, 0xb

    const/16 v8, 0xf

    aget-byte v8, v2, v8

    aput-byte v8, v4, v7

    .line 1704
    const/16 v7, 0xc

    const/16 v8, 0x10

    aget-byte v8, v2, v8

    aput-byte v8, v4, v7

    .line 1707
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ByteArray WIFI MAC Address2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1709
    sparse-switch v0, :sswitch_data_1e2

    .line 1747
    aput-byte v9, v4, v13

    .line 1750
    :goto_f3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ByteArray WIFI LinkSpeed = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v4, v13

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    move-object v7, v4

    .line 1752
    goto/16 :goto_2c

    .line 1715
    :sswitch_10e
    aput-byte v10, v4, v13

    goto :goto_f3

    .line 1726
    :sswitch_111
    aput-byte v11, v4, v13

    goto :goto_f3

    .line 1743
    :sswitch_114
    aput-byte v12, v4, v13

    goto :goto_f3

    .line 1755
    .end local v0       #LinkSpeed:I,
    .end local v1       #MacAddr:Ljava/lang/String;,
    .end local v2       #accessNetInfo:[B,
    .end local v4       #imsAccessNetInfo:[B,
    :cond_117
    if-ne p0, v10, :cond_1d9

    .line 1757
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getLteInfo()[I

    move-result-object v2

    .line 1758
    .local v2, accessNetInfo:[I
    array-length v5, v2

    .line 1760
    .local v5, nLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_123
    const/4 v7, 0x4

    if-ge v3, v7, :cond_14b

    .line 1762
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "accessNetInfo index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " valuse = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1760
    add-int/lit8 v3, v3, 0x1

    goto :goto_123

    .line 1766
    :cond_14b
    const/16 v7, 0xf

    new-array v4, v7, [B

    .line 1768
    .restart local v4       #imsAccessNetInfo:[B,
    aput-byte v11, v4, v9

    .line 1770
    aget v7, v2, v9

    int-to-byte v7, v7

    aput-byte v7, v4, v10

    .line 1772
    aget v7, v2, v10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v11

    .line 1773
    aget v7, v2, v10

    const v8, 0xff00

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v12

    .line 1774
    const/4 v7, 0x4

    aget v8, v2, v10

    const/high16 v9, 0xff

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1775
    const/4 v7, 0x5

    aget v8, v2, v10

    const/high16 v9, -0x100

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1777
    const/4 v7, 0x6

    aget v8, v2, v11

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1778
    const/4 v7, 0x7

    aget v8, v2, v11

    const v9, 0xff00

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1779
    const/16 v7, 0x8

    aget v8, v2, v11

    const/high16 v9, 0xff

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1780
    const/16 v7, 0x9

    aget v8, v2, v11

    const/high16 v9, -0x100

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1782
    const/16 v7, 0xa

    aget v8, v2, v12

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1783
    const/16 v7, 0xb

    aget v8, v2, v12

    const v9, 0xff00

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1784
    const/16 v7, 0xc

    aget v8, v2, v12

    const/high16 v9, 0xff

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 1785
    aget v7, v2, v12

    const/high16 v8, -0x100

    and-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v4, v13

    move-object v7, v4

    .line 1787
    goto/16 :goto_2c

    .line 1792
    .end local v2       #accessNetInfo:[I,
    .end local v3       #i:I,
    .end local v4       #imsAccessNetInfo:[B,
    .end local v5       #nLength:I,
    :cond_1d9
    const-string v7, "getAccessNetworkInfo() : Not Support Types"

    invoke-static {v10, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1796
    const/4 v7, 0x0

    goto/16 :goto_2c

    .line 1709
    nop

    :sswitch_data_1e2
    .sparse-switch
        0x1 -> :sswitch_10e
        0x2 -> :sswitch_10e
        0x5 -> :sswitch_10e
        0x6 -> :sswitch_111
        0x7 -> :sswitch_114
        0x9 -> :sswitch_111
        0xb -> :sswitch_10e
        0xc -> :sswitch_111
        0xd -> :sswitch_114
        0xe -> :sswitch_114
        0x12 -> :sswitch_111
        0x13 -> :sswitch_114
        0x15 -> :sswitch_114
        0x18 -> :sswitch_111
        0x1a -> :sswitch_114
        0x1c -> :sswitch_114
        0x24 -> :sswitch_111
        0x27 -> :sswitch_114
        0x2b -> :sswitch_114
        0x30 -> :sswitch_111
        0x34 -> :sswitch_114
        0x36 -> :sswitch_111
        0x39 -> :sswitch_114
        0x3a -> :sswitch_114
        0x41 -> :sswitch_114
        0x48 -> :sswitch_114
    .end sparse-switch
.end method

.method public static getInstance()Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
    .registers 1

    .prologue
    .line 150
    sget-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSPhoneManager:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    if-nez v0, :cond_b

    .line 152
    new-instance v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSPhoneManager:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    .line 155
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSPhoneManager:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    return-object v0
.end method

.method public static getLocalAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1428
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCombinedIPAdress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkInfoDetailedState(Landroid/net/NetworkInfo$DetailedState;)I
    .registers 2
    .parameter "state"

    .prologue
    .line 212
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_6

    .line 213
    const/4 v0, 0x0

    .line 233
    :goto_5
    return v0

    .line 214
    :cond_6
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_c

    .line 215
    const/4 v0, 0x1

    goto :goto_5

    .line 216
    :cond_c
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_12

    .line 217
    const/4 v0, 0x2

    goto :goto_5

    .line 218
    :cond_12
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_18

    .line 219
    const/4 v0, 0x3

    goto :goto_5

    .line 220
    :cond_18
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_1e

    .line 221
    const/4 v0, 0x4

    goto :goto_5

    .line 222
    :cond_1e
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_24

    .line 223
    const/4 v0, 0x5

    goto :goto_5

    .line 224
    :cond_24
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_2a

    .line 225
    const/4 v0, 0x6

    goto :goto_5

    .line 226
    :cond_2a
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_30

    .line 227
    const/4 v0, 0x7

    goto :goto_5

    .line 228
    :cond_30
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_37

    .line 229
    const/16 v0, 0x8

    goto :goto_5

    .line 230
    :cond_37
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p0, v0, :cond_3e

    .line 231
    const/16 v0, 0x9

    goto :goto_5

    .line 233
    :cond_3e
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public static getNetworkType()I
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 1319
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1320
    .local v0, nRadioType:I
    const/4 v1, 0x0

    .line 1322
    .local v1, nResult:I
    packed-switch v0, :pswitch_data_3e

    .line 1379
    const/4 v1, 0x0

    .line 1383
    :goto_e
    return v1

    .line 1325
    :pswitch_f
    const/4 v1, 0x0

    .line 1326
    goto :goto_e

    .line 1328
    :pswitch_11
    const/4 v1, 0x1

    .line 1329
    goto :goto_e

    .line 1331
    :pswitch_13
    const/4 v1, 0x2

    .line 1332
    goto :goto_e

    .line 1334
    :pswitch_15
    const/4 v1, 0x3

    .line 1335
    goto :goto_e

    .line 1337
    :pswitch_17
    const/4 v1, 0x4

    .line 1338
    goto :goto_e

    .line 1340
    :pswitch_19
    const/4 v1, 0x5

    .line 1341
    goto :goto_e

    .line 1343
    :pswitch_1b
    const/4 v1, 0x6

    .line 1344
    goto :goto_e

    .line 1346
    :pswitch_1d
    const/4 v1, 0x7

    .line 1347
    goto :goto_e

    .line 1349
    :pswitch_1f
    const/16 v1, 0x8

    .line 1350
    goto :goto_e

    .line 1352
    :pswitch_22
    const/16 v1, 0x9

    .line 1353
    goto :goto_e

    .line 1355
    :pswitch_25
    const/16 v1, 0xa

    .line 1356
    goto :goto_e

    .line 1358
    :pswitch_28
    const/16 v1, 0xb

    .line 1359
    goto :goto_e

    .line 1361
    :pswitch_2b
    const/16 v1, 0xc

    .line 1362
    goto :goto_e

    .line 1364
    :pswitch_2e
    const-string v2, "Radio Type ---- eHRPD"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1365
    const/16 v1, 0xd

    .line 1366
    goto :goto_e

    .line 1368
    :pswitch_36
    const-string v2, "Radio Type ---- LTE"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1369
    const/16 v1, 0xe

    .line 1370
    goto :goto_e

    .line 1322
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_19
        :pswitch_1b
        :pswitch_1d
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_36
        :pswitch_2e
    .end packed-switch
.end method

.method public static getPcscfAddress()[Ljava/lang/String;
    .registers 9

    .prologue
    .line 1437
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPcscfAddrIpv6()[Ljava/lang/String;

    move-result-object v4

    .line 1438
    .local v4, strPcscfs:[Ljava/lang/String;
    array-length v3, v4

    .line 1439
    .local v3, originCnt:I
    new-array v0, v3, [Z

    .line 1441
    .local v0, bValidPCSCF:[Z
    const/4 v1, 0x1

    const-string v2, "getPcscfAddress()"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1443
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v3, :cond_1a

    .line 1445
    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 1443
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1448
    :cond_1a
    const/4 v2, 0x0

    .line 1450
    .local v2, validCount:I
    const/4 v1, 0x0

    move v6, v2

    .end local v2       #validCount:I,
    .local v6, validCount:I
    move v2, v1

    .end local v1       #i:I,
    .local v2, i:I
    :goto_1e
    if-ge v2, v3, :cond_b6

    .line 1452
    const/4 v1, 0x0

    .line 1455
    .local v1, result:Z
    :try_start_21
    aget-object v1, v4, v2

    .end local v1       #result:Z,
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1456
    .local v1, pcscfAddress:Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    .end local v1       #pcscfAddress:Ljava/net/InetAddress;,
    if-nez v1, :cond_5b

    .line 1458
    const/4 v1, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index =  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ,  pcscf = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v4, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1460
    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1461
    add-int/lit8 v1, v6, 0x1

    .end local v6       #validCount:I,
    .local v1, validCount:I
    :goto_55
    move v5, v1

    .line 1450
    .end local v1       #validCount:I,
    .local v5, validCount:I
    :goto_56
    add-int/lit8 v1, v2, 0x1

    .end local v2       #i:I,
    .local v1, i:I
    move v2, v1

    .end local v1       #i:I,
    .restart local v2       #i:I,
    move v6, v5

    .end local v5       #validCount:I,
    .restart local v6       #validCount:I,
    goto :goto_1e

    .line 1465
    :cond_5b
    const/4 v1, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index =  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ,  pcscf = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v4, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " --- Invalid Address"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V
    :try_end_84
    .catch Ljava/net/UnknownHostException; {:try_start_21 .. :try_end_84} :catch_86

    move v1, v6

    .end local v6       #validCount:I,
    .local v1, validCount:I
    goto :goto_55

    .line 1467
    .end local v1       #validCount:I,
    .restart local v6       #validCount:I,
    :catch_86
    move-exception v1

    .line 1468
    .local v1, e:Ljava/net/UnknownHostException;
    const/4 v5, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1       #e:Ljava/net/UnknownHostException;,
    const-string v7, "index =  "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ,  pcscf = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v7, v4, v2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    move v5, v6

    .end local v6       #validCount:I,
    .restart local v5       #validCount:I,
    goto :goto_56

    .line 1472
    .end local v5       #validCount:I,
    .restart local v6       #validCount:I,
    :cond_b6
    if-nez v6, :cond_ba

    .line 1473
    const/4 v0, 0x0

    .line 1489
    .end local v0       #bValidPCSCF:[Z,
    .end local v2       #i:I,
    :goto_b9
    return-object v0

    .line 1475
    .restart local v0       #bValidPCSCF:[Z,
    .restart local v2       #i:I,
    :cond_ba
    new-array v5, v6, [Ljava/lang/String;

    .line 1476
    .local v5, stractualPcscfs:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1478
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_be
    if-ge v1, v3, :cond_d0

    if-ge v2, v6, :cond_d0

    .line 1480
    aget-boolean v7, v0, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_cd

    .line 1482
    aget-object v7, v4, v1

    aput-object v7, v5, v2

    .line 1483
    add-int/lit8 v2, v2, 0x1

    .line 1478
    :cond_cd
    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    .line 1487
    :cond_d0
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v0       #bValidPCSCF:[Z,
    .end local v1       #i:I,
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "valid Pcscfs Count =  "

    .end local v2       #j:I,
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    move-object v0, v5

    .line 1489
    goto :goto_b9
.end method

.method public static getPhoneNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 1389
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUsimMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPhoneService()Lcom/android/internal/telephony/ITelephony;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_11

    .line 162
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 165
    :cond_11
    sget-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method public static getPhoneType()I
    .registers 1

    .prologue
    .line 1259
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static getServiceState()I
    .registers 2

    .prologue
    .line 1272
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getInstance()Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1274
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_13

    .line 1275
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1278
    :goto_12
    return v1

    :cond_13
    const/4 v1, -0x1

    goto :goto_12
.end method

.method public static getWifiDetailedState()I
    .registers 6

    .prologue
    .line 1849
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getWifiService()Landroid/net/wifi/IWifiManager;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 1851
    const/4 v0, 0x0

    .line 1852
    .local v0, detailedState:Landroid/net/NetworkInfo$DetailedState;
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getWifiService()Landroid/net/wifi/IWifiManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1854
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 1855
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWifiDetailedState() : state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getNetworkInfoDetailedState(Landroid/net/NetworkInfo$DetailedState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1857
    invoke-static {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getNetworkInfoDetailedState(Landroid/net/NetworkInfo$DetailedState;)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_37

    move-result v3

    .line 1865
    .end local v0       #detailedState:Landroid/net/NetworkInfo$DetailedState;,
    .end local v2       #wifiInfo:Landroid/net/wifi/WifiInfo;,
    :goto_36
    return v3

    .line 1860
    :catch_37
    move-exception v3

    move-object v1, v3

    .line 1862
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "Unexpected remote exception"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1865
    .end local v1       #e:Landroid/os/RemoteException;,
    :cond_3e
    const/4 v3, -0x1

    goto :goto_36
.end method

.method public static getWifiInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 1808
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getWifiService()Landroid/net/wifi/IWifiManager;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1810
    const/4 v1, 0x1

    const-string v2, "getWifiInfo()"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1812
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getWifiService()Landroid/net/wifi/IWifiManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    .line 1820
    :goto_14
    return-object v1

    .line 1815
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 1817
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "getWifiInfo() : Unexpected remote exception"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1820
    .end local v0       #e:Landroid/os/RemoteException;,
    :cond_1c
    const/4 v1, 0x0

    goto :goto_14
.end method

.method private static getWifiService()Landroid/net/wifi/IWifiManager;
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mWifiMgrService:Landroid/net/wifi/IWifiManager;

    if-nez v0, :cond_11

    .line 172
    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mWifiMgrService:Landroid/net/wifi/IWifiManager;

    .line 175
    :cond_11
    sget-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mWifiMgrService:Landroid/net/wifi/IWifiManager;

    return-object v0
.end method

.method public static getWifiState()I
    .registers 4

    .prologue
    .line 1830
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getWifiService()Landroid/net/wifi/IWifiManager;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 1832
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiState() : state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getWifiService()Landroid/net/wifi/IWifiManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1834
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getWifiService()Landroid/net/wifi/IWifiManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2e

    move-result v1

    .line 1842
    :goto_2d
    return v1

    .line 1837
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 1839
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Unexpected remote exception"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1842
    .end local v0       #e:Landroid/os/RemoteException;,
    :cond_35
    const/4 v1, -0x1

    goto :goto_2d
.end method

.method private handleDataConnectionEvent(II)V
    .registers 6
    .parameter "nWParam"
    .parameter "nLParam"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 515
    packed-switch p1, :pswitch_data_58

    .line 549
    const-string v0, "handleDataConnectionEvent() - Not Supported ..."

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 553
    :cond_a
    :goto_a
    return-void

    .line 518
    :pswitch_b
    if-ne p2, v1, :cond_1b

    .line 520
    const-string v0, "Deactivate LTE with timer"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 521
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->closeImsPdn(I)Z

    goto :goto_a

    .line 523
    :cond_1b
    if-ne p2, v2, :cond_2a

    .line 525
    const-string v0, "Deactivate LTE -- permanent"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 526
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->closeImsPdn(I)Z

    goto :goto_a

    .line 528
    :cond_2a
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 530
    const-string v0, "Deactivate LTE -- and attach"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 531
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->closeImsPdn(I)Z

    goto :goto_a

    .line 536
    :pswitch_3a
    if-ne p2, v1, :cond_49

    .line 538
    const-string v0, "Confirm LTE Net Detach"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 539
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->ConfirmLTENetDetach()V

    goto :goto_a

    .line 541
    :cond_49
    if-ne p2, v2, :cond_a

    .line 543
    const-string v0, "Confirm IMS PDN Disconnection"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 544
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->ConfirmIMSPDNCLOSE()V

    goto :goto_a

    .line 515
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_b
        :pswitch_3a
    .end packed-switch
.end method

.method private static final log(ILjava/lang/String;)V
    .registers 4
    .parameter "type"
    .parameter "log"

    .prologue
    const-string v1, "IMSPhoneManager"

    .line 183
    packed-switch p0, :pswitch_data_1e

    .line 202
    :goto_5
    return-void

    .line 186
    :pswitch_6
    const-string v0, "IMSPhoneManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 190
    :pswitch_c
    const-string v0, "IMSPhoneManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 194
    :pswitch_12
    const-string v0, "IMSPhoneManager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 198
    :pswitch_18
    const-string v0, "IMSPhoneManager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 183
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method

.method private static final log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter "log"
    .parameter "ex"

    .prologue
    .line 207
    const-string v0, "IMSPhoneManager"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    return-void
.end method

.method public static native nativeAirplaneModeChanged(Z)V
.end method

.method public static native nativeBatteryChanged(I)V
.end method

.method public static native nativeBatteryLevelLow()V
.end method

.method public static native nativeBootCompleted()V
.end method

.method public static native nativeDataConnectionFailed()V
.end method

.method public static native nativeOnCallStateChanged(ILjava/lang/String;)V
.end method

.method public static native nativeOnCellIDChanged(I)V
.end method

.method public static native nativeOnDataActivity(I)V
.end method

.method public static native nativeOnDataConnectionStatusChanged(I)V
.end method

.method public static native nativeOnEventReceived(III)I
.end method

.method public static native nativeOnPhoneStateChanged(I)V
.end method

.method public static native nativeOnRadioTechStatusChanged(I)V
.end method

.method public static native nativeOnServiceStateChanged(I)V
.end method

.method public static native nativePowerOff()V
.end method

.method public static native nativeProcessAlarmTimer(I)V
.end method

.method public static native nativeWifiNetworkStateChanged(II)V
.end method

.method public static native nativeWifiStateChanged(I)V
.end method

.method public static requestRouteToHostAddress(ILjava/lang/String;)I
    .registers 9
    .parameter "nCnxID"
    .parameter "strHostAddress"

    .prologue
    const/4 v6, 0x1

    .line 1402
    const/4 v2, 0x0

    .line 1405
    .local v2, result:Z
    :try_start_2
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1407
    .local v1, hostAddress:Ljava/net/InetAddress;
    sget-object v3, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->connectionManager:Landroid/net/ConnectivityManager;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v1}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v2

    .line 1408
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " strHostAddress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,  Route Result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V
    :try_end_2f
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2f} :catch_33

    .line 1414
    .end local v1       #hostAddress:Ljava/net/InetAddress;,
    :goto_2f
    if-ne v2, v6, :cond_4c

    move v3, v6

    .line 1417
    :goto_32
    return v3

    .line 1410
    :catch_33
    move-exception v3

    move-object v0, v3

    .line 1411
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    goto :goto_2f

    .line 1417
    .end local v0       #e:Ljava/net/UnknownHostException;,
    :cond_4c
    const/4 v3, 0x0

    goto :goto_32
.end method

.method public static sendEvent(III)V
    .registers 7
    .parameter "nEvent"
    .parameter "nWParam"
    .parameter "nLParam"

    .prologue
    const/4 v3, 0x1

    .line 1870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendEvent() - Event ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), WP ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), LP ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1872
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getInstance()Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    move-result-object v0

    .line 1874
    .local v0, imsPhoneMngr:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
    sparse-switch p0, :sswitch_data_7c

    .line 1917
    const-string/jumbo v1, "sendEvent() - Not Supported ..."

    invoke-static {v3, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 1920
    :cond_3f
    :goto_3f
    return-void

    .line 1877
    :sswitch_40
    const-string v1, "com.lge.ims.action.AIRPLANE_MODE_ON_REPLY"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->sendIntent(Ljava/lang/String;)V

    goto :goto_3f

    .line 1881
    :sswitch_46
    const-string v1, "com.lge.ims.action.MOBILE_NETWORK_DISABLE_REPLY"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->sendIntent(Ljava/lang/String;)V

    goto :goto_3f

    .line 1885
    :sswitch_4c
    const-string v1, "com.lge.ims.action.POWER_OFF_REPLY"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->sendIntent(Ljava/lang/String;)V

    goto :goto_3f

    .line 1889
    :sswitch_52
    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getSimStatus()I

    move-result v1

    if-ne v1, v3, :cond_3f

    .line 1891
    const-string v1, "com.lge.ims.action.INTERNAL_INTENT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->sendIntent(Ljava/lang/String;I)V

    goto :goto_3f

    .line 1896
    :sswitch_5e
    const-string v1, "com.lge.ims.action.vzw.VoIP.UI_ACTIVATE"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->sendIntent(Ljava/lang/String;)V

    goto :goto_3f

    .line 1900
    :sswitch_64
    if-nez p1, :cond_6f

    .line 1902
    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->disableWiFiService()V

    .line 1903
    const-string v1, "WiFi service is disabled"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    goto :goto_3f

    .line 1907
    :cond_6f
    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->enableWiFiService()V

    .line 1908
    const-string v1, "WiFi service is enabled"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    goto :goto_3f

    .line 1913
    :sswitch_78
    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->handleDataConnectionEvent(II)V

    goto :goto_3f

    .line 1874
    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_40
        0x2 -> :sswitch_46
        0x3 -> :sswitch_4c
        0x4 -> :sswitch_78
        0x5 -> :sswitch_52
        0x10000 -> :sswitch_5e
        0x10000000 -> :sswitch_64
    .end sparse-switch
.end method

.method private sendIntent(Ljava/lang/String;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method private sendIntent(Ljava/lang/String;I)V
    .registers 5
    .parameter "action"
    .parameter "type"

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 487
    return-void
.end method

.method public static startAlarmTimer(II)V
    .registers 3
    .parameter "timerId"
    .parameter "duration"

    .prologue
    .line 1157
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getInstance()Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    move-result-object v0

    .line 1159
    .local v0, imsPhoneMngr:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->startTimer(II)V

    .line 1160
    return-void
.end method

.method private startTimer(II)V
    .registers 11
    .parameter "timerId"
    .parameter "duration"

    .prologue
    const/4 v7, 0x0

    .line 493
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.ims.action.ALARM_TIMER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "timerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 496
    iget-object v2, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 498
    .local v1, sender:Landroid/app/PendingIntent;
    sget-object v2, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p2

    add-long/2addr v3, v5

    invoke-virtual {v2, v7, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 499
    return-void
.end method

.method public static stopAlarmTimer(I)V
    .registers 2
    .parameter "timerId"

    .prologue
    .line 1164
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getInstance()Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    move-result-object v0

    .line 1166
    .local v0, imsPhoneMngr:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->stopTimer(I)V

    .line 1167
    return-void
.end method

.method private stopTimer(I)V
    .registers 6
    .parameter "timerId"

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.ims.action.ALARM_TIMER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "timerid"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    iget-object v2, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 510
    .local v1, sender:Landroid/app/PendingIntent;
    sget-object v2, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 511
    return-void
.end method


# virtual methods
.method public disableWiFiService()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    if-nez v0, :cond_8

    .line 256
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mWiFiServiceEnabled:Z

    .line 263
    :goto_7
    return-void

    .line 260
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->unregisterFilters()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    .line 262
    iput-boolean v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mWiFiServiceEnabled:Z

    goto :goto_7
.end method

.method public enableWiFiService()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    if-eqz v0, :cond_5

    .line 277
    :goto_4
    return-void

    .line 270
    :cond_5
    new-instance v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;-><init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    if-eqz v0, :cond_17

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->registerFilters()V

    .line 276
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mWiFiServiceEnabled:Z

    goto :goto_4
.end method

.method public getCallInfoState(Lcom/android/internal/telephony/Call$State;)I
    .registers 3
    .parameter "state"

    .prologue
    .line 281
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_6

    .line 282
    const/4 v0, 0x0

    .line 300
    :goto_5
    return v0

    .line 283
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_c

    .line 284
    const/4 v0, 0x1

    goto :goto_5

    .line 285
    :cond_c
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_12

    .line 286
    const/4 v0, 0x2

    goto :goto_5

    .line 287
    :cond_12
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_18

    .line 288
    const/4 v0, 0x3

    goto :goto_5

    .line 289
    :cond_18
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_1e

    .line 290
    const/4 v0, 0x4

    goto :goto_5

    .line 291
    :cond_1e
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_24

    .line 292
    const/4 v0, 0x5

    goto :goto_5

    .line 293
    :cond_24
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_2a

    .line 294
    const/4 v0, 0x6

    goto :goto_5

    .line 295
    :cond_2a
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_30

    .line 296
    const/4 v0, 0x7

    goto :goto_5

    .line 300
    :cond_30
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getNetServiceState()I
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mServiceState:I

    return v0
.end method

.method public getNetworkInfoState(Landroid/net/NetworkInfo$State;)I
    .registers 3
    .parameter "state"

    .prologue
    .line 310
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_6

    .line 311
    const/4 v0, 0x0

    .line 323
    :goto_5
    return v0

    .line 312
    :cond_6
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_c

    .line 313
    const/4 v0, 0x1

    goto :goto_5

    .line 314
    :cond_c
    sget-object v0, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_12

    .line 315
    const/4 v0, 0x2

    goto :goto_5

    .line 316
    :cond_12
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_18

    .line 317
    const/4 v0, 0x3

    goto :goto_5

    .line 318
    :cond_18
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_1e

    .line 319
    const/4 v0, 0x4

    goto :goto_5

    .line 320
    :cond_1e
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_24

    .line 321
    const/4 v0, 0x5

    goto :goto_5

    .line 323
    :cond_24
    const/4 v0, -0x1

    goto :goto_5
.end method

.method public getRadioState()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mRadioState:I

    return v0
.end method

.method public getSimStatus()I
    .registers 2

    .prologue
    .line 379
    iget v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mSimState:I

    return v0
.end method

.method public handleRemoteException()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    if-eqz v0, :cond_c

    .line 331
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->unregisterFilters()V

    .line 332
    iput-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    .line 335
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    if-eqz v0, :cond_17

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->unregisterFilters()V

    .line 338
    iput-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    .line 341
    :cond_17
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 344
    const/4 v0, 0x1

    const-string v1, "handling remote exception"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 345
    return-void
.end method

.method public isCSCallServiceEnabled()Z
    .registers 2

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mCSCallServiceEnabled:Z

    return v0
.end method

.method public isWiFiServiceEnabled()Z
    .registers 2

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mWiFiServiceEnabled:Z

    return v0
.end method

.method public setDataConnectionState(I)V
    .registers 2
    .parameter "dataCnxState"

    .prologue
    .line 394
    sput p1, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataCnxState:I

    .line 395
    return-void
.end method

.method public setDefaultPhone(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .registers 8
    .parameter "context"
    .parameter "phone"

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->isCSCallServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eq v0, p2, :cond_18

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mRILRequestHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 403
    :cond_18
    const-string/jumbo v0, "setDefaultPhone is called"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_99

    .line 408
    const-string v0, "context is different"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    if-eqz v0, :cond_32

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->unregisterFilters()V

    .line 412
    iput-object v3, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    .line 415
    :cond_32
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    if-eqz v0, :cond_3d

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->unregisterFilters()V

    .line 417
    iput-object v3, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    .line 420
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataNoti:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    if-eqz v0, :cond_4f

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataNoti:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->unregisterForImsDataConnectionChanged(Landroid/os/Handler;)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataNoti:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->unregisterForImsRadioTechChanged(Landroid/os/Handler;)V

    .line 425
    :cond_4f
    iput-object p1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    .line 427
    new-instance v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;-><init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    if-eqz v0, :cond_63

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->registerFilters()V

    .line 433
    :cond_63
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->isWiFiServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 434
    new-instance v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;-><init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    if-eqz v0, :cond_7b

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mIMSWiFiBroadcastReceiver:Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->registerFilters()V

    .line 442
    :cond_7b
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataNoti:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    .line 444
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataNoti:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    if-eqz v0, :cond_99

    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataNoti:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataRequestHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->registerForImsDataConnectionChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataNoti:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mDataRequestHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->registerForImsRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 450
    :cond_99
    iput-object p2, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 452
    invoke-virtual {p0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->isCSCallServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_ae

    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mRILRequestHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 458
    :cond_ae
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->alarmManager:Landroid/app/AlarmManager;

    .line 459
    sget-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->alarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_c3

    .line 460
    const-string v0, "alarmManager is null"

    invoke-static {v4, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 462
    :cond_c3
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->connectionManager:Landroid/net/ConnectivityManager;

    .line 463
    sget-object v0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->connectionManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_d8

    .line 464
    const-string v0, "connectionManager is null"

    invoke-static {v4, v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->log(ILjava/lang/String;)V

    .line 468
    :cond_d8
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0xa3

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 474
    return-void
.end method

.method public setNetServiceState(I)V
    .registers 2
    .parameter "svcState"

    .prologue
    .line 364
    iput p1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mServiceState:I

    .line 365
    return-void
.end method

.method public setRadioState(I)V
    .registers 2
    .parameter "radioState"

    .prologue
    .line 374
    iput p1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mRadioState:I

    .line 375
    return-void
.end method

.method public setSimStatus(I)V
    .registers 2
    .parameter "simState"

    .prologue
    .line 384
    iput p1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->mSimState:I

    .line 385
    return-void
.end method
