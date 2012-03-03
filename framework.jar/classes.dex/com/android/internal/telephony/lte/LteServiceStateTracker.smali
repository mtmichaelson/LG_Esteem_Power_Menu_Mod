.class public Lcom/android/internal/telephony/lte/LteServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "LteServiceStateTracker.java"



# static fields
.field protected static final LTE_POLL_PERIOD_MILLIS:I = 0x493e0

.field private static final MANUAL_NETWORK_SELECTION_MODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LteServiceStateTracker"



# instance fields
.field private mLteStatus:Lcom/android/internal/telephony/lte/LteStatus;

.field private mPhone:Lcom/android/internal/telephony/lte/LteCdmaPhone;



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/lte/LteCdmaPhone;)V
    .registers 5
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/lte/LteCdmaPhone;

    .line 30
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    .line 33
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2b

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setLTEChipOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 44
    return-void
.end method

.method private onLteStatusResult(Landroid/os/AsyncResult;)V
    .registers 5
    .parameter "ar"

    .prologue
    const-string v2, "LteServiceStateTracker"

    .line 139
    if-eqz p1, :cond_8

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_14

    .line 140
    :cond_8
    const-string v0, "LteServiceStateTracker"

    const-string/jumbo v0, "onLteStatusResult: invalid LTE state value"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteStatus;

    .line 151
    :goto_13
    return-void

    .line 144
    :cond_14
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/lte/LteStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteStatus;

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteStatus;

    if-eqz v0, :cond_3e

    .line 146
    const-string v0, "LteServiceStateTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLteStatusResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteStatus;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lte/LteStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 148
    :cond_3e
    const-string v0, "LteServiceStateTracker"

    const-string/jumbo v0, "onLteStatusResult: lte status is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private queueNextLteStatusPoll(J)V
    .registers 4
    .parameter "delay"

    .prologue
    .line 158
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 48
    return-void
.end method

.method public getLteStatus()Lcom/android/internal/telephony/lte/LteStatus;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->mLteStatus:Lcom/android/internal/telephony/lte/LteStatus;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const-string v6, "LteServiceStateTracker"

    .line 53
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_d2

    .line 129
    const-string v4, "LteServiceStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message with number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_21
    :goto_21
    :sswitch_21
    return-void

    .line 56
    :sswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 57
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->onLteStatusResult(Landroid/os/AsyncResult;)V

    .line 58
    const-wide/32 v4, 0x493e0

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->queueNextLteStatusPoll(J)V

    goto :goto_21

    .line 64
    .end local v0       #ar:Landroid/os/AsyncResult;,
    :sswitch_30
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x66

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getLteStatus(Landroid/os/Message;)V

    goto :goto_21

    .line 70
    :sswitch_3c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 71
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    if-eqz v0, :cond_21

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_21

    .line 72
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v3, v4, v5

    .line 73
    .local v3, networkSelectionMode:I
    const-string v4, "LteServiceStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage event EVENT_GET_NETWORK_SELECTION_MODE, networkSelectionMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v4, p0, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/lte/LteCdmaPhone;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->setNetworkMode(I)V

    .line 77
    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    .line 79
    const-string v4, "LteServiceStateTracker"

    const-string v4, "handleMessage create intent & send broADcast"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_START_MANUAL_NETWORK_SELECTION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/lte/LteCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_21

    .line 111
    .end local v0       #ar:Landroid/os/AsyncResult;,
    .end local v1       #intent:Landroid/content/Intent;,
    .end local v3       #networkSelectionMode:I,
    :sswitch_87
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkMode()I

    move-result v2

    .line 112
    .local v2, networkMode:I
    const-string v4, "LteServiceStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modified by juno, handleMessage event EVENT_LTECHIP_ON, networkMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/16 v4, 0xf

    if-eq v2, v4, :cond_bd

    const/16 v4, 0x10

    if-eq v2, v4, :cond_bd

    const/16 v4, 0x11

    if-eq v2, v4, :cond_bd

    const/16 v4, 0xc

    if-eq v2, v4, :cond_bd

    const/16 v4, 0xd

    if-eq v2, v4, :cond_bd

    const/16 v4, 0xe

    if-ne v2, v4, :cond_21

    .line 120
    :cond_bd
    const-string v4, "LteServiceStateTracker"

    const-string v4, "handleMessage call getNetworkSelectionMode modified by juno"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x67

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    goto/16 :goto_21

    .line 53
    nop

    :sswitch_data_d2
    .sparse-switch
        0x2b -> :sswitch_21
        0x65 -> :sswitch_30
        0x66 -> :sswitch_22
        0x67 -> :sswitch_3c
        0x68 -> :sswitch_87
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 177
    return-void
.end method

.method protected updateSpnDisplay()V
    .registers 1

    .prologue
    .line 172
    return-void
.end method
