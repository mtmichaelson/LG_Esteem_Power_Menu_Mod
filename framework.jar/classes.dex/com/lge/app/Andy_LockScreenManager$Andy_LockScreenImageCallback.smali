.class Lcom/lge/app/Andy_LockScreenManager$Andy_LockScreenImageCallback;
.super Lcom/lge/app/Andy_ILockScreenServiceCallback$Stub;
.source "Andy_LockScreenManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/Andy_LockScreenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Andy_LockScreenImageCallback"
.end annotation


# instance fields
.field private mLockScreen:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lge/app/Andy_LockScreenManager;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method public constructor <init>(Lcom/lge/app/Andy_LockScreenManager;)V
    .registers 3
    .parameter "lockscreen"

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/lge/app/Andy_ILockScreenServiceCallback$Stub;-><init>()V

    .line 246
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/app/Andy_LockScreenManager$Andy_LockScreenImageCallback;->mLockScreen:Ljava/lang/ref/WeakReference;

    .line 247
    return-void
.end method


# virtual methods
.method public declared-synchronized onLockScreenImageChanged()V
    .registers 3

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/app/Andy_LockScreenManager$Andy_LockScreenImageCallback;->mLockScreen:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/app/Andy_LockScreenManager;

    .line 255
    .local v0, lockscreen:Lcom/lge/app/Andy_LockScreenManager;
    if-eqz v0, :cond_22

    .line 256
    invoke-static {v0}, Lcom/lge/app/Andy_LockScreenManager;->access$000(Lcom/lge/app/Andy_LockScreenManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 257
    invoke-static {v0}, Lcom/lge/app/Andy_LockScreenManager;->access$000(Lcom/lge/app/Andy_LockScreenManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 258
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/app/Andy_LockScreenManager;->access$002(Lcom/lge/app/Andy_LockScreenManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 261
    :cond_22
    monitor-exit p0

    return-void

    .line 254
    .end local v0       #lockscreen:Lcom/lge/app/Andy_LockScreenManager;,
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method
