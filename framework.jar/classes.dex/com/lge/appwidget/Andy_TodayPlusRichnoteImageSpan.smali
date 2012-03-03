.class public Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;
.super Landroid/text/style/DynamicDrawableSpan;
.source "Andy_TodayPlusRichnoteImageSpan.java"



# static fields
.field public static final IMAGE_TYPE_AUDIO:S = 0x3s

.field public static final IMAGE_TYPE_MAP:S = 0x2s

.field public static final IMAGE_TYPE_PHOTO:S = 0x1s

.field private static final IO_BUFFER_SIZE:I = 0x1000

.field public static final MaxMapHeight:I = 0x10b

.field public static final MaxMediaHeight:I = 0x67

.field public static final MaxPhotoHeight:I = 0xd2

.field public static final MaxWidth:I = 0xfc

.field private static final TEXT_LINE_HEIGHT:S = 0x15s

.field private static final TEXT_MARGIN:S = 0xds



# instance fields
.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mExists:Z

.field private mExtra:Ljava/lang/String;

.field private mImageType:S

.field private mResourceId:I

.field private mSampleSize:D

.field private mScaledHeight:I

.field private mScaledWidth:I

.field private mSource:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;



# direct methods
.method public constructor <init>(Landroid/content/Context;SI)V
    .registers 5
    .parameter "context"
    .parameter "type"
    .parameter "resourceId"

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;-><init>(Landroid/content/Context;SII)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;SII)V
    .registers 6
    .parameter "context"
    .parameter "type"
    .parameter "resourceId"
    .parameter "verticalAlignment"

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-direct {p0, p4}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 35
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContentUri:Landroid/net/Uri;

    .line 37
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    .line 258
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContext:Landroid/content/Context;

    .line 259
    iput-short p2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    .line 260
    iput p3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mResourceId:I

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;SLandroid/graphics/Bitmap;I)V
    .registers 11
    .parameter "context"
    .parameter "type"
    .parameter "b"
    .parameter "resourceId"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 150
    invoke-direct {p0, v5}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 35
    iput-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContentUri:Landroid/net/Uri;

    .line 37
    iput-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    .line 151
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContext:Landroid/content/Context;

    .line 152
    iput-short p2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    .line 154
    if-nez p3, :cond_14

    .line 156
    iput p4, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mResourceId:I

    .line 169
    :goto_13
    return-void

    .line 160
    :cond_14
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mExists:Z

    .line 161
    if-eqz p1, :cond_3c

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_22
    iput-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 164
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 165
    .local v1, width:I
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 167
    .local v0, height:I
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-lez v1, :cond_42

    move v3, v1

    :goto_35
    if-lez v0, :cond_44

    move v4, v0

    :goto_38
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_13

    .line 161
    .end local v0       #height:I,
    .end local v1       #width:I,
    :cond_3c
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_22

    .restart local v0       #height:I,
    .restart local v1       #width:I,
    :cond_42
    move v3, v5

    .line 167
    goto :goto_35

    :cond_44
    move v4, v5

    goto :goto_38
.end method

.method public constructor <init>(Landroid/content/Context;SLandroid/net/Uri;)V
    .registers 6
    .parameter "context"
    .parameter "type"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 35
    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContentUri:Landroid/net/Uri;

    .line 37
    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    .line 212
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContext:Landroid/content/Context;

    .line 213
    iput-object p3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    .line 214
    iput-short p2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    .line 215
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSource:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;SLandroid/net/Uri;I)V
    .registers 8
    .parameter "context"
    .parameter "type"
    .parameter "uri"
    .parameter "resourceId"

    .prologue
    const/4 v2, 0x0

    .line 229
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 35
    iput-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContentUri:Landroid/net/Uri;

    .line 37
    iput-object v2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    .line 230
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContext:Landroid/content/Context;

    .line 231
    iput-short p2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    .line 233
    new-instance v0, Ljava/io/File;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 236
    iput-object p3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    .line 237
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSource:Ljava/lang/String;

    .line 244
    :goto_2c
    return-void

    .line 241
    :cond_2d
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContext:Landroid/content/Context;

    .line 242
    iput p4, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mResourceId:I

    goto :goto_2c
