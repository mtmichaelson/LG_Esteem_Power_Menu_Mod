.class Landroid/media/audiofx/AudioEffect$NativeEventHandler;
.super Landroid/os/Handler;
.source "AudioEffect.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/AudioEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeEventHandler"
.end annotation


# instance fields
.field private mAudioEffect:Landroid/media/audiofx/AudioEffect;

.field final synthetic this$0:Landroid/media/audiofx/AudioEffect;



# direct methods
.method public constructor <init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "ae"
    .parameter "looper"

    .prologue
    .line 1044
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    .line 1045
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1046
    iput-object p2, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    .line 1047
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 17
    .parameter "msg"

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1051
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    if-nez v11, :cond_7

    .line 1104
    :cond_6
    :goto_6
    return-void

    .line 1054
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v11, v0

    packed-switch v11, :pswitch_data_bc

    .line 1101
    const-string v11, "AudioEffect-JAVA"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleMessage() Unknown event type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1056
    :pswitch_2d
    const/4 v2, 0x0

    .line 1057
    .local v2, enableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v11, v11, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1058
    :try_start_33
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v12}, Landroid/media/audiofx/AudioEffect;->access$000(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    move-result-object v2

    .line 1059
    monitor-exit v11
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4a

    .line 1060
    if-eqz v2, :cond_6

    .line 1061
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v12, v0

    if-eqz v12, :cond_4d

    move v12, v14

    :goto_46
    invoke-interface {v2, v11, v12}, Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;->onEnableStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_6

    .line 1059
    :catchall_4a
    move-exception v12

    :try_start_4b
    monitor-exit v11
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v12

    :cond_4d
    move v12, v13

    .line 1061
    goto :goto_46

    .line 1066
    .end local v2       #enableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;,
    :pswitch_4f
    const/4 v1, 0x0

    .line 1067
    .local v1, controlStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v11, v11, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1068
    :try_start_55
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v12}, Landroid/media/audiofx/AudioEffect;->access$100(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    move-result-object v1

    .line 1069
    monitor-exit v11
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_6c

    .line 1070
    if-eqz v1, :cond_6

    .line 1071
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v12, v0

    if-eqz v12, :cond_6f

    move v12, v14

    :goto_68
    invoke-interface {v1, v11, v12}, Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;->onControlStatusChange(Landroid/media/audiofx/AudioEffect;Z)V

    goto :goto_6

    .line 1069
    :catchall_6c
    move-exception v12

    :try_start_6d
    monitor-exit v11
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v12

    :cond_6f
    move v12, v13

    .line 1071
    goto :goto_68

    .line 1076
    .end local v1       #controlStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;,
    :pswitch_71
    const/4 v5, 0x0

    .line 1077
    .local v5, parameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    iget-object v11, v11, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1078
    :try_start_77
    iget-object v12, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-static {v12}, Landroid/media/audiofx/AudioEffect;->access$200(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    move-result-object v5

    .line 1079
    monitor-exit v11
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_b8

    .line 1080
    if-eqz v5, :cond_6

    .line 1083
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    .line 1084
    .local v8, vOffset:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v3, v0

    .line 1087
    .local v3, p:[B
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v11, v3, v13}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v7

    .line 1088
    .local v7, status:I
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    const/4 v12, 0x4

    invoke-virtual {v11, v3, v12}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v6

    .line 1089
    .local v6, psize:I
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->this$0:Landroid/media/audiofx/AudioEffect;

    const/16 v12, 0x8

    invoke-virtual {v11, v3, v12}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v10

    .line 1090
    .local v10, vsize:I
    new-array v4, v6, [B

    .line 1091
    .local v4, param:[B
    new-array v9, v10, [B

    .line 1092
    .local v9, value:[B
    const/16 v11, 0xc

    invoke-static {v3, v11, v4, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1093
    invoke-static {v3, v8, v9, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1095
    iget-object v11, p0, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->mAudioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-interface {v5, v11, v7, v4, v9}, Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V

    goto/16 :goto_6

    .line 1079
    .end local v3       #p:[B,
    .end local v4       #param:[B,
    .end local v6       #psize:I,
    .end local v7       #status:I,
    .end local v8       #vOffset:I,
    .end local v9       #value:[B,
    .end local v10       #vsize:I,
    :catchall_b8
    move-exception v12

    :try_start_b9
    monitor-exit v11
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v12

    .line 1054
    nop

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_2d
        :pswitch_71
    .end packed-switch
.end method
