.class public abstract Lcom/lge/sui/widget/control/SUIPickerAdapterView;
.super Landroid/view/ViewGroup;
.source "SUIPickerAdapterView.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/control/SUIPickerAdapterView$1;,
        Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;,
        Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;,
        Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterContextMenuInfo;,
        Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;,
        Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemLongClickListener;,
        Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = " LgeAdapterView"

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I = 0x0

.field static final localLOGV:Z = true



# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I

.field mInLayout:Z

.field mItemCount:I

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I

.field mNextSelectedRowId:J

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;

.field mSelectedPosition:I

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/sui/widget/control/SUIPickerAdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 57
    iput v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 69
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncRowId:J

    .line 74
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    .line 105
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mInLayout:Z

    .line 130
    iput v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedPosition:I

    .line 135
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedRowId:J

    .line 140
    iput v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    .line 145
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedRowId:J

    .line 176
    iput v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedPosition:I

    .line 181
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedRowId:J

    .line 199
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mBlockLayoutRequests:Z

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 69
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncRowId:J

    .line 74
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    .line 105
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mInLayout:Z

    .line 130
    iput v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedPosition:I

    .line 135
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedRowId:J

    .line 140
    iput v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    .line 145
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedRowId:J

    .line 176
    iput v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedPosition:I

    .line 181
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedRowId:J

    .line 199
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mBlockLayoutRequests:Z

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 69
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncRowId:J

    .line 74
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    .line 105
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mInLayout:Z

    .line 130
    iput v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedPosition:I

    .line 135
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedRowId:J

    .line 140
    iput v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    .line 145
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedRowId:J

    .line 176
    iput v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedPosition:I

    .line 181
    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedRowId:J

    .line 199
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mBlockLayoutRequests:Z

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Landroid/os/Parcelable;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/sui/widget/control/SUIPickerAdapterView;)Landroid/os/Parcelable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sui/widget/control/SUIPickerAdapterView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->fireOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .registers 7

    .prologue
    .line 880
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemSelectedListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;

    if-nez v0, :cond_5

    .line 896
    :goto_4
    return-void

    .line 883
    :cond_5
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 884
    .local v3, selection:I
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    rem-int/2addr v3, v0

    .line 885
    if-ltz v3, :cond_21

    .line 886
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 887
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemSelectedListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Landroid/view/View;IJ)V

    goto :goto_4

    .line 890
    .end local v2       #v:Landroid/view/View;,
    :cond_21
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    add-int/2addr v3, v0

    .line 891
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 892
    .restart local v2       #v:Landroid/view/View;,
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemSelectedListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;->onItemSelected(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Landroid/view/View;IJ)V

    goto :goto_4
.end method

.method private updateEmptyStatus(Z)V
    .registers 8
    .parameter "empty"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 719
    const/4 p1, 0x0

    .line 722
    :cond_a
    if-eqz p1, :cond_35

    .line 723
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_31

    .line 724
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 725
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->setVisibility(I)V

    .line 734
    :goto_18
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_30

    .line 735
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->onLayout(ZIIII)V

    .line 743
    :cond_30
    :goto_30
    return-void

    .line 728
    :cond_31
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->setVisibility(I)V

    goto :goto_18

    .line 739
    :cond_35
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_3e

    .line 740
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 741
    :cond_3e
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->setVisibility(I)V

    goto :goto_30
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 432
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .parameter "child"
    .parameter "index"

    .prologue
    .line 449
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 485
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "params"

    .prologue
    .line 466
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 929
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method checkFocus()V
    .registers 7

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 698
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 699
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-nez v3, :cond_3d

    :cond_e
    move v1, v5

    .line 700
    .local v1, empty:Z
    :goto_f
    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->isInFilterMode()Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_17
    move v2, v5

    .line 704
    .local v2, focusable:Z
    :goto_18
    if-eqz v2, :cond_41

    iget-boolean v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDesiredFocusableInTouchModeState:Z

    if-eqz v3, :cond_41

    move v3, v5

    :goto_1f
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 706
    if-eqz v2, :cond_43

    iget-boolean v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDesiredFocusableState:Z

    if-eqz v3, :cond_43

    move v3, v5

    :goto_29
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 707
    iget-object v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_3c

    .line 708
    if-eqz v0, :cond_38

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_38
    move v3, v5

    :goto_39
    invoke-direct {p0, v3}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->updateEmptyStatus(Z)V

    .line 710
    :cond_3c
    return-void

    .end local v1       #empty:Z,
    .end local v2       #focusable:Z,
    :cond_3d
    move v1, v4

    .line 699
    goto :goto_f

    .restart local v1       #empty:Z,
    :cond_3f
    move v2, v4

    .line 700
    goto :goto_18

    .restart local v2       #focusable:Z,
    :cond_41
    move v3, v4

    .line 704
    goto :goto_1f

    :cond_43
    move v3, v4

    .line 706
    goto :goto_29

    :cond_45
    move v3, v4

    .line 708
    goto :goto_39
