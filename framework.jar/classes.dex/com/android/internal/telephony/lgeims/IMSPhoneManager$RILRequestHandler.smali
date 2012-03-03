.class Lcom/android/internal/telephony/lgeims/IMSPhoneManager$RILRequestHandler;
.super Landroid/os/Handler;
.source "IMSPhoneManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/lgeims/IMSPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RILRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;



# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;)V
    .registers 2
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$RILRequestHandler;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;Lcom/android/internal/telephony/lgeims/IMSPhoneManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$RILRequestHandler;-><init>(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x4

    .line 665
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    move-object v0, v3

    check-cast v0, Landroid/os/AsyncResult;

    move-object v1, v0

    .line 667
    .local v1, ar:Landroid/os/AsyncResult;
    if-nez v1, :cond_11

    .line 669
    const-string v3, "ar == null"

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    .line 699
    :cond_10
    :goto_10
    return-void

    .line 673
    :cond_11
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v3, :cond_2e

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ar.result == null: event =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    goto :goto_10

    .line 679
    :cond_2e
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_74

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unidentified event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    goto :goto_10

    .line 683
    :pswitch_4c
    iget-object v3, p0, Lcom/android/internal/telephony/lgeims/IMSPhoneManager$RILRequestHandler;->this$0:Lcom/android/internal/telephony/lgeims/IMSPhoneManager;

    invoke-static {v3}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$300(Lcom/android/internal/telephony/lgeims/IMSPhoneManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 685
    .local v2, call:Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_10

    .line 688
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHONE_STATE_CHANGED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeims/IMSPhoneManager;->access$200(ILjava/lang/String;)V

    goto :goto_10

    .line 679
    :pswitch_data_74
    .packed-switch 0x65
        :pswitch_4c
    .end packed-switch
.end method
