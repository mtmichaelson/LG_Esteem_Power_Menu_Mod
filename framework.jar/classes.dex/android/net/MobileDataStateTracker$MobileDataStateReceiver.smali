.class Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataStateTracker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataStateReceiver"
.end annotation


# instance fields
.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Landroid/net/MobileDataStateTracker;



# direct methods
.method private constructor <init>(Landroid/net/MobileDataStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 26
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 230
    monitor-enter p0

    .line 233
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    .line 234
    .local v20, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->setRoamingStatus(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/MobileDataStateTracker;->setSubtype(ILjava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2fa

    .line 239
    const-string v3, "apnType"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 240
    .local v15, apnTypeList:Ljava/lang/String;
    const-string/jumbo v3, "networkUnvailable"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v22

    .line 244
    .local v22, unavailable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v22, :cond_5c

    const/4 v4, 0x1

    :goto_4c
    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->access$100(Landroid/net/MobileDataStateTracker;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 248
    monitor-exit p0

    .line 366
    .end local v15       #apnTypeList:Ljava/lang/String;,
    .end local v22       #unavailable:Z,
    .end local p1       
    :goto_5b
    return-void

    .line 244
    .restart local v15       #apnTypeList:Ljava/lang/String;,
    .restart local v22       #unavailable:Z,
    .restart local p1       
    :cond_5c
    const/4 v4, 0x0

    goto :goto_4c

    .line 250
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-static {v3, v15}, Landroid/net/MobileDataStateTracker;->access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/net/MobileDataStateTracker;->sendDataConnectionChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 252
    monitor-exit p0

    goto :goto_5b

    .line 365
    .end local v15       #apnTypeList:Ljava/lang/String;,
    .end local v20       #tm:Landroid/telephony/TelephonyManager;,
    .end local v22       #unavailable:Z,
    .end local p1       
    :catchall_78
    move-exception v3

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_1 .. :try_end_7a} :catchall_78

    throw v3

    .line 254
    .restart local v15       #apnTypeList:Ljava/lang/String;,
    .restart local v20       #tm:Landroid/telephony/TelephonyManager;,
    .restart local v22       #unavailable:Z,
    .restart local p1       
    :cond_7b
    const/16 v16, 0x1

    .line 255
    .local v16, doReset:Z
    :try_start_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->access$300(Landroid/net/MobileDataStateTracker;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d2

    .line 257
    const-string v3, "default"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v4, v0

    invoke-static {v4}, Landroid/net/MobileDataStateTracker;->access$400(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    const/4 v3, 0x5

    move/from16 v21, v3

    .line 260
    .local v21, typeToCheck:I
    :goto_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v0

    if-nez v3, :cond_b4

    .line 261
    const-string v3, "connectivity"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 265
    :cond_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v0

    if-eqz v3, :cond_d2

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    .line 268
    .local v17, info:Landroid/net/NetworkInfo;
    if-eqz v17, :cond_d2

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d2

    .line 269
    const/16 v16, 0x0

    .line 276
    .end local v17       #info:Landroid/net/NetworkInfo;,
    .end local v21       #typeToCheck:I,
    :cond_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$500(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Z

    move-result v18

    .line 277
    .local v18, needDetailedStateUpdate:Z
    if-nez v18, :cond_f4

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/net/MobileDataStateTracker;->sendDataConnectionChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 279
    monitor-exit p0

    goto/16 :goto_5b

    .line 257
    .end local v18       #needDetailedStateUpdate:Z,
    :cond_f0
    const/4 v3, 0x0

    move/from16 v21, v3

    goto :goto_9d

    .line 282
    .restart local v18       #needDetailedStateUpdate:Z,
    :cond_f4
    const-string/jumbo v3, "reason"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, reason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/net/MobileDataStateTracker;->access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v19

    .line 293
    .local v19, state:Lcom/android/internal/telephony/Phone$DataState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v3, v4, :cond_134

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_1ac

    :cond_134
    sget-object v3, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    move-object/from16 v0, v19

    move-object v1, v3

    if-ne v0, v1, :cond_1ac

    .line 297
    const/4 v8, 0x0

    .line 298
    .local v8, extraInfo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_162

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v8, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mApnName:Ljava/lang/String;

    .line 301
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    iget-object v5, v5, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v6, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v5, v5, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_1a8

    const/4 v5, 0x1

    :goto_17f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v6, v0

    iget-object v6, v6, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v6, v6, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v9, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v6, v9, :cond_1aa

    const/4 v6, 0x1

    :goto_195
    invoke-virtual/range {v3 .. v8}, Landroid/net/MobileDataStateTracker;->setDetailedStateInSide(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/net/MobileDataStateTracker;->sendDataConnectionChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 307
    monitor-exit p0

    goto/16 :goto_5b

    .line 301
    :cond_1a8
    const/4 v5, 0x0

    goto :goto_17f

    :cond_1aa
    const/4 v6, 0x0

    goto :goto_195

    .line 312
    .end local v8       #extraInfo:Ljava/lang/String;,
    :cond_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v3, v4, :cond_1d6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_21c

    .line 314
    :cond_1d6
    sget-object v19, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 323
    :cond_1d8
    :goto_1d8
    const/4 v8, 0x0

    .line 324
    .restart local v8       #extraInfo:Ljava/lang/String;,
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_1ff

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v8, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mApnName:Ljava/lang/String;

    .line 328
    :cond_1ff
    if-eqz v18, :cond_20c

    .line 329
    sget-object v3, Landroid/net/MobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_3b0

    .line 353
    :cond_20c
    :goto_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/net/MobileDataStateTracker;->sendDataConnectionChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 365
    .end local v7       #reason:Ljava/lang/String;,
    .end local v8       #extraInfo:Ljava/lang/String;,
    .end local v15       #apnTypeList:Ljava/lang/String;,
    .end local v16       #doReset:Z,
    .end local v18       #needDetailedStateUpdate:Z,
    .end local v19       #state:Lcom/android/internal/telephony/Phone$DataState;,
    .end local v22       #unavailable:Z,
    .end local p1       
    :cond_219
    :goto_219
    monitor-exit p0

    goto/16 :goto_5b

    .line 315
    .restart local v7       #reason:Ljava/lang/String;,
    .restart local v15       #apnTypeList:Ljava/lang/String;,
    .restart local v16       #doReset:Z,
    .restart local v18       #needDetailedStateUpdate:Z,
    .restart local v19       #state:Lcom/android/internal/telephony/Phone$DataState;,
    .restart local v22       #unavailable:Z,
    .restart local p1       
    :cond_21c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v3, v4, :cond_246

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_249

    .line 317
    :cond_246
    sget-object v19, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1d8

    .line 318
    :cond_249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    if-eq v3, v4, :cond_273

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_1d8

    .line 320
    :cond_273
    sget-object v19, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto/16 :goto_1d8

    .line 331
    .restart local v8       #extraInfo:Ljava/lang/String;,
    :pswitch_277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/net/MobileDataStateTracker;->isTeardownRequested()Z

    move-result v3

    if-eqz v3, :cond_294

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->access$102(Landroid/net/MobileDataStateTracker;Z)Z

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 336
    :cond_294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20c

    .line 339
    :pswitch_2a2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20c

    .line 342
    :pswitch_2b0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20c

    .line 345
    :pswitch_2be
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v5, v0

    iget-object v5, v5, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v6, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v5, v5, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v6, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v5, v6, :cond_2f6

    const/4 v5, 0x1

    :goto_2db
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v6, v0

    iget-object v6, v6, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v6, v6, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v9, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v6, v9, :cond_2f8

    const/4 v6, 0x1

    :goto_2f1
    invoke-virtual/range {v3 .. v8}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20c

    :cond_2f6
    const/4 v5, 0x0

    goto :goto_2db

    :cond_2f8
    const/4 v6, 0x0

    goto :goto_2f1

    .line 354
    .end local v7       #reason:Ljava/lang/String;,
    .end local v8       #extraInfo:Ljava/lang/String;,
    .end local v15       #apnTypeList:Ljava/lang/String;,
    .end local v16       #doReset:Z,
    .end local v18       #needDetailedStateUpdate:Z,
    .end local v19       #state:Lcom/android/internal/telephony/Phone$DataState;,
    .end local v22       #unavailable:Z,
    :cond_2fa
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_219

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->access$102(Landroid/net/MobileDataStateTracker;Z)Z

    .line 357
    const-string/jumbo v3, "reason"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 358
    .restart local v7       #reason:Ljava/lang/String;,
    const-string v3, "apn"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 359
    .local v14, apnName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " broadcast"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_390

    const-string v4, ""

    :goto_34c
    invoke-virtual {v3, v4}, Landroid/net/MobileDataStateTracker;->logi(Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v9, v0

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1       
    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_3aa

    const/4 v3, 0x1

    move v11, v3

    :goto_370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;->this$0:Landroid/net/MobileDataStateTracker;

    move-object v3, v0

    iget-object v3, v3, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/MobileDataStateTracker$MobileInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v3, v4, :cond_3ad

    const/4 v3, 0x1

    move v12, v3

    :goto_38a
    move-object v13, v7

    invoke-virtual/range {v9 .. v14}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_219

    .line 359
    .restart local p1       
    :cond_390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3a8
    .catchall {:try_start_7d .. :try_end_3a8} :catchall_78

    move-result-object v4

    goto :goto_34c

    .line 361
    .end local p1       
    :cond_3aa
    const/4 v3, 0x0

    move v11, v3

    goto :goto_370

    :cond_3ad
    const/4 v3, 0x0

    move v12, v3

    goto :goto_38a

    .line 329
    :pswitch_data_3b0
    .packed-switch 0x1
        :pswitch_277
        :pswitch_2a2
        :pswitch_2b0
        :pswitch_2be
    .end packed-switch
.end method
