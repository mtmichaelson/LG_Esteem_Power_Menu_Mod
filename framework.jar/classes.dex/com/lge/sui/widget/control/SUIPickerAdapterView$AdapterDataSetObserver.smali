.class Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "SUIPickerAdapterView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/control/SUIPickerAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/control/SUIPickerAdapterView;)V
    .registers 3
    .parameter

    .prologue
    .line 788
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>.AdapterDataSetObserver;"
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public clearSavedState()V
    .registers 2

    .prologue
    .line 839
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>.AdapterDataSetObserver;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 840
    return-void
.end method

.method public onChanged()V
    .registers 3

    .prologue
    .line 794
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>.AdapterDataSetObserver;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDataChanged:Z

    .line 795
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iget v1, v1, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    iput v1, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldItemCount:I

    .line 796
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    .line 800
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldItemCount:I

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-lez v0, :cond_4c

    .line 803
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->access$000(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Landroid/os/Parcelable;)V

    .line 805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 809
    :goto_41
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->checkFocus()V

    .line 810
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->requestLayout()V

    .line 811
    return-void

    .line 807
    :cond_4c
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->rememberSyncState()V

    goto :goto_41
.end method

.method public onInvalidated()V
    .registers 7

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>.AdapterDataSetObserver;"
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 815
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDataChanged:Z

    .line 817
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 820
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-static {v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->access$100(Lcom/lge/sui/widget/control/SUIPickerAdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 825
    :cond_1d
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iget v1, v1, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    iput v1, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldItemCount:I

    .line 826
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iput v3, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    .line 827
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iput v2, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    .line 828
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iput-wide v4, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedRowId:J

    .line 829
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iput v2, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedPosition:I

    .line 830
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iput-wide v4, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedRowId:J

    .line 831
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    iput-boolean v3, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    .line 832
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->checkSelectionChanged()V

    .line 834
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->checkFocus()V

    .line 835
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;->this$0:Lcom/lge/sui/widget/control/SUIPickerAdapterView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->requestLayout()V

    .line 836
    return-void
.end method
