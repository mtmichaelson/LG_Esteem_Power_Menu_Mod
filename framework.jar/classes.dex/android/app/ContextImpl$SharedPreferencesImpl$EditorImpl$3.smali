.class Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$3;
.super Ljava/lang/Object;
.source "ContextImpl.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

.field final synthetic val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;



# direct methods
.method constructor <init>(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3071
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$3;->this$1:Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

    iput-object p2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$3;->val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3073
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$3;->this$1:Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl$3;->val$mcr:Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;

    invoke-static {v0, v1}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;->access$600(Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;Landroid/app/ContextImpl$SharedPreferencesImpl$MemoryCommitResult;)V

    .line 3074
    return-void
.end method
