.class Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseProvider.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/provider/BaseProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;



# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;Lcom/broadcom/bt/service/map/provider/BaseProvider$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "MAP.BaseProvider"

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 100
    const-string v2, "MAP.BaseProvider"

    const-string v2, "Got DS Discover intent"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    invoke-virtual {v2, p2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onDSDiscoverEvent(Landroid/content/Intent;)V

    .line 119
    :goto_1a
    return-void

    .line 102
    :cond_1b
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 104
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 106
    .local v1, state:I
    packed-switch v1, :pswitch_data_54

    goto :goto_1a

    .line 108
    :pswitch_2f
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    invoke-static {v2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->access$000(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    goto :goto_1a

    .line 111
    :pswitch_35
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/map/provider/BaseProvider;

    invoke-static {v2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->access$100(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    goto :goto_1a

    .line 117
    .end local v1       #state:I,
    :cond_3b
    const-string v2, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider received unhandled event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 106
    :pswitch_data_54
    .packed-switch 0xc
        :pswitch_2f
        :pswitch_35
    .end packed-switch
.end method
