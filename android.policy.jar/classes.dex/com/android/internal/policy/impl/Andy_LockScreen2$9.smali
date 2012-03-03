.class Lcom/android/internal/policy/impl/Andy_LockScreen2$9;
.super Ljava/lang/Object;
.source "Andy_LockScreen2.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;->startWhatsNew()V
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
    .line 1179
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$9;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1182
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$9;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$9;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1300(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1186
    :goto_f
    return-void

    .line 1183
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 1184
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    const-string v1, "Andy_LockScreen2"

    const-string v2, "Can not found whatsNew Application"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
