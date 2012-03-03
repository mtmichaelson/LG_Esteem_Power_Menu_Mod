.class Lcom/android/internal/policy/impl/Andy_LockScreen$9;
.super Ljava/lang/Object;
.source "Andy_LockScreen.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

.field final synthetic val$color:I

.field final synthetic val$iconResourceId:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen;Landroid/widget/TextView;Ljava/lang/String;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$color:I

    iput p5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$iconResourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 787
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$color:I

    if-eqz v0, :cond_13

    .line 789
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$textView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 791
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$textView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;->val$iconResourceId:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 792
    return-void
.end method