.end method

.method checkSelectionChanged()V
    .registers 5

    .prologue
    .line 996
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_e

    iget-wide v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    .line 998
    :cond_e
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->selectionChanged()V

    .line 999
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedPosition:I

    .line 1000
    iget-wide v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedRowId:J

    .line 1002
    :cond_19
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 900
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v0, 0x0

    .line 905
    .local v0, populated:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_d

    .line 906
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 911
    :cond_d
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 912
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_17

    .line 913
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 916
    :cond_17
    if-nez v0, :cond_30

    .line 917
    if-eqz v1, :cond_22

    .line 918
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 920
    :cond_22
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 921
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 924
    :cond_30
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 786
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 776
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 777
    return-void
.end method

.method findSyncPosition()I
    .registers 21

    .prologue
    .line 1013
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    move v3, v0

    .line 1015
    .local v3, count:I
    if-nez v3, :cond_a

    .line 1016
    const/16 v16, -0x1

    .line 1088
    :goto_9
    return v16

    .line 1019
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncRowId:J

    move-wide v9, v0

    .line 1020
    .local v9, idToMatch:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncPosition:I

    move v15, v0

    .line 1023
    .local v15, seed:I
    const-wide/high16 v16, -0x8000

    cmp-long v16, v9, v16

    if-nez v16, :cond_1d

    .line 1024
    const/16 v16, -0x1

    goto :goto_9

    .line 1028
    :cond_1d
    const/16 v16, 0x0

    move/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1029
    const/16 v16, 0x1

    sub-int v16, v3, v16

    move/from16 v0, v16

    move v1, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1031
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1036
    .local v4, endTime:J
    move v6, v15

    .line 1039
    .local v6, first:I
    move v11, v15

    .line 1042
    .local v11, last:I
    const/4 v12, 0x0

    .line 1052
    .local v12, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1053
    .local v2, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v2, :cond_4f

    .line 1054
    const/16 v16, -0x1

    goto :goto_9

    .line 1072
    .local v7, hitFirst:Z
    .local v8, hitLast:Z
    .local v13, rowId:J
    :cond_45
    if-nez v7, :cond_4b

    if-eqz v12, :cond_86

    if-nez v8, :cond_86

    .line 1074
    :cond_4b
    add-int/lit8 v11, v11, 0x1

    .line 1075
    move v15, v11

    .line 1077
    const/4 v12, 0x0

    .line 1057
    .end local v7       #hitFirst:Z,
    .end local v8       #hitLast:Z,
    .end local v13       #rowId:J,
    :cond_4f
    :goto_4f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_79

    .line 1058
    invoke-interface {v2, v15}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v13

    .line 1059
    .restart local v13       #rowId:J,
    cmp-long v16, v13, v9

    if-nez v16, :cond_62

    move/from16 v16, v15

    .line 1061
    goto :goto_9

    .line 1064
    :cond_62
    const/16 v16, 0x1

    sub-int v16, v3, v16

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_7c

    const/16 v16, 0x1

    move/from16 v8, v16

    .line 1065
    .restart local v8       #hitLast:Z,
    :goto_6f
    if-nez v6, :cond_81

    const/16 v16, 0x1

    move/from16 v7, v16

    .line 1067
    .restart local v7       #hitFirst:Z,
    :goto_75
    if-eqz v8, :cond_45

    if-eqz v7, :cond_45

    .line 1088
    .end local v7       #hitFirst:Z,
    .end local v8       #hitLast:Z,
    .end local v13       #rowId:J,
    :cond_79
    const/16 v16, -0x1

    goto :goto_9

    .line 1064
    .restart local v13       #rowId:J,
    :cond_7c
    const/16 v16, 0x0

    move/from16 v8, v16

    goto :goto_6f

    .line 1065
    .restart local v8       #hitLast:Z,
    :cond_81
    const/16 v16, 0x0

    move/from16 v7, v16

    goto :goto_75

    .line 1078
    .restart local v7       #hitFirst:Z,
    :cond_86
    if-nez v8, :cond_8c

    if-nez v12, :cond_4f

    if-nez v7, :cond_4f

    .line 1080
    :cond_8c
    add-int/lit8 v6, v6, -0x1

    .line 1081
    move v15, v6

    .line 1083
    const/4 v12, 0x1

    goto :goto_4f
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 575
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .registers 2

    .prologue
    .line 658
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .registers 2

    .prologue
    .line 618
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    .line 753
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 754
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_a

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9
.end method

