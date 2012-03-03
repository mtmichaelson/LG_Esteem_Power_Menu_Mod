.class Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IMSPhoneManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IMSWiFiBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFilterRegistered:Z

.field final synthetic this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 1054
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mIsFilterRegistered:Z

    .line 1058
    iput-object p2, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 1059
    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, ")"

    .line 1096
    monitor-enter p0

    const/4 v4, 0x4

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 1100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 1102
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 1103
    .local v1, eState:Landroid/net/NetworkInfo$State;
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 1105
    .local v0, eDetailedState:Landroid/net/NetworkInfo$DetailedState;
    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1107
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiManager.NETWORK_STATE_CHANGED_ACTION : networkinfo ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 1112
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 1119
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 1121
    iget-object v4, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getNetworkInfoState(Landroid/net/NetworkInfo$State;)I

    move-result v4

    invoke-static {v0}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getNetworkInfoDetailedState(Landroid/net/NetworkInfo$DetailedState;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeWifiNetworkStateChanged(II)V

    .line 1131
    .end local v0       #eDetailedState:Landroid/net/NetworkInfo$DetailedState;,
    .end local v1       #eState:Landroid/net/NetworkInfo$State;,
    .end local v3       #networkInfo:Landroid/net/NetworkInfo;,
    :cond_6e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 1133
    const-string/jumbo v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1135
    .local v2, nStatus:I
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiManager.WIFI_STATE_CHANGED_ACTION : nStatus ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 1137
    invoke-static {v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeWifiStateChanged(I)V
    :try_end_a2
    .catchall {:try_start_4 .. :try_end_a2} :catchall_a4

    .line 1145
    .end local v2       #nStatus:I,
    :cond_a2
    monitor-exit p0

    return-void

    .line 1096
    :catchall_a4
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public registerFilters()V
    .registers 3

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mContext:Landroid/content/Context;

    if-nez v1, :cond_5

    .line 1077
    :cond_4
    :goto_4
    return-void

    .line 1066
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mIsFilterRegistered:Z

    if-nez v1, :cond_4

    .line 1069
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1071
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1072
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1074
    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1076
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mIsFilterRegistered:Z

    goto :goto_4
.end method

.method public unregisterFilters()V
    .registers 2

    .prologue
    .line 1081
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mIsFilterRegistered:Z

    if-eqz v0, :cond_10

    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 1084
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1087
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSWiFiBroadcastReceiver;->mIsFilterRegistered:Z

    .line 1089
    :cond_10
    return-void
.end method
