.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$1;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static mSync:Ljava/lang/Object;

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;



# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 405
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/WallpaperManager;->mSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .parameter "context"
    .parameter "handler"

    .prologue
    const/high16 v0, -0x4080

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 66
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 417
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 419
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "context"
    .parameter "bm"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x1

    .line 794
    if-nez p1, :cond_5

    move-object v8, p1

    .line 838
    :goto_4
    return-object v8

    .line 797
    :cond_5
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {p1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 802
    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 804
    .local v3, newbm:Landroid/graphics/Bitmap;
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v3, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 805
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 806
    .local v0, c:Landroid/graphics/Canvas;
    sget v8, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 807
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 808
    .local v5, targetRect:Landroid/graphics/Rect;
    const/4 v8, 0x0

    iput v8, v5, Landroid/graphics/Rect;->top:I

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 809
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 810
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 812
    const/4 v2, 0x0

    .line 813
    .local v2, deltaw:I
    const/4 v1, 0x0

    .line 815
    .local v1, deltah:I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    if-lez v8, :cond_65

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    if-lez v8, :cond_65

    .line 818
    int-to-float v8, p2

    iget v9, v5, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float v6, v8, v9

    .line 819
    .local v6, xScale:F
    int-to-float v8, p3

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 820
    .local v7, yScale:F
    cmpl-float v8, v6, v7

    if-lez v8, :cond_80

    .line 821
    iget v8, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 822
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 827
    :goto_5d
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v8

    .line 828
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v8

    .line 831
    .end local v6       #xScale:F,
    .end local v7       #yScale:F,
    :cond_65
    div-int/lit8 v8, v2, 0x2

    div-int/lit8 v9, v1, 0x2

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 832
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 833
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 834
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 835
    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 837
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v8, v3

    .line 838
    goto :goto_4

    .line 824
    .end local v4       #paint:Landroid/graphics/Paint;,
    .restart local v6       #xScale:F,
    .restart local v7       #yScale:F,
    :cond_80
    iget v8, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 825
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_5d
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 425
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .registers 3
    .parameter "looper"

    .prologue
    .line 409
    sget-object v0, Landroid/app/WallpaperManager;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_3
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v1, :cond_e

    .line 411
    new-instance v1, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v1, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 413
    :cond_e
    monitor-exit v0

    .line 414
    return-void

    .line 413
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 6
    .parameter "data"
    .parameter "fos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    const v2, 0x8000

    new-array v1, v2, [B

    .line 634
    .local v1, buffer:[B
    :goto_5
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, amt:I
    if-lez v0, :cond_10

    .line 635
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    .line 637
    :cond_10
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 790
    const v0, 0x108015b

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 791
    return-void
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .registers 8
    .parameter "windowToken"

    .prologue
    .line 774
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x4080

    const/high16 v3, -0x4080

    const/high16 v4, -0x4080

    const/high16 v5, -0x4080

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 779
    :goto_16
    return-void

    .line 776
    :catch_17
    move-exception v0

    goto :goto_16
.end method

.method public getDesiredMinimumHeight()I
    .registers 3

    .prologue
    .line 678
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 681
    :goto_a
    return v1

    .line 679
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 681
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDesiredMinimumWidth()I
    .registers 3

    .prologue
    .line 655
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 658
    :goto_a
    return v1

    .line 656
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 658
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 444
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1c

    .line 446
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 447
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    move-object v2, v1

    .line 450
    .end local v1       #dr:Landroid/graphics/drawable/Drawable;,
    :goto_1b
    return-object v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 486
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_13

    .line 488
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v5}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .local v1, dr:Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    .line 491
    .end local v1       #dr:Landroid/graphics/drawable/Drawable;,
    :goto_12
    return-object v2

    :cond_13
    move-object v2, v5

    goto :goto_12
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .registers 2

    .prologue
    .line 431
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 3

    .prologue
    .line 517
    :try_start_0
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 519
    :goto_a
    return-object v1

    .line 518
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 519
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 463
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1b

    .line 465
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 466
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    move-object v2, v1

    .line 469
    .end local v1       #dr:Landroid/graphics/drawable/Drawable;,
    :goto_1a
    return-object v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 502
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 503
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_13

    .line 504
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v5}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .local v1, dr:Landroid/graphics/drawable/Drawable;
    move-object v2, v1

    .line 507
    .end local v1       #dr:Landroid/graphics/drawable/Drawable;,
    :goto_12
    return-object v2

    :cond_13
    move-object v2, v5

    goto :goto_12
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 15
    .parameter "windowToken"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"

    .prologue
    .line 754
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 760
    :goto_14
    return-void

    .line 757
    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 567
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_21

    move-result-object v0

    .line 568
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_e

    .line 582
    .end local v0       #fd:Landroid/os/ParcelFileDescriptor;,
    :cond_d
    :goto_d
    return-void

    .line 571
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;,
    :cond_e
    const/4 v1, 0x0

    .line 573
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_23

    .line 574
    .end local v1       #fos:Ljava/io/FileOutputStream;,
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_14
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_2a

    .line 576
    if-eqz v2, :cond_d

    .line 577
    :try_start_1d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_d

    .line 580
    .end local v0       #fd:Landroid/os/ParcelFileDescriptor;,
    .end local v2       #fos:Ljava/io/FileOutputStream;,
    :catch_21
    move-exception v3

    goto :goto_d

    .line 576
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;,
    .restart local v1       #fos:Ljava/io/FileOutputStream;,
    :catchall_23
    move-exception v3

    :goto_24
    if-eqz v1, :cond_29

    .line 577
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 576
    :cond_29
    throw v3
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_2a} :catch_21

    .end local v1       #fos:Ljava/io/FileOutputStream;,
    .restart local v2       #fos:Ljava/io/FileOutputStream;,
    :catchall_2a
    move-exception v3

    move-object v1, v2

    .end local v2       #fos:Ljava/io/FileOutputStream;,
    .restart local v1       #fos:Ljava/io/FileOutputStream;,
    goto :goto_24
