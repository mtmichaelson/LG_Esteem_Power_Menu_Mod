.class Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;
.super Landroid/telephony/PhoneStateListener;
.source "IMSPhoneManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;)V
    .registers 2
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 7
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v3, 0x1

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "incomingNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->isCSCallServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 599
    const/4 v0, 0x0

    .line 601
    .local v0, imsState:I
    if-ne p1, v3, :cond_35

    .line 603
    const/4 v0, 0x1

    .line 615
    :goto_2e
    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnEventReceived(III)I

    .line 620
    .end local v0       #imsState:I,
    :cond_34
    return-void

    .line 605
    .restart local v0       #imsState:I,
    :cond_35
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3a

    .line 607
    const/4 v0, 0x2

    goto :goto_2e

    .line 611
    :cond_3a
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public onDataActivity(I)V
    .registers 5
    .parameter "direction"

    .prologue
    .line 649
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataActivity direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 651
    invoke-static {}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getDataState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 653
    invoke-static {p1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnDataActivity(I)V

    .line 655
    :cond_22
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .registers 5
    .parameter "state"

    .prologue
    .line 633
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataConnectionStateChanged state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 637
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 7
    .parameter "state"

    .prologue
    const/4 v4, 0x1

    .line 572
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 573
    .local v1, srvState:I
    iget-object v2, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->getNetServiceState()I

    move-result v0

    .line 575
    .local v0, srvOldState:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS onServiceStateChanged state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Old state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 577
    if-ne v1, v0, :cond_33

    .line 578
    const-string v2, "IMS Service state is same"

    invoke-static {v4, v2}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 584
    :goto_32
    return-void

    .line 581
    :cond_33
    iget-object v2, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->setNetServiceState(I)V

    .line 582
    invoke-static {v1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->nativeOnServiceStateChanged(I)V

    goto :goto_32
.end method
