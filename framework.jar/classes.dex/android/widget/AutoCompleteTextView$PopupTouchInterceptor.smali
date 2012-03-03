.class Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"


# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupTouchInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;



# direct methods
.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 1514
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1514
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1516
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1517
    .local v0, action:I
    if-nez v0, :cond_29

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$1300(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$1300(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1519
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v2}, Landroid/widget/AutoCompleteTextView;->access$1400(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/AutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1523
    :cond_27
    :goto_27
    const/4 v1, 0x0

    return v1

    .line 1520
    :cond_29
    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 1521
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v2}, Landroid/widget/AutoCompleteTextView;->access$1400(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_27
.end method
