.class Lcom/lge/sui/widget/list/SUIIndexedListView$PinchListener;
.super Lcom/lge/sui/widget/util/SUIPinchGestureDetector$SimpleOnPinchGestureListener;
.source "SUIIndexedListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/list/SUIIndexedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;



# direct methods
.method private constructor <init>(Lcom/lge/sui/widget/list/SUIIndexedListView;)V
    .registers 2
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$PinchListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-direct {p0}, Lcom/lge/sui/widget/util/SUIPinchGestureDetector$SimpleOnPinchGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/sui/widget/list/SUIIndexedListView;Lcom/lge/sui/widget/list/SUIIndexedListView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/lge/sui/widget/list/SUIIndexedListView$PinchListener;-><init>(Lcom/lge/sui/widget/list/SUIIndexedListView;)V

    return-void
.end method


# virtual methods
.method public onPinchIn(Lcom/lge/sui/widget/util/SUIPinchGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$PinchListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->collapseAllGroup()V

    .line 207
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$PinchListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate()V

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public onPinchOut(Lcom/lge/sui/widget/util/SUIPinchGestureDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$PinchListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->expandAllGroup()V

    .line 213
    iget-object v0, p0, Lcom/lge/sui/widget/list/SUIIndexedListView$PinchListener;->this$0:Lcom/lge/sui/widget/list/SUIIndexedListView;

    invoke-virtual {v0}, Lcom/lge/sui/widget/list/SUIIndexedListView;->invalidate()V

    .line 214
    const/4 v0, 0x1

    return v0
.end method
