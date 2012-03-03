.class Lcom/lge/appwidget/Andy_MessageViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "Andy_MessageViewFlipper.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_MessageViewFlipper;->registerReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_MessageViewFlipper;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v7, -0x8000

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, action:Ljava/lang/String;
    const-string v6, "MessageBitmapWidgetId"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, broadcastWidgetId:I
    if-eq v1, v7, :cond_1a

    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    iget v6, v6, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mAppWidgetId:I

    if-eq v6, v7, :cond_1a

    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    iget v6, v6, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mAppWidgetId:I

    if-eq v1, v6, :cond_1b

    .line 205
    :cond_1a
    :goto_1a
    return-void

    .line 153
    :cond_1b
    const-string v6, "android.message.bitmap.action.INIT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 155
    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->access$100(Lcom/lge/appwidget/Andy_MessageViewFlipper;)Ljava/util/HashMap;

    move-result-object v6

    if-nez v6, :cond_36

    .line 157
    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v7}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->access$102(Lcom/lge/appwidget/Andy_MessageViewFlipper;Ljava/util/HashMap;)Ljava/util/HashMap;

    goto :goto_1a

    .line 161
    :cond_36
    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->access$100(Lcom/lge/appwidget/Andy_MessageViewFlipper;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    goto :goto_1a

    .line 167
    :cond_40
    const-string v6, "android.message.bitmap.action.SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 171
    const-string v6, "MessageBitmapBundle"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 173
    .local v2, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_1a

    .line 178
    const-string v6, "MessageBitmapParcelable"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 180
    .local v3, bundlePacelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_MessageBitmapParcelable;>;"
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 186
    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->access$100(Lcom/lge/appwidget/Andy_MessageViewFlipper;)Ljava/util/HashMap;

    move-result-object v6

    if-nez v6, :cond_70

    .line 188
    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6, v7}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->access$102(Lcom/lge/appwidget/Andy_MessageViewFlipper;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 191
    :cond_70
    const/4 v4, 0x0

    .local v4, i:I
    :goto_71
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1a

    .line 193
    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->access$100(Lcom/lge/appwidget/Andy_MessageViewFlipper;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;

    iget-object v8, v6, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;

    iget-object v6, v6, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 199
    .end local v2       #bundle:Landroid/os/Bundle;,
    .end local v3       #bundlePacelable:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_MessageBitmapParcelable;>;"
    .end local v4       #i:I,
    :cond_93
    const-string v6, "android.message.bitmap.action.SET_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 201
    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    invoke-virtual {v6}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v5

    .line 202
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    iget-object v7, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;->this$0:Lcom/lge/appwidget/Andy_MessageViewFlipper;

    invoke-static {v7}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->access$200(Lcom/lge/appwidget/Andy_MessageViewFlipper;)I

    move-result v7

    invoke-static {v6, v5, v7}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->access$300(Lcom/lge/appwidget/Andy_MessageViewFlipper;Landroid/view/View;I)V

    goto/16 :goto_1a
.end method
