.class Lcom/android/internal/policy/impl/Andy_LockScreen2$2;
.super Ljava/lang/Object;
.source "Andy_LockScreen2.java"


# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;->initSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V
    .registers 2
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$2;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->lockMovingAction(Landroid/view/MotionEvent;)Z

    .line 664
    const/4 v0, 0x1

    return v0
.end method