.end method

.method public constructor <init>(Landroid/content/Context;SLjava/lang/String;I)V
    .registers 22
    .parameter "context"
    .parameter "type"
    .parameter "filename"
    .parameter "resourceId"

    .prologue
    .line 64
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 35
    const/4 v12, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    const/4 v12, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContentUri:Landroid/net/Uri;

    .line 37
    const/4 v12, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    .line 65
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContext:Landroid/content/Context;

    .line 66
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    .line 67
    const/4 v12, 0x0

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mExists:Z

    .line 70
    const/4 v4, 0x0

    .line 71
    .local v4, file:Ljava/io/File;
    if-eqz p3, :cond_36

    new-instance v4, Ljava/io/File;

    .end local v4       #file:Ljava/io/File;,
    move-object v0, v4

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v4       #file:Ljava/io/File;,
    :cond_36
    if-eqz v4, :cond_122

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_122

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_122

    .line 75
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mExists:Z

    .line 78
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 79
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 80
    const/4 v11, 0x0

    .line 84
    .local v11, url:Ljava/net/URL;
    :try_start_53
    invoke-virtual {v4}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v11

    .line 87
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v11}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12

    const/16 v13, 0x1000

    invoke-direct {v5, v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 88
    .local v5, inputStream:Ljava/io/InputStream;
    const/4 v12, 0x0

    invoke-static {v5, v12, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_66
    .catch Ljava/net/MalformedURLException; {:try_start_53 .. :try_end_66} :catch_12f
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_66} :catch_12c
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_66} :catch_129

    .line 106
    .end local v5       #inputStream:Ljava/io/InputStream;,
    :goto_66
    iget v8, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 107
    .local v8, orgWidth:I
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 110
    .local v7, orgHeight:I
    move-object/from16 v0, p0

    move v1, v8

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->setScaledSize(II)V

    .line 113
    const/4 v9, 0x1

    .line 114
    .local v9, sample:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSampleSize:D

    move-wide v12, v0

    const-wide/high16 v14, 0x3ff0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_fc

    const/4 v9, 0x1

    .line 120
    :goto_7e
    const/4 v12, 0x0

    iput-boolean v12, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 121
    iput v9, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 124
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 125
    .local v3, bm:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledWidth:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    move v13, v0

    const/4 v14, 0x1

    invoke-static {v3, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 128
    .local v10, scaledbm:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_11c

    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-direct {v12, v13, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_a4
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 132
    const-string v12, "abc"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mDrawable  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledWidth:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v12, "abc"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mDrawable  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledWidth:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    .end local v3       #bm:Landroid/graphics/Bitmap;,
    .end local v6       #options:Landroid/graphics/BitmapFactory$Options;,
    .end local v7       #orgHeight:I,
    .end local v8       #orgWidth:I,
    .end local v9       #sample:I,
    .end local v10       #scaledbm:Landroid/graphics/Bitmap;,
    .end local v11       #url:Ljava/net/URL;,
    :goto_fb
    return-void

    .line 115
    .restart local v6       #options:Landroid/graphics/BitmapFactory$Options;,
    .restart local v7       #orgHeight:I,
    .restart local v8       #orgWidth:I,
    .restart local v9       #sample:I,
    .restart local v11       #url:Ljava/net/URL;,
    :cond_fc
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSampleSize:D

    move-wide v12, v0

    const-wide/high16 v14, 0x4008

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_10a

    const/4 v9, 0x2

    goto/16 :goto_7e

    .line 116
    :cond_10a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSampleSize:D

    move-wide v12, v0

    const-wide/high16 v14, 0x4018

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_118

    const/4 v9, 0x4

    goto/16 :goto_7e

    .line 117
    :cond_118
    const/16 v9, 0x8

    goto/16 :goto_7e

    .line 128
    .restart local v3       #bm:Landroid/graphics/Bitmap;,
    .restart local v10       #scaledbm:Landroid/graphics/Bitmap;,
    :cond_11c
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_a4

    .line 140
    .end local v3       #bm:Landroid/graphics/Bitmap;,
    .end local v6       #options:Landroid/graphics/BitmapFactory$Options;,
    .end local v7       #orgHeight:I,
    .end local v8       #orgWidth:I,
    .end local v9       #sample:I,
    .end local v10       #scaledbm:Landroid/graphics/Bitmap;,
    .end local v11       #url:Ljava/net/URL;,
    :cond_122
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mResourceId:I

    goto :goto_fb

    .line 100
    .restart local v6       #options:Landroid/graphics/BitmapFactory$Options;,
    .restart local v11       #url:Ljava/net/URL;,
    :catch_129
    move-exception v12

    goto/16 :goto_66

    .line 96
    :catch_12c
    move-exception v12

    goto/16 :goto_66

    .line 91
    :catch_12f
    move-exception v12

    goto/16 :goto_66
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;S)V
    .registers 4
    .parameter "d"
    .parameter "type"

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;-><init>(Landroid/graphics/drawable/Drawable;SI)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;SI)V
    .registers 5
    .parameter "d"
    .parameter "type"
    .parameter "verticalAlignment"

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p3}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 35
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContentUri:Landroid/net/Uri;

    .line 37
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    .line 183
    iput-short p2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    .line 184
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mExists:Z

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;SLjava/lang/String;)V
    .registers 5
    .parameter "d"
    .parameter "type"
    .parameter "source"

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;-><init>(Landroid/graphics/drawable/Drawable;SLjava/lang/String;I)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;SLjava/lang/String;I)V
    .registers 6
    .parameter "d"
    .parameter "type"
    .parameter "source"
    .parameter "verticalAlignment"

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, p4}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    .line 35
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContentUri:Landroid/net/Uri;

    .line 37
    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    .line 200
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    iput-object p3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSource:Ljava/lang/String;

    .line 202
    iput-short p2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    .line 203
    return-void
