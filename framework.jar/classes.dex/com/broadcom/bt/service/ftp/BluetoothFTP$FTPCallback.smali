.class Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;
.super Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;
.source "BluetoothFTP.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/ftp/BluetoothFTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FTPCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;



# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)V
    .registers 2
    .parameter

    .prologue
    .line 895
    iput-object p1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-direct {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTPCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V
    .registers 12
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "remoteDeviceName"
    .parameter "opCode"
    .parameter "remoteAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 900
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 901
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_10

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 902
    invoke-interface/range {v0 .. v5}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerAccessRequested(Ljava/lang/String;ILjava/lang/String;BLjava/lang/String;)V

    .line 906
    :cond_10
    return-void
.end method

.method public onFtpServerAuthen(Ljava/lang/String;BZ)V
    .registers 4
    .parameter "userId"
    .parameter "useridLength"
    .parameter "useridRequired"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 915
    return-void
.end method

.method public onFtpServerClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 918
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 919
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_b

    .line 920
    invoke-interface {v0}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerClosed()V

    .line 922
    :cond_b
    return-void
.end method

.method public onFtpServerDelCompleted(Ljava/lang/String;B)V
    .registers 5
    .parameter "fileName"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 926
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 927
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_b

    .line 928
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerDelCompleted(Ljava/lang/String;B)V

    .line 931
    :cond_b
    return-void
.end method

.method public onFtpServerEnabled()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 934
    return-void
.end method

.method public onFtpServerFileTransferInProgress(II)V
    .registers 5
    .parameter "fileSize"
    .parameter "numOfByteSinceLastReported"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 938
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 939
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_b

    .line 940
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerFileTransferInProgress(II)V

    .line 943
    :cond_b
    return-void
.end method

.method public onFtpServerGetCompleted(Ljava/lang/String;B)V
    .registers 5
    .parameter "fileName"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 947
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 948
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_b

    .line 949
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerGetCompleted(Ljava/lang/String;B)V

    .line 951
    :cond_b
    return-void
.end method

.method public onFtpServerOpened(Ljava/lang/String;)V
    .registers 4
    .parameter "remoteAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 954
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 955
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_b

    .line 956
    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerOpened(Ljava/lang/String;)V

    .line 958
    :cond_b
    return-void
.end method

.method public onFtpServerPutCompleted(Ljava/lang/String;B)V
    .registers 5
    .parameter "fileName"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 962
    iget-object v1, p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP$FTPCallback;->this$0:Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    invoke-static {v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;->access$100(Lcom/broadcom/bt/service/ftp/BluetoothFTP;)Lcom/broadcom/bt/service/ftp/IFTPEventHandler;

    move-result-object v0

    .line 963
    .local v0, handler:Lcom/broadcom/bt/service/ftp/IFTPEventHandler;
    if-eqz v0, :cond_b

    .line 964
    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/ftp/IFTPEventHandler;->onFtpServerPutCompleted(Ljava/lang/String;B)V

    .line 966
    :cond_b
    return-void
.end method
