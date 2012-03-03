.class Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IMSPhoneManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IMSBroadcastReceiver"
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
    .line 811
    iput-object p1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 807
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mIsFilterRegistered:Z

    .line 812
    iput-object p2, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 813
    return-void
.end method

.method private final isAirplaneModeOn()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 865
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "_context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    .line 874
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getInstance()Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    move-result-object v1

    .line 875
    .local v1, imsPhoneMngr:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
    const/4 v4, 0x0

    .line 877
    .local v4, nResult:I
    const/4 v7, 0x4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 881
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lge.ims.action.ALARM_TIMER"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 883
    const-string/jumbo v7, "timerid"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 885
    .local v5, nTimerID:I
    invoke-static {v5}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeProcessAlarmTimer(I)V

    .line 890
    .end local v5       #nTimerID:I,
    :cond_3a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 892
    const/4 v7, 0x1

    const-string v8, "ACTION_BOOT_COMPLETED"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 894
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeBootCompleted()V

    .line 899
    :cond_4f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 901
    const/4 v7, 0x4

    new-array v3, v7, [I

    fill-array-data v3, :array_200

    .line 902
    .local v3, mBatteryThresholds:[I
    const-string v7, "level"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 904
    .local v2, level:I
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_BATTERY_OKAY level="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 905
    invoke-static {v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeBatteryChanged(I)V

    .line 908
    .end local v2       #level:I,
    .end local v3       #mBatteryThresholds:[I,
    :cond_82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_97

    .line 910
    const/4 v7, 0x1

    const-string v8, "ACTION_BATTERY_LOW"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeBatteryLevelLow()V

    .line 917
    :cond_97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lge.ims.action.AIRPLANE_MODE_ON"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_bd

    .line 919
    const/4 v7, 0x1

    const-string v8, "ACTION_AIRPLANE_MODE_ON"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 920
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnEventReceived(III)I

    move-result v4

    .line 922
    if-nez v4, :cond_bd

    .line 924
    const/4 v7, 0x1

    const-string v8, "Send Airplane Reply"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 925
    const-string v7, "com.lge.ims.action.AIRPLANE_MODE_ON_REPLY"

    invoke-static {v1, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$500(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Ljava/lang/String;)V

    .line 930
    :cond_bd
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lge.ims.action.MOBILE_NETWORK_DISABLE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_da

    .line 932
    const/4 v7, 0x1

    const-string v8, "ACTION_MOBILE_NETWORK_DISABLE"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 936
    const/4 v7, 0x1

    const-string v8, "Send Network Disable Reply"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 937
    const-string v7, "com.lge.ims.action.MOBILE_NETWORK_DISABLE_REPLY"

    invoke-static {v1, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$500(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Ljava/lang/String;)V

    .line 941
    :cond_da
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lge.ims.action.POWER_OFF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_100

    .line 943
    const/4 v7, 0x1

    const-string v8, "ACTION_POWER_OFF"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 945
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnEventReceived(III)I

    move-result v4

    .line 947
    if-nez v4, :cond_100

    .line 949
    const/4 v7, 0x1

    const-string v8, "Send Power Off Reply"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 950
    const-string v7, "com.lge.ims.action.POWER_OFF_REPLY"

    invoke-static {v1, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$500(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Ljava/lang/String;)V

    .line 957
    :cond_100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.REBOOT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_118

    .line 959
    const/4 v7, 0x1

    const-string v8, "ACTION_REBOOT"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 960
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnEventReceived(III)I

    .line 964
    :cond_118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_130

    .line 966
    const/4 v7, 0x1

    const-string v8, "ACTION_SHUTDOWN"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 967
    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnEventReceived(III)I

    .line 973
    :cond_130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_152

    .line 976
    const/4 v7, 0x1

    const-string v8, "ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 978
    const-string/jumbo v7, "state"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1c5

    .line 981
    const/4 v7, 0x1

    const-string v8, "Airplane Mode ON"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 994
    :cond_152
    :goto_152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18f

    .line 996
    const-string/jumbo v7, "ss"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 998
    .local v0, KeyValue:Ljava/lang/String;
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_SIM_STATE_CHANGED --- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 1000
    const-string v7, "LOADED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_1d5

    .line 1003
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->setSimStatus(I)V

    .line 1004
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnEventReceived(III)I

    .line 1018
    .end local v0       #KeyValue:Ljava/lang/String;,
    :cond_18f
    :goto_18f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.lge.ims.action.INTERNAL_INTENT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c3

    .line 1021
    const-string/jumbo v7, "type"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1023
    .local v6, type:I
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_INTERNAL_INTENT type =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 1025
    if-ne v6, v10, :cond_1c3

    .line 1027
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnEventReceived(III)I
    :try_end_1c3
    .catchall {:try_start_2 .. :try_end_1c3} :catchall_1d2

    .line 1047
    .end local v6       #type:I,
    :cond_1c3
    monitor-exit p0

    return-void

    .line 985
    :cond_1c5
    const/4 v7, 0x1

    :try_start_1c6
    const-string v8, "Airplane Mode OFF"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 986
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnEventReceived(III)I
    :try_end_1d1
    .catchall {:try_start_1c6 .. :try_end_1d1} :catchall_1d2

    goto :goto_152

    .line 874
    .end local v1       #imsPhoneMngr:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;,
    .end local v4       #nResult:I,
    :catchall_1d2
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1006
    .restart local v0       #KeyValue:Ljava/lang/String;,
    .restart local v1       #imsPhoneMngr:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;,
    .restart local v4       #nResult:I,
    :cond_1d5
    :try_start_1d5
    const-string v7, "ABSENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v7, v10, :cond_1f5

    const-string v7, "READY"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v7, v10, :cond_1f5

    const-string v7, "CARD_IO_ERROR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eq v7, v10, :cond_1f5

    const-string v7, "LOCKED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v10, :cond_18f

    .line 1011
    :cond_1f5
    const/4 v7, 0x1

    const-string v8, "SIM is not available"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 1012
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->setSimStatus(I)V
    :try_end_1ff
    .catchall {:try_start_1d5 .. :try_end_1ff} :catchall_1d2

    goto :goto_18f

    .line 901
    :array_200
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public registerFilters()V
    .registers 3

    .prologue
    .line 816
    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mContext:Landroid/content/Context;

    if-nez v1, :cond_5

    .line 848
    :cond_4
    :goto_4
    return-void

    .line 819
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mIsFilterRegistered:Z

    if-nez v1, :cond_4

    .line 822
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 824
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.ims.action.ALARM_TIMER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    const-string v1, "com.lge.ims.action.AIRPLANE_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    const-string v1, "com.lge.ims.action.MOBILE_NETWORK_DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    const-string v1, "com.lge.ims.action.POWER_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 835
    const-string v1, "com.lge.ims.action.INTERNAL_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 837
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 838
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 840
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 847
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mIsFilterRegistered:Z

    goto :goto_4
.end method

.method public unregisterFilters()V
    .registers 2

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mIsFilterRegistered:Z

    if-eqz v0, :cond_10

    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    .line 855
    iget-object v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 858
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$IMSBroadcastReceiver;->mIsFilterRegistered:Z

    .line 860
    :cond_10
    return-void
.end method
