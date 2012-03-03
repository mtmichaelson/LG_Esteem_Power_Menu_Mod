.class Lcom/lge/appwidget/Andy_BookmarkGridView$1;
.super Ljava/lang/Object;
.source "Andy_BookmarkGridView.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_BookmarkGridView;->setBookmarkGridItem(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_BookmarkGridView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_BookmarkGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lge/appwidget/Andy_BookmarkGridView$1;->this$0:Lcom/lge/appwidget/Andy_BookmarkGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 53
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 55
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;

    .line 58
    .local v0, holder:Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;
    iget-object v2, v0, Lcom/lge/appwidget/Andy_BookmarkGridAdapter$ViewHolder;->_url:Ljava/lang/String;

    .line 61
    .local v2, url:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1       #intent:Landroid/content/Intent;,
    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    .restart local v1       #intent:Landroid/content/Intent;,
    const-string v3, "com.android.browser"

    const-string v4, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/high16 v3, 0x3400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    iget-object v3, p0, Lcom/lge/appwidget/Andy_BookmarkGridView$1;->this$0:Lcom/lge/appwidget/Andy_BookmarkGridView;

    iget-object v3, v3, Lcom/lge/appwidget/Andy_BookmarkGridView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
