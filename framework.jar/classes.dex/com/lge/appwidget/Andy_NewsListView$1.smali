.class Lcom/lge/appwidget/Andy_NewsListView$1;
.super Ljava/lang/Object;
.source "Andy_NewsListView.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_NewsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_NewsListView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_NewsListView;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/appwidget/Andy_NewsListView$1;->this$0:Lcom/lge/appwidget/Andy_NewsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/lge/appwidget/Andy_NewsListView$1;->this$0:Lcom/lge/appwidget/Andy_NewsListView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_NewsListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 38
    .local v0, adapter:Landroid/widget/ListAdapter;
    instance-of v3, v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;

    if-nez v3, :cond_b

    .line 51
    .end local v0       #adapter:Landroid/widget/ListAdapter;,
    :cond_a
    :goto_a
    return-void

    .line 42
    .restart local v0       #adapter:Landroid/widget/ListAdapter;,
    :cond_b
    check-cast v0, Lcom/lge/appwidget/Andy_NewsBundleAdapter;

    .end local v0       #adapter:Landroid/widget/ListAdapter;,
    invoke-virtual {v0, p3}, Lcom/lge/appwidget/Andy_NewsBundleAdapter;->getActivityIntent(I)Landroid/content/Intent;

    move-result-object v2

    .line 43
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_a

    .line 45
    const/high16 v3, 0x1480

    :try_start_15
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    iget-object v3, p0, Lcom/lge/appwidget/Andy_NewsListView$1;->this$0:Lcom/lge/appwidget/Andy_NewsListView;

    invoke-virtual {v3}, Lcom/lge/appwidget/Andy_NewsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_21} :catch_22

    goto :goto_a

    .line 47
    :catch_22
    move-exception v3

    move-object v1, v3

    .line 48
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method
