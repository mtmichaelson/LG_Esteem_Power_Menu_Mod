.class Lcom/android/internal/policy/impl/Andy_LockScreen$8;
.super Ljava/lang/Object;
.source "Andy_LockScreen.java"


# interfaces
.implements Lcom/android/music/RepeatingImageButton$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$8;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepeat(Landroid/view/View;JI)V
    .registers 8
    .parameter "v"
    .parameter "howlong"
    .parameter "repcnt"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$8;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$000(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 521
    const-string v0, "LockScreen_Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FF      howlong  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     repcnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen$8;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen;

    invoke-static {v0, p4, p2, p3}, Lcom/android/internal/policy/impl/Andy_LockScreen;->access$1000(Lcom/android/internal/policy/impl/Andy_LockScreen;IJ)V

    .line 523
    return-void
.end method