.method public getItemIdAtPosition(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 759
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 760
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_8

    if-gez p1, :cond_b

    :cond_8
    const-wide/high16 v1, -0x8000

    :goto_a
    return-wide v1

    :cond_b
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_a
.end method

.method public getLastVisiblePosition()I
    .registers 3

    .prologue
    .line 627
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 255
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemClickListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemLongClickListener;
    .registers 2

    .prologue
    .line 324
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemLongClickListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;
    .registers 2

    .prologue
    .line 371
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemSelectedListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .registers 9
    .parameter "view"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v6, -0x1

    .line 589
    move-object v3, p1

    .line 592
    .local v3, listItem:Landroid/view/View;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_b} :catch_10

    move-result v5

    if-nez v5, :cond_14

    .line 593
    move-object v3, v4

    goto :goto_2

    .line 595
    .end local v4       #v:Landroid/view/View;,
    :catch_10
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/ClassCastException;
    move v5, v6

    .line 609
    .end local v1       #e:Ljava/lang/ClassCastException;,
    :goto_13
    return v5

    .line 601
    .restart local v4       #v:Landroid/view/View;,
    :cond_14
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getChildCount()I

    move-result v0

    .line 602
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    if-ge v2, v0, :cond_2c

    .line 603
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 604
    iget v5, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_13

    .line 602
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_2c
    move v5, v6

    .line 609
    goto :goto_13
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 561
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 562
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 563
    .local v1, selection:I
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_17

    if-ltz v1, :cond_17

    .line 564
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 566
    :goto_16
    return-object v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method public getSelectedItemId()J
    .registers 3

    .prologue
    .line 548
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget-wide v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .registers 2

    .prologue
    .line 540
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .registers 11

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const-wide/high16 v8, -0x8000

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 933
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    .line 934
    .local v0, count:I
    const/4 v1, 0x0

    .line 936
    .local v1, found:Z
    if-lez v0, :cond_40

    .line 941
    iget-boolean v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    if-eqz v4, :cond_20

    .line 944
    iput-boolean v5, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    .line 948
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->findSyncPosition()I

    move-result v2

    .line 949
    .local v2, newPos:I
    if-ltz v2, :cond_20

    .line 951
    invoke-virtual {p0, v2, v6}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 952
    .local v3, selectablePos:I
    if-ne v3, v2, :cond_20

    .line 954
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->setNextSelectedPositionInt(I)V

    .line 955
    const/4 v1, 0x1

    .line 959
    .end local v2       #newPos:I,
    .end local v3       #selectablePos:I,
    :cond_20
    if-nez v1, :cond_40

    .line 961
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 964
    .restart local v2       #newPos:I,
    if-lt v2, v0, :cond_2a

    .line 965
    sub-int v2, v0, v6

    .line 967
    :cond_2a
    if-gez v2, :cond_2d

    .line 968
    const/4 v2, 0x0

    .line 972
    :cond_2d
    invoke-virtual {p0, v2, v6}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 973
    .restart local v3       #selectablePos:I,
    if-gez v3, :cond_37

    .line 975
    invoke-virtual {p0, v2, v5}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 977
    :cond_37
    if-ltz v3, :cond_40

    .line 978
    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->setNextSelectedPositionInt(I)V

    .line 979
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->checkSelectionChanged()V

    .line 980
    const/4 v1, 0x1

    .line 984
    .end local v2       #newPos:I,
    .end local v3       #selectablePos:I,
    :cond_40
    if-nez v1, :cond_4f

    .line 986
    iput v7, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    .line 987
    iput-wide v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedRowId:J

    .line 988
    iput v7, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedPosition:I

    .line 989
    iput-wide v8, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedRowId:J

    .line 990
    iput-boolean v5, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    .line 991
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->checkSelectionChanged()V

    .line 993
    :cond_4f
    return-void
.end method

.method isInFilterMode()Z
    .registers 2

    .prologue
    .line 668
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .registers 3
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 1102
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    return p1
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 11
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemClickListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemClickListener;

    if-eqz v0, :cond_13

    .line 272
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->playSoundEffect(I)V

    .line 273
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemClickListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemClickListener;->onItemClick(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Landroid/view/View;IJ)V

    .line 274
    const/4 v0, 0x1

    .line 277
    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method rememberSyncState()V
    .registers 7

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1137
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_23

    .line 1138
    iput-boolean v5, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    .line 1140
    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    if-ltz v2, :cond_24

    .line 1142
    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    iget v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1143
    .local v1, v:Landroid/view/View;
    iget-wide v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedRowId:J

    iput-wide v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncRowId:J

    .line 1144
    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedPosition:I

    iput v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncPosition:I

    .line 1145
    if-eqz v1, :cond_21

    .line 1148
    :cond_21
    iput v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncMode:I

    .line 1163
    .end local v1       #v:Landroid/view/View;,
    :cond_23
    :goto_23
    return-void

    .line 1151
    :cond_24
    invoke-virtual {p0, v4}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1152
    .restart local v1       #v:Landroid/view/View;,
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 1153
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    if-ltz v2, :cond_47

    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 1154
    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncRowId:J

    .line 1158
    :goto_40
    iget v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncPosition:I

    .line 1160
    iput v5, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncMode:I

    goto :goto_23

    .line 1156
    :cond_47
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncRowId:J

    goto :goto_40
