.class Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;
.super Lcom/android/internal/util/HierarchicalState;
.source "DataConnection.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcDisconnectingBadDnsState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;



# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 867
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 867
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method protected processMessage(Landroid/os/Message;)Z
    .registers 8
    .parameter "msg"

    .prologue
    .line 871
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_7a

    .line 889
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcDisconnectingBadDnsState not handled msg.what="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 890
    const/4 v2, 0x0

    .line 893
    .local v2, retVal:Z
    :goto_20
    return v2

    .line 873
    .end local v2       #retVal:Z,
    :pswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 874
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 875
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget v3, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-ne v3, v4, :cond_50

    .line 876
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v4, "DcDisconnectingBadDnsState msg.what=EVENT_DEACTIVATE_DONE"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 879
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnectionFailCause;)V

    .line 880
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/DataConnection;->access$2300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    .line 885
    :goto_4e
    const/4 v2, 0x1

    .line 886
    .restart local v2       #retVal:Z,
    goto :goto_20

    .line 882
    .end local v2       #retVal:Z,
    :cond_50
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DcDisconnectingBadDnsState EVENT_DEACTIVE_DONE stale dp.tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v5, v5, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_4e

    .line 871
    nop

    :pswitch_data_7a
    .packed-switch 0x5
        :pswitch_21
    .end packed-switch
.end method
