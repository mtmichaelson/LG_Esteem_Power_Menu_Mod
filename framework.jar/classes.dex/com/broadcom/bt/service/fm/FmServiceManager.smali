.class public Lcom/broadcom/bt/service/fm/FmServiceManager;
.super Ljava/lang/Object;
.source "FmServiceManager.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FmServiceManager"

.field private static _DBG:Z

.field private static mFmReceiver:Landroid/content/BroadcastReceiver;

.field private static mFmServiceWrapper:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static mInitialized:Z

.field private static mIsFactoryTest:Z

.field private static mLastFmState:I

.field private static mSystemContext:Landroid/content/Context;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    .line 47
    new-instance v0, Lcom/broadcom/bt/service/fm/FmServiceManager$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private static _registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V
    .registers 8
    .parameter "svcName"
    .parameter "svc"

    .prologue
    const-string/jumbo v5, "null"

    const-string v4, "FmServiceManager"

    const-string v3, ": "

    .line 139
    invoke-static {p0}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    .line 140
    .local v0, isSupported:Z
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v1, :cond_6d

    .line 141
    if-nez v0, :cond_3f

    .line 142
    const-string v1, "FmServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Fm Service not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_7f

    const-string/jumbo v2, "null"

    move-object v2, v5

    :goto_2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "...Skipping. ****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_3f
    const-string v1, "FmServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****Registering Fm Service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_88

    const-string/jumbo v2, "null"

    move-object v2, v5

    :goto_5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_6d
    if-eqz v0, :cond_7e

    .line 153
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 154
    :try_start_72
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;-><init>(Lcom/broadcom/bt/service/framework/IBtService;Z)V

    invoke-virtual {v2, p0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_72 .. :try_end_7e} :catchall_91

    .line 158
    :cond_7e
    return-void

    .line 142
    :cond_7f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e

    .line 147
    :cond_88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_5c

    .line 156
    :catchall_91
    move-exception v2

    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v2
.end method

.method private static _startService(Ljava/lang/String;)V
    .registers 6
    .parameter "svcName"

    .prologue
    const-string v2, "***"

    const-string v4, "FmServiceManager"

    .line 185
    if-eqz p0, :cond_e

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 187
    :cond_e
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_35

    .line 188
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Fm service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_36

    const-string/jumbo v3, "null"

    :goto_24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not enabled. Skipping start...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_35
    :goto_35
    return-void

    :cond_36
    move-object v3, p0

    .line 188
    goto :goto_24

    .line 195
    :cond_38
    const/4 v1, 0x0

    .line 196
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 197
    :try_start_3c
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 198
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_6c

    .line 200
    if-nez v1, :cond_6f

    .line 201
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_35

    .line 202
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***startService(): Unable to find service record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 198
    :catchall_6c
    move-exception v2

    :try_start_6d
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v2

    .line 208
    :cond_6f
    monitor-enter v1

    .line 209
    :try_start_70
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 210
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already started....skipping start..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v1

    goto :goto_35

    .line 237
    :catchall_96
    move-exception v2

    monitor-exit v1
    :try_end_98
    .catchall {:try_start_70 .. :try_end_98} :catchall_96

    throw v2

    .line 214
    :cond_99
    :try_start_99
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_d2

    .line 215
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_cf

    .line 216
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not managed by FmServiceManager. Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 224
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager;->createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    :cond_cf
    monitor-exit v1

    goto/16 :goto_35

    .line 229
    :cond_d2
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_f8

    .line 230
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 231
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***startService(): Starting service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_f8
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->init()V

    .line 235
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->start()V

    .line 237
    monitor-exit v1
    :try_end_107
    .catchall {:try_start_99 .. :try_end_107} :catchall_96

    goto/16 :goto_35
.end method

