.class public Lcom/lge/appwidget/Andy_CarousalView;
.super Landroid/view/View;
.source "Andy_CarousalView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final IMAGE_PATH:I = 0x2

.field private static final NUMBER_OF_PICTURE:I = 0x5

.field private static final PLACE_HOLDER_IMAGE:I = 0x0

.field private static final POSITION_FROM_LAST:I = 0x0

.field private static final TAP_TO_ADD:I = 0x1

.field private static final TEXT:I = 0x3

.field private static blackBackground:I

.field private static emptyNoteBitmap:Landroid/graphics/Bitmap;

.field private static maxTextLineCount:I

.field private static pageBackgroundBitmap:Landroid/graphics/Bitmap;

.field private static photoBackgroundBitmap:Landroid/graphics/Bitmap;

.field private static placeHolderBitmap:Landroid/graphics/Bitmap;

.field private static richnote2x2PhotoBackground:I

.field private static richnote2x2pageBackground:I

.field private static textBitmapHeight:I

.field private static textBitmapWidht:I



# instance fields
.field private ViewHeight:I

.field angleMultiple:F

.field backwardCacheBitmap:Landroid/graphics/Bitmap;

.field bitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field bitmapOffset:I

.field borderHeight:I

.field borderImage:I

.field borderWidht:I

.field private contentObserver:Landroid/database/ContentObserver;

.field private cursor:Landroid/database/Cursor;

.field dy:F

.field emptyNoteString:Ljava/lang/String;

.field private firstTime:Z

.field fontSize:I

.field forwardCachedBitmap:Landroid/graphics/Bitmap;

.field private heightPadding:I

.field img:[Lcom/lge/appwidget/Andy_ImageInfo;

.field increment:I

.field initializationDone:Z

.field isCarousalViewEmpty:Z

.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/lge/appwidget/Andy_ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field lastImagePosition:I

.field list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lge/appwidget/Andy_ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field listEndFlag:Z

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mDrawPaint:Landroid/graphics/Paint;

.field mHandler:Landroid/os/Handler;

.field mImageComparator:Lcom/lge/appwidget/ImageComparator;

.field mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

.field private mPreviousY:F

.field mRichnoteSAXParser:Lcom/lge/appwidget/Andy_RichnoteSAXParser;

.field final mUpdateResults:Ljava/lang/Runnable;

.field onMeasureDone:Z

.field private px:I

.field private py:I

.field private speed:I

.field st:Ljava/lang/String;

.field threadAlive:Z

.field totalNoteCount:I

.field private updateLock:Lcom/lge/appwidget/UpdateLock;

.field volatile urlCacheIndex:I

.field urlCacheList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lge/appwidget/UrlCache;",
            ">;"
        }
    .end annotation
.end field

.field private viewWidth:I

.field private widthPadding:I

