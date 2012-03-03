.class Lcom/broadcom/bt/service/ftp/BluetoothFTPService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFTPService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/BluetoothFTPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;



# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/ftp/BluetoothFTPService;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$2;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "broadcom.android.bluetooth.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 148
    :cond_2c
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$2;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-static {v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTPService;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 150
    :try_start_34
    iget-object v2, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTPService$2;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTPService;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/ftp/BluetoothFTPService;->closeFtpServer()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_3a

    .line 156
    :cond_39
    :goto_39
    return-void

    .line 151
    :catch_3a
    move-exception v2

    move-object v1, v2

    .line 152
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method
