.class Lcom/android/internal/policy/impl/Andy_LockScreen$6;
.super Ljava/lang/Object;
.source "Andy_LockScreen.java"


# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$6;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$6;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {p2}, Lcom/android/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$402(Lcom/android/internal/policy/impl/Andy_LockScreen;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 487
    const-string v0, "LockScreen_Music"

    const-string v1, "MediaPlaybackService is connected !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$6;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$400(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$6;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$402(Lcom/android/internal/policy/impl/Andy_LockScreen;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;

    .line 493
    const-string v0, "LockScreen_Music"

    const-string v1, "MediaPlaybackService is disconnected !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_15
    return-void
.end method
