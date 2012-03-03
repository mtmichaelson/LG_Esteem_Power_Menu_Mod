.class Lcom/android/internal/policy/impl/Andy_LockScreen2$8;
.super Ljava/lang/Object;
.source "Andy_LockScreen2.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;->setAnimation(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

.field final synthetic val$animation:Landroid/graphics/drawable/AnimationDrawable;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$8;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    iput-object p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$8;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$8;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1095
    return-void
.end method
