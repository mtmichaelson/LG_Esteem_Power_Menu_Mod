.class Landroid/net/http/IdleCache$IdleReaper;
.super Ljava/lang/Thread;
.source "IdleCache.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/IdleCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleReaper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/IdleCache;



# direct methods
.method private constructor <init>(Landroid/net/http/IdleCache;)V
    .registers 2
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Landroid/net/http/IdleCache$IdleReaper;-><init>(Landroid/net/http/IdleCache;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, check:I
    const-string v1, "IdleReaper"

    invoke-virtual {p0, v1}, Landroid/net/http/IdleCache$IdleReaper;->setName(Ljava/lang/String;)V

    .line 168
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 170
    iget-object v1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    monitor-enter v1

    .line 171
    :goto_e
    const/4 v2, 0x5

    if-ge v0, v2, :cond_33

    .line 173
    :try_start_11
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_52
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_18} :catch_55

    .line 176
    :goto_18
    :try_start_18
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-static {v2}, Landroid/net/http/IdleCache;->access$100(Landroid/net/http/IdleCache;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    iget-boolean v2, v2, Landroid/net/http/IdleCache;->pageFinished:Z

    if-eqz v2, :cond_40

    sget-object v2, Landroid/net/http/ConnectionThread;->sRunning:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_40

    .line 177
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-virtual {v2}, Landroid/net/http/IdleCache;->clear()V

    .line 187
    :cond_33
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/net/http/IdleCache;->access$402(Landroid/net/http/IdleCache;Landroid/net/http/IdleCache$IdleReaper;)Landroid/net/http/IdleCache$IdleReaper;

    .line 188
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_52

    .line 195
    iget-object v1, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/net/http/IdleCache;->pageFinished:Z

    .line 196
    return-void

    .line 180
    :cond_40
    :try_start_40
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-static {v2}, Landroid/net/http/IdleCache;->access$200(Landroid/net/http/IdleCache;)I

    move-result v2

    if-nez v2, :cond_4b

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 183
    :cond_4b
    const/4 v0, 0x0

    .line 184
    iget-object v2, p0, Landroid/net/http/IdleCache$IdleReaper;->this$0:Landroid/net/http/IdleCache;

    invoke-static {v2}, Landroid/net/http/IdleCache;->access$300(Landroid/net/http/IdleCache;)V

    goto :goto_e

    .line 188
    :catchall_52
    move-exception v2

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_52

    throw v2

    .line 174
    :catch_55
    move-exception v2

    goto :goto_18
.end method
