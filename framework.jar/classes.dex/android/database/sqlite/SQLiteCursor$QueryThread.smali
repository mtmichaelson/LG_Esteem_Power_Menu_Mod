.class final Landroid/database/sqlite/SQLiteCursor$QueryThread;
.super Ljava/lang/Object;
.source "SQLiteCursor.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryThread"
.end annotation


# instance fields
.field private final mThreadState:I

.field final synthetic this$0:Landroid/database/sqlite/SQLiteCursor;



# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteCursor;I)V
    .registers 3
    .parameter
    .parameter "version"

    .prologue
    .line 116
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p2, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->mThreadState:I

    .line 118
    return-void
.end method

.method private sendMessage()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-eqz v0, :cond_15

    .line 121
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;->sendEmptyMessage(I)Z

    .line 122
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteCursor;->access$002(Landroid/database/sqlite/SQLiteCursor;Z)Z

    .line 127
    :goto_14
    return-void

    .line 124
    :cond_15
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteCursor;->access$002(Landroid/database/sqlite/SQLiteCursor;Z)Z

    goto :goto_14
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 130
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$100(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/CursorWindow;

    move-result-object v1

    .line 131
    .local v1, cw:Landroid/database/CursorWindow;
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 134
    :goto_f
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 135
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$300(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v3

    iget v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->mThreadState:I

    if-eq v3, v4, :cond_2c

    .line 136
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 161
    :goto_2b
    return-void

    .line 140
    :cond_2c
    :try_start_2c
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$600(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/sqlite/SQLiteQuery;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v4}, Landroid/database/sqlite/SQLiteCursor;->access$400(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v5}, Landroid/database/sqlite/SQLiteCursor;->access$500(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;II)I

    move-result v0

    .line 142
    .local v0, count:I
    if-eqz v0, :cond_85

    .line 143
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5f

    .line 144
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v4}, Landroid/database/sqlite/SQLiteCursor;->access$400(Landroid/database/sqlite/SQLiteCursor;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteCursor;->access$512(Landroid/database/sqlite/SQLiteCursor;I)I

    .line 145
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_55} :catch_71

    .line 158
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_f

    .line 147
    :cond_5f
    :try_start_5f
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3, v0}, Landroid/database/sqlite/SQLiteCursor;->access$502(Landroid/database/sqlite/SQLiteCursor;I)I

    .line 148
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor$QueryThread;->sendMessage()V
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_71

    .line 158
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    .end local v0       #count:I,
    :goto_6d
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2b

    .line 154
    :catch_71
    move-exception v3

    move-object v2, v3

    .line 158
    .local v2, e:Ljava/lang/Exception;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    goto :goto_6d

    .end local v2       #e:Ljava/lang/Exception;,
    :catchall_7a
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v4}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .restart local v0       #count:I,
    :cond_85
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor$QueryThread;->this$0:Landroid/database/sqlite/SQLiteCursor;

    invoke-static {v3}, Landroid/database/sqlite/SQLiteCursor;->access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    goto :goto_6d
.end method
