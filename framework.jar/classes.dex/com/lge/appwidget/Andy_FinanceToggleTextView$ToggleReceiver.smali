.class Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Andy_FinanceToggleTextView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_FinanceToggleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleReceiver"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_FinanceToggleTextView;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "action"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;->mAction:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 195
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;->mAction:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->access$500(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;

    move-result-object v3

    if-nez v3, :cond_15

    .line 210
    .end local p0       
    :cond_14
    :goto_14
    return-void

    .line 199
    .restart local p0       
    :cond_15
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->access$500(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleHandler;->getPosition()I

    move-result v1

    .line 200
    .local v1, position:I
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FinanceToggleTextView$ToggleReceiver;->this$0:Lcom/lge/appwidget/Andy_FinanceToggleTextView;

    invoke-static {v3}, Lcom/lge/appwidget/Andy_FinanceToggleTextView;->access$600(Lcom/lge/appwidget/Andy_FinanceToggleTextView;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 201
    .local v2, toggleIntents:[Landroid/os/Parcelable;
    if-eqz v2, :cond_14

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 202
    aget-object v3, v2, v1

    instance-of v3, v3, Landroid/app/PendingIntent;

    if-eqz v3, :cond_14

    .line 204
    :try_start_30
    aget-object p0, v2, v1

    .end local p0       
    check-cast p0, Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_14

    .line 205
    :catch_38
    move-exception v3

    move-object v0, v3

    .line 206
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Andy_FinanceToggleTextView"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method
