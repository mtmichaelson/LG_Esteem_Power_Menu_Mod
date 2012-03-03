.class public Lcom/android/internal/telephony/lte/LteCdmaPhone;
.super Lcom/android/internal/telephony/cdma/CDMAPhone;
.source "LteCdmaPhone.java"



# static fields
.field protected static final EVENT_GET_NETWORK_SELECTION_MODE_COMPLETE:I = 0x3e9

.field static final LOG_TAG:Ljava/lang/String; = "LteCdmaPhone"

.field private static volatile mInstance:Lcom/android/internal/telephony/lte/LteCdmaPhone;

.field private static volatile mIsDisposed:Z

.field public static mNetworkMode:I



# instance fields
.field private mLSST:Lcom/android/internal/telephony/lte/LteServiceStateTracker;



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mInstance:Lcom/android/internal/telephony/lte/LteCdmaPhone;

    .line 22
    sput-boolean v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mIsDisposed:Z

    .line 24
    sput v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mNetworkMode:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;)V
    .registers 6
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "dct"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 31
    new-instance v0, Lcom/android/internal/telephony/lte/LteServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/lte/LteServiceStateTracker;-><init>(Lcom/android/internal/telephony/lte/LteCdmaPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mLSST:Lcom/android/internal/telephony/lte/LteServiceStateTracker;

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mIsDisposed:Z

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/lte/LteCdmaPhone;
    .registers 5
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "dct"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;Z)Lcom/android/internal/telephony/lte/LteCdmaPhone;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;Z)Lcom/android/internal/telephony/lte/LteCdmaPhone;
    .registers 7
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "dct"
    .parameter "recreate"

    .prologue
    const-class v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;

    .line 42
    sget-object v0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mInstance:Lcom/android/internal/telephony/lte/LteCdmaPhone;

    if-nez v0, :cond_1b

    .line 43
    const-class v0, Lcom/android/internal/telephony/lte/LteCdmaPhone;

    monitor-enter v1

    .line 45
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mInstance:Lcom/android/internal/telephony/lte/LteCdmaPhone;

    if-nez v1, :cond_14

    .line 46
    new-instance v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/lte/LteCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;)V

    sput-object v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mInstance:Lcom/android/internal/telephony/lte/LteCdmaPhone;

    .line 48
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_18

    .line 55
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mInstance:Lcom/android/internal/telephony/lte/LteCdmaPhone;

    return-object v0

    .line 48
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1

    .line 49
    :cond_1b
    if-eqz p4, :cond_15

    sget-boolean v0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mIsDisposed:Z

    if-eqz v0, :cond_15

    .line 50
    const-class v0, Lcom/android/internal/telephony/lte/LteCdmaPhone;

    monitor-enter v1

    .line 51
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mInstance:Lcom/android/internal/telephony/lte/LteCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->removeReferences()V

    .line 52
    new-instance v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/lte/LteCdmaPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/DataConnectionTracker;)V

    sput-object v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mInstance:Lcom/android/internal/telephony/lte/LteCdmaPhone;

    .line 53
    monitor-exit v0

    goto :goto_15

    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private handleGetNetworkSelectionMode(Landroid/os/AsyncResult;)V
    .registers 8
    .parameter "ar"

    .prologue
    const-string v5, "LteCdmaPhone"

    .line 218
    const-string v3, "LteCdmaPhone"

    const-string v3, "handleGetNetworkSelectionMode fired"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-nez p1, :cond_13

    .line 220
    const-string v3, "LteCdmaPhone"

    const-string v3, "handleGetNetworkSelectionMode: invalid response"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_12
    return-void

    .line 225
    :cond_13
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 227
    .local v2, onComplete:Landroid/os/Message;
    if-eqz v2, :cond_44

    .line 228
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 229
    .local v1, netwm:[I
    const/4 v3, 0x0

    sget v4, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mNetworkMode:I

    aput v4, v1, v3

    .line 231
    const/4 v3, 0x0

    :try_start_22
    invoke-static {v2, v1, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 232
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_29

    goto :goto_12

    .line 233
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 234
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "LteCdmaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetNetworkSelectionMode: exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 237
    .end local v0       #ex:Ljava/lang/Exception;,
    .end local v1       #netwm:[I,
    :cond_44
    const-string v3, "LteCdmaPhone"

    const-string v3, "handleGetNetworkSelectionMode: no target message"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private handleGetNetworksDone(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter "ar"

    .prologue
    const-string v4, "LteCdmaPhone"

    .line 192
    const-string v2, "LteCdmaPhone"

    const-string v2, "handleGetNetworksDone fired"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz p1, :cond_f

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    .line 194
    :cond_f
    const-string v2, "LteCdmaPhone"

    const-string v2, "handleGetNetworksDone: invalid response"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_16
    return-void

    .line 199
    :cond_17
    :try_start_17
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 201
    .local v1, onComplete:Landroid/os/Message;
    if-eqz v1, :cond_43

    .line 202
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 203
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_28

    goto :goto_16

    .line 207
    .end local v1       #onComplete:Landroid/os/Message;,
    :catch_28
    move-exception v2

    move-object v0, v2

    .line 208
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "LteCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleGetNetworksDone: exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 205
    .end local v0       #ex:Ljava/lang/Exception;,
    .restart local v1       #onComplete:Landroid/os/Message;,
    :cond_43
    :try_start_43
    const-string v2, "LteCdmaPhone"

    const-string v3, "handleGetNetworksDone: no target message"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_28

    goto :goto_16
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .registers 7
    .parameter "ar"

    .prologue
    const-string v4, "LteCdmaPhone"

    .line 166
    const-string v2, "LteCdmaPhone"

    const-string v2, "handleSetSelectNetwork fired"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz p1, :cond_f

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_17

    .line 168
    :cond_f
    const-string v2, "LteCdmaPhone"

    const-string v2, "handleSetSelectNetwork: invalid response"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_16
    return-void

    .line 173
    :cond_17
    :try_start_17
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 174
    .local v1, onComplete:Landroid/os/Message;
    if-eqz v1, :cond_43

    .line 175
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 176
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_28

    goto :goto_16

    .line 180
    .end local v1       #onComplete:Landroid/os/Message;,
    :catch_28
    move-exception v2

    move-object v0, v2

    .line 181
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "LteCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetSelectNetwork: exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 178
    .end local v0       #ex:Ljava/lang/Exception;,
    .restart local v1       #onComplete:Landroid/os/Message;,
    :cond_43
    :try_start_43
    const-string v2, "LteCdmaPhone"

    const-string v3, "handleSetSelectNetwork: no target message"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_28

    goto :goto_16
.end method


# virtual methods
.method public dispose()V
    .registers 3

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->dispose()V

    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mLSST:Lcom/android/internal/telephony/lte/LteServiceStateTracker;

    if-eqz v1, :cond_f

    .line 62
    iget-object v1, p0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mLSST:Lcom/android/internal/telephony/lte/LteServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->dispose()V

    .line 64
    :cond_f
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mIsDisposed:Z

    .line 65
    monitor-exit v0

    .line 66
    return-void

    .line 65
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1c

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 127
    return-void
.end method

.method public getLteStatus()Lcom/android/internal/telephony/lte/LteStatus;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mLSST:Lcom/android/internal/telephony/lte/LteServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/lte/LteServiceStateTracker;->getLteStatus()Lcom/android/internal/telephony/lte/LteStatus;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSelectionMode(Landroid/os/Message;)V
    .registers 5
    .parameter "response"

    .prologue
    .line 120
    const-string v1, "LteCdmaPhone"

    const-string v2, "getSavedNetworkSelectionMode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Landroid/os/AsyncResult;

    sget v1, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mNetworkMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 122
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->handleGetNetworkSelectionMode(Landroid/os/AsyncResult;)V

    .line 123
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const-string v2, "LteCdmaPhone"

    .line 131
    const-string v0, "LteCdmaPhone"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received 2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-boolean v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v0, :cond_4b

    .line 133
    const-string v0, "LteCdmaPhone"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] while being destroyed. Ignoring."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_4a
    return-void

    .line 137
    :cond_4b
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_a0

    .line 155
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_4a

    .line 139
    :sswitch_54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->handleGetNetworksDone(Landroid/os/AsyncResult;)V

    goto :goto_4a

    .line 145
    :sswitch_5c
    const-string v0, "LteCdmaPhone"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto :goto_4a

    .line 150
    :sswitch_7e
    const-string v0, "LteCdmaPhone"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->handleGetNetworkSelectionMode(Landroid/os/AsyncResult;)V

    goto :goto_4a

    .line 137
    :sswitch_data_a0
    .sparse-switch
        0x10 -> :sswitch_5c
        0x11 -> :sswitch_5c
        0x1c -> :sswitch_54
        0x3e9 -> :sswitch_7e
    .end sparse-switch
.end method

.method public removeReferences()V
    .registers 2

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mIsDisposed:Z

    if-eqz v0, :cond_a

    .line 70
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeReferences()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mLSST:Lcom/android/internal/telephony/lte/LteServiceStateTracker;

    .line 73
    :cond_a
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;)V
    .registers 6
    .parameter "operatorNumeric"

    .prologue
    .line 85
    const-string v1, "LteCdmaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectNetworkManually, plmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 102
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 103
    return-void
.end method

.method public setNetworkMode(I)V
    .registers 5
    .parameter "mode"

    .prologue
    .line 241
    const-string v0, "LteCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Network mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sput p1, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mNetworkMode:I

    .line 243
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 113
    const-string v0, "LteCdmaPhone"

    const-string/jumbo v1, "setNetworkSelectionModeAutomatic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mNetworkMode:I

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 117
    return-void
.end method

.method public setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter "operatorNumeric"
    .parameter "response"

    .prologue
    .line 106
    const-string v0, "LteCdmaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectNetworkManually, plmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/telephony/lte/LteCdmaPhone;->mNetworkMode:I

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x10

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/lte/LteCdmaPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 110
    return-void
.end method