.field y:F



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xbe

    .line 34
    const-string v0, "content://com.lge.app.richnote/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/appwidget/Andy_CarousalView;->CONTENT_URI:Landroid/net/Uri;

    .line 38
    const v0, 0x202015a

    sput v0, Lcom/lge/appwidget/Andy_CarousalView;->blackBackground:I

    .line 39
    const v0, 0x2020267

    sput v0, Lcom/lge/appwidget/Andy_CarousalView;->richnote2x2pageBackground:I

    .line 40
    const v0, 0x2020268

    sput v0, Lcom/lge/appwidget/Andy_CarousalView;->richnote2x2PhotoBackground:I

    .line 88
    sput v1, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapWidht:I

    .line 89
    sput v1, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapHeight:I

    .line 90
    const/4 v0, 0x7

    sput v0, Lcom/lge/appwidget/Andy_CarousalView;->maxTextLineCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/appwidget/Andy_CarousalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/appwidget/Andy_CarousalView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "ats"
    .parameter "defaultStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->listEndFlag:Z

    .line 50
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    .line 52
    iput v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->increment:I

    .line 54
    iput-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    .line 56
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->angleMultiple:F

    .line 57
    const/16 v0, 0x16

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->fontSize:I

    .line 59
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->threadAlive:Z

    .line 60
    iput v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->totalNoteCount:I

    .line 62
    iput v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    .line 63
    iput v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapOffset:I

    .line 65
    iput v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->lastImagePosition:I

    .line 69
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->initializationDone:Z

    .line 70
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->onMeasureDone:Z

    .line 83
    iput-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->forwardCachedBitmap:Landroid/graphics/Bitmap;

    .line 84
    iput-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->backwardCacheBitmap:Landroid/graphics/Bitmap;

    .line 218
    new-instance v0, Lcom/lge/appwidget/Andy_CarousalView$2;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_CarousalView$2;-><init>(Lcom/lge/appwidget/Andy_CarousalView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->mUpdateResults:Ljava/lang/Runnable;

    .line 368
    const/16 v0, 0x37

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->heightPadding:I

    .line 369
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->widthPadding:I

    .line 370
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->speed:I

    .line 106
    new-instance v0, Lcom/lge/appwidget/UpdateLock;

    invoke-direct {v0}, Lcom/lge/appwidget/UpdateLock;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->updateLock:Lcom/lge/appwidget/UpdateLock;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->emptyNoteString:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/lge/appwidget/Andy_RichnoteSAXParser;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_RichnoteSAXParser;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->mRichnoteSAXParser:Lcom/lge/appwidget/Andy_RichnoteSAXParser;

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/appwidget/Andy_ImageInfo;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->mDrawPaint:Landroid/graphics/Paint;

    .line 113
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/lge/appwidget/ImageComparator;

    invoke-direct {v0}, Lcom/lge/appwidget/ImageComparator;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageComparator:Lcom/lge/appwidget/ImageComparator;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->mHandler:Landroid/os/Handler;

    .line 119
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->firstTime:Z

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    .line 121
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->list:Ljava/util/LinkedList;

    .line 122
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    .line 123
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->decodePlaceHolderImage()V

    .line 124
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->decodeEmptyNoteImage()V

    .line 125
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CarousalView;->decodePageBackgroundImage()V

    .line 126
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CarousalView;->decodePhotoBackgroundImage()V

    .line 128
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->initializeImageState()V

    .line 130
    new-instance v0, Lcom/lge/appwidget/Andy_CarousalView$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lge/appwidget/Andy_CarousalView$1;-><init>(Lcom/lge/appwidget/Andy_CarousalView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->contentObserver:Landroid/database/ContentObserver;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->mContentResolver:Landroid/content/ContentResolver;

    .line 140
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/lge/appwidget/Andy_CarousalView;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 142
    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_CarousalView;->populateCarousalView(Z)V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_CarousalView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_CarousalView;->updateResultsInUi()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/appwidget/Andy_CarousalView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->px:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/appwidget/Andy_CarousalView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->widthPadding:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/appwidget/Andy_CarousalView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->py:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/appwidget/Andy_CarousalView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->heightPadding:I

    return v0
.end method

.method static synthetic access$500(Lcom/lge/appwidget/Andy_CarousalView;)Lcom/lge/appwidget/UpdateLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->updateLock:Lcom/lge/appwidget/UpdateLock;

    return-object v0
.end method

.method static synthetic access$600()Landroid/graphics/Bitmap;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/lge/appwidget/Andy_CarousalView;->placeHolderBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/appwidget/Andy_CarousalView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->speed:I

    return v0
.end method

.method private addImage(ILjava/lang/String;)V
    .registers 6
    .parameter "loc"
    .parameter "imagePath"

    .prologue
    .line 1042
    const/4 v1, 0x0

    .line 1043
    .local v1, tempbitmap:Landroid/graphics/Bitmap;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v0, imageFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1045
    invoke-virtual {p0, p2}, Lcom/lge/appwidget/Andy_CarousalView;->cropImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1047
    :cond_10
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1048
    return-void
.end method

.method private decodePageBackgroundImage()V
    .registers 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/appwidget/Andy_CarousalView;->richnote2x2pageBackground:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/lge/appwidget/Andy_CarousalView;->pageBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 157
    return-void
.end method

.method private decodePhotoBackgroundImage()V
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/appwidget/Andy_CarousalView;->richnote2x2PhotoBackground:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/lge/appwidget/Andy_CarousalView;->photoBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 150
    return-void
.end method

.method private initializeEmptyBitmapList(Z)V
    .registers 6
    .parameter "dummyFlag"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    iput-boolean v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    .line 196
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    sget-object v1, Lcom/lge/appwidget/Andy_CarousalView;->placeHolderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    sget-object v1, Lcom/lge/appwidget/Andy_CarousalView;->placeHolderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    sget-object v1, Lcom/lge/appwidget/Andy_CarousalView;->emptyNoteBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    sget-object v1, Lcom/lge/appwidget/Andy_CarousalView;->placeHolderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    sget-object v1, Lcom/lge/appwidget/Andy_CarousalView;->placeHolderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v1, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v1, v2}, Lcom/lge/appwidget/UrlCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v1, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v1, v2}, Lcom/lge/appwidget/UrlCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v1, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v1, v3}, Lcom/lge/appwidget/UrlCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v1, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v1, v2}, Lcom/lge/appwidget/UrlCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v1, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v1, v2}, Lcom/lge/appwidget/UrlCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method private measureHeight(I)I
    .registers 6
    .parameter "measureSpec"

    .prologue
    .line 243
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 244
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 245
    .local v2, specSize:I
    const/16 v0, 0x64

    .line 246
    .local v0, result:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_10

    .line 248
    move v0, v2

    .line 253
    :cond_f
    :goto_f
    return v0

    .line 249
    :cond_10
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_f

    .line 251
    move v0, v2

    goto :goto_f
.end method

.method private measureWidth(I)I
    .registers 6
    .parameter "measureSpec"

    .prologue
    .line 258
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 259
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 261
    .local v2, specSize:I
    const/16 v0, 0x64

    .line 262
    .local v0, result:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_10

    .line 264
    move v0, v2

    .line 269
    :cond_f
    :goto_f
    return v0

    .line 265
    :cond_10
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_f

    .line 267
    move v0, v2

    goto :goto_f
.end method

.method private updateResultsInUi()V
    .registers 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->invalidate()V

    .line 232
    return-void
.end method


# virtual methods
.method public addImage(Ljava/lang/String;I)V
    .registers 9
    .parameter "imagePath"
    .parameter "rowId"

    .prologue
    const/4 v3, 0x2

    const-string v5, "image added>>>>"

    const-string v4, "addImage"

    .line 955
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    if-eqz v1, :cond_3d

    .line 956
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->initializeEmtpyUrlCache()V

    .line 957
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 958
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v2, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v2, v3, p1, p2}, Lcom/lge/appwidget/UrlCache;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 959
    const-string v1, "addImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image added>>>>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    .line 966
    :goto_36
    iget v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->totalNoteCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->totalNoteCount:I

    .line 967
    return-void

    .line 962
    :cond_3d
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int v0, v1, v3

    .line 963
    .local v0, index:I
    const-string v1, "addImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image added>>>>"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v2, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v2, v3, p1, p2}, Lcom/lge/appwidget/UrlCache;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_36
.end method

