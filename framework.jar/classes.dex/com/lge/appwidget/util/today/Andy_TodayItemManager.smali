.class public Lcom/lge/appwidget/util/today/Andy_TodayItemManager;
.super Ljava/lang/Object;
.source "Andy_TodayItemManager.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "com.lge.appwidget.util.today.Andy_TodayItemManager"



# instance fields
.field private _context:Landroid/content/Context;

.field private _items:Lcom/lge/appwidget/util/today/Andy_TodayItems;

.field private _today_views:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_context:Landroid/content/Context;

    .line 27
    invoke-direct {p0, p1}, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->initTodayViews(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private initTodayViews(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_items:Lcom/lge/appwidget/util/today/Andy_TodayItems;

    if-nez v0, :cond_b

    .line 57
    new-instance v0, Lcom/lge/appwidget/util/today/Andy_TodayItems;

    invoke-direct {v0, p1}, Lcom/lge/appwidget/util/today/Andy_TodayItems;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_items:Lcom/lge/appwidget/util/today/Andy_TodayItems;

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_items:Lcom/lge/appwidget/util/today/Andy_TodayItems;

    invoke-virtual {v0}, Lcom/lge/appwidget/util/today/Andy_TodayItems;->getTodayViews()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_today_views:Ljava/util/List;

    .line 61
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_today_views:Ljava/util/List;

    if-nez v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->initTodayViews(Landroid/content/Context;)V

    .line 71
    :cond_9
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_today_views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemView(I)Landroid/view/View;
    .registers 3
    .parameter "pos"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_today_views:Ljava/util/List;

    if-nez v0, :cond_9

    .line 79
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->initTodayViews(Landroid/content/Context;)V

    .line 82
    :cond_9
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_today_views:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public organizeItems(Ljava/lang/String;)V
    .registers 4
    .parameter "order"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_items:Lcom/lge/appwidget/util/today/Andy_TodayItems;

    if-nez v0, :cond_d

    .line 35
    new-instance v0, Lcom/lge/appwidget/util/today/Andy_TodayItems;

    iget-object v1, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/appwidget/util/today/Andy_TodayItems;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_items:Lcom/lge/appwidget/util/today/Andy_TodayItems;

    .line 38
    :cond_d
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_items:Lcom/lge/appwidget/util/today/Andy_TodayItems;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/util/today/Andy_TodayItems;->organizeItems(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public removeAllItems()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_today_views:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_today_views:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    :cond_9
    return-void
.end method

.method public setIconLayoutHeight(I)V
    .registers 4
    .parameter "length"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_items:Lcom/lge/appwidget/util/today/Andy_TodayItems;

    if-nez v0, :cond_d

    .line 45
    new-instance v0, Lcom/lge/appwidget/util/today/Andy_TodayItems;

    iget-object v1, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lge/appwidget/util/today/Andy_TodayItems;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_items:Lcom/lge/appwidget/util/today/Andy_TodayItems;

    .line 48
    :cond_d
    iget-object v0, p0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->_items:Lcom/lge/appwidget/util/today/Andy_TodayItems;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/util/today/Andy_TodayItems;->setIconLayoutHeight(I)V

    .line 49
    return-void
.end method