.end method

.method public removeAllViews()V
    .registers 3

    .prologue
    .line 528
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 501
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 516
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .registers 3

    .prologue
    .line 857
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemSelectedListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1f

    .line 858
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mInLayout:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_35

    .line 863
    :cond_c
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectionNotifier:Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;

    if-nez v0, :cond_18

    .line 864
    new-instance v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;-><init>(Lcom/lge/sui/widget/control/SUIPickerAdapterView;Lcom/lge/sui/widget/control/SUIPickerAdapterView$1;)V

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectionNotifier:Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;

    .line 866
    :cond_18
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectionNotifier:Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;

    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectionNotifier:Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    .line 873
    :cond_1f
    :goto_1f
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_34

    .line 875
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->sendAccessibilityEvent(I)V

    .line 877
    :cond_34
    return-void

    .line 868
    :cond_35
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->fireOnSelected()V

    goto :goto_1f
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation.end method

.method public setEmptyView(Landroid/view/View;)V
    .registers 5
    .parameter "emptyView"

    .prologue
    .line 643
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mEmptyView:Landroid/view/View;

    .line 645
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 646
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_e
    const/4 v2, 0x1

    move v1, v2

    .line 647
    .local v1, empty:Z
    :goto_10
    invoke-direct {p0, v1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->updateEmptyStatus(Z)V

    .line 648
    return-void

    .line 646
    .end local v1       #empty:Z,
    :cond_14
    const/4 v2, 0x0

    move v1, v2

    goto :goto_10
.end method

.method public setFocusable(Z)V
    .registers 7
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 674
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_24

    :cond_e
    move v1, v4

    .line 676
    .local v1, empty:Z
    :goto_f
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDesiredFocusableState:Z

    .line 677
    if-nez p1, :cond_15

    .line 678
    iput-boolean v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 681
    :cond_15
    if-eqz p1, :cond_26

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->isInFilterMode()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_1f
    move v2, v4

    :goto_20
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 682
    return-void

    .end local v1       #empty:Z,
    :cond_24
    move v1, v3

    .line 674
    goto :goto_f

    .restart local v1       #empty:Z,
    :cond_26
    move v2, v3

    .line 681
    goto :goto_20
.end method

.method public setFocusableInTouchMode(Z)V
    .registers 7
    .parameter "focusable"

    .prologue
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 686
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 687
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-nez v2, :cond_24

    :cond_e
    move v1, v3

    .line 689
    .local v1, empty:Z
    :goto_f
    iput-boolean p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 690
    if-eqz p1, :cond_15

    .line 691
    iput-boolean v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDesiredFocusableState:Z

    .line 694
    :cond_15
    if-eqz p1, :cond_26

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->isInFilterMode()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_1f
    move v2, v3

    :goto_20
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 695
    return-void

    .end local v1       #empty:Z,
    :cond_24
    move v1, v4

    .line 687
    goto :goto_f

    .restart local v1       #empty:Z,
    :cond_26
    move v2, v4

    .line 694
    goto :goto_20
.end method

.method setNextSelectedPositionInt(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1123
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iput p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedPosition:I

    .line 1124
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedRowId:J

    .line 1126
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncMode:I

    if-nez v0, :cond_18

    if-ltz p1, :cond_18

    .line 1127
    iput p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncPosition:I

    .line 1128
    iget-wide v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncRowId:J

    .line 1130
    :cond_18
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4
    .parameter "l"

    .prologue
    .line 766
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "onItemClickListener"

    .prologue
    .line 247
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemClickListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemClickListener;

    .line 248
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemLongClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 313
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->setLongClickable(Z)V

    .line 316
    :cond_a
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemLongClickListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemLongClickListener;

    .line 317
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 367
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOnItemSelectedListener:Lcom/lge/sui/widget/control/SUIPickerAdapterView$OnItemSelectedListener;

    .line 368
    return-void
.end method

.method setSelectedPositionInt(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 1112
    .local p0, this:Lcom/lge/sui/widget/control/SUIPickerAdapterView;,"Lcom/lge/sui/widget/control/SUIPickerAdapterView<TT;>;"
    iput p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    .line 1113
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedRowId:J

    .line 1114
    return-void
.end method

.method public abstract setSelection(I)V
.end method
