.class Lcom/android/internal/policy/impl/Andy_LockScreen2$10;
.super Ljava/lang/Object;
.source "Andy_LockScreen2.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

.field final synthetic val$color:I

.field final synthetic val$iconResourceId:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;Landroid/widget/TextView;Ljava/lang/String;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1268
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    iput-object p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$color:I

    iput p5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$iconResourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1270
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1271
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$color:I

    if-eqz v0, :cond_13

    .line 1272
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$textView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$color:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1274
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$textView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;->val$iconResourceId:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 1275
    return-void
.end method
