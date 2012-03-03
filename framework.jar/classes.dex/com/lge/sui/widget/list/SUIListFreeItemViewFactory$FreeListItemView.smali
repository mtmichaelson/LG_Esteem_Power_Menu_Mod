.class Lcom/lge/sui/widget/list/SUIListFreeItemViewFactory$FreeListItemView;
.super Lcom/lge/sui/widget/list/SUIListItemView;
.source "SUIListFreeItemViewFactory.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIListFreeItemViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreeListItemView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIListFreeItemViewFactory;



# direct methods
.method public constructor <init>(Lcom/lge/sui/widget/list/SUIListFreeItemViewFactory;Landroid/content/Context;Landroid/view/ViewGroup;[II)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "parent"
    .parameter "childViews"
    .parameter "mode"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIListFreeItemViewFactory$FreeListItemView;->this$0:Lcom/lge/sui/widget/list/SUIListFreeItemViewFactory;

    .line 83
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lge/sui/widget/list/SUIListItemView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    .line 84
    return-void
.end method


# virtual methods
.method public getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .parameter "parent"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIListItemView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIListFreeItemViewFactory$FreeListItemView;->this$0:Lcom/lge/sui/widget/list/SUIListFreeItemViewFactory;

    invoke-static {v2}, Lcom/lge/sui/widget/list/SUIListFreeItemViewFactory;->access$000(Lcom/lge/sui/widget/list/SUIListFreeItemViewFactory;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, v:Landroid/view/View;
    return-object v0
.end method