.end method

.method private setScaledSize(II)V
    .registers 11
    .parameter "width"
    .parameter "height"

    .prologue
    const-wide v6, 0x406f800000000000L

    const/16 v5, 0xfc

    .line 273
    const-wide/high16 v1, 0x3ff0

    .line 275
    .local v1, scale:D
    iput p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledWidth:I

    .line 276
    iput p2, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    .line 280
    iget-short v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    const/16 v0, 0xd2

    .line 285
    .local v0, basisHeight:I
    :goto_14
    if-ge p1, v5, :cond_40

    if-ge p2, v0, :cond_40

    .line 287
    div-int/lit8 v3, p2, 0x15

    mul-int/lit8 v3, v3, 0x15

    add-int/lit8 v3, v3, 0xd

    iput v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    .line 288
    int-to-double v3, p2

    iget v5, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    int-to-double v5, v5

    div-double v1, v3, v5

    .line 289
    int-to-double v3, p1

    iget v5, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    int-to-double v5, p2

    div-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledWidth:I

    .line 290
    const-wide/high16 v3, 0x3ff0

    iput-wide v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSampleSize:D

    .line 325
    :goto_34
    return-void

    .line 281
    .end local v0       #basisHeight:I,
    :cond_35
    iget-short v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3d

    const/16 v0, 0x10b

    .restart local v0       #basisHeight:I,
    goto :goto_14

    .line 282
    .end local v0       #basisHeight:I,
    :cond_3d
    const/16 v0, 0x67

    .restart local v0       #basisHeight:I,
    goto :goto_14

    .line 292
    :cond_40
    if-le p1, v5, :cond_76

    if-le p2, v0, :cond_76

    .line 294
    div-int/lit16 v3, p1, 0xfc

    div-int v4, p2, v0

    if-le v3, v4, :cond_63

    .line 296
    iput v5, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledWidth:I

    .line 297
    int-to-double v3, p1

    div-double v1, v6, v3

    .line 298
    int-to-double v3, p2

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    .line 299
    iget v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    div-int/lit8 v3, v3, 0x15

    mul-int/lit8 v3, v3, 0x15

    add-int/lit8 v3, v3, 0xd

    iput v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    .line 300
    int-to-double v3, p1

    div-double/2addr v3, v6

    iput-wide v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSampleSize:D

    goto :goto_34

    .line 304
    :cond_63
    iput v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    .line 305
    iget v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    int-to-double v3, v3

    int-to-double v5, p2

    div-double v1, v3, v5

    .line 306
    int-to-double v3, p1

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledWidth:I

    .line 307
    int-to-double v3, p2

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSampleSize:D

    goto :goto_34

    .line 310
    :cond_76
    if-le p1, v5, :cond_91

    .line 312
    iput v5, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledWidth:I

    .line 313
    int-to-double v3, p1

    div-double v1, v6, v3

    .line 314
    int-to-double v3, p2

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    .line 315
    iget v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    div-int/lit8 v3, v3, 0x15

    mul-int/lit8 v3, v3, 0x15

    add-int/lit8 v3, v3, 0xd

    iput v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    .line 316
    int-to-double v3, p1

    div-double/2addr v3, v6

    iput-wide v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSampleSize:D

    goto :goto_34

    .line 320
    :cond_91
    iput v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    .line 321
    iget v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledHeight:I

    int-to-double v3, v3

    int-to-double v5, p2

    div-double v1, v3, v5

    .line 322
    int-to-double v3, p1

    mul-double/2addr v3, v1

    double-to-int v3, v3

    iput v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mScaledWidth:I

    .line 323
    int-to-double v3, p2

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSampleSize:D

    goto :goto_34
