.class Lcom/android/internal/telephony/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCardApplication;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "m"
    .parameter "e"

    .prologue
    .line 874
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 875
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 876
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x1e

    const-string v9, "Error in change icc app password with exception"

    .line 889
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_360

    .line 1060
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IccCard] Unknown Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :goto_29
    return-void

    .line 894
    :sswitch_2a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 896
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4f

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_4f

    .line 897
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v7, :cond_49

    .line 898
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3, v0, v7}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 905
    :goto_3f
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_29

    .line 900
    :cond_49
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3, v0, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    goto :goto_3f

    .line 908
    :cond_4f
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 909
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_29

    .line 915
    .end local v0       #ar:Landroid/os/AsyncResult;,
    :sswitch_6b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 916
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto :goto_29

    .line 919
    .end local v0       #ar:Landroid/os/AsyncResult;,
    :sswitch_75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 920
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_a6

    .line 921
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-boolean v3, v3, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v3, :cond_8a

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const-string v4, "EVENT_CHANGE_FACILITY_LOCK_DONE "

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$300(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 925
    :cond_8a
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 926
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_29

    .line 931
    :cond_a6
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_af

    .line 932
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3, v0, v7}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 934
    :cond_af
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error change facility sim lock with exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 940
    .end local v0       #ar:Landroid/os/AsyncResult;,
    :sswitch_d8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 942
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_139

    .line 943
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-boolean v3, v3, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v3, :cond_ed

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const-string v4, "EVENT_CHANGE_FACILITY_FDN_DONE "

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$300(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 947
    :cond_ed
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$600(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$502(Lcom/android/internal/telephony/UiccCardApplication;Z)Z

    .line 948
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-boolean v3, v3, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v3, :cond_11c

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_CHANGE_FACILITY_FDN_DONE: Enabled= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$300(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 952
    :cond_11c
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 953
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_29

    .line 959
    :cond_139
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_142

    .line 960
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3, v0, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 962
    :cond_142
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error change facility fdn with exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 968
    .end local v0       #ar:Landroid/os/AsyncResult;,
    :sswitch_16b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 969
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1a5

    .line 970
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in change icc app password with exception"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_19a

    .line 973
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3, v0, v7}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 978
    :cond_19a
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 981
    :cond_1a5
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 982
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_29

    .line 988
    .end local v0       #ar:Landroid/os/AsyncResult;,
    :sswitch_1c2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 989
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1fc

    .line 990
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in change icc app password with exception"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1f1

    .line 993
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3, v0, v8}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V

    .line 998
    :cond_1f1
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1001
    :cond_1fc
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1002
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_29

    .line 1012
    .end local v0       #ar:Landroid/os/AsyncResult;,
    :sswitch_219
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1013
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_283

    .line 1014
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/UiccCardStatusResponse;

    .line 1016
    .local v2, status:Lcom/android/internal/telephony/UiccCardStatusResponse;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_226
    iget-object v3, v2, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v3, v3

    if-ge v1, v3, :cond_283

    .line 1017
    iget-object v3, v2, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_280

    .line 1018
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Get Icc Status Done : Find Aid"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v4, v2, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_pin1:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$802(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 1020
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v4, v2, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_puk1:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$902(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 1021
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v4, v2, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_pin2:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$1002(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 1022
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v4, v2, Lcom/android/internal/telephony/UiccCardStatusResponse;->card:Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;

    iget-object v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_puk2:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$1102(Lcom/android/internal/telephony/UiccCardApplication;I)I

    .line 1016
    :cond_280
    add-int/lit8 v1, v1, 0x1

    goto :goto_226

    .line 1026
    .end local v1       #i:I,
    .end local v2       #status:Lcom/android/internal/telephony/UiccCardStatusResponse;,
    :cond_283
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1032
    .end local v0       #ar:Landroid/os/AsyncResult;,
    :sswitch_28e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1033
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2c1

    .line 1034
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/IccPhonebookInfo;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$1202(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccPhonebookInfo;)Lcom/android/internal/telephony/IccPhonebookInfo;

    .line 1035
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_INFO_PHONEBOOK_DONE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1200(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/IccPhonebookInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccPhonebookInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$300(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 1037
    :cond_2c1
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1200(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/IccPhonebookInfo;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v3, v5, v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$1300(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1041
    .end local v0       #ar:Landroid/os/AsyncResult;,
    :sswitch_2d4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1042
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_307

    .line 1043
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/IccPhonebookResult;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$1402(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccPhonebookResult;)Lcom/android/internal/telephony/IccPhonebookResult;

    .line 1044
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_WRITE_PHONEBOOK_DONE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1400(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/IccPhonebookResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccPhonebookResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$300(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 1046
    :cond_307
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1400(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/IccPhonebookResult;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v3, v5, v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$1300(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1050
    .end local v0       #ar:Landroid/os/AsyncResult;,
    :sswitch_31a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1051
    .restart local v0       #ar:Landroid/os/AsyncResult;,
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_34d

    .line 1052
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/IccPhonebook;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$1502(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccPhonebook;)Lcom/android/internal/telephony/IccPhonebook;

    .line 1053
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_READ_PHONEBOOK_DONE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1500(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/IccPhonebook;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccPhonebook;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$300(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 1055
    :cond_34d
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v5}, Lcom/android/internal/telephony/UiccCardApplication;->access$1500(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/IccPhonebook;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v3, v5, v6}, Lcom/android/internal/telephony/UiccCardApplication;->access$1300(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 889
    :sswitch_data_360
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_75
        0x3 -> :sswitch_16b
        0x4 -> :sswitch_1c2
        0x5 -> :sswitch_6b
        0x6 -> :sswitch_d8
        0x7 -> :sswitch_2a
        0xa -> :sswitch_31a
        0xb -> :sswitch_2d4
        0xc -> :sswitch_28e
        0x1e -> :sswitch_219
    .end sparse-switch
.end method
