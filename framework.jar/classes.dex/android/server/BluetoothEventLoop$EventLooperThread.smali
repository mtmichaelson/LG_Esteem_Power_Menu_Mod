.class Landroid/server/BluetoothEventLoop$EventLooperThread;
.super Ljava/lang/Thread;
.source "BluetoothEventLoop.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventLooperThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;



# direct methods
.method private constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$EventLooperThread;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop$EventLooperThread;-><init>(Landroid/server/BluetoothEventLoop;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 109
    iget-object v0, p0, Landroid/server/BluetoothEventLoop$EventLooperThread;->this$0:Landroid/server/BluetoothEventLoop;

    new-instance v1, Landroid/server/BluetoothEventLoop$EventLoopHandler;

    iget-object v2, p0, Landroid/server/BluetoothEventLoop$EventLooperThread;->this$0:Landroid/server/BluetoothEventLoop;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/server/BluetoothEventLoop$EventLoopHandler;-><init>(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$1;)V

    invoke-static {v0, v1}, Landroid/server/BluetoothEventLoop;->access$002(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$EventLoopHandler;)Landroid/server/BluetoothEventLoop$EventLoopHandler;

    .line 110
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 111
    return-void
.end method
