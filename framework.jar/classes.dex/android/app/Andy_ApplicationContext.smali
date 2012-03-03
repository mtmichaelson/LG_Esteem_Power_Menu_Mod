.class public Landroid/app/Andy_ApplicationContext;
.super Landroid/app/ContextImpl;
.source "Andy_ApplicationContext.java"


# interfaces
.implements Lcom/lge/content/Andy_IContext;


# static fields
.field private static final TAG:Ljava/lang/String; = "Andy_ApplicationContext"



# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ContextImpl;-><init>()V

    .line 28
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 31
    check-cast p1, Landroid/app/ContextImpl;

    .end local p1       
    invoke-direct {p0, p1}, Landroid/app/ContextImpl;-><init>(Landroid/app/ContextImpl;)V

    .line 32
    return-void
.end method

.method public static translate(Landroid/app/Application;)Landroid/app/Andy_ApplicationContext;
    .registers 2
    .parameter "context"

    .prologue
    .line 39
    new-instance v0, Landroid/app/Andy_ApplicationContext;

    invoke-direct {v0, p0}, Landroid/app/Andy_ApplicationContext;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static translate(Landroid/content/Context;)Landroid/app/Andy_ApplicationContext;
    .registers 2
    .parameter "context"

    .prologue
    .line 35
    new-instance v0, Landroid/app/Andy_ApplicationContext;

    invoke-direct {v0, p0}, Landroid/app/Andy_ApplicationContext;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/app/ContextImpl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic checkCallingOrSelfPermission(Ljava/lang/String;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic checkCallingPermission(Ljava/lang/String;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic checkCallingUriPermission(Landroid/net/Uri;I)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic checkPermission(Ljava/lang/String;II)I
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/app/ContextImpl;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic checkUriPermission(Landroid/net/Uri;III)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public bridge synthetic checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 23
    invoke-super/range {p0 .. p6}, Landroid/app/ContextImpl;->checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public bridge synthetic clearWallpaper()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->clearWallpaper()V

    return-void
.end method

.method public bridge synthetic createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic databaseList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->databaseList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deleteDatabase(Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic deleteFile(Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/app/ContextImpl;->enforceCallingOrSelfUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/app/ContextImpl;->enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 23
    invoke-super/range {p0 .. p5}, Landroid/app/ContextImpl;->enforceUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 23
    invoke-super/range {p0 .. p7}, Landroid/app/ContextImpl;->enforceUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic fileList()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->fileList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getApplicationContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCacheDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDatabasePath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDir(Ljava/lang/String;I)Ljava/io/File;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExternalCacheDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFilesDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMainLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPackageCodePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPackageResourcePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWallpaperDesiredMinimumHeight()I
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getWallpaperDesiredMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWallpaperDesiredMinimumWidth()I
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->getWallpaperDesiredMinimumWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/app/ContextImpl;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public bridge synthetic isRestricted()Z
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->isRestricted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/app/ContextImpl;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic peekWallpaper()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/ContextImpl;->peekWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ContextImpl;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeStickyBroadcast(Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->removeStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic revokeUriPermission(Landroid/net/Uri;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method public bridge synthetic sendBroadcast(Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 23
    invoke-super/range {p0 .. p7}, Landroid/app/ContextImpl;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 23
    invoke-super/range {p0 .. p6}, Landroid/app/ContextImpl;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic setTheme(I)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->setTheme(I)V

    return-void
.end method

.method public bridge synthetic setWallpaper(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->setWallpaper(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setWallpaper(Ljava/io/InputStream;)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->setWallpaper(Ljava/io/InputStream;)V

    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/app/ContextImpl;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-super/range {p0 .. p5}, Landroid/app/ContextImpl;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic stopService(Landroid/content/Intent;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->stopService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic unbindService(Landroid/content/ServiceConnection;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public bridge synthetic unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ContextImpl;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
