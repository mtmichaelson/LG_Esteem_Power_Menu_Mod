.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;
    }
.end annotation


# static fields
.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final AUTOIP_NOTIFICATION_ACTION:Ljava/lang/String; = "android.net.wifi.AUTOIP_CONNECTION_NOTIFICATION"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final NO_MORE_WIFI_LOCKS:Ljava/lang/String; = "android.net.wifi.NO_MORE_WIFI_LOCKS"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0x1

.field public static final WIFI_AP_STATE_DISABLING:I = 0x0

.field public static final WIFI_AP_STATE_ENABLED:I = 0x3

.field public static final WIFI_AP_STATE_ENABLING:I = 0x2

.field public static final WIFI_AP_STATE_FAILED:I = 0x4

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4



# instance fields
.field private mActiveLockCount:I

.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/wifi/IWifiManager;

.field wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;



# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiManager;Landroid/os/Handler;)V
    .registers 4
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    invoke-direct {v0}, Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->wifiNative:Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;

    .line 393
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 394
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mHandler:Landroid/os/Handler;

    .line 395
    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$008(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$010(Landroid/net/wifi/WifiManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 4
    .parameter "config"

    .prologue
    .line 477
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 479
    :goto_6
    return v1

    .line 478
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 479
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public static calculateSignalLevel(II)I
    .registers 6
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    const/4 v2, 0x1

    const/16 v3, -0x64

    .line 1003
    if-gt p0, v3, :cond_7

    .line 1004
    const/4 v1, 0x0

    .line 1009
    :goto_6
    return v1

    .line 1005
    :cond_7
    const/16 v1, -0x37

    if-lt p0, v1, :cond_e

    .line 1006
    sub-int v1, p1, v2

    goto :goto_6

    .line 1008
    :cond_e
    const/16 v1, 0x2d

    sub-int v2, p1, v2

    div-int v0, v1, v2

    .line 1009
    .local v0, partitionSize:I
    sub-int v1, p0, v3

    div-int/2addr v1, v0

    goto :goto_6
.end method

.method public static compareSignalLevel(II)I
    .registers 3
    .parameter "rssiA"
    .parameter "rssiB"

    .prologue
    .line 1023
    sub-int v0, p0, p1

    return v0
.end method


# virtual methods
.method public Channel_HiddenMenu(I)Z
    .registers 6
    .parameter "Channel"

    .prologue
    const-string v3, "WifiManager"

    .line 848
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] Channel_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->Channel_HiddenMenu(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 852
    :goto_f
    return v1

    .line 850
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 851
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] Channel_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public CloseDUT_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 788
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] CloseDUT_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->CloseDUT_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 792
    :goto_f
    return v1

    .line 790
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 791
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] CloseDUT_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public FRError_HiddenMenu(Z)I
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 898
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] FRError_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->FRError_HiddenMenu(Z)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 902
    :goto_f
    return v1

    .line 900
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 901
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] FRError_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public FRGood_HiddenMenu(Z)I
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 908
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] FRGood_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->FRGood_HiddenMenu(Z)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 912
    :goto_f
    return v1

    .line 910
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 911
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] FRGood_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public OpenDUT_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 768
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] setWifiEnabled_HiddenMenu is called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->OpenDUT_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 772
    :goto_f
    return v1

    .line 770
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 771
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] setWifiEnabled_HiddenMenu of WifiService is ."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public RSSI_HiddenMenu(Z)I
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 918
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] RSSI_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->RSSI_HiddenMenu(Z)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 922
    :goto_f
    return v1

    .line 920
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 921
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] RSSI_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const/4 v1, -0x1

    goto :goto_f
.end method

