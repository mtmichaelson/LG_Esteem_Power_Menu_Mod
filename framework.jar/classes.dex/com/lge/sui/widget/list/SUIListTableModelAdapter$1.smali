.class Lcom/lge/sui/widget/list/SUIListTableModelAdapter$1;
.super Ljava/lang/Object;
.source "SUIListTableModelAdapter.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUIMovableListView$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIListTableModelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/list/SUIListTableModelAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$1;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .registers 6
    .parameter "from"
    .parameter "to"

    .prologue
    .line 342
    if-ne p1, p2, :cond_3

    .line 350
    :goto_2
    return-void

    .line 346
    :cond_3
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$1;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    iget-object v0, v2, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    .line 347
    .local v0, model:Lcom/lge/sui/widget/list/SUIListTableModel;
    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/list/SUIListTableModel;->removeRowData(I)Ljava/util/HashMap;

    move-result-object v1

    .line 348
    .local v1, moveData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p2, v1}, Lcom/lge/sui/widget/list/SUIListTableModel;->insertRowData(ILjava/util/HashMap;)V

    .line 349
    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$1;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    invoke-virtual {v2}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method
