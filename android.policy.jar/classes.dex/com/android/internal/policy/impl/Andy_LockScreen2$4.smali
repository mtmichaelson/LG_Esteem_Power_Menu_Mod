.class Lcom/android/internal/policy/impl/Andy_LockScreen2$4;
.super Ljava/lang/Object;
.source "Andy_LockScreen2.java"


# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V
    .registers 2
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$502(Lcom/android/internal/policy/impl/Andy_LockScreen2;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 752
    const-string v0, "Andy_LockScreen2"

    const-string v1, "MediaPlaybackService is connected !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$500(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 757
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$502(Lcom/android/internal/policy/impl/Andy_LockScreen2;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 758
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$4;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->unBindService()V

    .line 759
    const-string v0, "Andy_LockScreen2"

    const-string v1, "MediaPlaybackService is disconnected !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_1a
    return-void
.end method
