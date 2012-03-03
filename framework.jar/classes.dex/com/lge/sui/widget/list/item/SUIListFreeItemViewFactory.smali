.class public abstract Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory;
.super Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;
.source "SUIListFreeItemViewFactory.java"


# interfaces
.implements Lcom/lge/sui/widget/list/SUIListItemConstant;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory$FreeListItemView;
    }
.end annotation


# instance fields
.field private mFreeChildViews:[I

.field private mItemViewResId:I



# direct methods
.method public constructor <init>([I)V
    .registers 2
    .parameter "childViews"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/lge/sui/widget/list/item/SUIListItemViewFactory;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory;->mFreeChildViews:[I

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory;->getItemViewResId()I

    move-result v0

    return v0
.end method

.method private getItemViewResId()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory;->mItemViewResId:I

    return v0
.end method


# virtual methods
.method public createItemView(Landroid/content/Context;Landroid/view/ViewGroup;II)Landroid/view/View;
    .registers 12
    .parameter "context"
    .parameter "parent"
    .parameter "itemViewResId"
    .parameter "mode"

    .prologue
    .line 60
    iput p3, p0, Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory;->mItemViewResId:I

    .line 62
    new-instance v0, Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory$FreeListItemView;

    iget-object v4, p0, Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory;->mFreeChildViews:[I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory$FreeListItemView;-><init>(Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory;Landroid/content/Context;Landroid/view/ViewGroup;[II)V

    .line 63
    .local v0, viewCreator:Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory$FreeListItemView;
    invoke-virtual {v0}, Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory$FreeListItemView;->getView()Landroid/view/View;

    move-result-object v6

    .line 64
    .local v6, v:Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/lge/sui/widget/list/item/SUIListFreeItemViewFactory;->setAttrOfItemView(Landroid/view/View;)V

    .line 65
    return-object v6
.end method

.method protected abstract setAttrOfItemView(Landroid/view/View;)V
.end method