.method private static _stopService(Ljava/lang/String;)V
    .registers 7
    .parameter "svcName"

    .prologue
    const-string v5, "***"

    const-string v4, "FmServiceManager"

    .line 242
    if-nez p0, :cond_7

    .line 296
    :cond_6
    :goto_6
    return-void

    .line 245
    :cond_7
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_29

    .line 246
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Stopping service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_29
    const/4 v1, 0x0

    .line 250
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3

    .line 251
    :try_start_2d
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 252
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_2d .. :try_end_38} :catchall_5d

    .line 254
    if-nez v1, :cond_60

    .line 255
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_6

    .line 256
    const-string v2, "FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "***stopService(): Unable to find service record for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping...***"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 252
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v2

    .line 263
    :cond_60
    monitor-enter v1

    .line 264
    :try_start_61
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v2

    if-nez v2, :cond_8a

    .line 265
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already stopped....skipping stop..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    monitor-exit v1

    goto :goto_6

    .line 294
    :catchall_87
    move-exception v2

    monitor-exit v1
    :try_end_89
    .catchall {:try_start_61 .. :try_end_89} :catchall_87

    throw v2

    .line 270
    :cond_8a
    :try_start_8a
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    if-nez v2, :cond_c3

    .line 271
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_c0

    .line 272
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is not managed by Service Manager. Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 279
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager;->createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 282
    :cond_c0
    monitor-exit v1

    goto/16 :goto_6

    .line 285
    :cond_c3
    sget-boolean v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v2, :cond_e9

    .line 286
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 287
    const-string v2, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***stopService(): Stop service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_e9
    monitor-enter v1
    :try_end_ea
    .catchall {:try_start_8a .. :try_end_ea} :catchall_87

    .line 292
    :try_start_ea
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    invoke-interface {v2}, Lcom/broadcom/bt/service/framework/IBtService;->stop()V

    .line 293
    monitor-exit v1
    :try_end_f2
    .catchall {:try_start_ea .. :try_end_f2} :catchall_f5

    .line 294
    :try_start_f2
    monitor-exit v1
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_87

    goto/16 :goto_6

    .line 293
    :catchall_f5
    move-exception v2

    :try_start_f6
    monitor-exit v1
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw v2
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_87
.end method

