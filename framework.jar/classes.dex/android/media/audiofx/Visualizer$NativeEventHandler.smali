.class Landroid/media/audiofx/Visualizer$NativeEventHandler;
.super Landroid/os/Handler;
.source "Visualizer.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Visualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field final synthetic this$0:Landroid/media/audiofx/Visualizer;



# direct methods
.method public constructor <init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "v"
    .parameter "looper"

    .prologue
    .line 461
    iput-object p1, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    .line 462
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 463
    iput-object p2, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 464
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 468
    iget-object v4, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v4, :cond_5

    .line 491
    :cond_4
    :goto_4
    return-void

    .line 471
    :cond_5
    const/4 v2, 0x0

    .line 472
    .local v2, l:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    iget-object v4, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->this$0:Landroid/media/audiofx/Visualizer;

    invoke-static {v4}, Landroid/media/audiofx/Visualizer;->access$000(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 473
    :try_start_d
    iget-object v5, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {v5}, Landroid/media/audiofx/Visualizer;->access$100(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    move-result-object v2

    .line 474
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    .line 476
    if-eqz v2, :cond_4

    .line 477
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0

    .line 478
    .local v1, data:[B
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 479
    .local v3, samplingRate:I
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_50

    .line 487
    const-string v4, "Visualizer-JAVA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown native event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 474
    .end local v1       #data:[B,
    .end local v3       #samplingRate:I,
    :catchall_40
    move-exception v5

    :try_start_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v5

    .line 481
    .restart local v1       #data:[B,
    .restart local v3       #samplingRate:I,
    :pswitch_43
    iget-object v4, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-interface {v2, v4, v1, v3}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    goto :goto_4

    .line 484
    :pswitch_49
    iget-object v4, p0, Landroid/media/audiofx/Visualizer$NativeEventHandler;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-interface {v2, v4, v1, v3}, Landroid/media/audiofx/Visualizer$OnDataCaptureListener;->onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V

    goto :goto_4

    .line 479
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_43
        :pswitch_49
    .end packed-switch
.end method
