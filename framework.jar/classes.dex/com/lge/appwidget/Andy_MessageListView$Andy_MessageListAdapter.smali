.class public Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_MessageListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_MessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Andy_MessageListAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mMessageListParcelable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_MessageListParcelable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/appwidget/Andy_MessageListView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_MessageListView;Landroid/content/Context;Ljava/util/ArrayList;)V
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
            "Lcom/lge/appwidget/Andy_MessageListParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p3, messageListParcelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_MessageListParcelable;>;"
    iput-object p1, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->this$0:Lcom/lge/appwidget/Andy_MessageListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 195
    iput-object p3, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mMessageListParcelable:Ljava/util/ArrayList;

    .line 196
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 197
    return-void
.end method


# virtual methods
.method public bindView(ILandroid/view/View;)V
    .registers 15
    .parameter "position"
    .parameter "view"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 272
    iget-object v7, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->this$0:Lcom/lge/appwidget/Andy_MessageListView;

    invoke-virtual {v7}, Lcom/lge/appwidget/Andy_MessageListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_d

    .line 319
    :goto_c
    return-void

    .line 279
    :cond_d
    iget-object v7, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mMessageListParcelable:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_MessageListParcelable;

    .line 281
    .local v1, message:Lcom/lge/appwidget/Andy_MessageListParcelable;
    const v7, 0x205013a

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 282
    .local v4, nameView:Landroid/widget/TextView;
    const v7, 0x2050138

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 283
    .local v5, timeView:Landroid/widget/TextView;
    const v7, 0x2050139

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 285
    .local v2, messageView:Landroid/widget/TextView;
    const v7, 0x2050134

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 286
    .local v6, unreadBgView:Landroid/widget/ImageView;
    const v7, 0x2050136

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 288
    .local v3, mmsClipView:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_MessageListParcelable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_MessageListParcelable;->getTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_MessageListParcelable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_MessageListParcelable;->isRead()Z

    move-result v7

    if-ne v7, v10, :cond_9a

    .line 294
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 295
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2020126

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 296
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2020127

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 297
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2020125

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 299
    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    :goto_8f
    invoke-virtual {v1}, Lcom/lge/appwidget/Andy_MessageListParcelable;->getType()I

    move-result v7

    if-ne v7, v10, :cond_d1

    .line 313
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 303
    :cond_9a
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v7

    or-int/lit8 v7, v7, 0x20

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 304
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x202012b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 305
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x202012c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 306
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x202012a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 308
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8f

    .line 317
    :cond_d1
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mMessageListParcelable:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 216
    const/4 v0, 0x0

    .line 219
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mMessageListParcelable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mMessageListParcelable:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mMessageListParcelable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v1

    .line 236
    :goto_e
    return-object v0

    .line 230
    :cond_f
    if-ltz p1, :cond_19

    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mMessageListParcelable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1b

    :cond_19
    move-object v0, v1

    .line 233
    goto :goto_e

    .line 236
    :cond_1b
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mMessageListParcelable:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_e
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 241
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMessageListParcelable()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_MessageListParcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mMessageListParcelable:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 248
    if-nez p2, :cond_a

    .line 250
    invoke-virtual {p0, p3}, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, view:Landroid/view/View;
    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->bindView(ILandroid/view/View;)V

    .line 259
    return-object v0

    .line 254
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
    .line 265
    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x203001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 267
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public setAgendaListItem(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_MessageListParcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, messageListParcelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_MessageListParcelable;>;"
    iput-object p2, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mMessageListParcelable:Ljava/util/ArrayList;

    .line 202
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 204
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageListView$Andy_MessageListAdapter;->notifyDataSetChanged()V

    .line 205
    return-void
.end method
