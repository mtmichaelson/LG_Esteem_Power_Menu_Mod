.class Lcom/lge/sui/widget/list/SUIListTableModelAdapter$2;
.super Ljava/lang/Object;
.source "SUIListTableModelAdapter.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;


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
    .line 353
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$2;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$2;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    iget-object v0, v0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->mModel:Lcom/lge/sui/widget/list/SUIListTableModel;

    invoke-virtual {v0, p1}, Lcom/lge/sui/widget/list/SUIListTableModel;->removeRowData(I)Ljava/util/HashMap;

    .line 356
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIListTableModelAdapter$2;->this$0:Lcom/lge/sui/widget/list/SUIListTableModelAdapter;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIListTableModelAdapter;->notifyDataSetChanged()V

    .line 357
    return-void
.end method
