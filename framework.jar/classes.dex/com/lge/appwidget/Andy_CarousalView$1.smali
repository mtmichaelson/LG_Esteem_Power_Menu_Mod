.class Lcom/lge/appwidget/Andy_CarousalView$1;
.super Landroid/database/ContentObserver;
.source "Andy_CarousalView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_CarousalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_CarousalView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_CarousalView;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CarousalView$1;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 135
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView$1;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_CarousalView;->populateCarousalView(Z)V

    .line 137
    return-void
.end method
