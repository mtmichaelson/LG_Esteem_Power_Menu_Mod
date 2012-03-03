.class public Lcom/lge/sui/widget/window/SUIIconButton;
.super Landroid/widget/Button;
.source "SUIIconButton.java"



# static fields
.field static final ATTR_ALIGN_LEFT:Ljava/lang/String; = "alignLeft"

.field static final ATTR_DRAWABLE_ID:Ljava/lang/String; = "drawable"

.field static final ATTR_SPACING:Ljava/lang/String; = "spacing"



# instance fields
.field button_width:I

.field private mAlignLeft:Z

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mSpace:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mSpace:I

    .line 37
    iput v1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingLeft:I

    .line 38
    iput v1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingRight:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mAlignLeft:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/16 v0, 0x8

    iput v0, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mSpace:I

    .line 37
    iput v1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingLeft:I

    .line 38
    iput v1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingRight:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mAlignLeft:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mContext:Landroid/content/Context;

    .line 63
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/sui/widget/window/SUIIconButton;->initIconTextView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method private getCommand()Lcom/lge/sui/widget/window/SUICommandBar$Command;
    .registers 2

    .prologue
    .line 175
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUIIconButton;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/lge/sui/widget/window/SUICommandBar$Command;

    return-object p0
.end method

