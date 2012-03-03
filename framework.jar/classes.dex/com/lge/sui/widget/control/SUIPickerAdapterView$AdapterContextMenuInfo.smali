.class public Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "SUIPickerAdapterView.java"


# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/control/SUIPickerAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;



# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .registers 5
    .parameter "targetView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 385
    iput p2, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterContextMenuInfo;->position:I

    .line 386
    iput-wide p3, p0, Lcom/lge/sui/widget/control/SUIPickerAdapterView$AdapterContextMenuInfo;->id:J

    .line 387
    return-void
.end method