.end method

.method public setResource(I)V
    .registers 9
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 538
    .local v3, resources:Landroid/content/res/Resources;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_44

    move-result-object v0

    .line 540
    .local v0, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_3c

    .line 541
    const/4 v1, 0x0

    .line 543
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_2b
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_3d

    .line 544
    .end local v1       #fos:Ljava/io/FileOutputStream;,
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_30
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_46

    .line 546
    if-eqz v2, :cond_3c

    .line 547
    :try_start_39
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 553
    .end local v0       #fd:Landroid/os/ParcelFileDescriptor;,
    .end local v2       #fos:Ljava/io/FileOutputStream;,
    .end local v3       #resources:Landroid/content/res/Resources;,
    :cond_3c
    :goto_3c
    return-void

    .line 546
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;,
    .restart local v1       #fos:Ljava/io/FileOutputStream;,
    .restart local v3       #resources:Landroid/content/res/Resources;,
    :catchall_3d
    move-exception v4

    :goto_3e
    if-eqz v1, :cond_43

    .line 547
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 546
    :cond_43
    throw v4
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_44} :catch_44

    .line 551
    .end local v0       #fd:Landroid/os/ParcelFileDescriptor;,
    .end local v1       #fos:Ljava/io/FileOutputStream;,
    .end local v3       #resources:Landroid/content/res/Resources;,
    :catch_44
    move-exception v4

    goto :goto_3c

    .line 546
    .restart local v0       #fd:Landroid/os/ParcelFileDescriptor;,
    .restart local v2       #fos:Ljava/io/FileOutputStream;,
    .restart local v3       #resources:Landroid/content/res/Resources;,
    :catchall_46
    move-exception v4

    move-object v1, v2

    .end local v2       #fos:Ljava/io/FileOutputStream;,
    .restart local v1       #fos:Ljava/io/FileOutputStream;,
    goto :goto_3e
.end method

