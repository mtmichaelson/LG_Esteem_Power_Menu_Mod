.class Landroid/server/BluetoothService$EnableThread;
.super Ljava/lang/Thread;
.source "BluetoothService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnableThread"
.end annotation


# instance fields
.field private final mSaveSetting:Z

.field final synthetic this$0:Landroid/server/BluetoothService;



# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;Z)V
    .registers 3
    .parameter
    .parameter "saveSetting"

    .prologue
    .line 909
    iput-object p1, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 910
    iput-boolean p2, p0, Landroid/server/BluetoothService$EnableThread;->mSaveSetting:Z

    .line 911
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 913
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1000(Landroid/server/BluetoothService;)I

    move-result v9

    if-nez v9, :cond_35

    const/4 v9, 0x1

    move v5, v9

    .line 914
    .local v5, res:Z
    :goto_a
    if-eqz v5, :cond_51

    .line 915
    const/4 v6, 0x2

    .line 916
    .local v6, retryCount:I
    const/4 v8, 0x0

    .local v8, running:Z
    move v7, v6

    .line 917
    .end local v6       #retryCount:I,
    .local v7, retryCount:I
    :goto_f
    add-int/lit8 v6, v7, -0x1

    .end local v7       #retryCount:I,
    .restart local v6       #retryCount:I,
    if-lez v7, :cond_42

    if-nez v8, :cond_42

    .line 918
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothEventLoop;->start()V

    .line 921
    const/4 v2, 0x5

    .local v2, pollCount:I
    move v3, v2

    .line 922
    .end local v2       #pollCount:I,
    .local v3, pollCount:I
    :goto_20
    add-int/lit8 v2, v3, -0x1

    .end local v3       #pollCount:I,
    .restart local v2       #pollCount:I,
    if-lez v3, :cond_33

    if-nez v8, :cond_33

    .line 923
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v9

    if-eqz v9, :cond_38

    .line 924
    const/4 v8, 0x1

    :cond_33
    move v7, v6

    .line 931
    .end local v6       #retryCount:I,
    .restart local v7       #retryCount:I,
    goto :goto_f

    .line 913
    .end local v2       #pollCount:I,
    .end local v5       #res:Z,
    .end local v7       #retryCount:I,
    .end local v8       #running:Z,
    :cond_35
    const/4 v9, 0x0

    move v5, v9

    goto :goto_a

    .line 928
    .restart local v2       #pollCount:I,
    .restart local v5       #res:Z,
    .restart local v6       #retryCount:I,
    .restart local v8       #running:Z,
    :cond_38
    const-wide/16 v9, 0x64

    :try_start_3a
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_3f

    move v3, v2

    .line 929
    .end local v2       #pollCount:I,
    .restart local v3       #pollCount:I,
    goto :goto_20

    .end local v3       #pollCount:I,
    .restart local v2       #pollCount:I,
    :catch_3f
    move-exception v9

    move v3, v2

    .end local v2       #pollCount:I,
    .restart local v3       #pollCount:I,
    goto :goto_20

    .line 932
    .end local v3       #pollCount:I,
    :cond_42
    if-nez v8, :cond_51

    .line 933
    const-string v9, "BluetoothService"

    const-string v10, "BT EnableThread giving up"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v5, 0x0

    .line 935
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1200(Landroid/server/BluetoothService;)I

    .line 940
    .end local v6       #retryCount:I,
    .end local v8       #running:Z,
    :cond_51
    if-eqz v5, :cond_ab

    .line 941
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1300(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_5c

    .line 986
    :cond_5b
    :goto_5b
    return-void

    .line 944
    :cond_5c
    iget-boolean v9, p0, Landroid/server/BluetoothService$EnableThread;->mSaveSetting:Z

    if-eqz v9, :cond_66

    .line 945
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$1400(Landroid/server/BluetoothService;Z)V

    .line 947
    :cond_66
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$1502(Landroid/server/BluetoothService;Z)Z

    .line 948
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothService$BondState;->readAutoPairingData()V

    .line 949
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1600(Landroid/server/BluetoothService;)Landroid/server/BluetoothService$BondState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/server/BluetoothService$BondState;->loadBondState()V

    .line 950
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1700(Landroid/server/BluetoothService;)V

    .line 951
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v10}, Landroid/server/BluetoothService;->access$100(Landroid/server/BluetoothService;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v11, 0xbb8

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 955
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 957
    .local v0, ident:J
    :try_start_9f
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1800(Landroid/server/BluetoothService;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/app/IBatteryStats;->noteBluetoothOn()V
    :try_end_a8
    .catchall {:try_start_9f .. :try_end_a8} :catchall_fb
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a8} :catch_103

    .line 960
    :goto_a8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 964
    .end local v0       #ident:J,
    :cond_ab
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$1902(Landroid/server/BluetoothService;Landroid/server/BluetoothService$EnableThread;)Landroid/server/BluetoothService$EnableThread;

    .line 966
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    if-eqz v5, :cond_100

    const/16 v10, 0xc

    :goto_b7
    invoke-static {v9, v10}, Landroid/server/BluetoothService;->access$2000(Landroid/server/BluetoothService;I)V

    .line 970
    if-eqz v5, :cond_db

    .line 976
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/16 v10, 0x15

    const/4 v11, -0x1

    invoke-static {v9, v10, v11}, Landroid/server/BluetoothService;->access$2100(Landroid/server/BluetoothService;II)Z

    .line 977
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "Pairable"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "true"

    aput-object v10, v4, v9

    .line 979
    .local v4, propVal:[Ljava/lang/String;
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$1100(Landroid/server/BluetoothService;)Landroid/server/BluetoothEventLoop;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/server/BluetoothEventLoop;->onPropertyChanged([Ljava/lang/String;)V

    .line 982
    .end local v4       #propVal:[Ljava/lang/String;,
    :cond_db
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$2200(Landroid/server/BluetoothService;)Z

    move-result v9

    if-eqz v9, :cond_5b

    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$2300(Landroid/server/BluetoothService;)Z

    move-result v9

    if-eqz v9, :cond_5b

    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    invoke-static {v9}, Landroid/server/BluetoothService;->access$2400(Landroid/server/BluetoothService;)Z

    move-result v9

    if-nez v9, :cond_5b

    .line 983
    iget-object v9, p0, Landroid/server/BluetoothService$EnableThread;->this$0:Landroid/server/BluetoothService;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/server/BluetoothService;->disable(Z)Z

    goto/16 :goto_5b

    .line 960
    .restart local v0       #ident:J,
    :catchall_fb
    move-exception v9

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 966
    .end local v0       #ident:J,
    :cond_100
    const/16 v10, 0xa

    goto :goto_b7

    .line 958
    .restart local v0       #ident:J,
    :catch_103
    move-exception v9

    goto :goto_a8
.end method
