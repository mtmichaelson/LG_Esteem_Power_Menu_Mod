.class Lcom/lge/appwidget/Andy_SmartBoxGridView$1;
.super Ljava/lang/Object;
.source "Andy_SmartBoxGridView.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_SmartBoxGridView;->setSmartBoxGridItem(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_SmartBoxGridView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_SmartBoxGridView;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/appwidget/Andy_SmartBoxGridView$1;->this$0:Lcom/lge/appwidget/Andy_SmartBoxGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
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
    .line 47
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;

    .line 51
    .local v2, holder:Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;
    iget-object v4, v2, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;->_title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, groupTitle:Ljava/lang/String;
    iget v0, v2, Lcom/lge/appwidget/Andy_SmartBoxGridAdapter$ViewHolder;->_rowId:I

    .line 54
    .local v0, groupRowId:I
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.smartbox.action.MESSAGE_LIST"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "EXTRA_SMARTBOX_TITLE"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v4, "EXTRA_SMARTBOX_ID"

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 57
    const/high16 v4, 0x3400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    iget-object v4, p0, Lcom/lge/appwidget/Andy_SmartBoxGridView$1;->this$0:Lcom/lge/appwidget/Andy_SmartBoxGridView;

    iget-object v4, v4, Lcom/lge/appwidget/Andy_SmartBoxGridView;->_context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method
