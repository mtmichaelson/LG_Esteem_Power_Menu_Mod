.class public Lcom/android/internal/nfc/LlcpServiceSocket;
.super Ljava/lang/Object;
.source "LlcpServiceSocket.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "LlcpServiceSocket"



# instance fields
.field protected mHandle:I

.field private final mLlcpSocketService:Landroid/nfc/ILlcpSocket;

.field protected mService:Landroid/nfc/ILlcpServiceSocket;



# direct methods
.method public constructor <init>(Landroid/nfc/ILlcpServiceSocket;Landroid/nfc/ILlcpSocket;I)V
    .registers 4
    .parameter "service"
    .parameter "socketService"
    .parameter "handle"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/internal/nfc/LlcpServiceSocket;->mService:Landroid/nfc/ILlcpServiceSocket;

    .line 85
    iput p3, p0, Lcom/android/internal/nfc/LlcpServiceSocket;->mHandle:I

    .line 86
    iput-object p2, p0, Lcom/android/internal/nfc/LlcpServiceSocket;->mLlcpSocketService:Landroid/nfc/ILlcpSocket;

    .line 87
    return-void
.end method

.method static convertErrorToLlcpException(I)Lcom/android/internal/nfc/LlcpException;
    .registers 2
    .parameter "errorCode"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/nfc/LlcpServiceSocket;->convertErrorToLlcpException(ILjava/lang/String;)Lcom/android/internal/nfc/LlcpException;

    move-result-object v0

    return-object v0
.end method

.method static convertErrorToLlcpException(ILjava/lang/String;)Lcom/android/internal/nfc/LlcpException;
    .registers 5
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 54
    if-nez p1, :cond_24

    .line 55
    const-string p1, ""

    .line 60
    :goto_4
    packed-switch p0, :pswitch_data_70

    .line 68
    new-instance v0, Lcom/android/internal/nfc/LlcpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unkown error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/nfc/LlcpException;-><init>(Ljava/lang/String;)V

    :goto_23
    return-object v0

    .line 57
    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 62
    :pswitch_3e
    new-instance v0, Lcom/android/internal/nfc/LlcpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during the creation of an Llcp socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/nfc/LlcpException;-><init>(Ljava/lang/String;)V

    goto :goto_23

    .line 65
    :pswitch_57
    new-instance v0, Lcom/android/internal/nfc/LlcpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough ressources are available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/nfc/LlcpException;-><init>(Ljava/lang/String;)V

    goto :goto_23

    .line 60
    :pswitch_data_70
    .packed-switch -0xa
        :pswitch_3e
        :pswitch_57
    .end packed-switch
.end method


# virtual methods
.method public accept()Lcom/android/internal/nfc/LlcpSocket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/internal/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/nfc/LlcpServiceSocket;->mService:Landroid/nfc/ILlcpServiceSocket;

    iget v3, p0, Lcom/android/internal/nfc/LlcpServiceSocket;->mHandle:I

    invoke-interface {v2, v3}, Landroid/nfc/ILlcpServiceSocket;->accept(I)I

    move-result v1

    .line 107
    .local v1, handle:I
    invoke-static {v1}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 108
    const/4 v2, -0x1

    if-ne v1, v2, :cond_22

    .line 109
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    .line 117
    .end local v1       #handle:I,
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 118
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "LlcpServiceSocket"

    const-string v3, "RemoteException in accept(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    const/4 v2, 0x0

    .end local v0       #e:Landroid/os/RemoteException;,
    :goto_21
    return-object v2

    .line 111
    .restart local v1       #handle:I,
    :cond_22
    :try_start_22
    invoke-static {v1}, Lcom/android/internal/nfc/LlcpServiceSocket;->convertErrorToLlcpException(I)Lcom/android/internal/nfc/LlcpException;

    move-result-object v2

    throw v2

    .line 116
    :cond_27
    new-instance v2, Lcom/android/internal/nfc/LlcpSocket;

    iget-object v3, p0, Lcom/android/internal/nfc/LlcpServiceSocket;->mLlcpSocketService:Landroid/nfc/ILlcpSocket;

    invoke-direct {v2, v3, v1}, Lcom/android/internal/nfc/LlcpSocket;-><init>(Landroid/nfc/ILlcpSocket;I)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2e} :catch_17

    goto :goto_21
.end method

.method public close()V
    .registers 4

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/nfc/LlcpServiceSocket;->mService:Landroid/nfc/ILlcpServiceSocket;

    iget v2, p0, Lcom/android/internal/nfc/LlcpServiceSocket;->mHandle:I

    invoke-interface {v1, v2}, Landroid/nfc/ILlcpServiceSocket;->close(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 133
    :goto_7
    return-void

    .line 130
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LlcpServiceSocket"

    const-string v2, "RemoteException in close(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method