.method public RxStart_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 778
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] RxStart_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->RxStart_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 782
    :goto_f
    return v1

    .line 780
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 781
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] RxStart_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public RxStop_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 929
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] RxStop_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->RxStop_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 933
    :goto_f
    return v1

    .line 931
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 932
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] RxStop_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public SetPreamble_HiddenMenu(Ljava/lang/String;)Z
    .registers 6
    .parameter "Preamble"

    .prologue
    const-string v3, "WifiManager"

    .line 828
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] SetPreamble_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->SetPreamble_HiddenMenu(Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 832
    :goto_f
    return v1

    .line 830
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 831
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] SetPreamble_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxBurstFrames_HiddenMenu(I)Z
    .registers 6
    .parameter "FramNumbers"

    .prologue
    const-string v3, "WifiManager"

    .line 878
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxBurstFrames_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxBurstFrames_HiddenMenu(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 882
    :goto_f
    return v1

    .line 880
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 881
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxBurstFrames_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxBurstInterval_HiddenMenu(I)Z
    .registers 6
    .parameter "SIFS"

    .prologue
    const-string v3, "WifiManager"

    .line 858
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxBurstInterval_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxBurstInterval_HiddenMenu(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 862
    :goto_f
    return v1

    .line 860
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 861
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxBurstInterval_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxDataRate11n_HiddenMenu(III)Z
    .registers 8
    .parameter "mcsindex"
    .parameter "plcp"
    .parameter "gi"

    .prologue
    const-string v3, "WifiManager"

    .line 939
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxDataRate11n_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->TxDataRate11n_HiddenMenu(III)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 943
    :goto_f
    return v1

    .line 941
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 942
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxDataRate11n_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    .registers 6
    .parameter "value"

    .prologue
    const-string v3, "WifiManager"

    .line 818
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxDataRate_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxDataRate_HiddenMenu(Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 822
    :goto_f
    return v1

    .line 820
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 821
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxDataRate_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    .registers 6
    .parameter "daddr"

    .prologue
    const-string v3, "WifiManager"

    .line 888
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxDestAddress_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxDestAddress_HiddenMenu(Ljava/lang/String;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 892
    :goto_f
    return v1

    .line 890
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 891
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxDestAddress_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxGain_HiddenMenu(I)Z
    .registers 6
    .parameter "TxGain"

    .prologue
    const-string v3, "WifiManager"

    .line 838
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxGain_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxGain_HiddenMenu(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 842
    :goto_f
    return v1

    .line 840
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 841
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxGain_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxPayloadLength_HiddenMenu(I)Z
    .registers 6
    .parameter "PayLength"

    .prologue
    const-string v3, "WifiManager"

    .line 868
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] PayLength_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxPayloadLength_HiddenMenu(I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 872
    :goto_f
    return v1

    .line 870
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 871
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] PayLength_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxStart_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 798
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxStart_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxStart_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 802
    :goto_f
    return v1

    .line 800
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 801
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxStart_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public TxStop_HiddenMenu(Z)Z
    .registers 6
    .parameter "enabled"

    .prologue
    const-string v3, "WifiManager"

    .line 808
    :try_start_2
    const-string v1, "WifiManager"

    const-string v2, "[WifiManager][dongp.kim] TxStop_HiddenMenu called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->TxStop_HiddenMenu(Z)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_e} :catch_10

    move-result v1

    .line 812
    :goto_f
    return v1

    .line 810
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 811
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    const-string v1, "[WifiManager][dongp.kim] TxStop_HiddenMenu failed"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 438
    if-nez p1, :cond_4

    .line 442
    :goto_3
    return v0

    .line 441
    :cond_4
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 442
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_3
.end method

.method public canBeWifiEnabled()Z
    .registers 3

    .prologue
    .line 756
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->canBeWifiEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 758
    :goto_6
    return v1

    .line 757
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 758
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .registers 4
    .parameter "tag"

    .prologue
    .line 1348
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1314
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .registers 5
    .parameter "tag"

    .prologue
    .line 1330
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disableNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 530
    :goto_6
    return v1

    .line 529
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 530
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public disconnect()Z
    .registers 3

    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 543
    :goto_6
    return v1

    .line 542
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 543
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public enableNetwork(IZ)Z
    .registers 5
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 513
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 515
    :goto_6
    return v1

    .line 514
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 515
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 417
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 419
    :goto_6
    return-object v1

    .line 418
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 419
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .registers 3

    .prologue
    .line 630
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 632
    :goto_6
    return-object v1

    .line 631
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 632
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 723
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 725
    :goto_6
    return-object v1

    .line 724
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 725
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNumAllowedChannels()I
    .registers 3

    .prologue
    .line 674
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getNumAllowedChannels()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 676
    :goto_6
    return v1

    .line 675
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 676
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getScanResults()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getScanResults()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 644
    :goto_6
    return-object v1

    .line 643
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 644
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getValidChannelCounts()[I
    .registers 3

    .prologue
    .line 710
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getValidChannelCounts()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 712
    :goto_6
    return-object v1

    .line 711
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 712
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .prologue
    .line 1082
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1084
    :goto_6
    return-object v1

    .line 1083
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1084
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWifiApState()I
    .registers 3

    .prologue
    .line 1057
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1059
    :goto_6
    return v1

    .line 1058
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1059
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public getWifiState()I
    .registers 3

    .prologue
    .line 977
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 979
    :goto_6
    return v1

    .line 978
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 979
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public initializeMulticastFiltering()Z
    .registers 3

    .prologue
    .line 1530
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1531
    const/4 v1, 0x1

    .line 1533
    :goto_6
    return v1

    .line 1532
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1533
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 1518
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1520
    :goto_6
    return v1

    .line 1519
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1520
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isWifiApEnabled()Z
    .registers 3

    .prologue
    .line 1071
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isWifiEnabled()Z
    .registers 3

    .prologue
    .line 989
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public pingSupplicant()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 581
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v1, :cond_7

    move v1, v2

    .line 586
    :goto_6
    return v1

    .line 584
    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 585
    :catch_e
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v2

    .line 586
    goto :goto_6
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 569
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 571
    :goto_6
    return v1

    .line 570
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 555
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 557
    :goto_6
    return v1

    .line 556
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 557
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public removeNetwork(I)Z
    .registers 4
    .parameter "netId"

    .prologue
    .line 493
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 495
    :goto_6
    return v1

    .line 494
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 495
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public saveConfiguration()Z
    .registers 3

    .prologue
    .line 659
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 661
    :goto_6
    return v1

    .line 660
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 661
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setDLNAEnabled()Z
    .registers 3

    .prologue
    .line 952
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->setDLNAEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 954
    :goto_6
    return v1

    .line 953
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 954
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setDlnaMode(Z)Z
    .registers 4
    .parameter "dlnaMode"

    .prologue
    .line 962
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setDlnaMode(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 964
    :goto_6
    return v1

    .line 963
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 964
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setNumAllowedChannels(IZ)Z
    .registers 5
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    .line 695
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setNumAllowedChannels(IZ)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 697
    :goto_6
    return v1

    .line 696
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 697
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .parameter "wifiConfig"

    .prologue
    .line 1096
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 1097
    const/4 v1, 0x1

    .line 1099
    :goto_6
    return v1

    .line 1098
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1099
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 5
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 1040
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 1042
    :goto_6
    return v1

    .line 1041
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1042
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setWifiEnabled(Z)Z
    .registers 7
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    .line 739
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 741
    .local v1, wifiApState:I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_10

    .line 743
    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {p0, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 746
    :cond_10
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_17

    move-result v2

    .line 748
    :goto_16
    return v2

    .line 747
    :catch_17
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    move v2, v4

    .line 748
    goto :goto_16
.end method

.method public startScan()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 598
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    .line 599
    const/4 v1, 0x1

    .line 601
    :goto_8
    return v1

    .line 600
    :catch_9
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    move v1, v3

    .line 601
    goto :goto_8
.end method

.method public startScanActive()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 617
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_9

    move v1, v3

    .line 620
    :goto_8
    return v1

    .line 619
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 620
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .registers 3
    .parameter "config"

    .prologue
    .line 461
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_8

    .line 462
    :cond_6
    const/4 v0, -0x1

    .line 464
    :goto_7
    return v0

    :cond_8
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_7
.end method
