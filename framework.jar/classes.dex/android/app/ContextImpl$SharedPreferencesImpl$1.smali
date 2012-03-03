.class Landroid/app/ContextImpl$SharedPreferencesImpl$1;
.super Ljava/lang/Object;
.source "ContextImpl.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImpl$SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

.field final synthetic val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

.field final synthetic val$postWriteRunnable:Ljava/lang/Runnable;



# direct methods
.method constructor <init>(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3098
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    iput-object p2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    iput-object p3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->val$postWriteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3100
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$700(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3101
    :try_start_7
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    invoke-static {v1, v2}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$800(Landroid/app/ContextImpl$SharedPreferencesImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    .line 3102
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_22

    .line 3103
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    monitor-enter v0

    .line 3104
    :try_start_12
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->this$0:Landroid/app/ContextImpl$SharedPreferencesImpl;

    invoke-static {v1}, Landroid/app/ContextImpl$SharedPreferencesImpl;->access$310(Landroid/app/ContextImpl$SharedPreferencesImpl;)I

    .line 3105
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_25

    .line 3106
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->val$postWriteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_21

    .line 3107
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$1;->val$postWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3109
    :cond_21
    return-void

    .line 3102
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1

    .line 3105
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method