.end method


# virtual methods
.method public exists()Z
    .registers 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mExists:Z

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 12

    .prologue
    const/4 v9, 0x0

    const-string v10, "RICHNOTE"

    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const-string v6, "abc"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDrawable  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v6, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_25

    .line 381
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 412
    :goto_24
    return-object v1

    .line 383
    :cond_25
    iget-object v6, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    if-eqz v6, :cond_91

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_2a
    iget-object v6, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 391
    .local v5, is:Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_45} :catch_57
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_45} :catch_74

    .line 393
    .end local v1       #drawable:Landroid/graphics/drawable/Drawable;,
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_47
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 395
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_55} :catch_ae
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_55} :catch_aa

    move-object v1, v2

    .line 403
    .end local v2       #drawable:Landroid/graphics/drawable/Drawable;,
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;,
    goto :goto_24

    .line 397
    .end local v5       #is:Ljava/io/InputStream;,
    :catch_57
    move-exception v6

    move-object v3, v6

    .line 399
    .local v3, fnfe:Ljava/io/FileNotFoundException;
    :goto_59
    const-string v6, "RICHNOTE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 401
    .end local v3       #fnfe:Ljava/io/FileNotFoundException;,
    :catch_74
    move-exception v6

    move-object v4, v6

    .line 402
    .local v4, ioe:Ljava/io/IOException;
    :goto_76
    const-string v6, "RICHNOTE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 407
    .end local v0       #bitmap:Landroid/graphics/Bitmap;,
    .end local v4       #ioe:Ljava/io/IOException;,
    :cond_91
    iget-object v6, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mResourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v1, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_24

    .line 401
    .end local v1       #drawable:Landroid/graphics/drawable/Drawable;,
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;,
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;,
    .restart local v5       #is:Ljava/io/InputStream;,
    :catch_aa
    move-exception v6

    move-object v4, v6

    move-object v1, v2

    .end local v2       #drawable:Landroid/graphics/drawable/Drawable;,
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;,
    goto :goto_76

    .line 397
    .end local v1       #drawable:Landroid/graphics/drawable/Drawable;,
    .restart local v2       #drawable:Landroid/graphics/drawable/Drawable;,
    :catch_ae
    move-exception v6

    move-object v3, v6

    move-object v1, v2

    .end local v2       #drawable:Landroid/graphics/drawable/Drawable;,
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;,
    goto :goto_59
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getImageType()S
    .registers 2

    .prologue
    .line 343
    iget-short v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    return v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setExtra(Ljava/lang/String;)V
    .registers 2
    .parameter "extra"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mExtra:Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setImageType(S)V
    .registers 2
    .parameter "type"

    .prologue
    .line 368
    iput-short p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mImageType:S

    .line 369
    return-void
.end method

.method public setImageUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 360
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mUri:Landroid/net/Uri;

    .line 361
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mSource:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayPlusRichnoteImageSpan;->mContentUri:Landroid/net/Uri;

    .line 357
    return-void
.end method
