.class Landroid/service/wallpaper/WallpaperService$Engine$3;
.super Lcom/android/internal/view/BaseInputHandler;
.source "WallpaperService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService$Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/wallpaper/WallpaperService$Engine;



# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Ljava/lang/Runnable;)V
    .registers 5
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 225
    .local v0, source:I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_d

    .line 226
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService$Engine$3;->this$1:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-static {v1, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->access$000(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_11

    .line 229
    :cond_d
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 231
    return-void

    .line 229
    .end local v0       #source:I,
    :catchall_11
    move-exception v1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    throw v1
.end method
