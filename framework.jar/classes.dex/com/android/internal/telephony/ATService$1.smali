.class Lcom/android/internal/telephony/ATService$1;
.super Lcom/android/internal/telephony/ICallback$Stub;
.source "ATService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ATService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ATService;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ATService;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/ATService$1;->this$0:Lcom/android/internal/telephony/ATService;

    invoke-direct {p0}, Lcom/android/internal/telephony/ICallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse()V
    .registers 5

    .prologue
    const-string v3, "ATService"

    .line 140
    const-string v0, "ATService"

    const-string v0, "handleResponse "

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/ATService$1;->this$0:Lcom/android/internal/telephony/ATService;

    iget-object v0, v0, Lcom/android/internal/telephony/ATService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ATService$1;->this$0:Lcom/android/internal/telephony/ATService;

    iget-object v1, v1, Lcom/android/internal/telephony/ATService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    const-string v0, "ATService"

    const-string v0, "handleResponse end"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void
.end method
