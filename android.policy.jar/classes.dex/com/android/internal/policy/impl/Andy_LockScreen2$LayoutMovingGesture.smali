.class Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Andy_LockScreen2.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LayoutMovingGesture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;



# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V
    .registers 2
    .parameter

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;Lcom/android/internal/policy/impl/Andy_LockScreen2$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1068
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1070
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0, p4}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$816(Lcom/android/internal/policy/impl/Andy_LockScreen2;F)F

    .line 1071
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$900(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$800(Lcom/android/internal/policy/impl/Andy_LockScreen2;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_27

    .line 1073
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1074
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 1085
    :goto_26
    return v0

    .line 1076
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/FrameLayout;

    move-result-object v0

    float-to-int v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 1085
    :cond_31
    :goto_31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_26

    .line 1077
    :cond_36
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1100(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1078
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$800(Lcom/android/internal/policy/impl/Andy_LockScreen2;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_56

    .line 1079
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1200(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1080
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_26

    .line 1082
    :cond_56
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1200(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/FrameLayout;

    move-result-object v0

    float-to-int v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->scrollBy(II)V

    goto :goto_31
.end method
