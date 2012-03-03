.class Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$4;
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
    .line 648
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$4;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 651
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$4;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$1000(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 652
    return-void
.end method
