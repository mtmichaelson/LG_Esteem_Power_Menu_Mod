.class Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;
.super Ljava/lang/Thread;
.source "BluetoothSPP.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/android/bluetooth/BluetoothSPP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadDataThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;



# direct methods
.method private constructor <init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V
    .registers 2
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;Lcom/broadcom/android/bluetooth/BluetoothSPP$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;-><init>(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const-string v3, "BluetoothSPP"

    .line 346
    :goto_2
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$100(Lcom/broadcom/android/bluetooth/BluetoothSPP;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_60

    .line 347
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v0}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$200(Lcom/broadcom/android/bluetooth/BluetoothSPP;)V

    .line 348
    const-string v0, "BluetoothSPP"

    const-string v0, "Data Arrived in SPP"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$400(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->read_port(B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$302(Lcom/broadcom/android/bluetooth/BluetoothSPP;[B)[B

    .line 350
    const-string v0, "BluetoothSPP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$300(Lcom/broadcom/android/bluetooth/BluetoothSPP;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$300(Lcom/broadcom/android/bluetooth/BluetoothSPP;)[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$300(Lcom/broadcom/android/bluetooth/BluetoothSPP;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->write(I[B)I

    goto :goto_2

    .line 353
    :cond_60
    const-string v0, "BluetoothSPP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read Thread For Port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/broadcom/android/bluetooth/BluetoothSPP$ReadDataThread;->this$0:Lcom/broadcom/android/bluetooth/BluetoothSPP;

    invoke-static {v1}, Lcom/broadcom/android/bluetooth/BluetoothSPP;->access$500(Lcom/broadcom/android/bluetooth/BluetoothSPP;)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Exiting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-void
.end method
