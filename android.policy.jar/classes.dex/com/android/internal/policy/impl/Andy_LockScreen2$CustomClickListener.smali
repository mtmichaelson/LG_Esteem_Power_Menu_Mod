.class Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;
.super Ljava/lang/Object;
.source "Andy_LockScreen2.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomClickListener"
.end annotation


# static fields
.field public static final CONTROL_FF:I = 0x2

.field public static final CONTROL_PLAY:I = 0x1

.field public static final CONTROL_REW:I = 0x0

.field private static final NEXT_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final PREVIOUS_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field private static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"



# instance fields
.field private controlMusicFlag:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;



# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;I)V
    .registers 4
    .parameter
    .parameter "flag"

    .prologue
    .line 2259
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    .line 2260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2257
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->controlMusicFlag:I

    .line 2261
    iput p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->controlMusicFlag:I

    .line 2262
    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 2248
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->controlMusicFlag:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 2265
    const-string v1, "Andy_LockScreen2"

    const-string v2, "=====  CustomClickListener-onClick\t====="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2267
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$500(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2268
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->onBindService()V

    .line 2269
    :cond_19
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 2270
    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->start()V

    .line 2324
    return-void
.end method
