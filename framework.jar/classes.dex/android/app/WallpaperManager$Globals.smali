.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1

.field private static final WALLPAPER:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper.dcf"



# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;



# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 4
    .parameter "looper"

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 188
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 189
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 190
    new-instance v1, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    .line 203
    return-void
.end method

.method static synthetic access$002(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Landroid/app/WallpaperManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 305
    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 306
    .local v5, params:Landroid/os/Bundle;
    iget-object v7, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v7, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 307
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_6a

    .line 309
    sget-boolean v7, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-eqz v7, :cond_23

    .line 310
    const-string v7, "drmKey"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 311
    .local v1, decInfo:[B
    if-eqz v1, :cond_23

    .line 312
    invoke-direct {p0, p1, v5, v1}, Landroid/app/WallpaperManager$Globals;->getDrmWallpaper(Landroid/content/Context;Landroid/os/Bundle;[B)Landroid/graphics/Bitmap;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1d} :catch_69

    move-result-object v0

    .line 314
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_1e
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_6c
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_69

    :goto_21
    move-object v7, v0

    .line 356
    .end local v0       #bm:Landroid/graphics/Bitmap;,
    .end local v1       #decInfo:[B,
    .end local v2       #fd:Landroid/os/ParcelFileDescriptor;,
    .end local v5       #params:Landroid/os/Bundle;,
    :goto_22
    return-object v7

    .line 322
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;,
    .restart local v5       #params:Landroid/os/Bundle;,
    :cond_23
    :try_start_23
    const-string/jumbo v7, "width"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 323
    .local v6, width:I
    const-string v7, "height"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 325
    .local v3, height:I
    if-lez v6, :cond_36

    if-gtz v3, :cond_4c

    .line 328
    :cond_36
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3f} :catch_69

    move-result-object v0

    .line 331
    .restart local v0       #bm:Landroid/graphics/Bitmap;,
    :try_start_40
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_6e
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_43} :catch_69

    .line 334
    :goto_43
    if-eqz v0, :cond_4a

    .line 335
    :try_start_45
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_4a
    move-object v7, v0

    .line 337
    goto :goto_22

    .line 342
    .end local v0       #bm:Landroid/graphics/Bitmap;,
    :cond_4c
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 343
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x0

    iput-boolean v7, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 344
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 345
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_60} :catch_69

    move-result-object v0

    .line 348
    .restart local v0       #bm:Landroid/graphics/Bitmap;,
    :try_start_61
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_70
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_64} :catch_69

    .line 352
    :goto_64
    :try_start_64
    invoke-static {p1, v0, v6, v3}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_67} :catch_69

    move-result-object v7

    goto :goto_22

    .line 354
    .end local v0       #bm:Landroid/graphics/Bitmap;,
    .end local v2       #fd:Landroid/os/ParcelFileDescriptor;,
    .end local v3       #height:I,
    .end local v4       #options:Landroid/graphics/BitmapFactory$Options;,
    .end local v5       #params:Landroid/os/Bundle;,
    .end local v6       #width:I,
    :catch_69
    move-exception v7

    :cond_6a
    move-object v7, v10

    .line 356
    goto :goto_22

    .line 315
    .restart local v0       #bm:Landroid/graphics/Bitmap;,
    .restart local v1       #decInfo:[B,
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;,
    .restart local v5       #params:Landroid/os/Bundle;,
    :catch_6c
    move-exception v7

    goto :goto_21

    .line 332
    .end local v1       #decInfo:[B,
    .restart local v3       #height:I,
    .restart local v6       #width:I,
    :catch_6e
    move-exception v7

    goto :goto_43

    .line 349
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;,
    :catch_70
    move-exception v7

    goto :goto_64
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 361
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x108015b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 363
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_56

    .line 364
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getWidthHint()I

    move-result v5

    .line 365
    .local v5, width:I
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6}, Landroid/app/IWallpaperManager;->getHeightHint()I

    move-result v2

    .line 367
    .local v2, height:I
    if-lez v5, :cond_1e

    if-gtz v2, :cond_30

    .line 370
    :cond_1e
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_23} :catch_55

    move-result-object v0

    .line 372
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_24
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_58
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_55

    .line 375
    :goto_27
    if-eqz v0, :cond_2e

    .line 376
    :try_start_29
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_2e
    move-object v6, v0

    .line 401
    .end local v0       #bm:Landroid/graphics/Bitmap;,
    .end local v2       #height:I,
    .end local v3       #is:Ljava/io/InputStream;,
    .end local v5       #width:I,
    :goto_2f
    return-object v6

    .line 383
    .restart local v2       #height:I,
    .restart local v3       #is:Ljava/io/InputStream;,
    .restart local v5       #width:I,
    :cond_30
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 384
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 385
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 386
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_40} :catch_55

    move-result-object v0

    .line 388
    .restart local v0       #bm:Landroid/graphics/Bitmap;,
    :try_start_41
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_5a
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_55

    .line 393
    :goto_44
    :try_start_44
    invoke-static {p1, v0, v5, v2}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_47
    .catch Ljava/lang/OutOfMemoryError; {:try_start_44 .. :try_end_47} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_55

    move-result-object v6

    goto :goto_2f

    .line 394
    :catch_49
    move-exception v1

    .line 395
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_4a
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Can\'t generate default bitmap"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_53} :catch_55

    move-object v6, v0

    .line 396
    goto :goto_2f

    .line 399
    .end local v0       #bm:Landroid/graphics/Bitmap;,
    .end local v1       #e:Ljava/lang/OutOfMemoryError;,
    .end local v2       #height:I,
    .end local v3       #is:Ljava/io/InputStream;,
    .end local v4       #options:Landroid/graphics/BitmapFactory$Options;,
    .end local v5       #width:I,
    :catch_55
    move-exception v6

    :cond_56
    move-object v6, v8

    .line 401
    goto :goto_2f

    .line 373
    .restart local v0       #bm:Landroid/graphics/Bitmap;,
    .restart local v2       #height:I,
    .restart local v3       #is:Ljava/io/InputStream;,
    .restart local v5       #width:I,
    :catch_58
    move-exception v6

    goto :goto_27

    .line 389
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;,
    :catch_5a
    move-exception v6

    goto :goto_44
