.class Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmReceiver.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiver;



# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v5, -0x1

    const-string v7, "RDS_TXT"

    const-string v4, "FREQ"

    const-string v3, "RSSI"

    .line 1327
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    .line 1328
    .local v0, handler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    if-nez v0, :cond_11

    .line 1383
    :cond_10
    :goto_10
    return-void

    .line 1332
    :cond_11
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiver$FmBroadcastReceiver;->abortBroadcast()V

    .line 1334
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 1335
    .local v9, action:Ljava/lang/String;
    const-string v1, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1336
    const-string v1, "FREQ"

    invoke-virtual {p2, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RSSI"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RADIO_ON"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "RDS_PRGM_TYPE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "RDS_PRGM_SVC"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "RDS_TXT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "RDS_PRGM_TYPE_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MUTED"

    invoke-virtual {p2, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_10

    .line 1344
    :cond_58
    const-string v1, "com.broadcom.bt.app.fm.action.ON_AUDIO_MODE"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1346
    const-string v1, "AUDIO_MODE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioModeEvent(I)V

    goto :goto_10

    .line 1348
    :cond_6e
    const-string v1, "com.broadcom.bt.app.fm.action.ON_AUDIO_PATH"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1350
    const-string v1, "AUDIO_PATH"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioPathEvent(I)V

    goto :goto_10

    .line 1352
    :cond_84
    const-string v1, "com.broadcom.bt.app.fm.action.ON_AUDIO_QUAL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1354
    const-string v1, "RSSI"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onLiveAudioQualityEvent(I)V

    goto/16 :goto_10

    .line 1356
    :cond_9b
    const-string v1, "com.broadcom.bt.app.fm.action.ON_EST_NFL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1358
    const-string v1, "NFL"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onEstimateNoiseFloorLevelEvent(I)V

    goto/16 :goto_10

    .line 1360
    :cond_b2
    const-string v1, "com.broadcom.bt.app.fm.action.ON_RDS_DATA"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 1362
    const-string v1, "RDS_DATA_TYPE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RDS_IDX"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RDS_TXT"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsDataEvent(IILjava/lang/String;)V

    goto/16 :goto_10

    .line 1365
    :cond_d5
    const-string v1, "com.broadcom.bt.app.fm.action.ON_RDS_MODE"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 1367
    const-string v1, "RDS_MODE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ALT_FREQ_MODE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsModeEvent(II)V

    goto/16 :goto_10

    .line 1369
    :cond_f2
    const-string v1, "com.broadcom.bt.app.fm.action.ON_SEEK_CMPL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$1000(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_115

    .line 1371
    const-string v1, "FREQ"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "RSSI"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "RDS_SUCCESS"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onSeekCompleteEvent(IIZ)V

    goto/16 :goto_10

    .line 1374
    :cond_115
    const-string v1, "ON_VOL"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$1100(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 1375
    const-string v1, "STATUS"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "VOL"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onVolumeEvent(II)V

    goto/16 :goto_10

    .line 1377
    :cond_132
    const-string v1, "com.broadcom.bt.app.fm.action.ON_WRLD_RGN"

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$200()I

    move-result v2

    invoke-static {v1, v9, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$1200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1379
    const-string v1, "WRLD_RGN"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onWorldRegionEvent(I)V

    goto/16 :goto_10
.end method
