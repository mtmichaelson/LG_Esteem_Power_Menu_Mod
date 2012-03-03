.class Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDUNService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/dun/BluetoothDUNService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/dun/BluetoothDUNService;



# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/dun/BluetoothDUNService;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "BluetoothDUNService"

    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, action:Ljava/lang/String;
    const-string v2, "BluetoothDUNService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] DUNService Receive()... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 149
    const-string/jumbo v2, "radioTechnology"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, radioTech:I
    const-string v2, "BluetoothDUNService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] Radio State ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    packed-switch v1, :pswitch_data_92

    .line 164
    :pswitch_50
    const-string v2, "BluetoothDUNService"

    const-string v2, "[BTUI] DUN is not available..."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-static {v2, v6}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->access$002(Lcom/broadcom/bt/service/dun/BluetoothDUNService;Z)Z

    .line 166
    invoke-static {}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->access$100()Z

    move-result v2

    if-ne v2, v5, :cond_84

    .line 168
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-static {v2}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->access$200(Lcom/broadcom/bt/service/dun/BluetoothDUNService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-static {v2}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->access$300(Lcom/broadcom/bt/service/dun/BluetoothDUNService;)B

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_84

    .line 172
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-static {v2, v5}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->access$402(Lcom/broadcom/bt/service/dun/BluetoothDUNService;Z)Z

    .line 174
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    iget-object v3, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-static {v3}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->access$300(Lcom/broadcom/bt/service/dun/BluetoothDUNService;)B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->close(B)V

    .line 180
    .end local v1       #radioTech:I,
    :cond_84
    :goto_84
    return-void

    .line 159
    .restart local v1       #radioTech:I,
    :pswitch_85
    const-string v2, "BluetoothDUNService"

    const-string v2, "[BTUI] DUN is available..."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v2, p0, Lcom/broadcom/bt/service/dun/BluetoothDUNService$1;->this$0:Lcom/broadcom/bt/service/dun/BluetoothDUNService;

    invoke-static {v2, v5}, Lcom/broadcom/bt/service/dun/BluetoothDUNService;->access$002(Lcom/broadcom/bt/service/dun/BluetoothDUNService;Z)Z

    goto :goto_84

    .line 153
    :pswitch_data_92
    .packed-switch 0x6
        :pswitch_85
        :pswitch_85
        :pswitch_85
        :pswitch_50
        :pswitch_50
        :pswitch_50
        :pswitch_85
    .end packed-switch
.end method