.method public static createFmSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4
    .parameter "svcName"
    .parameter "state"

    .prologue
    .line 437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.bt.intent.action.FM_SVC_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v0, i:Landroid/content/Intent;
    const-string v1, "fm_svc_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v1, "fm_svc_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;
    .registers 4
    .parameter "svcName"

    .prologue
    .line 407
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 408
    :try_start_3
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    .line 409
    .local v0, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    if-nez v0, :cond_10

    const/4 v2, 0x0

    :goto_e
    monitor-exit v1

    return-object v2

    :cond_10
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v2

    goto :goto_e

    .line 410
    .end local v0       #svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;,
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public static getServiceState(Ljava/lang/String;)I
    .registers 3
    .parameter "svcName"

    .prologue
    .line 420
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    .line 421
    .local v0, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    if-nez v0, :cond_c

    .line 422
    const/4 v1, -0x1

    .line 424
    :goto_b
    return v1

    :cond_c
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$000(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x2

    goto :goto_b

    :cond_14
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 6
    .parameter "systemContext"

    .prologue
    const-string v0, "FmServiceManager"

    .line 98
    const-class v0, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v0

    :try_start_5
    const-string v1, "FmServiceManager"

    const-string v2, "init() called "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    if-eqz v1, :cond_19

    .line 101
    const-string v1, "FmServiceManager"

    const-string v2, "Fm Service Manager already initialized.....Skipping init()..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_33

    .line 112
    :goto_17
    monitor-exit v0

    return-void

    .line 105
    :cond_19
    :try_start_19
    sput-object p0, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    .line 106
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initSettings()V

    .line 108
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->registerServices()V

    .line 109
    const/4 v1, 0x1

    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z

    .line 110
    sget-object v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "broadcom.bt.intent.action.FM_SVC_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_33

    goto :goto_17

    .line 98
    :catchall_33
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initFmPower()V
    .registers 3

    .prologue
    const-string v2, "FmServiceManager"

    .line 115
    const-string v1, "FmServiceManager"

    const-string v1, "initFmPower()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 118
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/PowerManager;
    if-nez v0, :cond_17

    .line 119
    const-string v1, "FmServiceManager"

    const-string v1, "Unable to initialize  FM!!!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_16
    :goto_16
    return-void

    .line 121
    :cond_17
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->enableFm()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 122
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->onEnabled()V

    goto :goto_16
.end method

.method private static initSettings()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v9, "fm_svcst_init"

    const-string v8, "fm_svcst_"

    const-string v7, "FmServiceManager"

    .line 163
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    if-eqz v3, :cond_a2

    .line 164
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "fm_svcst_init"

    invoke-static {v0, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 167
    .local v2, settingsExist:I
    if-nez v2, :cond_a2

    .line 168
    const-string v3, "FmServiceManager"

    const-string v3, "*********Initializing Fm Service Settings*******"

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_9d

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fm_svcst_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9b

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_9b

    move v4, v6

    :goto_4f
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    const-string v3, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fm_svcst_"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: isServiceSupported=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";  SERVICES_STARTUP_ENABLED= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_9b
    move v4, v5

    .line 170
    goto :goto_4f

    .line 180
    :cond_9d
    const-string v3, "fm_svcst_init"

    invoke-static {v0, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    .end local v0       #cr:Landroid/content/ContentResolver;,
    .end local v1       #i:I,
    .end local v2       #settingsExist:I,
    :cond_a2
    return-void
.end method

.method public static declared-synchronized isInitialized()Z
    .registers 2

    .prologue
    .line 61
    const-class v0, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/broadcom/bt/service/fm/FmServiceManager;->mInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onDisabled()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "FmServiceManager"

    .line 357
    const-string v2, "FmServiceManager"

    const-string/jumbo v2, "onDisabled()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    sget v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    if-ne v2, v4, :cond_17

    .line 360
    const-string v2, "FmServiceManager"

    const-string v2, "Already STOPPED..Skipping"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :goto_16
    return-void

    .line 364
    :cond_17
    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v2

    .line 365
    :try_start_1a
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 367
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 368
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_stopService(Ljava/lang/String;)V

    goto :goto_24

    .line 371
    .end local v0       #svcIterator:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1       #svcName:Ljava/lang/String;,
    :catchall_34
    move-exception v3

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_34

    throw v3

    .restart local v0       #svcIterator:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_37
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 373
    sput v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    goto :goto_16
.end method

.method public static declared-synchronized onEnabled()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const-string v2, "FmServiceManager"

    .line 334
    const-class v2, Lcom/broadcom/bt/service/fm/FmServiceManager;

    monitor-enter v2

    :try_start_6
    const-string v3, "FmServiceManager"

    const-string/jumbo v4, "onEnabled()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mIsFactoryTest:Z
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_20

    if-eqz v3, :cond_14

    .line 354
    :goto_12
    monitor-exit v2

    return-void

    .line 340
    :cond_14
    :try_start_14
    sget v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I

    if-ne v3, v5, :cond_23

    .line 341
    const-string v3, "FmServiceManager"

    const-string v4, "Already STARTED..Skipping"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_20

    goto :goto_12

    .line 334
    :catchall_20
    move-exception v3

    monitor-exit v2

    throw v3

    .line 345
    :cond_23
    :try_start_23
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_20

    .line 346
    :try_start_26
    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 348
    .local v0, svcIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 350
    .local v1, svcName:Ljava/lang/String;
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_startService(Ljava/lang/String;)V

    goto :goto_30

    .line 352
    .end local v0       #svcIterator:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1       #svcName:Ljava/lang/String;,
    :catchall_40
    move-exception v4

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_40

    :try_start_42
    throw v4
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_20

    .restart local v0       #svcIterator:Ljava/util/Iterator;,, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_43
    :try_start_43
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_40

    .line 353
    const/4 v3, 0x2

    :try_start_45
    sput v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mLastFmState:I
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_20

    goto :goto_12
.end method

.method public static onFmServiceStateChanged(Ljava/lang/String;I)V
    .registers 9
    .parameter "svcName"
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const-string v5, "FmServiceManager"

    .line 299
    const-string v3, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnFmServiceStateChanged() serviceName :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " current State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, svcWrapper:Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;
    sget-object v4, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    monitor-enter v4

    .line 303
    :try_start_29
    sget-object v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->mFmServiceWrapper:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;

    move-object v1, v0

    .line 304
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_59

    .line 306
    if-nez v1, :cond_5c

    .line 307
    sget-boolean v3, Lcom/broadcom/bt/service/fm/FmServiceManager;->_DBG:Z

    if-eqz v3, :cond_58

    .line 308
    const-string v3, "FmServiceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***onFmServiceStateChanged(): Unable to find service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping...***"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_58
    :goto_58
    return-void

    .line 304
    :catchall_59
    move-exception v3

    :try_start_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v3

    .line 315
    :cond_5c
    monitor-enter v1

    .line 316
    const/4 v3, 0x2

    if-ne v3, p1, :cond_69

    .line 317
    const/4 v3, 0x1

    :try_start_61
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z

    .line 330
    :cond_64
    :goto_64
    monitor-exit v1

    goto :goto_58

    :catchall_66
    move-exception v3

    monitor-exit v1
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_66

    throw v3

    .line 318
    :cond_69
    if-ne v6, p1, :cond_64

    .line 319
    const/4 v3, 0x0

    :try_start_6c
    invoke-static {v1, v3}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$002(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;Z)Z
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_66

    .line 321
    :try_start_6f
    const-string v3, "FmServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    if-eqz v3, :cond_64

    .line 323
    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;->access$100(Lcom/broadcom/bt/service/fm/FmServiceManager$FmServiceWrapper;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v3

    invoke-interface {v3}, Lcom/broadcom/bt/service/framework/IBtService;->finish()V
    :try_end_94
    .catchall {:try_start_6f .. :try_end_94} :catchall_66
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_94} :catch_95

    goto :goto_64

    .line 326
    :catch_95
    move-exception v3

    move-object v2, v3

    .line 327
    .local v2, t:Ljava/lang/Throwable;
    :try_start_97
    const-string v3, "FmServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error finishing service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_97 .. :try_end_af} :catchall_66

    goto :goto_64
.end method

.method private static registerServices()V
    .registers 3

    .prologue
    .line 69
    const-string v0, "bluetooth_fm_receiver_service"

    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiverService;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 71
    const-string v0, "bluetooth_fm_transmitter_service"

    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;

    sget-object v2, Lcom/broadcom/bt/service/fm/FmServiceManager;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->_registerService(Ljava/lang/String;Lcom/broadcom/bt/service/framework/IBtService;)V

    .line 73
    return-void
.end method

.method public static shutdownFmPower()V
    .registers 3

    .prologue
    const-string v2, "FmServiceManager"

    .line 127
    const-string v1, "FmServiceManager"

    const-string/jumbo v1, "shutDownFmPower()"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManager;->getProxy()Lcom/broadcom/bt/service/framework/PowerManager;

    move-result-object v0

    .line 130
    .local v0, fmPwrMgr:Lcom/broadcom/bt/service/framework/PowerManager;
    if-nez v0, :cond_18

    .line 131
    const-string v1, "FmServiceManager"

    const-string v1, "Unable to shutdown FM!!!!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_17
    :goto_17
    return-void

    .line 133
    :cond_18
    invoke-virtual {v0}, Lcom/broadcom/bt/service/framework/PowerManager;->disableFm()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 134
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->onDisabled()V

    goto :goto_17
.end method
