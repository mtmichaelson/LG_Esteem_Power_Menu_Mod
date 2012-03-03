.class Lcom/broadcom/bt/service/bpp/PrintManager;
.super Ljava/lang/Object;
.source "PrintManager.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "PrintManager"

.field private static mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

.field private static mIncrementalJobIndex:J



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/broadcom/bt/service/bpp/PrintManager;->mIncrementalJobIndex:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized clearCurrentJob()V
    .registers 2

    .prologue
    .line 55
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    .line 56
    monitor-exit v0

    return-void

    .line 55
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static createJob(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;
    .registers 23
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "handle"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "objectResolver"
    .parameter "cb"

    .prologue
    .line 37
    new-instance v0, Lcom/broadcom/bt/service/bpp/PrintJob;

    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJobId()J

    move-result-wide v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v12}, Lcom/broadcom/bt/service/bpp/PrintJob;-><init>(JLjava/lang/String;IILjava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)V

    return-object v0
.end method

.method static declared-synchronized createJobId()J
    .registers 5

    .prologue
    .line 30
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v0

    :try_start_3
    sget-wide v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mIncrementalJobIndex:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/broadcom/bt/service/bpp/PrintManager;->mIncrementalJobIndex:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-wide v1

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;
    .registers 2

    .prologue
    .line 59
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setCurrentJob(Lcom/broadcom/bt/service/bpp/PrintJob;)V
    .registers 6
    .parameter "job"

    .prologue
    .line 43
    const-class v0, Lcom/broadcom/bt/service/bpp/PrintManager;

    monitor-enter v0

    if-nez p0, :cond_7

    .line 52
    :goto_5
    monitor-exit v0

    return-void

    .line 46
    :cond_7
    :try_start_7
    sget-object v1, Lcom/broadcom/bt/service/bpp/PrintManager;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    if-eqz v1, :cond_39

    .line 47
    const-string v1, "PrintManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: Attempting to start a new job with jobId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when an existing job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/broadcom/bt/service/bpp/PrintManager;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;

    iget-wide v3, v3, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is still in progress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_39
    sput-object p0, Lcom/broadcom/bt/service/bpp/PrintManager;->mCurrentJob:Lcom/broadcom/bt/service/bpp/PrintJob;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3c

    goto :goto_5

    .line 43
    :catchall_3c
    move-exception v1

    monitor-exit v0

    throw v1
.end method
