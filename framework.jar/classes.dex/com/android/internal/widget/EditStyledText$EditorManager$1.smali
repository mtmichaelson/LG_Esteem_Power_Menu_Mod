.class Lcom/android/internal/widget/EditStyledText$EditorManager$1;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/EditStyledText$EditorManager;->blockSoftKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/EditStyledText$EditorManager;



# direct methods
.method constructor <init>(Lcom/android/internal/widget/EditStyledText$EditorManager;)V
    .registers 2
    .parameter

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/android/internal/widget/EditStyledText$EditorManager$1;->this$1:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1184
    const-string v0, "EditStyledText"

    const-string v1, "--- ontrackballclick:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    iget-object v0, p0, Lcom/android/internal/widget/EditStyledText$EditorManager$1;->this$1:Lcom/android/internal/widget/EditStyledText$EditorManager;

    invoke-virtual {v0}, Lcom/android/internal/widget/EditStyledText$EditorManager;->onFixSelectedItem()V

    .line 1186
    return-void
.end method
