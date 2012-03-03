.class final Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;
.super Ljava/lang/Object;
.source "SUIBaseIndexedListAdapter.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PinnedHeaderViewHolder"
.end annotation


# instance fields
.field public background:Landroid/graphics/drawable/Drawable;

.field public textColor:Landroid/content/res/ColorStateList;

.field public titleView:Landroid/widget/TextView;



# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/lge/sui/widget/list/SUIBaseIndexedListAdapter$PinnedHeaderViewHolder;-><init>()V

    return-void
.end method