.end method

.method private getDrmWallpaper(Landroid/content/Context;Landroid/os/Bundle;[B)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "context"
    .parameter "params"
    .parameter "decInfo"

    .prologue
    .line 241
    const-string/jumbo v9, "width"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 242
    .local v8, width:I
    const-string v9, "height"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 244
    .local v1, height:I
    const-string v9, "/data/data/com.android.settings/files/wallpaper.dcf"

    invoke-static {v9, p3}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/lang/String;[B)Lcom/lge/lgdrm/DrmStream;

    move-result-object v3

    .line 245
    .local v3, is:Ljava/io/InputStream;
    if-nez v3, :cond_19

    .line 246
    const/4 v9, 0x0

    .line 299
    :goto_18
    return-object v9

    .line 249
    :cond_19
    const/4 v6, 0x0

    .line 251
    .local v6, sampleSize:I
    :try_start_1a
    invoke-virtual {v3}, Lcom/lge/lgdrm/DrmStream;->available()I

    move-result v7

    .line 252
    .local v7, size:I
    const v9, 0x4b000

    if-lt v7, v9, :cond_30

    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, i:I
    const/4 v2, 0x2

    :goto_25
    div-int v9, v7, v2
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_27} :catch_70

    const v10, 0x4b000

    if-le v9, v10, :cond_2f

    .line 256
    mul-int/lit8 v2, v2, 0x2

    goto :goto_25

    .line 258
    :cond_2f
    move v6, v2

    .line 263
    .end local v2       #i:I,
    .end local v7       #size:I,
    :cond_30
    :goto_30
    if-lez v8, :cond_34

    if-gtz v1, :cond_4f

    .line 266
    :cond_34
    const/4 v5, 0x0

    .line 267
    .local v5, opts:Landroid/graphics/BitmapFactory$Options;
    if-eqz v6, :cond_3e

    .line 268
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    .end local v5       #opts:Landroid/graphics/BitmapFactory$Options;,
    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 269
    .restart local v5       #opts:Landroid/graphics/BitmapFactory$Options;,
    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 272
    :cond_3e
    const/4 v9, 0x0

    invoke-static {v3, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 275
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_43
    invoke-virtual {v3}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_6c

    .line 278
    :goto_46
    if-eqz v0, :cond_4d

    .line 279
    sget v9, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    invoke-virtual {v0, v9}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_4d
    move-object v9, v0

    .line 281
    goto :goto_18

    .line 286
    .end local v0       #bm:Landroid/graphics/Bitmap;,
    .end local v5       #opts:Landroid/graphics/BitmapFactory$Options;,
    :cond_4f
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 287
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x0

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 288
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 289
    if-eqz v6, :cond_5f

    .line 290
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 292
    :cond_5f
    const/4 v9, 0x0

    invoke-static {v3, v9, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    .restart local v0       #bm:Landroid/graphics/Bitmap;,
    :try_start_64
    invoke-virtual {v3}, Lcom/lge/lgdrm/DrmStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6e

    .line 299
    :goto_67
    invoke-static {p1, v0, v8, v1}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_18

    .line 276
    .end local v4       #options:Landroid/graphics/BitmapFactory$Options;,
    .restart local v5       #opts:Landroid/graphics/BitmapFactory$Options;,
    :catch_6c
    move-exception v9

    goto :goto_46

    .line 296
    .end local v5       #opts:Landroid/graphics/BitmapFactory$Options;,
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;,
    :catch_6e
    move-exception v9

    goto :goto_67

    .line 260
    .end local v0       #bm:Landroid/graphics/Bitmap;,
    .end local v4       #options:Landroid/graphics/BitmapFactory$Options;,
    :catch_70
    move-exception v9

    goto :goto_30
.end method


# virtual methods
.method public onWallpaperChanged()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 212
    return-void
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "context"
    .parameter "returnDefault"

    .prologue
    .line 215
    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    .line 217
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 232
    :goto_8
    return-object v1

    .line 219
    :cond_9
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_14

    .line 220
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_8

    .line 233
    :catchall_11
    move-exception v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v1

    .line 222
    :cond_14
    const/4 v1, 0x0

    :try_start_15
    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_11

    .line 224
    :try_start_17
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_1d} :catch_2d

    .line 228
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v1, :cond_39

    if-eqz p2, :cond_39

    .line 229
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 230
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_8

    .line 225
    :catch_2d
    move-exception v1

    move-object v0, v1

    .line 226
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 232
    .end local v0       #e:Ljava/lang/OutOfMemoryError;,
    :cond_39
    iget-object v1, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_11

    goto :goto_8
.end method