.method public addText(Ljava/lang/String;I)V
    .registers 10
    .parameter "st"
    .parameter "rowId"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const-string v6, "addText"

    const-string v5, ""

    .line 938
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    if-eqz v1, :cond_57

    .line 939
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->initializeEmtpyUrlCache()V

    .line 940
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 941
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v2, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v2, v4, p1, p2}, Lcom/lge/appwidget/UrlCache;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 942
    const-string v1, "addText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "text added>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    .line 950
    :goto_38
    iget v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->totalNoteCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->totalNoteCount:I

    .line 951
    const-string v1, "addText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text added>>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    return-void

    .line 945
    :cond_57
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int v0, v1, v3

    .line 946
    .local v0, index:I
    const-string/jumbo v1, "url chachelist size>>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const-string v1, "index>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v2, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v2, v4, p1, p2}, Lcom/lge/appwidget/UrlCache;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_38
.end method

.method public clearCacheAndBitmapList(I)V
    .registers 7
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v4, "clearCacheAndBitmapList>"

    const-string v3, "clearCacheAndBitmapList"

    .line 1155
    if-nez p1, :cond_20

    .line 1156
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1157
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1158
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    .line 1159
    iput v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    .line 1160
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->initializationDone:Z

    .line 1161
    const-string v0, "clearCacheAndBitmapList>"

    const-string v0, "cleared urlCachelist and bitmaplist"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :goto_1f
    return-void

    .line 1164
    :cond_20
    if-ne p1, v2, :cond_2f

    .line 1165
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1166
    const-string v0, "clearCacheAndBitmapList>"

    const-string v0, "bitmaplist"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1167
    :cond_2f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_45

    .line 1168
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1169
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    .line 1170
    iput v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    .line 1171
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->initializationDone:Z

    .line 1172
    const-string v0, "clearCacheAndBitmapList"

    const-string v0, "cleared urlCachelist"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 1174
    :cond_45
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->initializationDone:Z

    .line 1175
    const-string v0, "clearCacheAndBitmapList"

    const-string v0, "initializationDone=false"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method cropImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "imagePath"

    .prologue
    const/16 v13, 0xc0

    const/16 v12, 0xbe

    const/16 v11, 0xf

    const/4 v10, 0x0

    .line 709
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 710
    .local v0, actualBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 711
    .local v3, actualBitmapWidth:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 712
    .local v1, actualBitmapHeight:I
    if-ge v1, v3, :cond_47

    move v2, v1

    .line 714
    .end local v1       #actualBitmapHeight:I,
    .restart local v2       
    .local v2, croppedBitmapSide:I
    :goto_16
    if-lt v1, v3, :cond_49

    sub-int v9, v1, v3

    div-int/lit8 v9, v9, 0x2

    move v6, v9

    .line 716
    .local v6, cropOffset:I
    :goto_1d
    if-lt v3, v1, :cond_4f

    .line 719
    invoke-static {v0, v6, v10, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 730
    .local v7, croppedBitmap:Landroid/graphics/Bitmap;
    :goto_23
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v12, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 731
    .local v4, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 733
    .local v5, c:Landroid/graphics/Canvas;
    new-instance v8, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/lge/appwidget/Andy_CarousalView;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 734
    .local v8, mImageViewback:Landroid/widget/ImageView;
    invoke-virtual {v8, v10, v10, v13, v13}, Landroid/widget/ImageView;->layout(IIII)V

    .line 735
    sget v9, Lcom/lge/appwidget/Andy_CarousalView;->richnote2x2PhotoBackground:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 736
    invoke-virtual {v8, v11, v11, v11, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 737
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 738
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 740
    return-object v4

    .end local v2       #croppedBitmapSide:I,
    .end local v4       #b:Landroid/graphics/Bitmap;,
    .end local v5       #c:Landroid/graphics/Canvas;,
    .end local v6       #cropOffset:I,
    .end local v7       #croppedBitmap:Landroid/graphics/Bitmap;,
    .end local v8       #mImageViewback:Landroid/widget/ImageView;,
    .restart local v1       #actualBitmapHeight:I,
    :cond_47
    move v2, v1

    .line 712
    .end local v1       #actualBitmapHeight:I,
    .local v2, actualBitmapHeight:I
    goto :goto_16

    .line 714
    .local v2, croppedBitmapSide:I
    :cond_49
    sub-int v9, v3, v1

    div-int/lit8 v9, v9, 0x2

    move v6, v9

    goto :goto_1d

    .line 725
    .restart local v6       #cropOffset:I,
    :cond_4f
    invoke-static {v0, v10, v6, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #croppedBitmap:Landroid/graphics/Bitmap;,
    goto :goto_23
.end method

.method public decodeEmptyNoteImage()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1132
    sget v2, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapWidht:I

    sget v3, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/lge/appwidget/Andy_CarousalView;->emptyNoteBitmap:Landroid/graphics/Bitmap;

    .line 1135
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v2, Lcom/lge/appwidget/Andy_CarousalView;->emptyNoteBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1137
    .local v0, c:Landroid/graphics/Canvas;
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1138
    .local v1, tempTextView:Landroid/widget/TextView;
    sget v2, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapWidht:I

    sget v3, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapHeight:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 1139
    sget v2, Lcom/lge/appwidget/Andy_CarousalView;->richnote2x2pageBackground:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1140
    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1141
    const/16 v2, 0xf

    sget v3, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapHeight:I

    div-int/lit8 v3, v3, 0x3

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1142
    const/4 v2, 0x0

    const v3, 0x3f8ccccd

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1143
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->emptyNoteString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1147
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 1149
    const-string v2, "TapBitmap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->emptyNoteString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    return-void
.end method

.method public decodePlaceHolderImage()V
    .registers 3

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/appwidget/Andy_CarousalView;->blackBackground:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/lge/appwidget/Andy_CarousalView;->placeHolderBitmap:Landroid/graphics/Bitmap;

    .line 1061
    return-void
.end method

.method drawText(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 26
    .parameter "text"

    .prologue
    .line 745
    sget v6, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapWidht:I

    sget v7, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 747
    .local v19, lBitmap:Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Canvas;

    move-object v0, v15

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 748
    .local v15, c:Landroid/graphics/Canvas;
    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9}, Landroid/text/TextPaint;-><init>()V

    .line 749
    .local v9, paint:Landroid/text/TextPaint;
    const/4 v6, 0x1

    invoke-virtual {v9, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 750
    const/high16 v6, -0x100

    invoke-virtual {v9, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 752
    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v6}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 753
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->fontSize:I

    move v6, v0

    int-to-float v6, v6

    invoke-virtual {v9, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 754
    new-instance v5, Landroid/text/StaticLayout;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    sget v10, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapWidht:I

    sget-object v11, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v12, 0x3f80

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 757
    .local v5, layout:Landroid/text/StaticLayout;
    const/16 v22, 0x0

    .line 758
    .local v22, precount:I
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v20

    .line 759
    .local v20, lineCount:I
    const/16 v18, 0x0

    .line 760
    .local v18, isElipsize:Z
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 761
    .local v21, mStringBuffer:Ljava/lang/StringBuffer;
    sget v6, Lcom/lge/appwidget/Andy_CarousalView;->maxTextLineCount:I

    move/from16 v0, v20

    move v1, v6

    if-le v0, v1, :cond_be

    .line 762
    const/16 v18, 0x1

    .line 763
    const/16 v17, 0x0

    .local v17, i:I
    :goto_5a
    sget v6, Lcom/lge/appwidget/Andy_CarousalView;->maxTextLineCount:I

    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_123

    .line 764
    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineVisibleEnd(I)I

    move-result v16

    .line 765
    .local v16, count:I
    if-nez v17, :cond_96

    .line 766
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v7

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    :goto_91
    move/from16 v22, v16

    .line 763
    add-int/lit8 v17, v17, 0x1

    goto :goto_5a

    .line 769
    :cond_96
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_91

    .line 776
    .end local v16       #count:I,
    .end local v17       #i:I,
    :cond_be
    const/16 v17, 0x0

    .restart local v17       #i:I,
    :goto_c0
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_123

    .line 777
    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineVisibleEnd(I)I

    move-result v16

    .line 778
    .restart local v16       #count:I,
    if-nez v17, :cond_fb

    .line 779
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v7

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 786
    :goto_f6
    move/from16 v22, v16

    .line 776
    add-int/lit8 v17, v17, 0x1

    goto :goto_c0

    .line 782
    :cond_fb
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f6

    .line 789
    .end local v16       #count:I,
    :cond_123
    if-eqz v18, :cond_139

    .line 790
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    const-string v8, "..."

    move-object/from16 v0, v21

    move v1, v6

    move v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 794
    :cond_139
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 795
    .local v23, tempTextView:Landroid/widget/TextView;
    sget v6, Lcom/lge/appwidget/Andy_CarousalView;->richnote2x2pageBackground:I

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 796
    const/high16 v6, -0x100

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 797
    const/16 v6, 0xf

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 798
    .end local v9       #paint:Landroid/text/TextPaint;,
    const/4 v6, 0x0

    const v7, 0x3f8ccccd

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 799
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xbe

    const/16 v9, 0xbe

    move-object/from16 v0, v23

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 802
    move-object/from16 v0, v23

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 804
    return-object v19
.end method

.method drawText(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 31
    .parameter "text1"
    .parameter "text2"

    .prologue
    .line 810
    sget v19, Lcom/lge/appwidget/Andy_CarousalView;->maxTextLineCount:I

    .line 811
    .local v19, availableHeight:I
    sget v5, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapWidht:I

    sget v6, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapHeight:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 813
    .local v24, lBitmap:Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/Canvas;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 814
    .local v20, c:Landroid/graphics/Canvas;
    new-instance v8, Landroid/text/TextPaint;

    invoke-direct {v8}, Landroid/text/TextPaint;-><init>()V

    .line 815
    .local v8, paint:Landroid/text/TextPaint;
    const/4 v5, 0x1

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 816
    const/high16 v5, -0x100

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 818
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->fontSize:I

    move v5, v0

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 820
    new-instance v4, Landroid/text/StaticLayout;

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    sget v9, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapWidht:I

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 823
    .local v4, layout:Landroid/text/StaticLayout;
    const/16 v27, 0x0

    .line 824
    .local v27, precount:I
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v25

    .line 825
    .local v25, lineCount:I
    const/16 v23, 0x0

    .line 826
    .local v23, isElipsize:Z
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 827
    .local v26, mStringBuffer:Ljava/lang/StringBuffer;
    sget v5, Lcom/lge/appwidget/Andy_CarousalView;->maxTextLineCount:I

    div-int/lit8 v5, v5, 0x2

    move/from16 v0, v25

    move v1, v5

    if-le v0, v1, :cond_14a

    .line 828
    const/16 v23, 0x1

    .line 829
    const/16 v22, 0x0

    .local v22, i:I
    :goto_5f
    sget v5, Lcom/lge/appwidget/Andy_CarousalView;->maxTextLineCount:I

    div-int/lit8 v5, v5, 0x2

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_c5

    .line 830
    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineVisibleEnd(I)I

    move-result v21

    .line 831
    .local v21, count:I
    if-nez v22, :cond_9d

    .line 832
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 840
    :goto_98
    move/from16 v27, v21

    .line 829
    add-int/lit8 v22, v22, 0x1

    goto :goto_5f

    .line 835
    :cond_9d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_98

    .line 842
    .end local v21       #count:I,
    :cond_c5
    sget v5, Lcom/lge/appwidget/Andy_CarousalView;->maxTextLineCount:I

    div-int/lit8 v5, v5, 0x2

    sub-int v19, v19, v5

    .line 859
    :goto_cb
    if-eqz v23, :cond_e1

    .line 860
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const-string v7, "..."

    move-object/from16 v0, v26

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 864
    :cond_e1
    new-instance v4, Landroid/text/StaticLayout;

    .end local v4       #layout:Landroid/text/StaticLayout;,
    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    sget v9, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapWidht:I

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 867
    .restart local v4       #layout:Landroid/text/StaticLayout;,
    const/16 v27, 0x0

    .line 868
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v25

    .line 869
    const/16 v23, 0x0

    .line 871
    const-string v5, "\n"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    move/from16 v0, v25

    move/from16 v1, v19

    if-le v0, v1, :cond_1dc

    .line 873
    const/16 v23, 0x1

    .line 874
    const/16 v22, 0x0

    :goto_10f
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_241

    .line 875
    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineVisibleEnd(I)I

    move-result v21

    .line 876
    .restart local v21       #count:I,
    if-nez v22, :cond_1b3

    .line 877
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 884
    :goto_145
    move/from16 v27, v21

    .line 874
    add-int/lit8 v22, v22, 0x1

    goto :goto_10f

    .line 845
    .end local v21       #count:I,
    .end local v22       #i:I,
    :cond_14a
    const/16 v22, 0x0

    .restart local v22       #i:I,
    :goto_14c
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_1af

    .line 846
    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineVisibleEnd(I)I

    move-result v21

    .line 847
    .restart local v21       #count:I,
    if-nez v22, :cond_187

    .line 848
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 855
    :goto_182
    move/from16 v27, v21

    .line 845
    add-int/lit8 v22, v22, 0x1

    goto :goto_14c

    .line 851
    :cond_187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_182

    .line 857
    .end local v21       #count:I,
    :cond_1af
    sub-int v19, v19, v25

    goto/16 :goto_cb

    .line 880
    .restart local v21       #count:I,
    :cond_1b3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_145

    .line 889
    .end local v21       #count:I,
    :cond_1dc
    const/16 v22, 0x0

    :goto_1de
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_241

    .line 890
    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineVisibleEnd(I)I

    move-result v21

    .line 891
    .restart local v21       #count:I,
    if-nez v22, :cond_219

    .line 892
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 899
    :goto_214
    move/from16 v27, v21

    .line 889
    add-int/lit8 v22, v22, 0x1

    goto :goto_1de

    .line 895
    :cond_219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_214

    .line 903
    .end local v21       #count:I,
    :cond_241
    if-eqz v23, :cond_257

    .line 904
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const-string v7, "..."

    move-object/from16 v0, v26

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    :cond_257
    new-instance v9, Landroid/text/StaticLayout;

    const/4 v11, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    sget v14, Lcom/lge/appwidget/Andy_CarousalView;->textBitmapWidht:I

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v16, 0x3f80

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v10, v26

    move-object v13, v8

    invoke-direct/range {v9 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 913
    .local v9, drawLayout:Landroid/text/StaticLayout;
    move-object v0, v9

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 915
    return-object v24
.end method

.method public initializeEmtpyUrlCache()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v1, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v1, v3}, Lcom/lge/appwidget/UrlCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v1, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v1, v3}, Lcom/lge/appwidget/UrlCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v1, Lcom/lge/appwidget/UrlCache;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/lge/appwidget/UrlCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v1, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v1, v3}, Lcom/lge/appwidget/UrlCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    new-instance v1, Lcom/lge/appwidget/UrlCache;

    invoke-direct {v1, v3}, Lcom/lge/appwidget/UrlCache;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public initializeImageState()V
    .registers 6

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, -0x2

    .local v1, j:I
    :goto_2
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3f

    .line 162
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    new-instance v3, Lcom/lge/appwidget/Andy_ImageInfo;

    invoke-direct {v3}, Lcom/lge/appwidget/Andy_ImageInfo;-><init>()V

    aput-object v3, v2, v0

    .line 163
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v2, v2, v0

    mul-int/lit8 v3, v1, 0x18

    iput v3, v2, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    .line 164
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v2, v2, v0

    const/high16 v3, 0x42c8

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/lge/appwidget/Andy_ImageInfo;->imagePriority:I

    .line 166
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v2, v2, v0

    iput v0, v2, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    .line 167
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->list:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 169
    :cond_3f
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->list:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageComparator:Lcom/lge/appwidget/ImageComparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    .line 172
    return-void
.end method

.method public moveToLatestPosition(Z)V
    .registers 4
    .parameter "dummyFlag"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    .line 1052
    const-string v0, "moveToLatestPosition"

    const-string v1, "moveToLatestPosition>>>>"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->invalidate()V

    .line 1054
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 238
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 239
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->list:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->iterator:Ljava/util/Iterator;

    :goto_9
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f3

    .line 279
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_ImageInfo;

    iput-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    .line 280
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->firstTime:Z

    if-eqz v1, :cond_8c

    .line 282
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->px:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->angleMultiple:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->widthPadding:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imageWidth:I

    .line 284
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->py:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->angleMultiple:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->heightPadding:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imageHeight:I

    .line 286
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    const/high16 v2, 0x42c8

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imagePriority:I

    .line 289
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->px:I

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imageXPosition:F

    .line 290
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->py:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->angleMultiple:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imageYPosition:F

    .line 294
    :cond_8c
    sget-object v1, Lcom/lge/appwidget/Andy_CarousalView;->placeHolderBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v2, v2, Lcom/lge/appwidget/Andy_ImageInfo;->imageWidth:I

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageHeight:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 296
    .local v0, bt:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v1, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imageXPosition:F

    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v2, v2, Lcom/lge/appwidget/Andy_ImageInfo;->imageYPosition:F

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 299
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 300
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->updateLock:Lcom/lge/appwidget/UpdateLock;

    monitor-enter v2
    :try_end_ae
    .catchall {:try_start_1 .. :try_end_ae} :catchall_db

    .line 301
    :try_start_ae
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lcom/lge/appwidget/Andy_CarousalView;->placeHolderBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_d2

    .line 303
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    iget v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v4, v4, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    add-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {v1}, Lcom/lge/appwidget/UrlCache;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_1fc

    .line 354
    :cond_d2
    :goto_d2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 355
    monitor-exit v2

    goto/16 :goto_9

    :catchall_d8
    move-exception v1

    monitor-exit v2
    :try_end_da
    .catchall {:try_start_ae .. :try_end_da} :catchall_d8

    :try_start_da
    throw v1
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_db

    .line 277
    .end local v0       #bt:Landroid/graphics/Bitmap;,
    :catchall_db
    move-exception v1

    monitor-exit p0

    throw v1

    .line 307
    .restart local v0       #bt:Landroid/graphics/Bitmap;,
    :pswitch_de
    :try_start_de
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageWidth:I

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderWidht:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v4, v4, Lcom/lge/appwidget/Andy_ImageInfo;->imageHeight:I

    iget v5, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderHeight:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v1, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imageXPosition:F

    iget v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderWidht:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageYPosition:F

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_d2

    .line 318
    :pswitch_117
    sget-object v1, Lcom/lge/appwidget/Andy_CarousalView;->pageBackgroundBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageWidth:I

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderWidht:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v4, v4, Lcom/lge/appwidget/Andy_ImageInfo;->imageHeight:I

    iget v5, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderHeight:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v1, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imageXPosition:F

    iget v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderWidht:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageYPosition:F

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 324
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 327
    const/high16 v1, -0x3f20

    iget v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->px:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->py:I

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 328
    const-string v1, "bitmapList size>>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageWidth:I

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderWidht:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v4, v4, Lcom/lge/appwidget/Andy_ImageInfo;->imageHeight:I

    iget v5, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderHeight:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v1, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imageXPosition:F

    iget v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderWidht:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageYPosition:F

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderHeight:I

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 339
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_d2

    .line 342
    :pswitch_1b9
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageWidth:I

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderWidht:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v4, v4, Lcom/lge/appwidget/Andy_ImageInfo;->imageHeight:I

    iget v5, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderHeight:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v1, v1, Lcom/lge/appwidget/Andy_ImageInfo;->imageXPosition:F

    iget v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderWidht:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mImageState:Lcom/lge/appwidget/Andy_ImageInfo;

    iget v3, v3, Lcom/lge/appwidget/Andy_ImageInfo;->imageYPosition:F

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1f1
    .catchall {:try_start_de .. :try_end_1f1} :catchall_d8

    goto/16 :goto_d2

    .line 359
    .end local v0       #bt:Landroid/graphics/Bitmap;,
    :cond_1f3
    :try_start_1f3
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->firstTime:Z

    if-eqz v1, :cond_1fa

    .line 360
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->firstTime:Z
    :try_end_1fa
    .catchall {:try_start_1f3 .. :try_end_1fa} :catchall_db

    .line 363
    :cond_1fa
    monitor-exit p0

    return-void

    .line 303
    :pswitch_data_1fc
    .packed-switch 0x1
        :pswitch_de
        :pswitch_117
        :pswitch_1b9
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 6
    .parameter "wMeasureSpec"
    .parameter "hMeasureSpec"

    .prologue
    .line 176
    invoke-direct {p0, p2}, Lcom/lge/appwidget/Andy_CarousalView;->measureHeight(I)I

    move-result v0

    .line 177
    .local v0, measuredHeight:I
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_CarousalView;->measureWidth(I)I

    move-result v1

    .line 179
    .local v1, measuredWidth:I
    invoke-virtual {p0, v1, v0}, Lcom/lge/appwidget/Andy_CarousalView;->setMeasuredDimension(II)V

    .line 181
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->ViewHeight:I

    .line 182
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->viewWidth:I

    .line 184
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->viewWidth:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->px:I

    .line 185
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->ViewHeight:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->py:I

    .line 186
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->setWidthPadding()V

    .line 187
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->setHeightPadding()V

    .line 189
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "e"

    .prologue
    const/high16 v8, 0x1000

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 377
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->threadAlive:Z

    if-eqz v2, :cond_b

    move v2, v5

    .line 703
    :goto_a
    return v2

    .line 381
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_d8

    :cond_12
    :goto_12
    move v2, v5

    .line 703
    goto :goto_a

    .line 384
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->mPreviousY:F

    goto :goto_12

    .line 388
    :pswitch_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->y:F

    .line 390
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->y:F

    iget v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->mPreviousY:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->dy:F

    .line 391
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->dy:F

    const/high16 v3, -0x3f60

    cmpg-float v2, v2, v3

    if-gez v2, :cond_60

    .line 392
    const/4 v2, -0x2

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->increment:I

    .line 394
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    iget-object v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_54

    .line 395
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_CarousalView;->listEndFlag:Z

    .line 438
    :cond_41
    :goto_41
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->increment:I

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->listEndFlag:Z

    if-nez v2, :cond_12

    .line 440
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_CarousalView;->threadAlive:Z

    .line 441
    new-instance v2, Lcom/lge/appwidget/Andy_CarousalView$3;

    invoke-direct {v2, p0}, Lcom/lge/appwidget/Andy_CarousalView$3;-><init>(Lcom/lge/appwidget/Andy_CarousalView;)V

    invoke-virtual {v2}, Lcom/lge/appwidget/Andy_CarousalView$3;->start()V

    goto :goto_12

    .line 397
    :cond_54
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_CarousalView;->listEndFlag:Z

    .line 398
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->lastImagePosition:I

    if-lt v2, v7, :cond_41

    .line 399
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->lastImagePosition:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->lastImagePosition:I

    goto :goto_41

    .line 403
    :cond_60
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->dy:F

    const/high16 v3, 0x40a0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7f

    .line 404
    const/4 v2, 0x2

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->increment:I

    .line 406
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    if-nez v2, :cond_72

    .line 407
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_CarousalView;->listEndFlag:Z

    goto :goto_41

    .line 409
    :cond_72
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_CarousalView;->listEndFlag:Z

    .line 410
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->lastImagePosition:I

    if-gt v2, v7, :cond_41

    .line 411
    iget v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->lastImagePosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->lastImagePosition:I

    goto :goto_41

    .line 416
    :cond_7f
    iput v6, p0, Lcom/lge/appwidget/Andy_CarousalView;->increment:I

    .line 418
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    if-eqz v2, :cond_97

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.app.richnote.intent.action.NewNote"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 422
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 423
    const-string v1, "Clicked on note :0"

    .line 424
    .local v1, text:Ljava/lang/CharSequence;
    goto :goto_41

    .line 426
    .end local v0       #intent:Landroid/content/Intent;,
    .end local v1       #text:Ljava/lang/CharSequence;,
    :cond_97
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.app.richnote.intent.action.DetailView"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .restart local v0       #intent:Landroid/content/Intent;,
    const-string v3, "fileId"

    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    iget v4, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {v2}, Lcom/lge/appwidget/UrlCache;->getRowId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 431
    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clicked on note :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_41

    .line 381
    nop

    :pswitch_data_d8
    .packed-switch 0x0
        :pswitch_14
        :pswitch_1b
    .end packed-switch
.end method

.method public populateCarousalView(Z)V
    .registers 16
    .parameter "firstTime"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x1

    const-string v13, "data"

    const-string v11, "_id"

    .line 1065
    if-eqz p1, :cond_3d

    .line 1066
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/appwidget/Andy_CarousalView;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v11, v2, v5

    const-string v4, "data"

    aput-object v13, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    .line 1075
    :goto_24
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_51

    .line 1076
    const-string v0, "cursor>>>>>."

    const-string/jumbo v1, "null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-direct {p0, v12}, Lcom/lge/appwidget/Andy_CarousalView;->initializeEmptyBitmapList(Z)V

    .line 1078
    if-nez p1, :cond_3c

    .line 1079
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->invalidate()V

    .line 1127
    :cond_3c
    :goto_3c
    return-void

    .line 1069
    :cond_3d
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 1070
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1071
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1072
    iput v5, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    .line 1073
    iput-boolean v12, p0, Lcom/lge/appwidget/Andy_CarousalView;->isCarousalViewEmpty:Z

    goto :goto_24

    .line 1084
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_103

    .line 1085
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    const-string v2, "data"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1087
    .local v10, xmlString:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->mRichnoteSAXParser:Lcom/lge/appwidget/Andy_RichnoteSAXParser;

    invoke-virtual {v0, v10}, Lcom/lge/appwidget/Andy_RichnoteSAXParser;->parseDocument(Ljava/lang/String;)Lcom/lge/appwidget/Note;

    move-result-object v8

    .line 1088
    .local v8, mNote:Lcom/lge/appwidget/Note;
    iget-object v0, v8, Lcom/lge/appwidget/Note;->imagePathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_98

    .line 1089
    invoke-virtual {v8}, Lcom/lge/appwidget/Note;->getNextImagePath()Ljava/lang/String;

    move-result-object v6

    .line 1091
    .local v6, imagePath:Ljava/lang/String;
    const-string v0, "/"

    const-string v1, "\\"

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1093
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v6, v0}, Lcom/lge/appwidget/Andy_CarousalView;->addImage(Ljava/lang/String;I)V

    .line 1118
    .end local v6       #imagePath:Ljava/lang/String;,
    :goto_92
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_51

    .line 1096
    :cond_98
    const/4 v7, 0x0

    .line 1097
    .local v7, locationAdress:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1098
    .local v9, textMessage:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/lge/appwidget/Note;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a4

    .line 1099
    invoke-virtual {v8}, Lcom/lge/appwidget/Note;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 1101
    :cond_a4
    iget-object v0, v8, Lcom/lge/appwidget/Note;->textList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b0

    .line 1102
    invoke-virtual {v8}, Lcom/lge/appwidget/Note;->getNextText()Ljava/lang/String;

    move-result-object v9

    .line 1104
    :cond_b0
    if-eqz v7, :cond_dd

    if-eqz v9, :cond_dd

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/appwidget/Andy_CarousalView;->addText(Ljava/lang/String;I)V

    goto :goto_92

    .line 1108
    :cond_dd
    if-eqz v7, :cond_f1

    .line 1109
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v7, v0}, Lcom/lge/appwidget/Andy_CarousalView;->addText(Ljava/lang/String;I)V

    goto :goto_92

    .line 1112
    :cond_f1
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v9, v0}, Lcom/lge/appwidget/Andy_CarousalView;->addText(Ljava/lang/String;I)V

    goto :goto_92

    .line 1120
    .end local v7       #locationAdress:Ljava/lang/String;,
    .end local v8       #mNote:Lcom/lge/appwidget/Note;,
    .end local v9       #textMessage:Ljava/lang/String;,
    .end local v10       #xmlString:Ljava/lang/String;,
    :cond_103
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 1121
    invoke-virtual {p0, v12}, Lcom/lge/appwidget/Andy_CarousalView;->updateBitmapList(I)V

    .line 1122
    const-string v0, ">>>>>>>>>>>>>>>>>>"

    const-string/jumbo v1, "populate done "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    if-nez p1, :cond_3c

    .line 1124
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_CarousalView;->invalidate()V

    goto/16 :goto_3c
.end method

.method setHeightPadding()V
    .registers 3

    .prologue
    .line 920
    iget v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->ViewHeight:I

    div-int/lit8 v0, v0, 0x26

    int-to-float v0, v0

    const/high16 v1, 0x4120

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->heightPadding:I

    .line 921
    const/high16 v0, 0x3fc0

    iget v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->heightPadding:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderHeight:I

    .line 922
    const-string v0, "height padding>>"

    iget v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->heightPadding:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void
.end method

.method setImageSeperation(I)V
    .registers 3
    .parameter "angleMultiple"

    .prologue
    .line 933
    int-to-float v0, p1

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->angleMultiple:F

    .line 934
    return-void
.end method

.method setWidthPadding()V
    .registers 3

    .prologue
    .line 927
    iget v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->viewWidth:I

    div-int/lit8 v0, v0, 0x20

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->widthPadding:I

    .line 928
    iget v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->widthPadding:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CarousalView;->borderWidht:I

    .line 929
    const-string/jumbo v0, "widht padding>>"

    iget v1, p0, Lcom/lge/appwidget/Andy_CarousalView;->widthPadding:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return-void
.end method

.method public updateBitmapList(I)V
    .registers 13
    .parameter "position"

    .prologue
    .line 971
    if-nez p1, :cond_39

    .line 972
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    iget-object v9, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v9

    const/4 v10, 0x5

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 974
    .local v6, tempListIterator:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/lge/appwidget/UrlCache;>;"
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/4 v9, 0x5

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    .line 1011
    .end local p1       
    :cond_1a
    :goto_1a
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1013
    const/4 v1, 0x0

    .local v1, i:I
    :goto_20
    const/4 v8, 0x5

    if-ge v1, v8, :cond_fc

    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_fc

    .line 1014
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/appwidget/UrlCache;

    .line 1015
    .local v7, tempUrlCache:Lcom/lge/appwidget/UrlCache;
    invoke-virtual {v7}, Lcom/lge/appwidget/UrlCache;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_fe

    .line 1013
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 976
    .end local v1       #i:I,
    .end local v6       #tempListIterator:Ljava/util/ListIterator;,, "Ljava/util/ListIterator<Lcom/lge/appwidget/UrlCache;>;"
    .end local v7       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    .restart local p1       
    :cond_39
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    iget v9, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 977
    .restart local v6       #tempListIterator:Ljava/util/ListIterator;,, "Ljava/util/ListIterator<Lcom/lge/appwidget/UrlCache;>;"
    iget v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    add-int/lit8 v0, v8, 0x5

    .line 978
    .local v0, forwardBitmapCacheIndex:I
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    if-ge v0, v8, :cond_1a

    .line 980
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1       
    check-cast p1, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {p1}, Lcom/lge/appwidget/UrlCache;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_10a

    goto :goto_1a

    .line 982
    :pswitch_5f
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {p1}, Lcom/lge/appwidget/UrlCache;->getString()Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, imagePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 985
    .local v2, imageFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 990
    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_CarousalView;->cropImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->forwardCachedBitmap:Landroid/graphics/Bitmap;

    goto :goto_1a

    .line 996
    .end local v2       #imageFile:Ljava/io/File;,
    .end local v3       #imagePath:Ljava/lang/String;,
    :pswitch_7d
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {p1}, Lcom/lge/appwidget/UrlCache;->getString()Ljava/lang/String;

    move-result-object v4

    .line 998
    .local v4, st:Ljava/lang/String;
    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 999
    .local v5, str:[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a1

    .line 1000
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {p0, v8, v9}, Lcom/lge/appwidget/Andy_CarousalView;->drawText(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->forwardCachedBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1a

    .line 1001
    :cond_a1
    array-length v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    .line 1003
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/lge/appwidget/Andy_CarousalView;->drawText(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->forwardCachedBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1a

    .line 1017
    .end local v0       #forwardBitmapCacheIndex:I,
    .end local v4       #st:Ljava/lang/String;,
    .end local v5       #str:[Ljava/lang/String;,
    .restart local v1       #i:I,
    .restart local v7       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    :pswitch_b0
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    sget-object v9, Lcom/lge/appwidget/Andy_CarousalView;->placeHolderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_36

    .line 1020
    :pswitch_b9
    invoke-virtual {v7}, Lcom/lge/appwidget/UrlCache;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v8}, Lcom/lge/appwidget/Andy_CarousalView;->addImage(ILjava/lang/String;)V

    goto/16 :goto_36

    .line 1023
    :pswitch_c2
    invoke-virtual {v7}, Lcom/lge/appwidget/UrlCache;->getString()Ljava/lang/String;

    move-result-object v4

    .line 1024
    .restart local v4       #st:Ljava/lang/String;,
    const-string v8, "#"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1025
    .restart local v5       #str:[Ljava/lang/String;,
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_e1

    .line 1026
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-virtual {p0, v9, v10}, Lcom/lge/appwidget/Andy_CarousalView;->drawText(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_36

    .line 1027
    :cond_e1
    array-length v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_36

    .line 1029
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/lge/appwidget/Andy_CarousalView;->drawText(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_36

    .line 1033
    .end local v4       #st:Ljava/lang/String;,
    .end local v5       #str:[Ljava/lang/String;,
    :pswitch_f3
    iget-object v8, p0, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    sget-object v9, Lcom/lge/appwidget/Andy_CarousalView;->emptyNoteBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_36

    .line 1039
    .end local v7       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    :cond_fc
    return-void

    .line 1015
    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_b0
        :pswitch_f3
        :pswitch_b9
        :pswitch_c2
    .end packed-switch

    .line 980
    :pswitch_data_10a
    .packed-switch 0x2
        :pswitch_5f
        :pswitch_7d
    .end packed-switch
.end method
