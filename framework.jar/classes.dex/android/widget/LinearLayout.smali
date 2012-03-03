.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4



# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 80
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 120
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 66
    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 74
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 80
    const/16 v3, 0x33

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 122
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 126
    .local v2, index:I
    if-ltz v2, :cond_1f

    .line 127
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 130
    :cond_1f
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 131
    if-ltz v2, :cond_28

    .line 132
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 135
    :cond_28
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 136
    .local v1, baselineAligned:Z
    if-nez v1, :cond_32

    .line 137
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 140
    :cond_32
    const/4 v3, 0x4

    const/high16 v4, -0x4080

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 142
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 146
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 148
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 12
    .parameter "count"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 957
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 959
    .local v4, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 960
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 961
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_35

    .line 962
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 964
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_35

    .line 967
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 968
    .local v8, oldWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 971
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 972
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 959
    .end local v7       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    .end local v8       #oldWidth:I,
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 976
    .end local v1       #child:Landroid/view/View;,
    :cond_38
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 12
    .parameter "count"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 580
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 582
    .local v2, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 583
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 584
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_35

    .line 585
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 587
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_35

    .line 590
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 591
    .local v8, oldHeight:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 594
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 595
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 582
    .end local v7       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    .end local v8       #oldHeight:I,
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 599
    .end local v1       #child:Landroid/view/View;,
    :cond_38
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .parameter "child"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1254
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1255
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 1356
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 1339
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_b

    .line 1340
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1344
    :goto_a
    return-object v0

    .line 1341
    :cond_b
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1342
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_a

    .line 1344
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 1326
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 1349
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 177
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v5, :cond_a

    .line 178
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 225
    :goto_9
    return v5

    .line 181
    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v5, v6, :cond_1a

    .line 182
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 186
    :cond_1a
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 189
    .local v1, childBaseline:I
    if-ne v1, v7, :cond_34

    .line 190
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v5, :cond_2c

    move v5, v7

    .line 192
    goto :goto_9

    .line 196
    :cond_2c
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 206
    :cond_34
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 208
    .local v2, childTop:I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_46

    .line 209
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 210
    .local v4, majorGravity:I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_46

    .line 211
    sparse-switch v4, :sswitch_data_70

    .line 224
    .end local v4       #majorGravity:I,
    :cond_46
    :goto_46
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 225
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_9

    .line 213
    .end local v3       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    .restart local v4       #majorGravity:I,
    :sswitch_51
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 214
    goto :goto_46

    .line 217
    :sswitch_5e
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_46

    .line 211
    :sswitch_data_70
    .sparse-switch
        0x10 -> :sswitch_5e
        0x50 -> :sswitch_51
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .parameter "child"
    .parameter "index"

    .prologue
    .line 987
    const/4 v0, 0x0

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 1029
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 1041
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 1277
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .prologue
    .line 286
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method layoutHorizontal()V
    .registers 26

    .prologue
    .line 1148
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v24, v0

    .line 1151
    .local v24, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v12, v0

    .line 1154
    .local v12, childLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v4, v0

    sub-int v17, v3, v4

    .line 1155
    .local v17, height:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v3, v0

    sub-int v11, v17, v3

    .line 1158
    .local v11, childBottom:I
    sub-int v3, v17, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v4, v0

    sub-int v13, v3, v4

    .line 1160
    .local v13, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 1162
    .local v14, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v20, v3, 0x7

    .line 1163
    .local v20, majorGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v23, v3, 0x70

    .line 1165
    .local v23, minorGravity:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move v9, v0

    .line 1167
    .local v9, baselineAligned:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v21, v0

    .line 1168
    .local v21, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v22, v0

    .line 1170
    .local v22, maxDescent:[I
    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_53

    .line 1171
    sparse-switch v20, :sswitch_data_142

    .line 1184
    :cond_53
    :goto_53
    const/16 v18, 0x0

    .local v18, i:I
    :goto_55
    move/from16 v0, v18

    move v1, v14

    if-ge v0, v1, :cond_140

    .line 1185
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1187
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_9e

    .line 1188
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v12, v3

    .line 1184
    :cond_6d
    :goto_6d
    add-int/lit8 v18, v18, 0x1

    goto :goto_55

    .line 1175
    .end local v4       #child:Landroid/view/View;,
    .end local v18       #i:I,
    :sswitch_70
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int v12, v3, v4

    .line 1176
    goto :goto_53

    .line 1179
    :sswitch_89
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v12, v3

    goto :goto_53

    .line 1189
    .restart local v4       #child:Landroid/view/View;,
    .restart local v18       #i:I,
    :cond_9e
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_6d

    .line 1190
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1191
    .local v7, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1192
    .local v8, childHeight:I
    const/4 v10, -0x1

    .line 1194
    .local v10, childBaseline:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1197
    .local v19, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v9, :cond_c3

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v3, v0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_c3

    .line 1198
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v10

    .line 1201
    :cond_c3
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v16, v0

    .line 1202
    .local v16, gravity:I
    if-gez v16, :cond_cd

    .line 1203
    move/from16 v16, v23

    .line 1206
    :cond_cd
    and-int/lit8 v3, v16, 0x70

    sparse-switch v3, :sswitch_data_14c

    .line 1238
    move/from16 v6, v24

    .line 1242
    .local v6, childTop:I
    :cond_d4
    :goto_d4
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v0

    add-int/2addr v12, v3

    .line 1243
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v5, v12, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1245
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v3, v0

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v12, v3

    .line 1248
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int v18, v18, v3

    goto/16 :goto_6d

    .line 1208
    .end local v6       #childTop:I,
    :sswitch_104
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v0

    add-int v6, v24, v3

    .line 1209
    .restart local v6       #childTop:I,
    const/4 v3, -0x1

    if-eq v10, v3, :cond_d4

    .line 1210
    const/4 v3, 0x1

    aget v3, v21, v3

    sub-int/2addr v3, v10

    add-int/2addr v6, v3

    goto :goto_d4

    .line 1226
    .end local v6       #childTop:I,
    :sswitch_114
    sub-int v3, v13, v8

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v24

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1228
    .restart local v6       #childTop:I,
    goto :goto_d4

    .line 1231
    .end local v6       #childTop:I,
    :sswitch_128
    sub-int v3, v11, v8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1232
    .restart local v6       #childTop:I,
    const/4 v3, -0x1

    if-eq v10, v3, :cond_d4

    .line 1233
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v15, v3, v10

    .line 1234
    .local v15, descent:I
    const/4 v3, 0x2

    aget v3, v22, v3

    sub-int/2addr v3, v15

    sub-int/2addr v6, v3

    .line 1235
    goto :goto_d4

    .line 1251
    .end local v4       #child:Landroid/view/View;,
    .end local v6       #childTop:I,
    .end local v7       #childWidth:I,
    .end local v8       #childHeight:I,
    .end local v10       #childBaseline:I,
    .end local v15       #descent:I,
    .end local v16       #gravity:I,
    .end local v19       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    :cond_140
    return-void

    .line 1171
    nop

    :sswitch_data_142
    .sparse-switch
        0x1 -> :sswitch_89
        0x5 -> :sswitch_70
    .end sparse-switch

    .line 1206
    :sswitch_data_14c
    .sparse-switch
        0x10 -> :sswitch_114
        0x30 -> :sswitch_104
        0x50 -> :sswitch_128
    .end sparse-switch
.end method

.method layoutVertical()V
    .registers 21

    .prologue
    .line 1062
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v18, v0

    .line 1064
    .local v18, paddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v11, v0

    .line 1068
    .local v11, childTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v4, v0

    sub-int v19, v3, v4

    .line 1069
    .local v19, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v3, v0

    sub-int v9, v19, v3

    .line 1072
    .local v9, childRight:I
    sub-int v3, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v4, v0

    sub-int v10, v3, v4

    .line 1074
    .local v10, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v12

    .line 1076
    .local v12, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v16, v3, 0x70

    .line 1077
    .local v16, majorGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v17, v3, 0x7

    .line 1079
    .local v17, minorGravity:I
    const/16 v3, 0x30

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_43

    .line 1080
    sparse-switch v16, :sswitch_data_ee

    .line 1094
    :cond_43
    :goto_43
    const/4 v14, 0x0

    .local v14, i:I
    :goto_44
    if-ge v14, v12, :cond_ec

    .line 1095
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1096
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_88

    .line 1097
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v11, v3

    .line 1094
    :cond_57
    :goto_57
    add-int/lit8 v14, v14, 0x1

    goto :goto_44

    .line 1084
    .end local v4       #child:Landroid/view/View;,
    .end local v14       #i:I,
    :sswitch_5a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int v11, v3, v4

    .line 1085
    goto :goto_43

    .line 1088
    :sswitch_73
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v11, v3

    goto :goto_43

    .line 1098
    .restart local v4       #child:Landroid/view/View;,
    .restart local v14       #i:I,
    :cond_88
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_57

    .line 1099
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1100
    .local v7, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1102
    .local v8, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1105
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v13, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1106
    .local v13, gravity:I
    if-gez v13, :cond_a4

    .line 1107
    move/from16 v13, v17

    .line 1110
    :cond_a4
    and-int/lit8 v3, v13, 0x7

    packed-switch v3, :pswitch_data_f8

    .line 1124
    :pswitch_a9
    move/from16 v5, v18

    .line 1129
    .local v5, childLeft:I
    :goto_ab
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v11, v3

    .line 1130
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v6, v11, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1132
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    .end local v5       #childLeft:I,
    add-int/2addr v3, v5

    add-int/2addr v11, v3

    .line 1134
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v14, v3

    goto :goto_57

    .line 1112
    :pswitch_d2
    iget v3, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v5, v18, v3

    .line 1113
    .restart local v5       #childLeft:I,
    goto :goto_ab

    .line 1116
    .end local v5       #childLeft:I,
    :pswitch_d7
    sub-int v3, v10, v7

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v18

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v5, v3, v5

    .line 1118
    .restart local v5       #childLeft:I,
    goto :goto_ab

    .line 1121
    .end local v5       #childLeft:I,
    :pswitch_e5
    sub-int v3, v9, v7

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v5, v3, v5

    .line 1122
    .restart local v5       #childLeft:I,
    goto :goto_ab

    .line 1137
    .end local v4       #child:Landroid/view/View;,
    .end local v5       #childLeft:I,
    .end local v7       #childWidth:I,
    .end local v8       #childHeight:I,
    .end local v13       #gravity:I,
    .end local v15       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    :cond_ec
    return-void

    .line 1080
    nop

    :sswitch_data_ee
    .sparse-switch
        0x10 -> :sswitch_73
        0x50 -> :sswitch_5a
    .end sparse-switch

    .line 1110
    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_a9
        :pswitch_d2
        :pswitch_a9
        :pswitch_e5
    .end packed-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    .line 1017
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1019
    return-void
.end method

.method measureHorizontal(II)V
    .registers 47
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 613
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 614
    const/16 v34, 0x0

    .line 615
    .local v34, maxHeight:I
    const/4 v11, 0x0

    .line 616
    .local v11, alternativeMaxHeight:I
    const/16 v41, 0x0

    .line 617
    .local v41, weightedMaxHeight:I
    const/4 v10, 0x1

    .line 618
    .local v10, allFillParent:Z
    const/16 v38, 0x0

    .line 620
    .local v38, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v19

    .line 622
    .local v19, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v42

    .line 623
    .local v42, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 625
    .local v24, heightMode:I
    const/16 v30, 0x0

    .line 627
    .local v30, matchHeight:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object v3, v0

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object v3, v0

    if-nez v3, :cond_3a

    .line 628
    :cond_2a
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 629
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 632
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v32, v0

    .line 633
    .local v32, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v33, v0

    .line 635
    .local v33, maxDescent:[I
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v32, v6

    aput v7, v32, v5

    aput v7, v32, v4

    aput v7, v32, v3

    .line 636
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v33, v6

    aput v7, v33, v5

    aput v7, v33, v4

    aput v7, v33, v3

    .line 638
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move v13, v0

    .line 639
    .local v13, baselineAligned:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v39, v0

    .line 641
    .local v39, useLargestChild:Z
    const/high16 v3, 0x4000

    move/from16 v0, v42

    move v1, v3

    if-ne v0, v1, :cond_9b

    const/4 v3, 0x1

    move/from16 v26, v3

    .line 643
    .local v26, isExactly:Z
    :goto_75
    const/high16 v27, -0x8000

    .line 646
    .local v27, largestChildWidth:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_78
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_260

    .line 647
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 649
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_9f

    .line 650
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4       #child:Landroid/view/View;,
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 646
    :goto_98
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    .line 641
    .end local v5       #i:I,
    .end local v26       #isExactly:Z,
    .end local v27       #largestChildWidth:I,
    :cond_9b
    const/4 v3, 0x0

    move/from16 v26, v3

    goto :goto_75

    .line 654
    .restart local v4       #child:Landroid/view/View;,
    .restart local v5       #i:I,
    .restart local v26       #isExactly:Z,
    .restart local v27       #largestChildWidth:I,
    :cond_9f
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_b1

    .line 655
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 656
    goto :goto_98

    .line 659
    :cond_b1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 662
    .local v28, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    add-float v38, v38, v3

    .line 664
    const/high16 v3, 0x4000

    move/from16 v0, v42

    move v1, v3

    if-ne v0, v1, :cond_1a9

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_1a9

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1a9

    .line 668
    if-eqz v26, :cond_188

    .line 669
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 681
    :goto_ee
    if-eqz v13, :cond_fe

    .line 682
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 683
    .local v22, freeSpec:I
    move-object v0, v4

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 724
    .end local v22       #freeSpec:I,
    :cond_fe
    :goto_fe
    const/16 v31, 0x0

    .line 725
    .local v31, matchHeightLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_113

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_113

    .line 729
    const/16 v30, 0x1

    .line 730
    const/16 v31, 0x1

    .line 733
    :cond_113
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v3, v6

    .line 734
    .local v29, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v29

    .line 736
    .local v16, childHeight:I
    if-eqz v13, :cond_154

    .line 737
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 738
    .local v14, childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_154

    .line 741
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    if-gez v3, :cond_244

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    :goto_13a
    and-int/lit8 v23, v3, 0x70

    .line 743
    .local v23, gravity:I
    shr-int/lit8 v3, v23, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v25, v3, 0x1

    .line 746
    .local v25, index:I
    aget v3, v32, v25

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v32, v25

    .line 747
    aget v3, v33, v25

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v25

    .line 751
    .end local v14       #childBaseline:I,
    .end local v23       #gravity:I,
    .end local v25       #index:I,
    :cond_154
    move/from16 v0, v34

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 753
    if-eqz v10, :cond_24b

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_24b

    const/4 v3, 0x1

    move v10, v3

    .line 754
    :goto_168
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_253

    .line 759
    if-eqz v31, :cond_24f

    move/from16 v3, v29

    :goto_176
    move/from16 v0, v41

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 766
    :goto_17d
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_98

    .line 671
    .end local v16       #childHeight:I,
    .end local v29       #margin:I,
    .end local v31       #matchHeightLocally:Z,
    :cond_188
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 672
    .local v37, totalLength:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v0

    add-int v3, v3, v37

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_ee

    .line 686
    .end local v37       #totalLength:I,
    :cond_1a9
    const/high16 v35, -0x8000

    .line 688
    .local v35, oldWidth:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_1c4

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1c4

    .line 693
    const/16 v35, 0x0

    .line 694
    const/4 v3, -0x2

    move v0, v3

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 701
    :cond_1c4
    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-nez v3, :cond_218

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v7, v3

    :goto_1cf
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 705
    const/high16 v3, -0x8000

    move/from16 v0, v35

    move v1, v3

    if-eq v0, v1, :cond_1e6

    .line 706
    move/from16 v0, v35

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 709
    :cond_1e6
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 710
    .local v18, childWidth:I
    if-eqz v26, :cond_21b

    .line 711
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v0

    add-int v6, v6, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 719
    :goto_20c
    if-eqz v39, :cond_fe

    .line 720
    move/from16 v0, v18

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    goto/16 :goto_fe

    .line 701
    .end local v18       #childWidth:I,
    :cond_218
    const/4 v3, 0x0

    move v7, v3

    goto :goto_1cf

    .line 714
    .restart local v18       #childWidth:I,
    :cond_21b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 715
    .restart local v37       #totalLength:I,
    add-int v3, v37, v18

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_20c

    .line 741
    .end local v18       #childWidth:I,
    .end local v35       #oldWidth:I,
    .end local v37       #totalLength:I,
    .restart local v14       #childBaseline:I,
    .restart local v16       #childHeight:I,
    .restart local v29       #margin:I,
    .restart local v31       #matchHeightLocally:Z,
    :cond_244
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    goto/16 :goto_13a

    .line 753
    .end local v14       #childBaseline:I,
    :cond_24b
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_168

    :cond_24f
    move/from16 v3, v16

    .line 759
    goto/16 :goto_176

    .line 762
    :cond_253
    if-eqz v31, :cond_25d

    move/from16 v3, v29

    :goto_257
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_17d

    :cond_25d
    move/from16 v3, v16

    goto :goto_257

    .line 771
    .end local v4       #child:Landroid/view/View;,
    .end local v16       #childHeight:I,
    .end local v28       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    .end local v29       #margin:I,
    .end local v31       #matchHeightLocally:Z,
    :cond_260
    const/4 v3, 0x1

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_278

    const/4 v3, 0x0

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_278

    const/4 v3, 0x2

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_278

    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2b1

    .line 775
    :cond_278
    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, 0x0

    aget v4, v32, v4

    const/4 v5, 0x1

    aget v5, v32, v5

    .end local v5       #i:I,
    const/4 v6, 0x2

    aget v6, v32, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 778
    .local v12, ascent:I
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v4, 0x0

    aget v4, v33, v4

    const/4 v5, 0x1

    aget v5, v33, v5

    const/4 v6, 0x2

    aget v6, v33, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 781
    .local v21, descent:I
    add-int v3, v12, v21

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 784
    .end local v12       #ascent:I,
    .end local v21       #descent:I,
    :cond_2b1
    if-eqz v39, :cond_348

    const/high16 v3, -0x8000

    move/from16 v0, v42

    move v1, v3

    if-ne v0, v1, :cond_348

    .line 785
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 787
    const/4 v5, 0x0

    .restart local v5       #i:I,
    :goto_2c1
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_348

    .line 788
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 790
    .restart local v4       #child:Landroid/view/View;,
    if-nez v4, :cond_2e4

    .line 791
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4       #child:Landroid/view/View;,
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 787
    :goto_2e1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c1

    .line 795
    .restart local v4       #child:Landroid/view/View;,
    :cond_2e4
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_2f6

    .line 796
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 797
    goto :goto_2e1

    .line 800
    :cond_2f6
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 802
    .restart local v28       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    if-eqz v26, :cond_31f

    .line 803
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v0

    add-int v6, v6, v27

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4       #child:Landroid/view/View;,
    add-int/2addr v4, v6

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_2e1

    .line 806
    .restart local v4       #child:Landroid/view/View;,
    :cond_31f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 807
    .restart local v37       #totalLength:I,
    add-int v3, v37, v27

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4       #child:Landroid/view/View;,
    add-int/2addr v3, v4

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_2e1

    .line 814
    .end local v5       #i:I,
    .end local v28       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    .end local v37       #totalLength:I,
    :cond_348
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v5, v0

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 816
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v43, v0

    .line 819
    .local v43, widthSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v43

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 822
    move/from16 v0, v43

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v43

    .line 826
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    sub-int v20, v43, v3

    .line 827
    .local v20, delta:I
    if-eqz v20, :cond_5d1

    const/4 v3, 0x0

    cmpl-float v3, v38, v3

    if-lez v3, :cond_5d1

    .line 828
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3d2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    move/from16 v40, v3

    .line 830
    .local v40, weightSum:F
    :goto_396
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v32, v6

    aput v7, v32, v5

    aput v7, v32, v4

    aput v7, v32, v3

    .line 831
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v33, v6

    aput v7, v33, v5

    aput v7, v33, v4

    aput v7, v33, v3

    .line 832
    const/16 v34, -0x1

    .line 834
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 836
    const/4 v5, 0x0

    .restart local v5       #i:I,
    :goto_3b9
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_52b

    .line 837
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 839
    .restart local v4       #child:Landroid/view/View;,
    if-eqz v4, :cond_3cf

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3d5

    .line 836
    .end local v4       #child:Landroid/view/View;,
    :cond_3cf
    :goto_3cf
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b9

    .end local v5       #i:I,
    .end local v40       #weightSum:F,
    :cond_3d2
    move/from16 v40, v38

    .line 828
    goto :goto_396

    .line 843
    .restart local v4       #child:Landroid/view/View;,
    .restart local v5       #i:I,
    .restart local v40       #weightSum:F,
    :cond_3d5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout$LayoutParams;

    .line 846
    .restart local v28       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v15, v0

    .line 847
    .local v15, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_440

    .line 849
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v40

    move v0, v3

    float-to-int v0, v0

    move/from16 v36, v0

    .line 850
    .local v36, share:I
    sub-float v40, v40, v15

    .line 851
    sub-int v20, v20, v36

    .line 853
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v6, v0

    move/from16 v0, p2

    move v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 860
    .local v17, childHeightMeasureSpec:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_426

    const/high16 v3, 0x4000

    move/from16 v0, v42

    move v1, v3

    if-eq v0, v1, :cond_4d6

    .line 863
    :cond_426
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v18, v3, v36

    .line 864
    .restart local v18       #childWidth:I,
    if-gez v18, :cond_430

    .line 865
    const/16 v18, 0x0

    .line 868
    :cond_430
    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 879
    .end local v17       #childHeightMeasureSpec:I,
    .end local v18       #childWidth:I,
    .end local v36       #share:I,
    :cond_440
    :goto_440
    if-eqz v26, :cond_4eb

    .line 880
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 888
    :goto_465
    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_519

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_519

    const/4 v3, 0x1

    move/from16 v31, v3

    .line 891
    .restart local v31       #matchHeightLocally:Z,
    :goto_477
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v3, v6

    .line 892
    .restart local v29       #margin:I,
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v29

    .line 893
    .restart local v16       #childHeight:I,
    move/from16 v0, v34

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 894
    if-eqz v31, :cond_51e

    move/from16 v3, v29

    :goto_495
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 897
    if-eqz v10, :cond_522

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_522

    const/4 v3, 0x1

    move v10, v3

    .line 899
    :goto_4a5
    if-eqz v13, :cond_3cf

    .line 900
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 901
    .restart local v14       #childBaseline:I,
    const/4 v3, -0x1

    if-eq v14, v3, :cond_3cf

    .line 903
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    if-gez v3, :cond_525

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    :goto_4ba
    and-int/lit8 v23, v3, 0x70

    .line 905
    .restart local v23       #gravity:I,
    shr-int/lit8 v3, v23, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v25, v3, 0x1

    .line 908
    .restart local v25       #index:I,
    aget v3, v32, v25

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v32, v25

    .line 909
    aget v3, v33, v25

    sub-int v4, v16, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .end local v4       #child:Landroid/view/View;,
    move-result v3

    aput v3, v33, v25

    goto/16 :goto_3cf

    .line 873
    .end local v14       #childBaseline:I,
    .end local v16       #childHeight:I,
    .end local v23       #gravity:I,
    .end local v25       #index:I,
    .end local v29       #margin:I,
    .end local v31       #matchHeightLocally:Z,
    .restart local v4       #child:Landroid/view/View;,
    .restart local v17       #childHeightMeasureSpec:I,
    .restart local v36       #share:I,
    :cond_4d6
    if-lez v36, :cond_4e9

    move/from16 v3, v36

    :goto_4da
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_440

    :cond_4e9
    const/4 v3, 0x0

    goto :goto_4da

    .line 883
    .end local v17       #childHeightMeasureSpec:I,
    .end local v36       #share:I,
    :cond_4eb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v37, v0

    .line 884
    .restart local v37       #totalLength:I,
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v37

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_465

    .line 888
    .end local v37       #totalLength:I,
    :cond_519
    const/4 v3, 0x0

    move/from16 v31, v3

    goto/16 :goto_477

    .restart local v16       #childHeight:I,
    .restart local v29       #margin:I,
    .restart local v31       #matchHeightLocally:Z,
    :cond_51e
    move/from16 v3, v16

    .line 894
    goto/16 :goto_495

    .line 897
    :cond_522
    const/4 v3, 0x0

    move v10, v3

    goto :goto_4a5

    .line 903
    .restart local v14       #childBaseline:I,
    :cond_525
    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    goto :goto_4ba

    .line 916
    .end local v4       #child:Landroid/view/View;,
    .end local v14       #childBaseline:I,
    .end local v15       #childExtra:F,
    .end local v16       #childHeight:I,
    .end local v28       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    .end local v29       #margin:I,
    .end local v31       #matchHeightLocally:Z,
    :cond_52b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v5, v0

    .end local v5       #i:I,
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 921
    const/4 v3, 0x1

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_559

    const/4 v3, 0x0

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_559

    const/4 v3, 0x2

    aget v3, v32, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_559

    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_592

    .line 925
    :cond_559
    const/4 v3, 0x3

    aget v3, v32, v3

    const/4 v4, 0x0

    aget v4, v32, v4

    const/4 v5, 0x1

    aget v5, v32, v5

    const/4 v6, 0x2

    aget v6, v32, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 928
    .restart local v12       #ascent:I,
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v4, 0x0

    aget v4, v33, v4

    const/4 v5, 0x1

    aget v5, v33, v5

    const/4 v6, 0x2

    aget v6, v33, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 931
    .restart local v21       #descent:I,
    add-int v3, v12, v21

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 937
    .end local v12       #ascent:I,
    .end local v21       #descent:I,
    .end local v40       #weightSum:F,
    :cond_592
    :goto_592
    if-nez v10, :cond_59d

    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_59d

    .line 938
    move/from16 v34, v11

    .line 941
    :cond_59d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v34, v34, v3

    .line 944
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 946
    move/from16 v0, v34

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v43

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 948
    if-eqz v30, :cond_5d0

    .line 949
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 951
    :cond_5d0
    return-void

    .line 934
    :cond_5d1
    move v0, v11

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_592
.end method

.method measureNullChild(I)I
    .registers 3
    .parameter "childIndex"

    .prologue
    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 38
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 327
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 328
    const/16 v25, 0x0

    .line 329
    .local v25, maxWidth:I
    const/4 v11, 0x0

    .line 330
    .local v11, alternativeMaxWidth:I
    const/16 v33, 0x0

    .line 331
    .local v33, weightedMaxWidth:I
    const/4 v10, 0x1

    .line 332
    .local v10, allFillParent:Z
    const/16 v30, 0x0

    .line 334
    .local v30, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v16

    .line 336
    .local v16, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v34

    .line 337
    .local v34, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 339
    .local v18, heightMode:I
    const/16 v23, 0x0

    .line 341
    .local v23, matchWidth:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    move v12, v0

    .line 342
    .local v12, baselineChildIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v31, v0

    .line 344
    .local v31, useLargestChild:Z
    const/high16 v20, -0x8000

    .line 347
    .local v20, largestChildHeight:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2a
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_1a7

    .line 348
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 350
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_4d

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4       #child:Landroid/view/View;,
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 347
    :goto_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 355
    .restart local v4       #child:Landroid/view/View;,
    :cond_4d
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_5f

    .line 356
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 357
    goto :goto_4a

    .line 360
    :cond_5f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 362
    .local v21, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    add-float v30, v30, v3

    .line 364
    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_c7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_c7

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_c7

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 369
    .local v29, totalLength:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v3, v0

    add-int v3, v3, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 408
    :cond_a3
    :goto_a3
    if-ltz v12, :cond_b3

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_b3

    .line 409
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 415
    :cond_b3
    if-ge v5, v12, :cond_13e

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_13e

    .line 416
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .end local v4       #child:Landroid/view/View;,
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 371
    .end local v29       #totalLength:I,
    .restart local v4       #child:Landroid/view/View;,
    :cond_c7
    const/high16 v27, -0x8000

    .line 373
    .local v27, oldHeight:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_e2

    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_e2

    .line 378
    const/16 v27, 0x0

    .line 379
    const/4 v3, -0x2

    move v0, v3

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 386
    :cond_e2
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-nez v3, :cond_13b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v9, v3

    :goto_ee
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 390
    const/high16 v3, -0x8000

    move/from16 v0, v27

    move v1, v3

    if-eq v0, v1, :cond_104

    .line 391
    move/from16 v0, v27

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 394
    :cond_104
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 395
    .local v14, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 396
    .restart local v29       #totalLength:I,
    add-int v3, v29, v14

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 399
    if-eqz v31, :cond_a3

    .line 400
    move v0, v14

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_a3

    .line 386
    .end local v14       #childHeight:I,
    .end local v29       #totalLength:I,
    :cond_13b
    const/4 v3, 0x0

    move v9, v3

    goto :goto_ee

    .line 422
    .end local v27       #oldHeight:I,
    .restart local v29       #totalLength:I,
    :cond_13e
    const/16 v24, 0x0

    .line 423
    .local v24, matchWidthLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v34

    move v1, v3

    if-eq v0, v1, :cond_153

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_153

    .line 428
    const/16 v23, 0x1

    .line 429
    const/16 v24, 0x1

    .line 432
    :cond_153
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v0

    add-int v22, v3, v6

    .line 433
    .local v22, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v26, v3, v22

    .line 434
    .local v26, measuredWidth:I
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 436
    if-eqz v10, :cond_195

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_195

    const/4 v3, 0x1

    move v10, v3

    .line 437
    :goto_175
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_19b

    .line 442
    if-eqz v24, :cond_198

    move/from16 v3, v22

    :goto_183
    move/from16 v0, v33

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 449
    :goto_18a
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_4a

    .line 436
    :cond_195
    const/4 v3, 0x0

    move v10, v3

    goto :goto_175

    :cond_198
    move/from16 v3, v26

    .line 442
    goto :goto_183

    .line 445
    :cond_19b
    if-eqz v24, :cond_1a4

    move/from16 v3, v22

    :goto_19f
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_18a

    :cond_1a4
    move/from16 v3, v26

    goto :goto_19f

    .line 452
    .end local v4       #child:Landroid/view/View;,
    .end local v21       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    .end local v22       #margin:I,
    .end local v24       #matchWidthLocally:Z,
    .end local v26       #measuredWidth:I,
    .end local v29       #totalLength:I,
    :cond_1a7
    if-eqz v31, :cond_21b

    const/high16 v3, -0x8000

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_21b

    .line 453
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 455
    const/4 v5, 0x0

    :goto_1b7
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_21b

    .line 456
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 458
    .restart local v4       #child:Landroid/view/View;,
    if-nez v4, :cond_1da

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4       #child:Landroid/view/View;,
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 455
    :goto_1d7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b7

    .line 463
    .restart local v4       #child:Landroid/view/View;,
    :cond_1da
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1ec

    .line 464
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 465
    goto :goto_1d7

    .line 468
    :cond_1ec
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 471
    .restart local v21       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 472
    .restart local v29       #totalLength:I,
    add-int v3, v29, v20

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4       #child:Landroid/view/View;,
    add-int/2addr v3, v4

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1d7

    .line 478
    .end local v21       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    .end local v29       #totalLength:I,
    :cond_21b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v5, v0

    .end local v5       #i:I,
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 480
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v19, v0

    .line 483
    .local v19, heightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v19

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 486
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v19

    .line 490
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    sub-int v17, v19, v3

    .line 491
    .local v17, delta:I
    if-eqz v17, :cond_3c6

    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-lez v3, :cond_3c6

    .line 492
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_287

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    move/from16 v32, v3

    .line 494
    .local v32, weightSum:F
    :goto_269
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 496
    const/4 v5, 0x0

    .restart local v5       #i:I,
    :goto_270
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_371

    .line 497
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 499
    .restart local v4       #child:Landroid/view/View;,
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_28a

    .line 496
    .end local v4       #child:Landroid/view/View;,
    :goto_284
    add-int/lit8 v5, v5, 0x1

    goto :goto_270

    .end local v5       #i:I,
    .end local v32       #weightSum:F,
    :cond_287
    move/from16 v32, v30

    .line 492
    goto :goto_269

    .line 503
    .restart local v4       #child:Landroid/view/View;,
    .restart local v5       #i:I,
    .restart local v32       #weightSum:F,
    :cond_28a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    .line 505
    .restart local v21       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    move-object/from16 v0, v21

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v13, v0

    .line 506
    .local v13, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_2ed

    .line 508
    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v32

    move v0, v3

    float-to-int v0, v0

    move/from16 v28, v0

    .line 509
    .local v28, share:I
    sub-float v32, v32, v13

    .line 510
    sub-int v17, v17, v28

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v6, v0

    move/from16 v0, p1

    move v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v15

    .line 518
    .local v15, childWidthMeasureSpec:I
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_2db

    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_357

    .line 521
    :cond_2db
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v28

    .line 522
    .restart local v14       #childHeight:I,
    if-gez v14, :cond_2e4

    .line 523
    const/4 v14, 0x0

    .line 526
    :cond_2e4
    const/high16 v3, 0x4000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v15, v3}, Landroid/view/View;->measure(II)V

    .line 537
    .end local v14       #childHeight:I,
    .end local v15       #childWidthMeasureSpec:I,
    .end local v28       #share:I,
    :cond_2ed
    :goto_2ed
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v3, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v6, v0

    add-int v22, v3, v6

    .line 538
    .restart local v22       #margin:I,
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v26, v3, v22

    .line 539
    .restart local v26       #measuredWidth:I,
    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 541
    const/high16 v3, 0x4000

    move/from16 v0, v34

    move v1, v3

    if-eq v0, v1, :cond_367

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_367

    const/4 v3, 0x1

    move/from16 v24, v3

    .line 544
    .restart local v24       #matchWidthLocally:Z,
    :goto_315
    if-eqz v24, :cond_36b

    move/from16 v3, v22

    :goto_319
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 547
    if-eqz v10, :cond_36e

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_36e

    const/4 v3, 0x1

    move v10, v3

    .line 549
    :goto_329
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    .line 550
    .restart local v29       #totalLength:I,
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v29

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4       #child:Landroid/view/View;,
    add-int/2addr v3, v4

    move/from16 v0, v29

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_284

    .line 531
    .end local v22       #margin:I,
    .end local v24       #matchWidthLocally:Z,
    .end local v26       #measuredWidth:I,
    .end local v29       #totalLength:I,
    .restart local v4       #child:Landroid/view/View;,
    .restart local v15       #childWidthMeasureSpec:I,
    .restart local v28       #share:I,
    :cond_357
    if-lez v28, :cond_365

    move/from16 v3, v28

    :goto_35b
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v15, v3}, Landroid/view/View;->measure(II)V

    goto :goto_2ed

    :cond_365
    const/4 v3, 0x0

    goto :goto_35b

    .line 541
    .end local v15       #childWidthMeasureSpec:I,
    .end local v28       #share:I,
    .restart local v22       #margin:I,
    .restart local v26       #measuredWidth:I,
    :cond_367
    const/4 v3, 0x0

    move/from16 v24, v3

    goto :goto_315

    .restart local v24       #matchWidthLocally:Z,
    :cond_36b
    move/from16 v3, v26

    .line 544
    goto :goto_319

    .line 547
    :cond_36e
    const/4 v3, 0x0

    move v10, v3

    goto :goto_329

    .line 555
    .end local v4       #child:Landroid/view/View;,
    .end local v13       #childExtra:F,
    .end local v21       #lp:Landroid/widget/LinearLayout$LayoutParams;,
    .end local v22       #margin:I,
    .end local v24       #matchWidthLocally:Z,
    .end local v26       #measuredWidth:I,
    :cond_371
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v5, v0

    .end local v5       #i:I,
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 562
    .end local v32       #weightSum:F,
    :goto_387
    if-nez v10, :cond_392

    const/high16 v3, 0x4000

    move/from16 v0, v34

    move v1, v3

    if-eq v0, v1, :cond_392

    .line 563
    move/from16 v25, v11

    .line 566
    :cond_392
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v25, v25, v3

    .line 569
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v25

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 571
    move/from16 v0, v25

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 573
    if-eqz v23, :cond_3c5

    .line 574
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 576
    :cond_3c5
    return-void

    .line 558
    :cond_3c6
    move v0, v11

    move/from16 v1, v33

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_387
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1046
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1047
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutVertical()V

    .line 1051
    :goto_8
    return-void

    .line 1049
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutHorizontal()V

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 308
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 309
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 313
    :goto_8
    return-void

    .line 311
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_8
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .parameter "baselineAligned"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 172
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 173
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 245
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2b

    .line 246
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_2b
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 250
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1292
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_15

    .line 1293
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_a

    .line 1294
    or-int/lit8 p1, p1, 0x3

    .line 1297
    :cond_a
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_10

    .line 1298
    or-int/lit8 p1, p1, 0x30

    .line 1301
    :cond_10
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1302
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1304
    :cond_15
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4
    .parameter "horizontalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1308
    and-int/lit8 v0, p1, 0x7

    .line 1309
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v0, :cond_12

    .line 1310
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x8

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1311
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1313
    :cond_12
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 1265
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1266
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1267
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1269
    :cond_9
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .parameter "verticalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1317
    and-int/lit8 v0, p1, 0x70

    .line 1318
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 1319
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1320
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1322
    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .parameter "weightSum"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 304
    return-void
.end method
