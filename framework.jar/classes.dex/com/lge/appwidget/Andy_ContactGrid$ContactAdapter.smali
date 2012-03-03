.class public Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_ContactGrid.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ContactGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_ContactGrid;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_ContactGrid;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->mContext:Landroid/content/Context;

    .line 267
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 269
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_ContactGrid;->ContactArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 276
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 280
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 285
    if-nez p2, :cond_41

    .line 286
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    new-instance v2, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget v5, v5, Lcom/lge/appwidget/Andy_ContactGrid;->width:I

    iget-object v6, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget v6, v6, Lcom/lge/appwidget/Andy_ContactGrid;->height:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;-><init>(Lcom/lge/appwidget/Andy_ContactGrid;Landroid/content/Context;II)V

    iput-object v2, v1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    .line 291
    .end local p2       
    :goto_17
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_ContactGrid;->ContactArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;

    .line 292
    .local v0, cd:Lcom/lge/appwidget/Andy_ContactGrid$ContactData;
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    iget-object v2, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;->contactUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->setImageURI(Landroid/net/Uri;)V

    .line 293
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    iget-object v2, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;->contactText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->setText(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    iget-object v2, v0, Lcom/lge/appwidget/Andy_ContactGrid$ContactData;->contactLookUpUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;->setContactUri(Landroid/net/Uri;)V

    .line 295
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    return-object v1

    .line 289
    .end local v0       #cd:Lcom/lge/appwidget/Andy_ContactGrid$ContactData;,
    .restart local p2       
    :cond_41
    iget-object v1, p0, Lcom/lge/appwidget/Andy_ContactGrid$ContactAdapter;->this$0:Lcom/lge/appwidget/Andy_ContactGrid;

    check-cast p2, Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    .end local p2       
    iput-object p2, v1, Lcom/lge/appwidget/Andy_ContactGrid;->mContactLayout:Lcom/lge/appwidget/Andy_ContactGrid$ContactLayout;

    goto :goto_17
.end method