.method public setStream(Ljava/io/InputStream;)V
    .registers 10
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    :try_start_0
    sget-object v6, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v6}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_36

    move-result-object v1

    .line 599
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_e

    .line 628
    .end local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    .end local p1       
    :cond_d
    :goto_d
    return-void

    .line 602
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    .restart local p1       
    :cond_e
    const/4 v2, 0x0

    .line 604
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_f
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_58

    .line 606
    .end local v2       #fos:Ljava/io/FileOutputStream;,
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_14
    sget-boolean v6, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v6, :cond_4f

    instance-of v6, p1, Lcom/lge/lgdrm/DrmStream;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_47

    if-eqz v6, :cond_4f

    .line 607
    const/4 v4, 0x0

    .line 609
    .local v4, is:Ljava/io/InputStream;
    :try_start_1d
    new-instance v5, Ljava/io/FileInputStream;

    check-cast p1, Lcom/lge/lgdrm/DrmStream;

    .end local p1       
    invoke-virtual {p1}, Lcom/lge/lgdrm/DrmStream;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_40
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_28} :catch_38

    .line 610
    .end local v4       #is:Ljava/io/InputStream;,
    .local v5, is:Ljava/io/InputStream;
    :try_start_28
    invoke-direct {p0, v5, v3}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2b} :catch_5d

    .line 614
    if-eqz v5, :cond_30

    .line 615
    :try_start_2d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_47

    .line 622
    :cond_30
    if-eqz v3, :cond_d

    .line 623
    :try_start_32
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_d

    .line 626
    .end local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    .end local v3       #fos:Ljava/io/FileOutputStream;,
    .end local v5       #is:Ljava/io/InputStream;,
    :catch_36
    move-exception v6

    goto :goto_d

    .line 611
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;,
    .restart local v3       #fos:Ljava/io/FileOutputStream;,
    .restart local v4       #is:Ljava/io/InputStream;,
    :catch_38
    move-exception v6

    move-object v0, v6

    .line 612
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3a
    :try_start_3a
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_40

    .line 614
    .end local v0       #e:Ljava/io/FileNotFoundException;,
    :catchall_40
    move-exception v6

    :goto_41
    if-eqz v4, :cond_46

    .line 615
    :try_start_43
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 614
    :cond_46
    throw v6
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    .line 622
    .end local v4       #is:Ljava/io/InputStream;,
    :catchall_47
    move-exception v6

    move-object v2, v3

    .end local v3       #fos:Ljava/io/FileOutputStream;,
    .restart local v2       #fos:Ljava/io/FileOutputStream;,
    :goto_49
    if-eqz v2, :cond_4e

    .line 623
    :try_start_4b
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 622
    :cond_4e
    throw v6
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4f} :catch_36

    .line 620
    .end local v2       #fos:Ljava/io/FileOutputStream;,
    .restart local v3       #fos:Ljava/io/FileOutputStream;,
    .restart local p1       
    :cond_4f
    :try_start_4f
    invoke-direct {p0, p1, v3}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_47

    .line 622
    if-eqz v3, :cond_d

    .line 623
    :try_start_54
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_36

    goto :goto_d

    .line 622
    .end local v3       #fos:Ljava/io/FileOutputStream;,
    .restart local v2       #fos:Ljava/io/FileOutputStream;,
    :catchall_58
    move-exception v6

    goto :goto_49

    .line 614
    .end local v2       #fos:Ljava/io/FileOutputStream;,
    .end local p1       
    .restart local v3       #fos:Ljava/io/FileOutputStream;,
    .restart local v5       #is:Ljava/io/InputStream;,
    :catchall_5a
    move-exception v6

    move-object v4, v5

    .end local v5       #is:Ljava/io/InputStream;,
    .restart local v4       #is:Ljava/io/InputStream;,
    goto :goto_41

    .line 611
    .end local v4       #is:Ljava/io/InputStream;,
    .restart local v5       #is:Ljava/io/InputStream;,
    :catch_5d
    move-exception v6

    move-object v0, v6

    move-object v4, v5

    .end local v5       #is:Ljava/io/InputStream;,
    .restart local v4       #is:Ljava/io/InputStream;,
    goto :goto_3a
.end method

.method public setWallpaperOffsetSteps(FF)V
    .registers 3
    .parameter "xStep"
    .parameter "yStep"

    .prologue
    .line 733
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 734
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 735
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .registers 10
    .parameter "windowToken"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 716
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRoot;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_14} :catch_15

    .line 722
    :goto_14
    return-void

    .line 719
    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public suggestDesiredDimensions(II)V
    .registers 4
    .parameter "minimumWidth"
    .parameter "minimumHeight"

    .prologue
    .line 695
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->setDimensionHints(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 698
    :goto_9
    return-void

    .line 696
    :catch_a
    move-exception v0

    goto :goto_9
.end method
