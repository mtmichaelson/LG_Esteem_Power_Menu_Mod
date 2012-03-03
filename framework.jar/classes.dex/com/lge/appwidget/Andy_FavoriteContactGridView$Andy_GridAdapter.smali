.class Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "Andy_FavoriteContactGridView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_FavoriteContactGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Andy_GridAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field LAYOUT_RESOURCE:[I

.field contentObserver:Landroid/database/ContentObserver;

.field mContentResolver:Landroid/content/ContentResolver;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

.field typeOfWidget:Ljava/lang/String;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_FavoriteContactGridView;Landroid/content/Context;[ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "LAYOUT_RESOURCE"
    .parameter "typeOfWidget"

    .prologue
    const/4 v0, 0x0

    .line 331
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 325
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 326
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 328
    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->typeOfWidget:Ljava/lang/String;

    .line 333
    iget-object v0, p1, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_10

    .line 337
    :cond_10
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 338
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 339
    iput-object p3, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->LAYOUT_RESOURCE:[I

    .line 340
    iput-object p4, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->typeOfWidget:Ljava/lang/String;

    .line 343
    return-void
.end method

.method private cropImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "image"

    .prologue
    const/4 v7, 0x0

    .line 444
    move-object v0, p1

    .line 445
    .local v0, actualBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 446
    .local v2, actualBitmapWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 447
    .local v1, actualBitmapHeight:I
    if-ge v1, v2, :cond_1b

    move v5, v1

    .line 449
    .local v5, croppedBitmapSide:I
    :goto_d
    if-lt v1, v2, :cond_1d

    sub-int v6, v1, v2

    div-int/lit8 v6, v6, 0x2

    move v3, v6

    .line 456
    .local v3, cropOffset:I
    :goto_14
    if-lt v2, v1, :cond_23

    .line 458
    invoke-static {v0, v3, v7, v5, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 471
    .local v4, croppedBitmap:Landroid/graphics/Bitmap;
    :goto_1a
    return-object v4

    .end local v3       #cropOffset:I,
    .end local v4       #croppedBitmap:Landroid/graphics/Bitmap;,
    .end local v5       #croppedBitmapSide:I,
    :cond_1b
    move v5, v2

    .line 447
    goto :goto_d

    .line 449
    .restart local v5       #croppedBitmapSide:I,
    :cond_1d
    sub-int v6, v2, v1

    div-int/lit8 v6, v6, 0x2

    move v3, v6

    goto :goto_14

    .line 463
    .restart local v3       #cropOffset:I,
    :cond_23
    invoke-static {v0, v7, v3, v5, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .restart local v4       #croppedBitmap:Landroid/graphics/Bitmap;,
    goto :goto_1a
.end method

.method private loadContactPhoto(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "cursor"
    .parameter "bitmapColumnIndex"
    .parameter "options"

    .prologue
    const/4 v5, 0x0

    .line 421
    if-nez p1, :cond_5

    move-object v3, v5

    .line 434
    :goto_4
    return-object v3

    .line 425
    :cond_5
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 428
    .local v0, data:[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 429
    .local v2, temp_bmp:Landroid/graphics/Bitmap;
    if-nez v2, :cond_13

    move-object v3, v5

    .line 431
    goto :goto_4

    .line 433
    :cond_13
    invoke-direct {p0, v2}, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->cropImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, resizedPhoto:Landroid/graphics/Bitmap;
    move-object v3, v1

    .line 434
    goto :goto_4
.end method

.method private setContacts(Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;I)V
    .registers 16
    .parameter "viewholder"
    .parameter "pos"

    .prologue
    const/4 v12, 0x0

    .line 377
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 379
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    iget-object v2, v2, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    .line 382
    .local v6, _Id:J
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 385
    .local v11, uri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 386
    .local v9, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 389
    .local v8, bm:Landroid/graphics/Bitmap;
    :try_start_23
    const-string/jumbo v0, "photo"

    invoke-static {v11, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 391
    .local v1, photoUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 393
    if-eqz v9, :cond_49

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 394
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v9, v0, v2}, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->loadContactPhoto(Landroid/database/Cursor;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_48
    .catchall {:try_start_23 .. :try_end_48} :catchall_71

    move-result-object v8

    .line 397
    :cond_49
    if-eqz v9, :cond_4e

    .line 398
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 401
    :cond_4e
    if-eqz v8, :cond_78

    .line 402
    iget-object v0, p1, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 408
    :goto_55
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    iget-object v2, v2, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    const-string v3, "display_name"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 411
    .local v10, contactName:Ljava/lang/String;
    if-nez v10, :cond_7e

    .line 413
    iget-object v0, p1, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;->textview1:Landroid/widget/TextView;

    const-string v2, "Unknown"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :goto_70
    return-void

    .line 397
    .end local v1       #photoUri:Landroid/net/Uri;,
    .end local v10       #contactName:Ljava/lang/String;,
    :catchall_71
    move-exception v0

    if-eqz v9, :cond_77

    .line 398
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_77
    throw v0

    .line 404
    .restart local v1       #photoUri:Landroid/net/Uri;,
    :cond_78
    iget-object v0, p1, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_55

    .line 415
    .restart local v10       #contactName:Ljava/lang/String;,
    :cond_7e
    iget-object v0, p1, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;->textview1:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_70
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->this$0:Lcom/lge/appwidget/Andy_FavoriteContactGridView;

    iget-object v0, v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 354
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 359
    if-nez p2, :cond_34

    .line 361
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->LAYOUT_RESOURCE:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 362
    new-instance v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;-><init>(Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;)V

    .line 363
    .local v0, holder:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->LAYOUT_RESOURCE:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;->imageView1:Landroid/widget/ImageView;

    .line 365
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->LAYOUT_RESOURCE:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;->textview1:Landroid/widget/TextView;

    .line 367
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 372
    :goto_30
    invoke-direct {p0, v0, p1}, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter;->setContacts(Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;I)V

    .line 373
    return-object p2

    .line 370
    .end local v0       #holder:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;,
    :cond_34
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/lge/appwidget/Andy_FavoriteContactGridView$Andy_GridAdapter$ViewHolder;,
    goto :goto_30
.end method
