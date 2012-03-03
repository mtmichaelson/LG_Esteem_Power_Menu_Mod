.class Lcom/android/internal/telephony/lgeims/IMSPhoneManager$DataRequestHandler;
.super Landroid/os/Handler;
.source "IMSPhoneManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;



# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;)V
    .registers 2
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$DataRequestHandler;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 703
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$DataRequestHandler;-><init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 17
    .parameter "msg"

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 707
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/os/AsyncResult;

    move-object v0, v8

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 709
    .local v1, ar:Landroid/os/AsyncResult;
    if-nez v1, :cond_19

    .line 711
    const-string v8, "ar == null"

    invoke-static {v11, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 799
    :cond_18
    :goto_18
    return-void

    .line 715
    :cond_19
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v8, :cond_39

    .line 717
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ar.result == null: event =="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    goto :goto_18

    .line 721
    :cond_39
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v8, v0

    packed-switch v8, :pswitch_data_106

    .line 796
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unidentified event = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    goto :goto_18

    .line 725
    :pswitch_5d
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 727
    .local v3, n:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 728
    .local v7, nState:I
    iget-object v8, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$DataRequestHandler;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getRadioState()I

    move-result v5

    .line 730
    .local v5, nOldState:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMS_RADIO_TECH_STATE_CHANGED State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Old = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 732
    if-ne v5, v7, :cond_93

    .line 734
    const-string v8, "IMS Radio State is same"

    invoke-static {v10, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    goto :goto_18

    .line 738
    :cond_93
    iget-object v8, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$DataRequestHandler;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->setRadioState(I)V

    .line 739
    invoke-static {v7}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnRadioTechStatusChanged(I)V

    goto/16 :goto_18

    .line 752
    .end local v3       #n:Ljava/lang/Integer;,
    .end local v5       #nOldState:I,
    .end local v7       #nState:I,
    :pswitch_9d
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 754
    .restart local v3       #n:Ljava/lang/Integer;,
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 755
    .local v4, nDataState:I
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getDataConnectionState()I

    move-result v5

    .line 757
    .restart local v5       #nOldState:I,
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IMS_DATA_CONNECTION_STATE_CHANGED State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Old State = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 759
    if-ne v5, v4, :cond_d2

    .line 761
    const-string v8, "IMS DATA State is same"

    invoke-static {v10, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    goto/16 :goto_18

    .line 765
    :cond_d2
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getInstance()Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    move-result-object v2

    .line 766
    .local v2, imsPhoneMngr:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
    const/4 v6, 0x0

    .line 768
    .local v6, nResult:I
    iget-object v8, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$DataRequestHandler;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-virtual {v8, v4}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->setDataConnectionState(I)V

    .line 769
    const/4 v8, 0x3

    if-ne v4, v8, :cond_ef

    .line 771
    invoke-static {v14, v12, v12}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnEventReceived(III)I

    move-result v6

    .line 772
    if-nez v6, :cond_18

    .line 774
    const-string v8, "confirm lte detach"

    invoke-static {v10, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 775
    invoke-static {v2, v13, v10}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$400(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;II)V

    goto/16 :goto_18

    .line 778
    :cond_ef
    if-ne v4, v11, :cond_101

    .line 780
    invoke-static {v14, v10, v12}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnEventReceived(III)I

    move-result v6

    .line 781
    if-nez v6, :cond_18

    .line 783
    const-string v8, "confirm ims pdn close"

    invoke-static {v10, v8}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 784
    invoke-static {v2, v13, v13}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$400(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;II)V

    goto/16 :goto_18

    .line 789
    :cond_101
    invoke-static {v4}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnDataConnectionStatusChanged(I)V

    goto/16 :goto_18

    .line 721
    :pswitch_data_106
    .packed-switch 0xc8
        :pswitch_9d
        :pswitch_5d
    .end packed-switch
.end method
