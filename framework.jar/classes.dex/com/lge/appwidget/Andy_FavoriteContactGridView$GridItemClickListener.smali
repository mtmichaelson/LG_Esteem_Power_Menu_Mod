.class Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;
.super Ljava/lang/Object;
.source "Andy_FavoriteContactGridView.java"


# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_FavoriteContactGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridItemClickListener"
.end annotation


# instance fields
.field c:Landroid/database/Cursor;

.field posSel:I

.field final synthetic this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)V
    .registers 3
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iget-object v0, p1, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    .line 268
    :cond_9
    iget-object v0, p1, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->c:Landroid/database/Cursor;

    .line 269
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v9, 0x0

    .line 273
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->c:Landroid/database/Cursor;

    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 274
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->c:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->c:Landroid/database/Cursor;

    const-string v8, "_id"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v0, v6

    .line 276
    .local v0, _Id:J
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->c:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->c:Landroid/database/Cursor;

    const-string v8, "lookup"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 280
    .local v5, lookupUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->access$100(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v6, p2, v5, v7, v8}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 291
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-virtual {v6}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p3, v6

    iput v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->posSel:I

    .line 296
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    iget v7, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->posSel:I

    invoke-virtual {v6, v7}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-static {v7}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->access$200(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)[I

    move-result-object v7

    const/4 v8, 0x6

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 299
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->access$300(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)Landroid/widget/RelativeLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-static {v7}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->access$200(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)[I

    move-result-object v7

    const/4 v8, 0x4

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 300
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6d
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-virtual {v6}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_92

    .line 304
    iget v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->posSel:I

    if-eq v2, v6, :cond_8f

    .line 305
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-virtual {v6, v2}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-static {v7}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->access$200(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)[I

    move-result-object v7

    const/4 v8, 0x5

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_8f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    .line 309
    :cond_92
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->access$400(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 311
    const/4 v2, 0x0

    :goto_9b
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-virtual {v6}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_c4

    .line 312
    iget v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->posSel:I

    if-eq v2, v6, :cond_c1

    .line 313
    iget-object v6, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-virtual {v6, v2}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$GridItemClickListener;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-static {v7}, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->access$200(Lcom/lge/appwidget/Andy_FavoriteContactGridView;)[I

    move-result-object v7

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3}, Landroid/widget/ImageView;->getSolidColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 311
    :cond_c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_9b

    .line 317
    :cond_c4
    return-void
.end method
