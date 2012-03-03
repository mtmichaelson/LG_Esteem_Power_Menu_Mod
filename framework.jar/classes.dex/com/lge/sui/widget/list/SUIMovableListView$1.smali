.class Lcom/lge/sui/widget/list/SUIMovableListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SUIMovableListView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sui/widget/list/SUIMovableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sui/widget/list/SUIMovableListView;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/list/SUIMovableListView;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lge/sui/widget/list/SUIMovableListView$1;->this$0:Lcom/lge/sui/widget/list/SUIMovableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x1

    .line 106
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView$1;->this$0:Lcom/lge/sui/widget/list/SUIMovableListView;

    invoke-static {v1}, Lcom/lge/sui/widget/list/SUIMovableListView;->access$000(Lcom/lge/sui/widget/list/SUIMovableListView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 107
    const/high16 v1, 0x447a

    cmpl-float v1, p3, v1

    if-lez v1, :cond_46

    .line 108
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView$1;->this$0:Lcom/lge/sui/widget/list/SUIMovableListView;

    invoke-static {v1}, Lcom/lge/sui/widget/list/SUIMovableListView;->access$100(Lcom/lge/sui/widget/list/SUIMovableListView;)Landroid/graphics/Rect;

    move-result-object v0

    .line 109
    .local v0, r:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView$1;->this$0:Lcom/lge/sui/widget/list/SUIMovableListView;

    invoke-static {v1}, Lcom/lge/sui/widget/list/SUIMovableListView;->access$000(Lcom/lge/sui/widget/list/SUIMovableListView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 110
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_46

    .line 113
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView$1;->this$0:Lcom/lge/sui/widget/list/SUIMovableListView;

    invoke-static {v1}, Lcom/lge/sui/widget/list/SUIMovableListView;->access$200(Lcom/lge/sui/widget/list/SUIMovableListView;)V

    .line 114
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView$1;->this$0:Lcom/lge/sui/widget/list/SUIMovableListView;

    invoke-static {v1}, Lcom/lge/sui/widget/list/SUIMovableListView;->access$400(Lcom/lge/sui/widget/list/SUIMovableListView;)Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sui/widget/list/SUIMovableListView$1;->this$0:Lcom/lge/sui/widget/list/SUIMovableListView;

    invoke-static {v2}, Lcom/lge/sui/widget/list/SUIMovableListView;->access$300(Lcom/lge/sui/widget/list/SUIMovableListView;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/sui/widget/list/SUIMovableListView$RemoveListener;->remove(I)V

    .line 116
    iget-object v1, p0, Lcom/lge/sui/widget/list/SUIMovableListView$1;->this$0:Lcom/lge/sui/widget/list/SUIMovableListView;

    invoke-static {v1, v3}, Lcom/lge/sui/widget/list/SUIMovableListView;->access$500(Lcom/lge/sui/widget/list/SUIMovableListView;Z)V

    .end local v0       #r:Landroid/graphics/Rect;,
    :cond_46
    move v1, v3

    .line 122
    :goto_47
    return v1

    :cond_48
    const/4 v1, 0x0

    goto :goto_47
.end method
