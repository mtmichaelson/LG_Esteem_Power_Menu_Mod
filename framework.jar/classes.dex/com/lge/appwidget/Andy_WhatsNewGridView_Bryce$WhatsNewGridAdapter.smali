.class public Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_WhatsNewGridView_Bryce.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WhatsNewGridAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p3, parcel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;>;"
    iput-object p1, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 145
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 146
    invoke-static {p1, p3}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->access$002(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 147
    return-void
.end method

.method private bindView(ILandroid/view/View;)V
    .registers 15
    .parameter "position"
    .parameter "view"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 189
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-static {v7}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->access$000(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_e

    .line 349
    :cond_d
    :goto_d
    return-void

    .line 194
    :cond_e
    const/4 v6, 0x0

    .line 197
    .local v6, whatsNew:Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-static {v7}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->access$000(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6       #whatsNew:Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;,
    check-cast v6, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;

    .line 199
    .restart local v6       #whatsNew:Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;,
    if-eqz v6, :cond_d

    .line 201
    const v7, 0x205016e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 202
    .local v1, appKind:Landroid/widget/ImageView;
    invoke-virtual {v6}, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->getAppType()I

    move-result v2

    .line 203
    .local v2, appType:I
    invoke-virtual {v6}, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->getUnreadCount()I

    move-result v4

    .line 204
    .local v4, unread_count:I
    invoke-virtual {v6}, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->getAnotherType()I

    move-result v0

    .line 206
    .local v0, anotherType:I
    if-nez v2, :cond_69

    .line 208
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_62

    .line 210
    const v7, 0x2020213

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 335
    :cond_42
    :goto_42
    const v7, 0x205016f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 336
    .local v5, unreadcount_frame:Landroid/widget/LinearLayout;
    if-gtz v4, :cond_174

    .line 338
    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    :goto_50
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-static {v7}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->access$100(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;)Ljava/util/HashMap;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 214
    .end local v5       #unreadcount_frame:Landroid/widget/LinearLayout;,
    :cond_62
    const v7, 0x2020212

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_42

    .line 217
    :cond_69
    if-ne v2, v8, :cond_81

    .line 219
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_7a

    .line 221
    const v7, 0x2020210

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_42

    .line 225
    :cond_7a
    const v7, 0x202020f

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_42

    .line 228
    :cond_81
    if-ne v2, v9, :cond_e7

    .line 230
    if-nez v0, :cond_9b

    .line 232
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_94

    .line 234
    const v7, 0x202021f

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_42

    .line 238
    :cond_94
    const v7, 0x202021d

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_42

    .line 241
    :cond_9b
    if-ne v0, v8, :cond_b3

    .line 243
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_ac

    .line 245
    const v7, 0x2020221

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_42

    .line 249
    :cond_ac
    const v7, 0x2020220

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_42

    .line 252
    :cond_b3
    if-ne v0, v9, :cond_cd

    .line 254
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_c5

    .line 256
    const v7, 0x202021b

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 260
    :cond_c5
    const v7, 0x202021a

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 263
    :cond_cd
    if-ne v0, v10, :cond_42

    .line 265
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_df

    .line 267
    const v7, 0x2020223

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 271
    :cond_df
    const v7, 0x2020222

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 275
    :cond_e7
    if-ne v2, v10, :cond_101

    .line 277
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_f9

    .line 279
    const v7, 0x202020a

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 283
    :cond_f9
    const v7, 0x2020209

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 286
    :cond_101
    const/4 v7, 0x5

    if-ne v2, v7, :cond_11c

    .line 288
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_114

    .line 290
    const v7, 0x2020207

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 294
    :cond_114
    const v7, 0x2020206

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 297
    :cond_11c
    const/4 v7, 0x6

    if-ne v2, v7, :cond_137

    .line 299
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_12f

    .line 301
    const v7, 0x2020219

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 305
    :cond_12f
    const v7, 0x2020218

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 308
    :cond_137
    const/4 v7, 0x7

    if-ne v2, v7, :cond_152

    .line 310
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_14a

    .line 312
    const v7, 0x202020c

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 316
    :cond_14a
    const v7, 0x202020b

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 319
    :cond_152
    if-ne v2, v11, :cond_16c

    .line 321
    iget-object v7, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-virtual {v7, v6}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->isDimmed(Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;)Z

    move-result v7

    if-ne v7, v8, :cond_164

    .line 323
    const v7, 0x2020215

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 327
    :cond_164
    const v7, 0x2020214

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 332
    :cond_16c
    const v7, 0x20200c2

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_42

    .line 342
    .restart local v5       #unreadcount_frame:Landroid/widget/LinearLayout;,
    :cond_174
    const v7, 0x2050170

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 343
    .local v3, unreadCount:Landroid/widget/TextView;
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_50
.end method

.method private newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 354
    iget-object v1, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2030029

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, view:Landroid/view/View;
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->access$000(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    .line 153
    const/4 v0, 0x0

    .line 155
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->this$0:Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;

    invoke-static {v0}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;->access$000(Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_9
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 173
    if-nez p2, :cond_a

    .line 175
    invoke-direct {p0, p3}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, view:Landroid/view/View;
    :goto_6
    invoke-direct {p0, p1, v0}, Lcom/lge/appwidget/Andy_WhatsNewGridView_Bryce$WhatsNewGridAdapter;->bindView(ILandroid/view/View;)V

    .line 184
    return-object v0

    .line 179
    .end local v0       #view:Landroid/view/View;,
    :cond_a
    move-object v0, p2

    .restart local v0       #view:Landroid/view/View;,
    goto :goto_6
.end method
