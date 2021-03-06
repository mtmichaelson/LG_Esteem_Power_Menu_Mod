.class public Lcom/android/internal/content/NativeLibraryHelper;
.super Ljava/lang/Object;
.source "NativeLibraryHelper.java"



# static fields
.field private static final APK_LIB:Ljava/lang/String; = "lib/"

#the value of this static final field might be set in the static constructor
.field private static final APK_LIB_LENGTH:I = 0x0

.field private static final DEBUG_NATIVE:Z = false

.field private static final GDBSERVER:Ljava/lang/String; = "gdbserver"

.field private static final LIB_PREFIX:Ljava/lang/String; = "lib"

#the value of this static final field might be set in the static constructor
.field private static final LIB_PREFIX_LENGTH:I = 0x0

.field private static final LIB_SUFFIX:Ljava/lang/String; = ".so"

#the value of this static final field might be set in the static constructor
.field private static final LIB_SUFFIX_LENGTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MIN_ENTRY_LENGTH:I = 0x0

.field private static final PACKAGE_INSTALL_NATIVE_ABI_MISMATCH:I = 0x2

.field private static final PACKAGE_INSTALL_NATIVE_FOUND_LIBRARIES:I = 0x0

.field private static final PACKAGE_INSTALL_NATIVE_NO_LIBRARIES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NativeHelper"



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    const-string v0, "lib/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/internal/content/NativeLibraryHelper;->APK_LIB_LENGTH:I

    .line 52
    const-string v0, "lib"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/internal/content/NativeLibraryHelper;->LIB_PREFIX_LENGTH:I

    .line 56
    const-string v0, ".so"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/android/internal/content/NativeLibraryHelper;->LIB_SUFFIX_LENGTH:I

    .line 63
    sget v0, Lcom/android/internal/content/NativeLibraryHelper;->APK_LIB_LENGTH:I

    add-int/lit8 v0, v0, 0x2

    sget v1, Lcom/android/internal/content/NativeLibraryHelper;->LIB_PREFIX_LENGTH:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/android/internal/content/NativeLibraryHelper;->LIB_SUFFIX_LENGTH:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/internal/content/NativeLibraryHelper;->MIN_ENTRY_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyNativeBinariesLI(Ljava/io/File;Ljava/io/File;)I
    .registers 15
    .parameter "scanFile"
    .parameter "sharedLibraryDir"

    .prologue
    const-string v12, "NativeHelper"

    .line 248
    :try_start_2
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 250
    .local v8, zipFile:Ljava/util/zip/ZipFile;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 252
    .local v5, nativeFiles:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;>;"
    invoke-static {v8, v5}, Lcom/android/internal/content/NativeLibraryHelper;->listPackageNativeBinariesLI(Ljava/util/zip/ZipFile;Ljava/util/List;)I

    .line 254
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 256
    .local v0, N:I
    const/4 v4, 0x0

    .end local p0       
    .local v4, i:I
    :goto_14
    if-ge v4, v0, :cond_99

    .line 257
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 264
    .local v3, entry:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;"
    sget-boolean v9, Lcom/lge/config/Andy_CappuccinoConfig;->SO_INSTALL:Z

    if-eqz v9, :cond_72

    .line 265
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object p0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, sharedLibraryFilePath:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    .local v6, sharedLibraryFile:Ljava/io/File;
    const-string v9, "+++++++++++++++++++"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sharedLibraryFile : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_6f

    .line 270
    new-instance v1, Ljava/io/File;

    iget-object p0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    .local v1, destFile:Ljava/io/File;
    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/zip/ZipEntry;

    invoke-static {v8, p0, p1, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaryLI(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/io/File;)V

    .line 256
    .end local v1       #destFile:Ljava/io/File;,
    .end local v6       #sharedLibraryFile:Ljava/io/File;,
    .end local v7       #sharedLibraryFilePath:Ljava/lang/String;,
    :cond_6f
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 274
    :cond_72
    new-instance v1, Ljava/io/File;

    iget-object p0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 275
    .restart local v1       #destFile:Ljava/io/File;,
    iget-object p0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/util/zip/ZipEntry;

    invoke-static {v8, p0, p1, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinaryLI(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/io/File;)V
    :try_end_82
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_82} :catch_83
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_82} :catch_8e

    goto :goto_6f

    .line 279
    .end local v0       #N:I,
    .end local v1       #destFile:Ljava/io/File;,
    .end local v3       #entry:Landroid/util/Pair;,, "Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;"
    .end local v4       #i:I,
    .end local v5       #nativeFiles:Ljava/util/List;,, "Ljava/util/List<Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;>;"
    .end local v8       #zipFile:Ljava/util/zip/ZipFile;,
    :catch_83
    move-exception v9

    move-object v2, v9

    .line 280
    .local v2, e:Ljava/util/zip/ZipException;
    const-string v9, "NativeHelper"

    const-string v9, "Failed to extract data from package file"

    invoke-static {v12, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v9, -0x2

    .line 287
    .end local v2       #e:Ljava/util/zip/ZipException;,
    :goto_8d
    return v9

    .line 282
    :catch_8e
    move-exception v9

    move-object v2, v9

    .line 283
    .local v2, e:Ljava/io/IOException;
    const-string v9, "NativeHelper"

    const-string v9, "Failed to cache package shared libs"

    invoke-static {v12, v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    const/4 v9, -0x4

    goto :goto_8d

    .line 287
    .end local v2       #e:Ljava/io/IOException;,
    .restart local v0       #N:I,
    .restart local v4       #i:I,
    .restart local v5       #nativeFiles:Ljava/util/List;,, "Ljava/util/List<Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;>;"
    .restart local v8       #zipFile:Ljava/util/zip/ZipFile;,
    :cond_99
    const/4 v9, 0x1

    goto :goto_8d
.end method

.method private static copyNativeBinaryLI(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/io/File;)V
    .registers 10
    .parameter "zipFile"
    .parameter "entry"
    .parameter "binaryDir"
    .parameter "binaryFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string/jumbo v3, "tmp"

    .line 292
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 294
    .local v0, inputStream:Ljava/io/InputStream;
    :try_start_7
    const-string/jumbo v3, "tmp"

    const-string/jumbo v4, "tmp"

    invoke-static {v3, v4, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 295
    .local v1, tempFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, tempFilePath:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_35

    const/16 v3, 0x1ed

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-static {v2, v3, v4, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v3

    if-nez v3, :cond_35

    invoke-virtual {v1, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 305
    :cond_35
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 306
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create cached binary "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_5b

    .line 310
    .end local v1       #tempFile:Ljava/io/File;,
    .end local v2       #tempFilePath:Ljava/lang/String;,
    :catchall_5b
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1       #tempFile:Ljava/io/File;,
    .restart local v2       #tempFilePath:Ljava/lang/String;,
    :cond_60
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 312
    return-void
.end method

.method private static listPackageGdbServerLI(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/List;)I
    .registers 12
    .parameter "zipFile"
    .parameter "cpuAbi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/zip/ZipEntry;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .local p2, nativeFiles:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;>;"
    const-string v8, "gdbserver"

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lib/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gdbserver"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, apkGdbServerPath:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 167
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_25
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 168
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 170
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_25

    .line 173
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, entryName:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 180
    const-string v5, "NativeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found gdbserver: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v4, "gdbserver"

    .line 184
    .local v4, installGdbServerPath:Ljava/lang/String;
    const-string v5, "gdbserver"

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const/4 v5, 0x0

    .line 188
    .end local v2       #entry:Ljava/util/zip/ZipEntry;,
    .end local v3       #entryName:Ljava/lang/String;,
    .end local v4       #installGdbServerPath:Ljava/lang/String;,
    :goto_69
    return v5

    :cond_6a
    const/4 v5, 0x1

    goto :goto_69
.end method

.method public static listPackageNativeBinariesLI(Ljava/util/zip/ZipFile;Ljava/util/List;)I
    .registers 8
    .parameter "zipFile"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/zip/ZipEntry;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, nativeFiles:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;>;"
    const/4 v5, 0x2

    .line 202
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 204
    .local v0, cpuAbi:Ljava/lang/String;
    invoke-static {p0, v0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->listPackageSharedLibsForAbiLI(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 214
    .local v2, result:I
    if-ne v2, v5, :cond_25

    .line 215
    const-string/jumbo v3, "ro.product.cpu.abi2"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, cpuAbi2:Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 217
    invoke-static {p0, v1, p1}, Lcom/android/internal/content/NativeLibraryHelper;->listPackageSharedLibsForAbiLI(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/List;)I

    move-result v2

    .line 220
    :cond_17
    if-ne v2, v5, :cond_22

    .line 221
    const-string v3, "NativeHelper"

    const-string v4, "Native ABI mismatch from package file"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v3, -0x2

    .line 238
    .end local v1       #cpuAbi2:Ljava/lang/String;,
    :goto_21
    return v3

    .line 225
    .restart local v1       #cpuAbi2:Ljava/lang/String;,
    :cond_22
    if-nez v2, :cond_25

    .line 226
    move-object v0, v1

    .line 235
    .end local v1       #cpuAbi2:Ljava/lang/String;,
    :cond_25
    if-nez v2, :cond_2a

    .line 236
    invoke-static {p0, v0, p1}, Lcom/android/internal/content/NativeLibraryHelper;->listPackageGdbServerLI(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/List;)I

    .line 238
    :cond_2a
    const/4 v3, 0x1

    goto :goto_21
.end method

.method private static listPackageSharedLibsForAbiLI(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/util/List;)I
    .registers 15
    .parameter "zipFile"
    .parameter "cpuAbi"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/zip/ZipEntry;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .local p2, libEntries:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/util/zip/ZipEntry;Ljava/lang/String;>;>;"
    const/4 v11, 0x0

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 79
    .local v0, cpuAbiLen:I
    const/4 v4, 0x0

    .line 80
    .local v4, hasNativeLibraries:Z
    const/4 v5, 0x0

    .line 87
    .local v5, installedNativeLibraries:Z
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 89
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_75

    .line 90
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 93
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_b

    .line 96
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, entryName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    sget v9, Lcom/android/internal/content/NativeLibraryHelper;->MIN_ENTRY_LENGTH:I

    if-lt v8, v9, :cond_b

    const-string v8, ".so"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "lib/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 112
    const/16 v8, 0x2f

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 114
    .local v6, lastSlash:I
    if-ltz v6, :cond_b

    add-int/lit8 v8, v6, 0x1

    const-string v9, "lib"

    sget v10, Lcom/android/internal/content/NativeLibraryHelper;->LIB_PREFIX_LENGTH:I

    invoke-virtual {v3, v8, v9, v11, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 119
    const/4 v4, 0x1

    .line 122
    sget v8, Lcom/android/internal/content/NativeLibraryHelper;->APK_LIB_LENGTH:I

    add-int/2addr v8, v0

    if-ne v6, v8, :cond_b

    sget v8, Lcom/android/internal/content/NativeLibraryHelper;->APK_LIB_LENGTH:I

    invoke-virtual {v3, v8, p1, v11, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 131
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, libFileName:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/os/FileUtils;->isFilenameSafe(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 136
    const/4 v5, 0x1

    .line 142
    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 144
    .end local v2       #entry:Ljava/util/zip/ZipEntry;,
    .end local v3       #entryName:Ljava/lang/String;,
    .end local v6       #lastSlash:I,
    .end local v7       #libFileName:Ljava/lang/String;,
    :cond_75
    if-nez v4, :cond_79

    .line 145
    const/4 v8, 0x1

    .line 150
    :goto_78
    return v8

    .line 147
    :cond_79
    if-nez v5, :cond_7d

    .line 148
    const/4 v8, 0x2

    goto :goto_78

    :cond_7d
    move v8, v11

    .line 150
    goto :goto_78
.end method

.method public static removeNativeBinariesFromDirLI(Ljava/io/File;)Z
    .registers 7
    .parameter "nativeLibraryDir"

    .prologue
    .line 326
    const/4 v1, 0x0

    .line 333
    .local v1, deletedFiles:Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 334
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 335
    .local v0, binaries:[Ljava/io/File;
    if-eqz v0, :cond_3c

    .line 336
    const/4 v2, 0x0

    .local v2, nn:I
    :goto_e
    array-length v3, v0

    if-ge v2, v3, :cond_3c

    .line 341
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 342
    const-string v3, "NativeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete native binary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 344
    :cond_3a
    const/4 v1, 0x1

    goto :goto_37

    .line 352
    .end local v0       #binaries:[Ljava/io/File;,
    .end local v2       #nn:I,
    :cond_3c
    return v1
.end method

.method public static removeNativeBinariesLI(Ljava/lang/String;)Z
    .registers 2
    .parameter "nativeLibraryPath"

    .prologue
    .line 316
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
