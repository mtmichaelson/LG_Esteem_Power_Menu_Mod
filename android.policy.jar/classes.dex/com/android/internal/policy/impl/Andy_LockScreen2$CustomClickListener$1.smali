.class Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;
.super Ljava/lang/Thread;
.source "Andy_LockScreen2.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

.field final synthetic val$handler:Landroid/os/Handler;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iput-object p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/16 v5, 0x14

    const-string v6, "Andy_LockScreen2"

    .line 2273
    const/4 v2, 0x0

    .line 2274
    .local v2, watingCount:I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iget-object v3, v3, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$500(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v3

    if-nez v3, :cond_20

    if-ge v2, v5, :cond_20

    .line 2275
    const-string v3, "Andy_LockScreen2"

    const-string v4, "=====  mediaPlayBackService OnBindService Wating ....  ====="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    const-wide/16 v3, 0x7d0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 2277
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2279
    :cond_20
    if-lt v2, v5, :cond_23

    .line 2322
    :goto_22
    return-void

    .line 2280
    :cond_23
    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;)V

    .line 2318
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_22

    .line 2319
    .end local v1       #runnable:Ljava/lang/Runnable;,
    :catch_2e
    move-exception v3

    move-object v0, v3

    .line 2320
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "Andy_LockScreen2"

    const-string v3, "== Thread Run Exception =="

    invoke-static {v6, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method
