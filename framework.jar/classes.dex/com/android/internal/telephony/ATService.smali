.class public Lcom/android/internal/telephony/ATService;
.super Ljava/lang/Object;
.source "ATService.java"



# static fields
.field private static final EVENT_RESPONSE:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "ATService"

.field public static final RESPONSE_ERROR:Ljava/lang/String; = "ERROR"

.field public static final RESPONSE_OK:Ljava/lang/String; = "OK"

.field public static final RESPONSE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static sInstance:Lcom/android/internal/telephony/ATService;



# instance fields
.field isChannelOpen:Z

.field private mATCommand:Lcom/android/internal/telephony/IATService;

.field private mCallback:Lcom/android/internal/telephony/ICallback;

.field mHandler:Landroid/os/Handler;

.field mMessageList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const-string v1, "ATService"

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ATService;->isChannelOpen:Z

    .line 22
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ATService;->mMessageList:Ljava/util/LinkedList;

    .line 136
    new-instance v1, Lcom/android/internal/telephony/ATService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ATService$1;-><init>(Lcom/android/internal/telephony/ATService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ATService;->mCallback:Lcom/android/internal/telephony/ICallback;

    .line 146
    new-instance v1, Lcom/android/internal/telephony/ATService$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ATService$2;-><init>(Lcom/android/internal/telephony/ATService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ATService;->mHandler:Landroid/os/Handler;

    .line 57
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ATService;->checkATService()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/ATService;->open()Z

    move-result v1

    if-nez v1, :cond_33

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    .line 62
    const-string v1, "ATService"

    const-string v2, "ATService(): /dev/pts16 open fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_33
    :goto_33
    return-void

    .line 67
    :cond_34
    const-string v1, "ATService"

    const-string v2, "ATService(): ATService is not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3b} :catch_3c

    goto :goto_33

    .line 70
    :catch_3c
    move-exception v1

    move-object v0, v1

    .line 72
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ATService;)Lcom/android/internal/telephony/ICallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/ATService;->mCallback:Lcom/android/internal/telephony/ICallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ATService;)Lcom/android/internal/telephony/IATService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    return-object v0
.end method

.method public static getDefault()Lcom/android/internal/telephony/ATService;
    .registers 2

    .prologue
    const-string v1, "ATService"

    .line 30
    sget-object v0, Lcom/android/internal/telephony/ATService;->sInstance:Lcom/android/internal/telephony/ATService;

    if-nez v0, :cond_17

    .line 32
    const-string v0, "ATService"

    const-string v0, "getDefault(): new ATService()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Lcom/android/internal/telephony/ATService;

    invoke-direct {v0}, Lcom/android/internal/telephony/ATService;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ATService;->sInstance:Lcom/android/internal/telephony/ATService;

    .line 40
    :goto_14
    sget-object v0, Lcom/android/internal/telephony/ATService;->sInstance:Lcom/android/internal/telephony/ATService;

    return-object v0

    .line 37
    :cond_17
    const-string v0, "ATService"

    const-string v0, "getDefault(): return previously created instance"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method private open()Z
    .registers 5

    .prologue
    .line 78
    iget-boolean v1, p0, Lcom/android/internal/telephony/ATService;->isChannelOpen:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    .line 91
    :goto_5
    return v1

    .line 82
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    const-string v2, "/dev/pts16"

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IATService;->open(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/ATService;->isChannelOpen:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_2e

    .line 89
    :goto_10
    const-string v1, "ATService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "open(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/ATService;->isChannelOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v1, p0, Lcom/android/internal/telephony/ATService;->isChannelOpen:Z

    goto :goto_5

    .line 84
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 86
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method


# virtual methods
.method public checkATService()Z
    .registers 4

    .prologue
    const-string v2, "ATService"

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    invoke-interface {v0}, Lcom/android/internal/telephony/IATService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "ATService"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_24

    .line 47
    :cond_18
    const-string v0, "ATService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IATService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IATService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    .line 50
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public close()V
    .registers 3

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/internal/telephony/ATService;->checkATService()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/internal/telephony/ATService;->isChannelOpen:Z

    if-eqz v1, :cond_12

    .line 126
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    invoke-interface {v1}, Lcom/android/internal/telephony/IATService;->close()V

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ATService;->isChannelOpen:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_12} :catch_13

    .line 134
    :cond_12
    :goto_12
    return-void

    .line 129
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "command"
    .parameter "m"

    .prologue
    const-string v4, "ATService"

    .line 96
    const-string v2, "ATService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCommand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/ATService;->checkATService()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-direct {p0}, Lcom/android/internal/telephony/ATService;->open()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 99
    iget-object v2, p0, Lcom/android/internal/telephony/ATService;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 100
    .local v1, res:Z
    const-string v2, "ATService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendCommand(), message added = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , queue size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ATService;->mMessageList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :try_start_5c
    iget-object v2, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    iget-object v3, p0, Lcom/android/internal/telephony/ATService;->mCallback:Lcom/android/internal/telephony/ICallback;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IATService;->registerCallback(Lcom/android/internal/telephony/ICallback;)V

    .line 105
    iget-object v2, p0, Lcom/android/internal/telephony/ATService;->mATCommand:Lcom/android/internal/telephony/IATService;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IATService;->write(Ljava/lang/String;)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_71

    .line 117
    .end local v1       #res:Z,
    :goto_68
    const-string v2, "ATService"

    const-string/jumbo v2, "sendCommand(): end"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void

    .line 107
    .restart local v1       #res:Z,
    :catch_71
    move-exception v2

    move-object v0, v2

    .line 109
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    .line 114
    .end local v0       #ex:Ljava/lang/Exception;,
    .end local v1       #res:Z,
    :cond_77
    const-string v2, "ATService"

    const-string/jumbo v2, "sendCommand(): channel is not opened"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method
