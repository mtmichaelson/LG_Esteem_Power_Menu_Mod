.class Lcom/lge/appwidget/Andy_CarousalView$2;
.super Ljava/lang/Object;
.source "Andy_CarousalView.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_CarousalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_CarousalView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_CarousalView;)V
    .registers 2
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CarousalView$2;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView$2;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_CarousalView;->access$000(Lcom/lge/appwidget/Andy_CarousalView;)V

    .line 221
    return-void
.end method
