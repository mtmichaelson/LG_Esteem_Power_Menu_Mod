.class Landroid/server/BluetoothEventLoop$EventLoopHandler;
.super Landroid/os/Handler;
.source "BluetoothEventLoop.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventLoopHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;



# direct methods
.method private constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothEventLoop;Landroid/server/BluetoothEventLoop$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/server/BluetoothEventLoop$EventLoopHandler;-><init>(Landroid/server/BluetoothEventLoop;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 123
    const/4 v1, 0x0

    .line 125
    .local v1, address:Ljava/lang/String;
    const/4 v3, 0x0

    .line 127
    .local v3, objs:[Ljava/lang/Object;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_a0

    .line 172
    .end local p0       
    :cond_9
    :goto_9
    return-void

    .line 129
    .restart local p0       
    :sswitch_a
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->restart()V

    goto :goto_9

    .line 132
    :sswitch_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1       #address:Ljava/lang/String;,
    check-cast v1, Ljava/lang/String;

    .line 133
    .restart local v1       #address:Ljava/lang/String;,
    if-eqz v1, :cond_9

    .line 134
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Landroid/server/BluetoothService;->setPairingConfirmation(Ljava/lang/String;Z)Z

    goto :goto_9

    .line 140
    :sswitch_24
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/server/BluetoothService;->listInState(I)[Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, devices:[Ljava/lang/String;
    array-length v4, v2

    if-eqz v4, :cond_9

    .line 143
    array-length v4, v2

    if-le v4, v6, :cond_3e

    .line 144
    const-string v4, "BluetoothEventLoop"

    const-string v5, " There is more than one device in the Bonding State"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 147
    :cond_3e
    aget-object v1, v2, v7

    .line 148
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-static {v4}, Landroid/server/BluetoothEventLoop;->access$200(Landroid/server/BluetoothEventLoop;)Landroid/server/BluetoothService;

    move-result-object v4

    const/16 v5, 0xa

    const/16 v6, 0x8

    invoke-virtual {v4, v1, v5, v6}, Landroid/server/BluetoothService;->setBondState(Ljava/lang/String;II)Z

    goto :goto_9

    .line 154
    .end local v2       #devices:[Ljava/lang/String;,
    :sswitch_4e
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 155
    iget-object v5, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    aget-object p0, v3, v7

    .end local p0       
    check-cast p0, Ljava/lang/String;

    aget-object v4, v3, v6

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-static {v5, p0, v4}, Landroid/server/BluetoothEventLoop;->access$300(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_9

    .line 158
    .restart local p0       
    :sswitch_66
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0       
    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/server/BluetoothEventLoop;->access$400(Landroid/server/BluetoothEventLoop;[Ljava/lang/String;)V

    goto :goto_9

    .line 161
    .restart local p0       
    :sswitch_72
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 162
    iget-object v5, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    aget-object p0, v3, v7

    .end local p0       
    check-cast p0, Ljava/lang/String;

    aget-object v4, v3, v6

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-static {v5, p0, v4}, Landroid/server/BluetoothEventLoop;->access$500(Landroid/server/BluetoothEventLoop;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_9

    .line 165
    .restart local p0       
    :sswitch_8a
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0       
    check-cast p0, Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/server/BluetoothEventLoop;->access$600(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 168
    .restart local p0       
    :sswitch_95
    iget-object v4, p0, Landroid/server/BluetoothEventLoop$EventLoopHandler;->this$0:Landroid/server/BluetoothEventLoop;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0       
    check-cast p0, Ljava/lang/String;

    invoke-static {v4, p0}, Landroid/server/BluetoothEventLoop;->access$700(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 127
    :sswitch_data_a0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_14
        0x3 -> :sswitch_24
        0x64 -> :sswitch_4e
        0x65 -> :sswitch_66
        0x66 -> :sswitch_72
        0x67 -> :sswitch_8a
        0x68 -> :sswitch_95
    .end sparse-switch
.end method
