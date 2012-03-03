.class Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;
.super Ljava/lang/Thread;
.source "Andy_PhotoViewSwitcher.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->bindPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 535
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$200(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_19

    .line 537
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$300(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v6, v6, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mBindPhotoFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    :cond_19
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 541
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x2

    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 547
    const/4 v2, 0x0

    .line 549
    .local v2, pfdInput:Landroid/os/ParcelFileDescriptor;
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 551
    .local v3, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$200(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 555
    .local v4, uriThumbnail:Landroid/net/Uri;
    :try_start_2e
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v5, v5, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$400(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 557
    if-eqz v2, :cond_4d

    .line 559
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$502(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_a2
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_4d} :catch_85
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2e .. :try_end_4d} :catch_95

    .line 570
    :cond_4d
    if-eqz v2, :cond_52

    .line 572
    :try_start_4f
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_fc

    .line 580
    :cond_52
    :goto_52
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$500(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_6f

    .line 584
    :try_start_5a
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v6, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v6, v6, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    iget-object v7, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v7, v7, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v7}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$600(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->getScaledBitmap(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$502(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_6f
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_6f} :catch_a9
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5a .. :try_end_6f} :catch_af
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6f} :catch_b5

    .line 600
    :cond_6f
    :goto_6f
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$500(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_bb

    .line 602
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$300(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v6, v6, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mBindPhotoFailRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    :cond_84
    :goto_84
    return-void

    .line 563
    :catch_85
    move-exception v5

    move-object v0, v5

    .line 564
    .local v0, ex:Ljava/io/FileNotFoundException;
    :try_start_87
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_a2

    .line 570
    if-eqz v2, :cond_52

    .line 572
    :try_start_8c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_52

    .line 574
    :catch_90
    move-exception v0

    .line 575
    .local v0, ex:Ljava/io/IOException;
    :goto_91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 566
    .end local v0       #ex:Ljava/io/IOException;,
    :catch_95
    move-exception v5

    move-object v0, v5

    .line 567
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    :try_start_97
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_a2

    .line 570
    if-eqz v2, :cond_52

    .line 572
    :try_start_9c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_52

    .line 574
    :catch_a0
    move-exception v0

    goto :goto_91

    .line 570
    .end local v0       #ex:Ljava/lang/OutOfMemoryError;,
    :catchall_a2
    move-exception v5

    if-eqz v2, :cond_a8

    .line 572
    :try_start_a5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_f7

    .line 570
    :cond_a8
    :goto_a8
    throw v5

    .line 586
    :catch_a9
    move-exception v5

    move-object v0, v5

    .line 588
    .local v0, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6f

    .line 590
    .end local v0       #ex:Ljava/io/FileNotFoundException;,
    :catch_af
    move-exception v5

    move-object v0, v5

    .line 592
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_6f

    .line 594
    .end local v0       #ex:Ljava/lang/OutOfMemoryError;,
    :catch_b5
    move-exception v5

    move-object v0, v5

    .line 596
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6f

    .line 606
    .end local v0       #ex:Ljava/lang/Exception;,
    :cond_bb
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$700(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Z

    move-result v5

    iget-object v6, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v6, v6, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$800(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Z

    move-result v6

    if-ne v5, v6, :cond_d9

    .line 607
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$300(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v6, v6, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mBindCurrentPhotoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_84

    .line 609
    :cond_d9
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$700(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Z

    move-result v5

    iget-object v6, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v6, v6, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->this$0:Lcom/lge/appwidget/Andy_PhotoViewSwitcher;

    invoke-static {v6}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->access$900(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Z

    move-result v6

    if-ne v5, v6, :cond_84

    .line 610
    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    invoke-static {v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->access$300(Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder$1;->this$1:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v6, v6, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->mBindNextPhotoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_84

    .line 574
    :catch_f7
    move-exception v0

    .line 575
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a8

    .line 574
    .end local v0       #ex:Ljava/io/IOException;,
    :catch_fc
    move-exception v0

    goto :goto_91
.end method
