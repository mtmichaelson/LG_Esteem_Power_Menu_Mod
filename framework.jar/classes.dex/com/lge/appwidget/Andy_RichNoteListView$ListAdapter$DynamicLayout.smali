.class Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;
.super Landroid/widget/RelativeLayout;
.source "Andy_RichNoteListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DynamicLayout"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;
    }
.end annotation


# instance fields
.field availableHeight:I

.field drawCropImage:Z

.field lp:Landroid/widget/RelativeLayout$LayoutParams;

.field parentHeight:I

.field final synthetic this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;Landroid/content/Context;II)V
    .registers 11
    .parameter
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    const-string v5, ""

    .line 172
    iput-object p1, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    .line 173
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 175
    iput p4, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->parentHeight:I

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->setGravity(I)V

    .line 177
    const-string/jumbo v0, "widht>>>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v0, "height"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    const/16 v0, 0x14

    invoke-virtual {p0, v3, v0, v3, v3}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->setPadding(IIII)V

    .line 181
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    iget-object v0, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 187
    return-void
.end method


# virtual methods
.method public populateDynamicLayout(Lcom/lge/appwidget/Note;)V
    .registers 25
    .parameter "note"

    .prologue
    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->removeAllViews()V

    .line 246
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->parentHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->availableHeight:I

    .line 249
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->drawCropImage:Z

    .line 251
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 252
    .local v11, mLinearLayout:Landroid/widget/LinearLayout;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x2

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    const/16 v18, 0x1

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 256
    const/16 v18, 0x1

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 260
    invoke-virtual/range {p1 .. p1}, Lcom/lge/appwidget/Note;->resetIndex()V

    .line 262
    :cond_4a
    invoke-virtual/range {p1 .. p1}, Lcom/lge/appwidget/Note;->getType()I

    move-result v17

    .local v17, type:I
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_61

    .line 264
    packed-switch v17, :pswitch_data_2aa

    .line 361
    :goto_59
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->drawCropImage:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4a

    .line 367
    :cond_61
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->addView(Landroid/view/View;)V

    .line 368
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->drawCropImage:Z

    move/from16 v18, v0

    if-nez v18, :cond_77

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->availableHeight:I

    move/from16 v18, v0

    if-gez v18, :cond_ab

    .line 370
    :cond_77
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 372
    .local v5, cropImage:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView;->cropImageDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->lp:Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    .end local v5       #cropImage:Landroid/widget/ImageView;,
    :cond_ab
    return-void

    .line 267
    :pswitch_ac
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->availableHeight:I

    move/from16 v18, v0

    if-gez v18, :cond_bd

    .line 268
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->drawCropImage:Z

    goto :goto_59

    .line 271
    :cond_bd
    invoke-virtual/range {p1 .. p1}, Lcom/lge/appwidget/Note;->getNextText()Ljava/lang/String;

    move-result-object v16

    .line 272
    .local v16, text:Ljava/lang/String;
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 273
    .local v15, tempTextView:Landroid/widget/TextView;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    const/16 v18, 0x2

    const/high16 v19, 0x4170

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 279
    const/high16 v18, -0x100

    move-object v0, v15

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const/16 v18, 0x18

    const/16 v19, 0x0

    const/16 v20, 0x12

    const/16 v21, 0x0

    move-object v0, v15

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 284
    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/lge/appwidget/Andy_RichNoteListView;->access$100(Lcom/lge/appwidget/Andy_RichNoteListView;)Lcom/lge/appwidget/TextViewBoundaryChecker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/lge/appwidget/TextViewBoundaryChecker;->setTextView(Landroid/widget/TextView;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/lge/appwidget/Andy_RichNoteListView;->access$100(Lcom/lge/appwidget/Andy_RichNoteListView;)Lcom/lge/appwidget/TextViewBoundaryChecker;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->availableHeight:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/lge/appwidget/TextViewBoundaryChecker;->isTextCrossBoundry(I)Z

    move-result v18

    if-eqz v18, :cond_148

    .line 290
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->drawCropImage:Z

    goto/16 :goto_59

    .line 294
    :cond_148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->availableHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/lge/appwidget/Andy_RichNoteListView;->access$100(Lcom/lge/appwidget/Andy_RichNoteListView;)Lcom/lge/appwidget/TextViewBoundaryChecker;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/lge/appwidget/TextViewBoundaryChecker;->getTextViewHeight()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->availableHeight:I

    goto/16 :goto_59

    .line 303
    .end local v15       #tempTextView:Landroid/widget/TextView;,
    .end local v16       #text:Ljava/lang/String;,
    :pswitch_16c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->availableHeight:I

    move/from16 v18, v0

    if-gez v18, :cond_17e

    .line 304
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->drawCropImage:Z

    goto/16 :goto_59

    .line 307
    :cond_17e
    new-instance v12, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 310
    .local v12, mRelativeLayout1:Landroid/widget/RelativeLayout;
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v19, 0x14a

    const/16 v20, 0x12c

    invoke-direct/range {v18 .. v20}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 315
    .local v14, t:Landroid/widget/ImageView;
    const/4 v9, 0x0

    .line 317
    .local v9, mBitmap:Landroid/graphics/Bitmap;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-direct/range {v18 .. v20}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    const/16 v18, 0xa

    const/16 v19, 0xa

    const/16 v20, 0xa

    const/16 v21, 0xa

    move-object v0, v14

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/lge/appwidget/Note;->getNextImagePath()Ljava/lang/String;

    move-result-object v13

    .line 325
    .local v13, path:Ljava/lang/String;
    const-string v18, "/"

    const-string v19, "\\"

    move-object v0, v13

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 328
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    .local v6, imageFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1ed

    .line 331
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 334
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView;->photoBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 337
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    move-object v0, v8

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 340
    .local v8, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0xc

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 341
    const/16 v18, 0xb

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 342
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 343
    .local v10, mImageViewIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->this$1:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter;->this$0:Lcom/lge/appwidget/Andy_RichNoteListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView;->photoFoldDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 346
    invoke-virtual {v12, v10, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->availableHeight:I

    move/from16 v18, v0

    const/16 v19, 0x12c

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->availableHeight:I

    goto/16 :goto_59

    .line 351
    .end local v6       #imageFile:Ljava/io/File;,
    .end local v8       #lp:Landroid/widget/RelativeLayout$LayoutParams;,
    .end local v9       #mBitmap:Landroid/graphics/Bitmap;,
    .end local v10       #mImageViewIcon:Landroid/widget/ImageView;,
    .end local v12       #mRelativeLayout1:Landroid/widget/RelativeLayout;,
    .end local v13       #path:Ljava/lang/String;,
    .end local v14       #t:Landroid/widget/ImageView;,
    :pswitch_267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->availableHeight:I

    move/from16 v18, v0

    if-gez v18, :cond_279

    .line 352
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->drawCropImage:Z

    goto/16 :goto_59

    .line 355
    :cond_279
    new-instance v7, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/lge/appwidget/Note;->getAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/appwidget/Note;->locationInfo:Lcom/lge/appwidget/Note$LocationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/lge/appwidget/Note$LocationInfo;->imageLocation:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "/"

    const-string v22, "\\"

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;-><init>(Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .local v7, l:Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout$LocationLayout;
    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_59

    .line 264
    :pswitch_data_2aa
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_16c
        :pswitch_267
    .end packed-switch
.end method

.method public setLayoutSize(II)V
    .registers 4
    .parameter "mWidth"
    .parameter "mHeight"

    .prologue
    .line 190
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iput p2, p0, Lcom/lge/appwidget/Andy_RichNoteListView$ListAdapter$DynamicLayout;->parentHeight:I

    .line 195
    return-void
.end method
