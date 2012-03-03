.class public Lcom/lge/appwidget/Andy_PhotoViewSwitcher;
.super Landroid/widget/RelativeLayout;
.source "Andy_PhotoViewSwitcher.java"


# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_PhotoViewSwitcher$1;,
        Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;,
        Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;
    }
.end annotation


# static fields
.field static final COLUMN_PHOTO_ID:I = 0x0

.field public static final FLIP_DOWN:I = 0x1

.field public static final FLIP_UP:I = 0x0

.field public static final PHOTO_FLIP_ACTION:Ljava/lang/String; = "android.photo.switcher.action.FLIP"

.field private static final PHOTO_PROJECTION:[Ljava/lang/String; = null

.field public static final PHOTO_SWITCHER_DATA_URI:Ljava/lang/String; = "://photo_switcher_flip/"

.field public static final PHOTO_SWITCHER_URI_SCHEME:Ljava/lang/String; = "photo_switcher"

.field public static final PHOTO_VIEW_SWITCHER_SWITCH_COMPLETED_ACTION:Ljava/lang/String; = "android.photoviewswitcer.action.SWITCH_COMPLETED"

.field public static final REMOTE_PHOTO_VIEW_ITEMS_PARCELABLE_KEY:Ljava/lang/String; = "PhotoViewSwitcher"

.field public static final REMOTE_PHOTO_VIEW_LISTENER_PARCELABLE_KEY:Ljava/lang/String; = "PhotoViewSwitcher_Listener"



# instance fields
.field private CURRENT_VIEW:Z

.field private NEXT_VIEW:Z

.field private cr:Landroid/content/ContentResolver;

.field private mAlbum_count:I

.field private mBottomInAnimation:Landroid/view/animation/Animation;

.field private mBottomOutAnimation:Landroid/view/animation/Animation;

.field private mBucketId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDirection:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;

.field public mHander:Landroid/os/Handler;

.field private mIsInitPhotoViewFlipper:Z

.field private mIsSetFlipListener:Z

.field private mPhotoParcelable:Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

.field private mPhoto_index:I

.field private mTopInAnimation:Landroid/view/animation/Animation;

.field private mTopOutAnimation:Landroid/view/animation/Animation;

.field private mViewId:I

.field private mViewSwitcher:Landroid/widget/ViewSwitcher;

.field private mWidgetId:I

.field private mWidgetSize:I

.field private final selection:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->PHOTO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 85
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mHander:Landroid/os/Handler;

    .line 54
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsSetFlipListener:Z

    .line 60
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsInitPhotoViewFlipper:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->CURRENT_VIEW:Z

    .line 62
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->NEXT_VIEW:Z

    .line 64
    iput v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mWidgetId:I

    .line 65
    iput v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mWidgetSize:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBucketId:Ljava/lang/String;

    .line 67
    iput v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    .line 68
    iput v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mAlbum_count:I

    .line 69
    iput v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewId:I

    .line 81
    const-string v0, "bucket_id=?"

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->selection:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mHander:Landroid/os/Handler;

    .line 54
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsSetFlipListener:Z

    .line 60
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsInitPhotoViewFlipper:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->CURRENT_VIEW:Z

    .line 62
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->NEXT_VIEW:Z

    .line 64
    iput v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mWidgetId:I

    .line 65
    iput v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mWidgetSize:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBucketId:Ljava/lang/String;

    .line 67
    iput v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    .line 68
    iput v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mAlbum_count:I

    .line 69
    iput v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewId:I

    .line 81
    const-string v0, "bucket_id=?"

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->selection:Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static synthetic access$102(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mDirection:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mWidgetId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mWidgetSize:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Landroid/widget/ViewSwitcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->CURRENT_VIEW:Z

    return v0
.end method

.method static synthetic access$900(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->NEXT_VIEW:Z

    return v0
.end method

.method private bindEmptyPhotoView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 301
    const v1, 0x205015f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 302
    .local v0, photoView:Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    return-void
.end method

.method private bindNextPhotoView(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 268
    const v0, 0x205015f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 269
    .local v1, photoView:Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    const v0, 0x2050160

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 272
    .local v2, guideText:Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBucketId:Ljava/lang/String;

    iget v3, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    invoke-direct {p0, v0, v3}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->getPhotoUri(Ljava/lang/String;I)J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->NEXT_VIEW:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->bindPhoto(Landroid/widget/ImageView;Landroid/widget/TextView;JZ)V

    .line 277
    return-void
.end method

.method private bindPhoto(Landroid/widget/ImageView;Landroid/widget/TextView;JZ)V
    .registers 13
    .parameter "view"
    .parameter "text"
    .parameter "photoUri"
    .parameter "location"

    .prologue
    .line 281
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-eqz v1, :cond_c

    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_11

    .line 283
    :cond_c
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :cond_10
    :goto_10
    return-void

    .line 287
    :cond_11
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->CURRENT_VIEW:Z

    if-ne p5, v1, :cond_29

    .line 289
    new-instance v0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mHander:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;-><init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;Landroid/widget/ImageView;JLandroid/os/Handler;Z)V

    .line 290
    .local v0, photoBinder:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;
    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->bindPhoto()V

    goto :goto_10

    .line 292
    .end local v0       #photoBinder:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;,
    :cond_29
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->NEXT_VIEW:Z

    if-ne p5, v1, :cond_10

    .line 293
    new-instance v0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;

    iget-object v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mHander:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;-><init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;Landroid/widget/ImageView;JLandroid/os/Handler;Z)V

    .line 294
    .restart local v0       #photoBinder:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;,
    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$PhotoBinder;->bindPhoto()V

    goto :goto_10
.end method

.method private bindPhotoView(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 253
    const v0, 0x205015f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 254
    .local v1, photoView:Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v0, 0x2050160

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 257
    .local v2, guideText:Landroid/widget/TextView;
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBucketId:Ljava/lang/String;

    iget v3, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    invoke-direct {p0, v0, v3}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->getPhotoUri(Ljava/lang/String;I)J

    move-result-wide v3

    iget-boolean v5, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->CURRENT_VIEW:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->bindPhoto(Landroid/widget/ImageView;Landroid/widget/TextView;JZ)V

    .line 262
    return-void
.end method

.method private flipEvent(I)V
    .registers 5
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    .line 483
    if-nez p1, :cond_29

    .line 484
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    iget v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mAlbum_count:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_11

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    .line 490
    :cond_11
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 491
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 505
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->bindNextPhotoView(Landroid/view/View;)V

    .line 507
    return-void

    .line 494
    :cond_29
    if-ne p1, v2, :cond_1f

    .line 495
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    if-gez v0, :cond_37

    .line 496
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mAlbum_count:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    .line 499
    :cond_37
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 500
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1f
.end method

.method private getPhotoUri(Ljava/lang/String;I)J
    .registers 12
    .parameter "bucketIds"
    .parameter "index"

    .prologue
    .line 325
    const/4 v6, 0x0

    .line 326
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 330
    .local v7, photoId:J
    if-eqz p1, :cond_2f

    .line 335
    :try_start_5
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, selctionarg:[Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->makeSelection([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, makeSelection:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->cr:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->PHOTO_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 345
    if-eqz v6, :cond_2a

    .line 347
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mAlbum_count:I

    .line 348
    invoke-interface {v6, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 349
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_30

    move-result-wide v7

    .line 355
    :cond_2a
    if-eqz v6, :cond_2f

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 361
    .end local v3       #makeSelection:Ljava/lang/String;,
    .end local v4       #selctionarg:[Ljava/lang/String;,
    :cond_2f
    return-wide v7

    .line 355
    :catchall_30
    move-exception v0

    if-eqz v6, :cond_36

    .line 357
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_36
    throw v0
.end method

.method private initPhotoViewFlipperFromViewItems(I)V
    .registers 9
    .parameter "widgetSize"

    .prologue
    const v6, 0x2030020

    const v5, 0x203001f

    const/4 v4, 0x0

    .line 195
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 196
    .local v0, mLayoutInflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhotoParcelable:Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    if-nez v2, :cond_34

    .line 198
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsInitPhotoViewFlipper:Z

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, view:Landroid/view/View;
    sparse-switch p1, :sswitch_data_94

    .line 210
    :goto_1b
    if-eqz v1, :cond_25

    .line 211
    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->bindEmptyPhotoView(Landroid/view/View;)V

    .line 213
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 246
    :cond_25
    :goto_25
    return-void

    .line 203
    :sswitch_26
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 204
    goto :goto_1b

    .line 206
    :sswitch_2d
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_1b

    .line 220
    .end local v1       #view:Landroid/view/View;,
    :cond_34
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhotoParcelable:Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    invoke-virtual {v2}, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->getWidgetId()I

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mWidgetId:I

    .line 221
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhotoParcelable:Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    invoke-virtual {v2}, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->getWidgetSize()I

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mWidgetSize:I

    .line 222
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhotoParcelable:Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    invoke-virtual {v2}, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->getBucketId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBucketId:Ljava/lang/String;

    .line 223
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhotoParcelable:Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    invoke-virtual {v2}, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->getPhotoIndex()I

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhoto_index:I

    .line 225
    const/4 v1, 0x0

    .line 226
    .restart local v1       #view:Landroid/view/View;,
    sparse-switch p1, :sswitch_data_9e

    .line 241
    :goto_58
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->bindPhotoView(Landroid/view/View;)V

    .line 245
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsInitPhotoViewFlipper:Z

    goto :goto_25

    .line 228
    :sswitch_65
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 229
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 230
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 231
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    goto :goto_58

    .line 234
    :sswitch_7c
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 235
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    .line 236
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;)V

    goto :goto_58

    .line 200
    nop

    :sswitch_data_94
    .sparse-switch
        0x16 -> :sswitch_26
        0x2b -> :sswitch_2d
    .end sparse-switch

    .line 226
    :sswitch_data_9e
    .sparse-switch
        0x16 -> :sswitch_65
        0x2b -> :sswitch_7c
    .end sparse-switch
.end method

.method private makeSelection([Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "selctionarg"

    .prologue
    const/4 v4, 0x1

    .line 366
    const-string v1, ""

    .line 368
    .local v1, makeSelection:Ljava/lang/String;
    if-eqz p1, :cond_d

    array-length v2, p1

    if-eqz v2, :cond_d

    .line 370
    array-length v2, p1

    if-ne v2, v4, :cond_e

    .line 372
    const-string v1, "bucket_id=?"

    .line 392
    :cond_d
    return-object v1

    .line 377
    :cond_e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    array-length v2, p1

    if-ge v0, v2, :cond_d

    .line 379
    array-length v2, p1

    sub-int/2addr v2, v4

    if-eq v0, v2, :cond_2c

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bucket_id=? OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 385
    :cond_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bucket_id=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29
.end method


# virtual methods
.method public getScaledBitmap(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "context"
    .parameter "photoUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 657
    iget-object v8, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->cr:Landroid/content/ContentResolver;

    invoke-virtual {v8, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 658
    .local v3, photoStream:Ljava/io/InputStream;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 659
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x4

    iput v8, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 661
    if-eqz v3, :cond_53

    .line 664
    invoke-static {v3, v9, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 666
    .local v2, photoBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_53

    .line 669
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 670
    .local v0, h:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 671
    .local v7, w:I
    if-le v7, v0, :cond_3f

    const/16 v8, 0x12c

    if-le v7, v8, :cond_3f

    .line 672
    const-wide v8, 0x4072c00000000000L

    int-to-double v10, v7

    div-double v4, v8, v10

    .line 673
    .local v4, ratio:D
    const/16 v7, 0x12c

    .line 674
    int-to-double v8, v0

    mul-double/2addr v8, v4

    double-to-int v0, v8

    .line 683
    .end local v4       #ratio:D,
    :cond_32
    :goto_32
    const/4 v8, 0x1

    invoke-static {v2, v7, v0, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 684
    .local v6, scaled:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 685
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    move-object v8, v6

    .line 690
    .end local v0       #h:I,
    .end local v2       #photoBitmap:Landroid/graphics/Bitmap;,
    .end local v6       #scaled:Landroid/graphics/Bitmap;,
    .end local v7       #w:I,
    :goto_3e
    return-object v8

    .line 676
    .restart local v0       #h:I,
    .restart local v2       #photoBitmap:Landroid/graphics/Bitmap;,
    .restart local v7       #w:I,
    :cond_3f
    if-le v0, v7, :cond_32

    const/16 v8, 0x168

    if-le v0, v8, :cond_32

    .line 677
    const-wide v8, 0x4076800000000000L

    int-to-double v10, v0

    div-double v4, v8, v10

    .line 678
    .restart local v4       #ratio:D,
    const/16 v0, 0x168

    .line 679
    int-to-double v8, v7

    mul-double/2addr v8, v4

    double-to-int v7, v8

    goto :goto_32

    .end local v0       #h:I,
    .end local v2       #photoBitmap:Landroid/graphics/Bitmap;,
    .end local v4       #ratio:D,
    .end local v7       #w:I,
    :cond_53
    move-object v8, v9

    .line 690
    goto :goto_3e
.end method

.method public initPhotoFrameView()V
    .registers 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->cr:Landroid/content/ContentResolver;

    .line 104
    const v0, 0x2050162

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 105
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 107
    new-instance v0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;-><init>(Lcom/lge/appwidget/Andy_PhotoViewSwitcher;Lcom/lge/appwidget/Andy_PhotoViewSwitcher$1;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mGestureListener:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;

    .line 108
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mGestureListener:Lcom/lge/appwidget/Andy_PhotoViewSwitcher$GestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 110
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x2040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mTopInAnimation:Landroid/view/animation/Animation;

    .line 111
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x2040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mTopOutAnimation:Landroid/view/animation/Animation;

    .line 112
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x2040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBottomInAnimation:Landroid/view/animation/Animation;

    .line 113
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x2040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBottomOutAnimation:Landroid/view/animation/Animation;

    .line 116
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mTopInAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_60

    .line 118
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 123
    :cond_60
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBottomInAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_69

    .line 125
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 128
    :cond_69
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 696
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 702
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 708
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "widgetId"

    iget v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string/jumbo v1, "widgetSize"

    iget v2, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mWidgetSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v1, "com.lge.sizechangable.photoalbum"

    const-string v2, "com.lge.sizechangable.photoalbum.widget.SelectAlbum"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    iget-object v1, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 321
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->initPhotoFrameView()V

    .line 134
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 451
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsInitPhotoViewFlipper:Z

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_18

    .line 454
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsSetFlipListener:Z

    if-ne v0, v1, :cond_16

    .line 456
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mDirection:I

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->flipEvent(I)V

    :cond_16
    move v0, v1

    .line 463
    :goto_17
    return v0

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_17
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 469
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsInitPhotoViewFlipper:Z

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_16

    .line 472
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsSetFlipListener:Z

    if-ne v0, v1, :cond_16

    .line 474
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mDirection:I

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->flipEvent(I)V

    .line 479
    :cond_16
    return v1
.end method

.method public setPhotoViewItems_2x2(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsInitPhotoViewFlipper:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsSetFlipListener:Z

    .line 146
    if-nez p1, :cond_9

    .line 156
    :goto_8
    return-void

    .line 151
    :cond_9
    const-string v0, "PhotoViewSwitcher"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhotoParcelable:Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    .line 153
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->initPhotoViewFlipperFromViewItems(I)V

    goto :goto_8
.end method

.method public setPhotoViewItems_4x3(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsInitPhotoViewFlipper:Z

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mIsSetFlipListener:Z

    .line 166
    if-nez p1, :cond_9

    .line 176
    :goto_8
    return-void

    .line 171
    :cond_9
    const-string v0, "PhotoViewSwitcher"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->mPhotoParcelable:Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    .line 173
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_PhotoViewSwitcher;->initPhotoViewFlipperFromViewItems(I)V

    goto :goto_8
.end method
