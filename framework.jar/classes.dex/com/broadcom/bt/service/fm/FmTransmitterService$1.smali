.class Lcom/broadcom/bt/service/fm/FmTransmitterService$1;
.super Landroid/os/Handler;
.source "FmTransmitterService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;



# direct methods
.method constructor <init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V
    .registers 2
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 678
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_96

    .line 722
    const-string v1, "FmTransmitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling UNKNOWN CALLBACK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :goto_1f
    return-void

    .line 681
    :sswitch_20
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$000(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V

    .line 683
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$100(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V

    .line 684
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-static {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$200(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V

    goto :goto_1f

    .line 688
    :sswitch_34
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$300(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V

    goto :goto_1f

    .line 692
    :sswitch_3c
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$400(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V

    goto :goto_1f

    .line 697
    :sswitch_44
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-static {v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$500(Lcom/broadcom/bt/service/fm/FmTransmitterService;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$600(Lcom/broadcom/bt/service/fm/FmTransmitterService;IZ)V

    goto :goto_1f

    .line 701
    :sswitch_52
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$700(Lcom/broadcom/bt/service/fm/FmTransmitterService;II)V

    goto :goto_1f

    .line 705
    :sswitch_5c
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$800(Lcom/broadcom/bt/service/fm/FmTransmitterService;II)V

    goto :goto_1f

    .line 710
    :sswitch_66
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;

    .line 711
    .local v0, par:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->access$900(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;)I

    move-result v2

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->access$1000(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;)I

    move-result v3

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;->access$1100(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$1200(Lcom/broadcom/bt/service/fm/FmTransmitterService;III)V

    goto :goto_1f

    .line 716
    .end local v0       #par:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;,
    :sswitch_7c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;

    .line 717
    .local v0, par:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;->this$0:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->access$1300(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)I

    move-result v2

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->access$1400(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)I

    move-result v3

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->access$1500(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)[I

    move-result-object v4

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;->access$1600(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;)[I

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->access$1700(Lcom/broadcom/bt/service/fm/FmTransmitterService;II[I[I)V

    goto :goto_1f

    .line 678
    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_20
        0x4 -> :sswitch_44
        0x1e -> :sswitch_34
        0x1f -> :sswitch_3c
        0x20 -> :sswitch_52
        0x21 -> :sswitch_5c
        0x24 -> :sswitch_66
        0x25 -> :sswitch_7c
    .end sparse-switch
.end method
