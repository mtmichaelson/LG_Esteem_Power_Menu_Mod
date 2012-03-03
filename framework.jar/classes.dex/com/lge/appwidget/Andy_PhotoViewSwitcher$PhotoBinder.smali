.class public Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;
.super Ljava/lang/Object;
.source "Andy_PhotoViewSwitcher.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_PhotoViewSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoBinder"
.end annotation


# instance fields
.field public mBindCurrentPhotoRunnable:Ljava/lang/Runnable;

.field public mBindNextPhotoRunnable:Ljava/lang/Runnable;

.field public mBindPhotoFailRunnable:Ljava/lang/Runnable;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mLocation:Z

.field private mPhotoHandler:Landroid/os/Handler;

.field private mPhotoUri:J

.field private mPhotoView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;Landroid/widget/ImageView;JLandroid/os/Handler;Z)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "id"
    .parameter "handler"
    .parameter "location"

    .prologue
    .line 518
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance v0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$2;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$2;-><init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mBindCurrentPhotoRunnable:Ljava/lang/Runnable;

    .line 628
    new-instance v0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$3;-><init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mBindNextPhotoRunnable:Ljava/lang/Runnable;

    .line 647
    new-instance v0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$4;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$4;-><init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mBindPhotoFailRunnable:Ljava/lang/Runnable;

    .line 519
    iput-wide p3, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mPhotoUri:J

    .line 520
    iput-object p2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mPhotoView:Landroid/widget/ImageView;

    .line 521
    iput-object p5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mPhotoHandler:Landroid/os/Handler;

    .line 522
    iput-boolean p6, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mLocation:Z

    .line 523
    return-void
.end method

.method static synthetic access$1000(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 509
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mPhotoUri:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mPhotoHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$502(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mLocation:Z

    return v0
.end method


# virtual methods
.method public bindPhoto()V
    .registers 2

    .prologue
    .line 527
    new-instance v0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;-><init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)V

    .line 617
    .local v0, photoThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 618
    return-void
.end method