.method private initIconTextView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mContext:Landroid/content/Context;

    .line 95
    move v0, p3

    .line 99
    .local v0, IconResId:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mAlignLeft:Z

    .line 101
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/sui/widget/window/SUIIconButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_14
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isAlignLeft()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mAlignLeft:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23
    .parameter "canvas"

    .prologue
    .line 180
    invoke-super/range {p0 .. p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 181
    const/4 v7, -0x1

    .line 183
    .local v7, buttonHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    .line 184
    .local v8, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_b1

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getGravity()I

    move-result v17

    and-int/lit8 v13, v17, 0x70

    .line 187
    .local v13, verticalGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableHeight:I

    move v9, v0

    .line 189
    .local v9, height:I
    const/4 v15, 0x0

    .line 191
    .local v15, y:I
    sparse-switch v13, :sswitch_data_e8

    .line 199
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getScrollX()I

    move-result v12

    .line 202
    .local v12, scrollX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/sui/widget/window/SUIIconButton;->mAlignLeft:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c4

    .line 203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v5, v12, v17

    .line 204
    .local v5, boundLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableWidth:I

    move/from16 v17, v0

    add-int v6, v5, v17

    .line 209
    .local v6, boundRight:I
    :goto_36
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getPaddingBottom()I

    move-result v18

    sub-int v7, v17, v18

    .line 210
    if-ge v7, v9, :cond_dc

    .line 211
    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move v0, v9

    int-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    const-wide v19, 0x3feccccccccccccdL

    mul-double v10, v17, v19

    .line 212
    .local v10, rate:D
    sub-int v17, v6, v5

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v10

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move v14, v0

    .line 213
    .local v14, x_length:I
    move v0, v9

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v10

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v16, v0

    .line 214
    .local v16, y_length:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getPaddingTop()I

    move-result v17

    add-int v18, v5, v14

    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getPaddingTop()I

    move-result v19

    add-int v19, v19, v16

    move-object v0, v8

    move v1, v5

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingLeft:I

    move/from16 v17, v0

    add-int v17, v17, v14

    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getPaddingTop()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingRight:I

    move/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getPaddingBottom()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-super {v0, v1, v2, v3, v4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 222
    .end local v10       #rate:D,
    .end local v14       #x_length:I,
    .end local v16       #y_length:I,
    :goto_ab
    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    .end local v5       #boundLeft:I,
    .end local v6       #boundRight:I,
    .end local v9       #height:I,
    .end local v12       #scrollX:I,
    .end local v13       #verticalGravity:I,
    .end local v15       #y:I,
    :cond_b1
    return-void

    .line 193
    .restart local v9       #height:I,
    .restart local v13       #verticalGravity:I,
    .restart local v15       #y:I,
    :sswitch_b2
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getHeight()I

    move-result v17

    sub-int v15, v17, v9

    .line 194
    goto/16 :goto_1a

    .line 196
    :sswitch_ba
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getHeight()I

    move-result v17

    sub-int v17, v17, v9

    div-int/lit8 v15, v17, 0x2

    goto/16 :goto_1a

    .line 206
    .restart local v12       #scrollX:I,
    :cond_c4
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getWidth()I

    move-result v17

    add-int v17, v17, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 207
    .restart local v6       #boundRight:I,
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableWidth:I

    move/from16 v17, v0

    sub-int v5, v6, v17

    .restart local v5       #boundLeft:I,
    goto/16 :goto_36

    .line 220
    :cond_dc
    add-int v17, v15, v9

    move-object v0, v8

    move v1, v5

    move v2, v15

    move v3, v6

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_ab

    .line 191
    :sswitch_data_e8
    .sparse-switch
        0x10 -> :sswitch_ba
        0x50 -> :sswitch_b2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 161
    invoke-super/range {p0 .. p5}, Landroid/widget/Button;->onLayout(ZIIII)V

    .line 162
    sub-int v3, p4, p2

    iput v3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->button_width:I

    .line 163
    invoke-direct {p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getCommand()Lcom/lge/sui/widget/window/SUICommandBar$Command;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/sui/widget/window/SUICommandBar$Command;->getRate()D

    move-result-wide v1

    .line 164
    .local v1, rate:D
    iget v3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->button_width:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 165
    .local v0, f:Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v3

    iput v3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingLeft:I

    iput v3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingRight:I

    .line 167
    return-void
.end method

.method public setAlignLeft(Z)V
    .registers 2
    .parameter "mAlignLeft"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mAlignLeft:Z

    .line 82
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter "bitmap"

    .prologue
    .line 151
    if-eqz p1, :cond_11

    .line 152
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUIIconButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :goto_10
    return-void

    .line 154
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/sui/widget/window/SUIIconButton;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter "drawable"

    .prologue
    const/4 v4, 0x0

    .line 122
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    if-eqz p1, :cond_33

    .line 125
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableWidth:I

    .line 126
    iget-object v2, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableHeight:I

    .line 132
    :goto_15
    iget-boolean v2, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mAlignLeft:Z

    if-eqz v2, :cond_3b

    .line 133
    iget v2, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingLeft:I

    iget v3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableWidth:I

    if-nez v3, :cond_38

    move v3, v4

    :goto_23
    add-int v0, v2, v3

    .line 135
    .local v0, leftPadding:I
    iget v1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingRight:I

    .line 141
    .local v1, rightPadding:I
    :goto_27
    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/sui/widget/window/SUIIconButton;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v2, v1, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 143
    return-void

    .line 128
    .end local v0       #leftPadding:I,
    .end local v1       #rightPadding:I,
    :cond_33
    iput v4, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableHeight:I

    iput v4, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableWidth:I

    goto :goto_15

    .line 133
    :cond_38
    iget v3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mSpace:I

    goto :goto_23

    .line 137
    :cond_3b
    iget v0, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingLeft:I

    .line 138
    .restart local v0       #leftPadding:I,
    iget v2, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingRight:I

    iget v3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableWidth:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mDrawableWidth:I

    if-nez v3, :cond_4a

    move v3, v4

    :goto_47
    add-int v1, v2, v3

    .restart local v1       #rightPadding:I,
    goto :goto_27

    .end local v1       #rightPadding:I,
    :cond_4a
    iget v3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mSpace:I

    goto :goto_47
.end method

.method public setPadding(IIII)V
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 228
    iput p1, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingLeft:I

    .line 229
    iput p3, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mPaddingRight:I

    .line 230
    move v0, p1

    .line 231
    .local v0, leftPos:I
    move v1, p3

    .line 233
    .local v1, rightPos:I
    iget-boolean v2, p0, Lcom/lge/sui/widget/window/SUIIconButton;->mAlignLeft:Z

    if-eqz v2, :cond_f

    .line 235
    move v1, p3

    .line 240
    :goto_b
    invoke-super {p0, v0, p2, v1, p4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 241
    return-void

    .line 237
    :cond_f
    move v0, p1

    goto :goto_b
.end method
