.class public Landroid/widget/AbsListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AbsListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field forceAdd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field recycledHeaderFooter:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field viewType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "ITEM_VIEW_TYPE_IGNORE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "ITEM_VIEW_TYPE_HEADER_OR_FOOTER"
            .end subannotation
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 4342
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4343
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .parameter "w"
    .parameter "h"
    .parameter "viewType"

    .prologue
    .line 4346
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4347
    iput p3, p0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 4348
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "c"
    .parameter "attrs"

    .prologue
    .line 4338
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4339
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 4351
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4352
    return-void
.end method
