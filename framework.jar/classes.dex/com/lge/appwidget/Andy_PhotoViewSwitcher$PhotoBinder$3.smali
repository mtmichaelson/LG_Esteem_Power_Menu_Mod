.class Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;
.super Ljava/lang/Object;
.source "Andy_PhotoViewSwitcher.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 632
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 633
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.photoviewswitcer.action.SWITCH_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const-string/jumbo v1, "widgetId"

    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v2, v2, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$1100(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    const-string/jumbo v1, "widgetSize"

    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v2, v2, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$1200(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 637
    const-string v1, "bucketId"

    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v2, v2, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$1300(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    const-string/jumbo v1, "photo_index"

    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v2, v2, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$1400(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 640
    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v1}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$600(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 642
    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v1}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$1000(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v2}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$500(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 643
    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v1}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$1500(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 644
    return-void
.end method
