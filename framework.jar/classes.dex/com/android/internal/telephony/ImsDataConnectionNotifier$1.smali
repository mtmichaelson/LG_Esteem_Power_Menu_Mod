.class Lcom/android/internal/telephony/ImsDataConnectionNotifier$1;
.super Landroid/telephony/PhoneStateListener;
.source "ImsDataConnectionNotifier.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ImsDataConnectionNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)V
    .registers 2
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$1;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .registers 7
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/4 v3, 0x0

    const-string v1, "ImsDataConnectionNotifier"

    .line 315
    packed-switch p2, :pswitch_data_58

    .line 334
    const-string v0, "ImsDataConnectionNotifier"

    const-string v0, "RAT is NOT Available"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$1;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$900(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 340
    :goto_20
    return-void

    .line 324
    :pswitch_21
    const-string v0, "ImsDataConnectionNotifier"

    const-string v0, "RAT Changed to ----- EHRPD -----"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$1;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$900(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_20

    .line 329
    :pswitch_3c
    const-string v0, "ImsDataConnectionNotifier"

    const-string v0, "RAT Changed to ----- LTE -----"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier$1;->this$0:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-static {v0}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->access$900(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)Landroid/os/RegistrantList;

    move-result-object v0

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_20

    .line 315
    nop

    :pswitch_data_58
    .packed-switch 0xd
        :pswitch_3c
        :pswitch_21
    .end packed-switch
.end method
