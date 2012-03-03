.class public abstract Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;
.super Lcom/lge/sui/widget/control/SUIPickerAdapterView;
.source "SUIPickerAbsSpinner.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$1;,
        Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;,
        Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lge/sui/widget/control/SUIPickerAdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mBlockLayoutRequests:Z

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field mHeightMeasureSpec:I

.field final mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field private mTouchFrame:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;-><init>(Landroid/content/Context;)V

    .line 39
    iput v0, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionLeftPadding:I

    .line 40
    iput v0, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionTopPadding:I

    .line 41
    iput v0, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionRightPadding:I

    .line 42
    iput v0, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionBottomPadding:I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    invoke-direct {v0, p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;-><init>(Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;)V

    iput-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    .line 53
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->initAbsSpinner()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionLeftPadding:I

    .line 40
    iput v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionTopPadding:I

    .line 41
    iput v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionRightPadding:I

    .line 42
    iput v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionBottomPadding:I

    .line 43
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    .line 45
    new-instance v3, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    invoke-direct {v3, p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;-><init>(Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;)V

    iput-object v3, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    .line 62
    invoke-direct {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->initAbsSpinner()V

    .line 64
    sget-object v3, Lcom/lge/sui/widget/R$styleable;->AbsSpinner:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 68
    .local v2, entries:[Ljava/lang/CharSequence;
    if-eqz v2, :cond_3a

    .line 69
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x3030015

    invoke-direct {v1, p1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 71
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v3, 0x3030014

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 72
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 75
    .end local v1       #adapter:Landroid/widget/ArrayAdapter;,, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_3a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;Landroid/view/View;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private initAbsSpinner()V
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setFocusable(Z)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setWillNotDraw(Z)V

    .line 84
    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .prologue
    .line 247
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 331
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 3

    .prologue
    .line 305
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_12

    .line 306
    iget v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method abstract layout(IZ)V
.end method

.method protected onMeasure(II)V
    .registers 21
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 158
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 162
    .local v14, widthMode:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getPaddingLeft()I

    move-result v6

    .line 163
    .local v6, mPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getPaddingTop()I

    move-result v8

    .line 164
    .local v8, mPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getPaddingRight()I

    move-result v7

    .line 165
    .local v7, mPaddingRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getPaddingBottom()I

    move-result v5

    .line 167
    .local v5, mPaddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionLeftPadding:I

    move/from16 v17, v0

    move v0, v6

    move/from16 v1, v17

    if-le v0, v1, :cond_1b7

    move/from16 v17, v6

    :goto_27
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionTopPadding:I

    move/from16 v17, v0

    move v0, v8

    move/from16 v1, v17

    if-le v0, v1, :cond_1bf

    move/from16 v17, v8

    :goto_40
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionRightPadding:I

    move/from16 v17, v0

    move v0, v7

    move/from16 v1, v17

    if-le v0, v1, :cond_1c7

    move/from16 v17, v7

    :goto_59
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionBottomPadding:I

    move/from16 v17, v0

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_1cf

    move/from16 v17, v5

    :goto_72
    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDataChanged:Z

    move/from16 v16, v0

    if-eqz v16, :cond_83

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->handleDataChanged()V

    .line 180
    :cond_83
    const/4 v10, 0x0

    .line 181
    .local v10, preferredHeight:I
    const/4 v11, 0x0

    .line 182
    .local v11, preferredWidth:I
    const/4 v9, 0x1

    .line 184
    .local v9, needsMeasuring:Z
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getSelectedItemPosition()I

    move-result v12

    .line 186
    .local v12, selectedPosition:I
    if-ltz v12, :cond_147

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    move-object/from16 v16, v0

    if-eqz v16, :cond_147

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v16

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_147

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v13

    .line 190
    .local v13, view:Landroid/view/View;
    if-nez v13, :cond_c5

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move v1, v12

    move-object/from16 v2, v17

    move-object/from16 v3, p0

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    .line 195
    :cond_c5
    if-eqz v13, :cond_d4

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 200
    :cond_d4
    if-eqz v13, :cond_147

    .line 201
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    if-nez v16, :cond_f6

    .line 202
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mBlockLayoutRequests:Z

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mBlockLayoutRequests:Z

    .line 206
    :cond_f6
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 208
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int v10, v16, v17

    .line 210
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v11, v16, v17

    .line 213
    const/4 v9, 0x0

    .line 217
    .end local v13       #view:Landroid/view/View;,
    :cond_147
    if-eqz v9, :cond_17f

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    add-int v10, v16, v17

    .line 220
    if-nez v14, :cond_17f

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int v11, v16, v17

    .line 225
    :cond_17f
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getSuggestedMinimumHeight()I

    move-result v16

    move v0, v10

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getSuggestedMinimumWidth()I

    move-result v16

    move v0, v11

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 229
    move v0, v10

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->resolveSize(II)I

    move-result v4

    .line 230
    .local v4, heightSize:I
    move v0, v11

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->resolveSize(II)I

    move-result v15

    .line 232
    .local v15, widthSize:I
    move-object/from16 v0, p0

    move v1, v15

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setMeasuredDimension(II)V

    .line 233
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mHeightMeasureSpec:I

    .line 234
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mWidthMeasureSpec:I

    .line 235
    return-void

    .line 167
    .end local v4       #heightSize:I,
    .end local v9       #needsMeasuring:Z,
    .end local v10       #preferredHeight:I,
    .end local v11       #preferredWidth:I,
    .end local v12       #selectedPosition:I,
    .end local v15       #widthSize:I,
    :cond_1b7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionLeftPadding:I

    move/from16 v17, v0

    goto/16 :goto_27

    .line 169
    :cond_1bf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionTopPadding:I

    move/from16 v17, v0

    goto/16 :goto_40

    .line 171
    :cond_1c7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionRightPadding:I

    move/from16 v17, v0

    goto/16 :goto_59

    .line 173
    :cond_1cf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mSelectionBottomPadding:I

    move/from16 v17, v0

    goto/16 :goto_72
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 9
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    .line 425
    move-object v0, p1

    check-cast v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;

    move-object v1, v0

    .line 427
    .local v1, ss:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;
    invoke-virtual {v1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 429
    iget-wide v2, v1, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_26

    .line 430
    iput-boolean v6, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDataChanged:Z

    .line 431
    iput-boolean v6, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    .line 432
    iget-wide v2, v1, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncRowId:J

    .line 433
    iget v2, v1, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;->position:I

    iput v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncPosition:I

    .line 434
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSyncMode:I

    .line 435
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->requestLayout()V

    .line 437
    :cond_26
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 412
    invoke-super {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 413
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 414
    .local v0, ss:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;->selectedId:J

    .line 415
    iget-wide v2, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1e

    .line 416
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;->position:I

    .line 420
    :goto_1d
    return-object v0

    .line 418
    :cond_1e
    const/4 v2, -0x1

    iput v2, v0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$SavedState;->position:I

    goto :goto_1d
.end method

.method public pointToPosition(II)I
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 346
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_d

    .line 347
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 348
    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mTouchFrame:Landroid/graphics/Rect;

    .line 351
    :cond_d
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getChildCount()I

    move-result v1

    .line 352
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_14
    if-ltz v3, :cond_30

    .line 353
    invoke-virtual {p0, v3}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 354
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2d

    .line 355
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 356
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 357
    iget v4, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 361
    .end local v0       #child:Landroid/view/View;,
    :goto_2c
    return v4

    .line 352
    .restart local v0       #child:Landroid/view/View;,
    :cond_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 361
    .end local v0       #child:Landroid/view/View;,
    :cond_30
    const/4 v4, -0x1

    goto :goto_2c
.end method

.method recycleAllViews()V
    .registers 7

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getChildCount()I

    move-result v0

    .line 254
    .local v0, childCount:I
    iget-object v4, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mRecycler:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;

    .line 255
    .local v4, recycleBin:Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;
    iget v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    .line 258
    .local v3, position:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v0, :cond_17

    .line 259
    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 260
    .local v5, v:Landroid/view/View;
    add-int v2, v3, v1

    .line 261
    .local v2, index:I
    invoke-virtual {v4, v2, v5}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 263
    .end local v2       #index:I,
    .end local v5       #v:Landroid/view/View;,
    :cond_17
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_7

    .line 320
    invoke-super {p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->requestLayout()V

    .line 322
    :cond_7
    return-void
.end method

.method resetList()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 137
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mDataChanged:Z

    .line 138
    iput-boolean v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mNeedSync:Z

    .line 140
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->removeAllViewsInLayout()V

    .line 141
    iput v2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedPosition:I

    .line 142
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedRowId:J

    .line 144
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setSelectedPositionInt(I)V

    .line 145
    invoke-virtual {p0, v2}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 146
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->invalidate()V

    .line 147
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1       
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 6
    .parameter "adapter"

    .prologue
    const/4 v3, -0x1

    .line 95
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_f

    .line 96
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 97
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->resetList()V

    .line 100
    :cond_f
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 102
    iput v3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedPosition:I

    .line 103
    const-wide/high16 v1, -0x8000

    iput-wide v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedRowId:J

    .line 105
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v1, :cond_51

    .line 106
    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    iput v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldItemCount:I

    .line 107
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    .line 108
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->checkFocus()V

    .line 110
    new-instance v1, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterDataSetObserver;-><init>(Lcom/lge/sui/widget/control/SUIPickerAdapterView;)V

    iput-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 111
    iget-object v1, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget-object v2, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 113
    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-lez v1, :cond_4f

    const/4 v1, 0x0

    move v0, v1

    .line 115
    .local v0, position:I
    :goto_3e
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setSelectedPositionInt(I)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 118
    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mItemCount:I

    if-nez v1, :cond_4b

    .line 120
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->checkSelectionChanged()V

    .line 130
    .end local v0       #position:I,
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->requestLayout()V

    .line 131
    return-void

    :cond_4f
    move v0, v3

    .line 113
    goto :goto_3e

    .line 124
    :cond_51
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->checkFocus()V

    .line 125
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->resetList()V

    .line 127
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->checkSelectionChanged()V

    goto :goto_4b
.end method

.method public setSelection(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 278
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->requestLayout()V

    .line 279
    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->invalidate()V

    .line 280
    return-void
.end method

.method public setSelection(IZ)V
    .registers 7
    .parameter "position"
    .parameter "animate"

    .prologue
    const/4 v3, 0x1

    .line 270
    if-eqz p2, :cond_16

    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    if-gt v1, p1, :cond_16

    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v3

    if-gt p1, v1, :cond_16

    move v0, v3

    .line 272
    .local v0, shouldAnimate:Z
    :goto_12
    invoke-virtual {p0, p1, v0}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setSelectionInt(IZ)V

    .line 273
    return-void

    .line 270
    .end local v0       #shouldAnimate:Z,
    :cond_16
    const/4 v1, 0x0

    move v0, v1

    goto :goto_12
.end method

.method setSelectionInt(IZ)V
    .registers 5
    .parameter "position"
    .parameter "animate"

    .prologue
    .line 292
    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mOldSelectedPosition:I

    if-eq p1, v1, :cond_14

    .line 293
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mBlockLayoutRequests:Z

    .line 294
    iget v1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView;->mSelectedPosition:I

    sub-int v0, p1, v1

    .line 295
    .local v0, delta:I
    invoke-virtual {p0, p1}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->setNextSelectedPositionInt(I)V

    .line 296
    invoke-virtual {p0, v0, p2}, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->layout(IZ)V

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/sui/widget/control/SUIPickerAbsSpinner;->mBlockLayoutRequests:Z

    .line 299
    .end local v0       #delta:I,
    :cond_14
    return-void
.end method
