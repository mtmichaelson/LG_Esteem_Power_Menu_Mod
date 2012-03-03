.class Lcom/broadcom/bt/service/fm/FmReceiverService$1;
.super Landroid/os/Handler;
.source "FmReceiverService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;



# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .registers 2
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v9, 0x1

    const-string v2, "FmReceiverService"

    .line 582
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_15a

    .line 673
    :pswitch_a
    const-string v0, "FmReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling UNKNOWN CALLBACK: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local p0       
    :goto_24
    return-void

    .line 585
    .restart local p0       
    :pswitch_25
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    .line 587
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_38

    .line 589
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    .line 590
    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_24

    .line 591
    :cond_38
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4b

    .line 593
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    .line 595
    :try_start_42
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_48} :catch_156

    .line 597
    :goto_48
    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_24

    .line 598
    :cond_4b
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_60

    .line 600
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 601
    sput-boolean v9, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 602
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-static {v0, v1, v2, v3, v9}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$300(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZI)V

    goto :goto_24

    .line 605
    :cond_60
    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 606
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    invoke-static/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$400(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_24

    .line 615
    :pswitch_78
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_STATUS_EVENT_CALLBACK: calls sendStatusEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;

    .line 617
    .local v10, st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$500(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)I

    move-result v1

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$600(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)I

    move-result v2

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$700(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Z

    move-result v3

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$800(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)I

    move-result v4

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$900(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$1000(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$1100(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;->access$1200(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;)Z

    move-result v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$400(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_24

    .line 626
    .end local v10       #st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;,
    :pswitch_ac
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_SEARCH_EVENT_CALLBACK: calls sendSeekCompleteEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;

    .line 628
    .local v10, st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->access$1300(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;)I

    move-result v1

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->access$1400(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;)I

    move-result v2

    invoke-static {v10}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;->access$1500(Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;)Z

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$300(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZI)V

    goto/16 :goto_24

    .line 632
    .end local v10       #st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;,
    :pswitch_cc
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_RDS_EVENT_CALLBACK: calls sendRdsModeEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$1600(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V

    goto/16 :goto_24

    .line 637
    :pswitch_de
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_RDS_DATA_EVENT_CALLBACK: calls sendRdsDataEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0       
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$1700(Lcom/broadcom/bt/service/fm/FmReceiverService;IILjava/lang/String;)V

    goto/16 :goto_24

    .line 642
    .restart local p0       
    :pswitch_f4
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_AUDIO_MODE_EVENT_CALLBACK: calls sendAudioModeEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$1800(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    goto/16 :goto_24

    .line 647
    :pswitch_104
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_AUDIO_PATH_EVENT_CALLBACK: calls sendAudioPathEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$1900(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    goto/16 :goto_24

    .line 652
    :pswitch_114
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_REGION_EVENT_CALLBACK: calls sendWorldRegionEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$2000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    goto/16 :goto_24

    .line 657
    :pswitch_124
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_NFE_EVENT_CALLBACK: calls sendEstimateNflEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$2100(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    goto/16 :goto_24

    .line 662
    :pswitch_134
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_LIVE_AUDIO_EVENT_CALLBACK: calls sendLiveAudioQualityEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$2200(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V

    goto/16 :goto_24

    .line 667
    :pswitch_144
    const-string v0, "FmReceiverService"

    const-string v0, "Handling OPERATION_VOLUME_EVENT_CALLBACK: calls sendVolumeEventCallback"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$2300(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V

    goto/16 :goto_24

    .line 596
    :catch_156
    move-exception v0

    goto/16 :goto_48

    .line 582
    nop

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_78
        :pswitch_ac
        :pswitch_cc
        :pswitch_de
        :pswitch_f4
        :pswitch_104
        :pswitch_114
        :pswitch_124
        :pswitch_134
        :pswitch_144
    .end packed-switch
.end method
