.class Lcom/lge/server/Andy_LockScreenService$1;
.super Landroid/os/FileObserver;
.source "Andy_LockScreenService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/server/Andy_LockScreenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/server/Andy_LockScreenService;



# direct methods
.method constructor <init>(Lcom/lge/server/Andy_LockScreenService;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/server/Andy_LockScreenService$1;->this$0:Lcom/lge/server/Andy_LockScreenService;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 5
    .parameter "event"
    .parameter "path"

    .prologue
    .line 78
    if-nez p2, :cond_3

    .line 86
    :cond_2
    :goto_2
    return-void

    .line 82
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lge/server/Andy_LockScreenService;->access$000()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v0, changedFile:Ljava/io/File;
    invoke-static {}, Lcom/lge/server/Andy_LockScreenService;->access$100()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/lge/server/Andy_LockScreenService$1;->this$0:Lcom/lge/server/Andy_LockScreenService;

    invoke-static {v1}, Lcom/lge/server/Andy_LockScreenService;->access$200(Lcom/lge/server/Andy_LockScreenService;)V

    goto :goto_2
.end method
