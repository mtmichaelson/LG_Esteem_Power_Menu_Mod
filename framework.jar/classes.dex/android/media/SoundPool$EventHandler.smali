.class Landroid/media/SoundPool$EventHandler;
.super Landroid/os/Handler;
.source "SoundPool.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mSoundPool:Landroid/media/SoundPool;

.field final synthetic this$0:Landroid/media/SoundPool;



# direct methods
.method public constructor <init>(Landroid/media/SoundPool;Landroid/media/SoundPool;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "soundPool"
    .parameter "looper"

    .prologue
    .line 438
    iput-object p1, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    .line 439
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 440
    iput-object p2, p0, Landroid/media/SoundPool$EventHandler;->mSoundPool:Landroid/media/SoundPool;

    .line 441
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 445
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_44

    .line 455
    const-string v0, "SoundPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_1f
    return-void

    .line 448
    :pswitch_20
    iget-object v0, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    invoke-static {v0}, Landroid/media/SoundPool;->access$000(Landroid/media/SoundPool;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 449
    :try_start_27
    iget-object v1, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    invoke-static {v1}, Landroid/media/SoundPool;->access$100(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 450
    iget-object v1, p0, Landroid/media/SoundPool$EventHandler;->this$0:Landroid/media/SoundPool;

    invoke-static {v1}, Landroid/media/SoundPool;->access$100(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SoundPool$EventHandler;->mSoundPool:Landroid/media/SoundPool;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v4}, Landroid/media/SoundPool$OnLoadCompleteListener;->onLoadComplete(Landroid/media/SoundPool;II)V

    .line 452
    :cond_3e
    monitor-exit v0

    goto :goto_1f

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_40

    throw v1

    .line 445
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method
