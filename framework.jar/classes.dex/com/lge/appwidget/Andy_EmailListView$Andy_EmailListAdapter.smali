.class public Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_EmailListView.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_EmailListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Andy_EmailListAdapter"
.end annotation


# instance fields
.field private mEmailListParcelable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_EmailListParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_EmailListView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_EmailListView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_EmailListParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p3, emailParcelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_EmailListParcelable;>;"
    iput-object p1, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->this$0:Lcom/lge/appwidget/Andy_EmailListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 144
    iput-object p3, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->mEmailListParcelable:Ljava/util/ArrayList;

    .line 145
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 146
    return-void
.end method


# virtual methods
.method public bindView(ILandroid/view/View;)V
    .registers 26
    .parameter "position"
    .parameter "view"

    .prologue
    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->this$0:Lcom/lge/appwidget/Andy_EmailListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lge/appwidget/Andy_EmailListView;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 209
    .local v6, context:Landroid/content/Context;
    const-string v14, ""

    .line 210
    .local v14, sender:Ljava/lang/String;
    if-nez v6, :cond_f

    .line 358
    :goto_e
    return-void

    .line 216
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->mEmailListParcelable:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/appwidget/Andy_EmailListParcelable;

    .line 218
    .local v8, email:Lcom/lge/appwidget/Andy_EmailListParcelable;
    const v19, 0x20500c8

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 219
    .local v10, nameView:Landroid/widget/TextView;
    const v19, 0x20500ca

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 220
    .local v16, titleView:Landroid/widget/TextView;
    const v19, 0x20500cd

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 221
    .local v15, timeView:Landroid/widget/TextView;
    const v19, 0x20500cb

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 223
    .local v9, messageView:Landroid/widget/TextView;
    const v19, 0x20500c9

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 224
    .local v11, notiView:Landroid/widget/ImageView;
    const v19, 0x20500cf

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 225
    .local v4, attachView:Landroid/widget/ImageView;
    const v19, 0x20500ce

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 227
    .local v5, comView:Landroid/widget/ImageView;
    const v19, 0x20500c6

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 228
    .local v13, readBgView:Landroid/widget/ImageView;
    const v19, 0x20500c7

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 230
    .local v17, unreadBgView:Landroid/widget/ImageView;
    invoke-virtual {v8}, Lcom/lge/appwidget/Andy_EmailListParcelable;->getName()Ljava/lang/String;

    move-result-object v14

    .line 232
    const-string v19, "<"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_c2

    const-string v19, "<"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_c2

    .line 234
    const/16 v19, 0x0

    const-string v20, "<"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move-object v0, v14

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 237
    :cond_c2
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {v8}, Lcom/lge/appwidget/Andy_EmailListParcelable;->getSubject()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {v8}, Lcom/lge/appwidget/Andy_EmailListParcelable;->getTime()Ljava/lang/String;

    move-result-object v19

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v8}, Lcom/lge/appwidget/Andy_EmailListParcelable;->getMessage()Ljava/lang/String;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v8}, Lcom/lge/appwidget/Andy_EmailListParcelable;->isRead()Z

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e7

    .line 244
    const/16 v19, 0xc8

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 245
    const/16 v19, 0xc8

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 246
    const/16 v19, 0xc8

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    const/16 v19, 0xc8

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    sget-object v19, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 251
    const/16 v19, 0x0

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    const/16 v19, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 254
    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    :goto_165
    invoke-virtual {v8}, Lcom/lge/appwidget/Andy_EmailListParcelable;->getPriority()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_260

    .line 273
    const/16 v19, 0x0

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    :goto_179
    invoke-virtual {v11}, Landroid/widget/ImageView;->getVisibility()I

    move-result v18

    .line 281
    .local v18, visible:I
    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_26a

    .line 283
    const-string v19, ">>>>"

    const-string/jumbo v20, "visible gone"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 285
    .local v12, plControl:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->this$0:Lcom/lge/appwidget/Andy_EmailListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lge/appwidget/Andy_EmailListView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x207001d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object v1, v12

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 286
    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    .end local v12       #plControl:Landroid/widget/RelativeLayout$LayoutParams;,
    :cond_1af
    :goto_1af
    invoke-virtual {v8}, Lcom/lge/appwidget/Andy_EmailListParcelable;->getIsAttach()J

    move-result-wide v19

    const-wide/16 v21, 0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_298

    .line 298
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    :goto_1c1
    invoke-virtual {v8}, Lcom/lge/appwidget/Andy_EmailListParcelable;->getEmailAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, domain:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/lge/appwidget/Andy_EmailListParcelable;->getAccountType()I

    move-result v3

    .line 311
    .local v3, accountType:I
    const/16 v19, 0x1

    move v0, v3

    move/from16 v1, v19

    if-ne v0, v1, :cond_2a2

    .line 314
    const v19, 0x20200c8

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 258
    .end local v3       #accountType:I,
    .end local v7       #domain:Ljava/lang/String;,
    .end local v18       #visible:I,
    :cond_1e7
    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 261
    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    sget-object v19, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 265
    const/16 v19, 0x8

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 268
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_165

    .line 277
    :cond_260
    const/16 v19, 0x8

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_179

    .line 288
    .restart local v18       #visible:I,
    :cond_26a
    if-nez v18, :cond_1af

    .line 290
    const-string v19, ">>>>"

    const-string/jumbo v20, "visible visible"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 292
    .restart local v12       #plControl:Landroid/widget/RelativeLayout$LayoutParams;,
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->this$0:Lcom/lge/appwidget/Andy_EmailListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/lge/appwidget/Andy_EmailListView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x207001e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object v1, v12

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 293
    move-object/from16 v0, v16

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1af

    .line 302
    .end local v12       #plControl:Landroid/widget/RelativeLayout$LayoutParams;,
    :cond_298
    const/16 v19, 0x8

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c1

    .line 319
    .restart local v3       #accountType:I,
    .restart local v7       #domain:Ljava/lang/String;,
    :cond_2a2
    const-string v19, "@aol"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2c0

    .line 321
    const v19, 0x20200c4

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 324
    :cond_2c0
    const-string v19, "@clix"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2f7

    const-string v19, "@oninet"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2f7

    const-string v19, "@oniduo"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2f7

    const-string v19, "@oninetspeed"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2f7

    const-string v19, "@tele2"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_30a

    .line 327
    :cond_2f7
    const v19, 0x20200c5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 330
    :cond_30a
    const-string v19, "@gmail"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_320

    const-string v19, "@google"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_333

    .line 333
    :cond_320
    const v19, 0x20200c6

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 336
    :cond_333
    const-string v19, "@yahoo"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_354

    const-string v19, "@ymail"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_354

    const-string v19, "@rocketmail"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_367

    .line 339
    :cond_354
    const v19, 0x20200cb

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 342
    :cond_367
    const-string v19, "@hotmail"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_37d

    const-string v19, "@live"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_390

    .line 344
    :cond_37d
    const v19, 0x20200c7

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 345
    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 347
    :cond_390
    const-string v19, "@verizon"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3ae

    .line 349
    const v19, 0x20200ca

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 350
    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 354
    :cond_3ae
    const v19, 0x20200c9

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 355
    const/16 v19, 0x0

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->mEmailListParcelable:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 164
    const/4 v0, 0x0

    .line 167
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->mEmailListParcelable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getEmailListParcelable()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_EmailListParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->mEmailListParcelable:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 177
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 184
    if-nez p2, :cond_a

    .line 186
    invoke-virtual {p0, p3}, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, view:Landroid/view/View;
    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->bindView(ILandroid/view/View;)V

    .line 195
    return-object v0

    .line 190
    .end local v0       #view:Landroid/view/View;,
    :cond_a
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;,
    goto :goto_6
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x203000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "view"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 363
    iget-object v5, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->this$0:Lcom/lge/appwidget/Andy_EmailListView;

    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_EmailListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    .line 365
    .local v3, listAdapter:Landroid/widget/ListAdapter;
    if-eqz v3, :cond_11

    iget-object v5, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->this$0:Lcom/lge/appwidget/Andy_EmailListView;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_EmailListView;->access$000(Lcom/lge/appwidget/Andy_EmailListView;)Z

    move-result v5

    if-ne v5, v7, :cond_12

    .line 410
    :cond_11
    :goto_11
    return-void

    .line 372
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 374
    .local v4, position:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->mEmailListParcelable:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_EmailListParcelable;

    .line 376
    .local v1, email:Lcom/lge/appwidget/Andy_EmailListParcelable;
    iget-object v5, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->this$0:Lcom/lge/appwidget/Andy_EmailListView;

    invoke-virtual {v5}, Lcom/lge/appwidget/Andy_EmailListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 378
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_34

    .line 380
    const-string v5, "Andy_EmailListView"

    const-string v6, "Context is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 386
    :cond_34
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.email.activity.MAIL_VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 387
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    const/high16 v5, 0x400

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 389
    const-string/jumbo v5, "outer"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 390
    const-string v5, "accountID"

    iget v6, v1, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountId:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const-string v5, "msgBoxID"

    iget v6, v1, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgBoxIdx:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    const-string v5, "msgID"

    iget v6, v1, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgId:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method public setEmailListItem(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_EmailListParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, emailListParcelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_EmailListParcelable;>;"
    iput-object p2, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->mEmailListParcelable:Ljava/util/ArrayList;

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 153
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailListView$Andy_EmailListAdapter;->notifyDataSetChanged()V

    .line 154
    return-void
.end method
