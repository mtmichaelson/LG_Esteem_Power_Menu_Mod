.class public Lcom/lge/appwidget/Andy_MessageViewFlipper;
.super Landroid/widget/ViewSwitcher;
.source "Andy_MessageViewFlipper.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_MessageViewFlipper$OnPositionChangeListener;,
        Lcom/lge/appwidget/Andy_MessageViewFlipper$OnBitmapRequestListener;,
        Lcom/lge/appwidget/Andy_MessageViewFlipper$GestureListener;
    }
.end annotation


# static fields
.field public static final ACTION_BITMAP_INIT:Ljava/lang/String; = "android.message.bitmap.action.INIT"

.field public static final ACTION_BITMAP_SET:Ljava/lang/String; = "android.message.bitmap.action.SET"

.field public static final ACTION_BITMAP_SET_FINISHED:Ljava/lang/String; = "android.message.bitmap.action.SET_FINISHED"

.field private static final FLIP_DOWN:I = 0x1

.field private static final FLIP_UP:I = 0x0

.field public static final MESSAGE_BITMAP_REQUEST_ACTION:Ljava/lang/String; = "android.message.bitmap.action.REQUEST"

.field public static final MESSAGE_BITMAP_REQUEST_DATA_URI:Ljava/lang/String; = "://message_bitmap_data/"

.field public static final MESSAGE_BITMAP_REQUEST_URI_SCHEME:Ljava/lang/String; = "message_bitmap"

.field public static final MESSAGE_POSITION_CHANGE_ACTION:Ljava/lang/String; = "android.message.position.action.CHANGE"

.field public static final MESSAGE_POSITION_CHANGE_DATA_URI:Ljava/lang/String; = "://message_position_data/"

.field public static final MESSAGE_POSITION_CHANGE_URI_SCHEME:Ljava/lang/String; = "message_position"

.field public static final REMOTE_MESSAGE_BITMAP_BUNDLE_KEY:Ljava/lang/String; = "MessageBitmapBundle"

.field public static final REMOTE_MESSAGE_BITMAP_PARCELABLE_KEY:Ljava/lang/String; = "MessageBitmapParcelable"

.field public static final REMOTE_MESSAGE_BITMAP_REQUEST_LISTENER_PARCELABLE_KEY:Ljava/lang/String; = "MessageBitmapRequestListenerParcelable"

.field public static final REMOTE_MESSAGE_BITMAP_WIDGET_ID_KEY:Ljava/lang/String; = "MessageBitmapWidgetId"

.field public static final REMOTE_MESSAGE_POSITION_CHANGE_PARCELABLE_KEY:Ljava/lang/String; = "MessagePositionListenerParcelable"

.field public static final REMOTE_MESSAGE_VIEW_FLIPPER_PARCELABLE_KEY:Ljava/lang/String; = "MessageViewFlipperParcelable"



# instance fields
.field private isDisableScroll:Z

.field private isEmptyMessage:Z

.field private isRegisteerReceiver:Z

.field mAppWidgetId:I

.field private mBottomInAnimation:Landroid/view/animation/Animation;

.field private mBottomOutAnimation:Landroid/view/animation/Animation;

.field private mDirection:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/lge/appwidget/Andy_MessageViewFlipper$GestureListener;

.field public mInterceptTouchLock:Ljava/lang/Object;

.field mIsSetPositionChangeListener:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMessageParcelableArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;",
            ">;"
        }
    .end annotation
.end field

.field public mPhotoBindHander:Landroid/os/Handler;

.field private mPhotoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoReceiver:Landroid/content/BroadcastReceiver;

.field private mPosition:I

.field mPositionAppWidgetId:I

.field mPositionViewId:I

.field private mTopInAnimation:Landroid/view/animation/Animation;

.field private mTopOutAnimation:Landroid/view/animation/Animation;

.field public mTouchLock:Ljava/lang/Object;

.field mViewId:I



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoBindHander:Landroid/os/Handler;

    .line 39
    iput v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mAppWidgetId:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isEmptyMessage:Z

    .line 51
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isRegisteerReceiver:Z

    .line 58
    iput v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isDisableScroll:Z

    .line 318
    iput v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPositionAppWidgetId:I

    .line 321
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mIsSetPositionChangeListener:Z

    .line 596
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTouchLock:Ljava/lang/Object;

    .line 597
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mInterceptTouchLock:Ljava/lang/Object;

    .line 93
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->initMessageViewFlipper(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, -0x8000

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoBindHander:Landroid/os/Handler;

    .line 39
    iput v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mAppWidgetId:I

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isEmptyMessage:Z

    .line 51
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isRegisteerReceiver:Z

    .line 58
    iput v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isDisableScroll:Z

    .line 318
    iput v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPositionAppWidgetId:I

    .line 321
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mIsSetPositionChangeListener:Z

    .line 596
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTouchLock:Ljava/lang/Object;

    .line 597
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mInterceptTouchLock:Ljava/lang/Object;

    .line 99
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->initMessageViewFlipper(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/lge/appwidget/Andy_MessageViewFlipper;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/appwidget/Andy_MessageViewFlipper;Ljava/util/HashMap;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/appwidget/Andy_MessageViewFlipper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/appwidget/Andy_MessageViewFlipper;Landroid/view/View;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setMessageView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$402(Lcom/lge/appwidget/Andy_MessageViewFlipper;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mDirection:I

    return p1
.end method

.method private bindEmptyFlipView(Landroid/view/View;)V
    .registers 16
    .parameter "flipView"

    .prologue
    const/4 v13, 0x4

    .line 422
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 424
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_8

    .line 460
    :goto_7
    return-void

    .line 429
    :cond_8
    const v12, 0x205013d

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 430
    .local v2, indexView:Landroid/widget/TextView;
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    const v12, 0x205014c

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 433
    .local v6, nameView:Landroid/widget/TextView;
    const v12, 0x2050147

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 435
    .local v11, timeView:Landroid/widget/TextView;
    const v12, 0x205014e

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 436
    .local v1, emptyView:Landroid/widget/TextView;
    const v12, 0x2050143

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 437
    .local v8, photoView:Landroid/widget/ImageView;
    const v12, 0x2050146

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 439
    .local v10, timeLayout:Landroid/view/View;
    const v12, 0x205014b

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 440
    .local v4, messageView:Landroid/widget/TextView;
    const v12, 0x2050145

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 442
    .local v5, mmsClipView:Landroid/widget/ImageView;
    const v12, 0x205013e

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 444
    .local v7, photoLayout:Landroid/view/View;
    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 447
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 448
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 449
    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 450
    const/16 v12, 0x8

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    const v12, 0x20800a7

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    const v12, 0x205014a

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 456
    .local v3, listIntentView:Landroid/view/View;
    const v12, 0x2050149

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 458
    .local v9, replyIntentView:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7
.end method

.method private bindFlipView(Landroid/view/View;Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;II)V
    .registers 23
    .parameter "flipView"
    .parameter "parcelable"
    .parameter "position"
    .parameter "size"

    .prologue
    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 492
    .local v3, context:Landroid/content/Context;
    if-nez v3, :cond_7

    .line 562
    :goto_6
    return-void

    .line 497
    :cond_7
    const v16, 0x205013d

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 498
    .local v6, indexView:Landroid/widget/TextView;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v17, p3, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    const v16, 0x205014c

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 503
    .local v10, nameView:Landroid/widget/TextView;
    const v16, 0x2050147

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 504
    .local v15, timeView:Landroid/widget/TextView;
    const v16, 0x205014b

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 505
    .local v8, messageView:Landroid/widget/TextView;
    const v16, 0x205014e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 506
    .local v4, emptyView:Landroid/widget/TextView;
    const v16, 0x2050143

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 507
    .local v12, photoView:Landroid/widget/ImageView;
    const v16, 0x2050146

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 509
    .local v14, timeLayout:Landroid/view/View;
    const v16, 0x205013e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 511
    .local v11, photoLayout:Landroid/view/View;
    const v16, 0x2050145

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 513
    .local v9, mmsClipView:Landroid/widget/ImageView;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mTimeStamp:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mMessage:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->bindPhoto(Landroid/widget/ImageView;)V

    .line 519
    const/16 v16, 0x4

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    const/16 v16, 0x0

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    const/16 v16, 0x0

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    const/16 v16, 0x0

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    const/16 v16, 0x0

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->isRead()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a7

    .line 530
    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v17, 0x0

    move-object v0, v10

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 531
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x206000b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 532
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x206000d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x206000b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 534
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x206000e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 545
    :goto_15c
    move-object/from16 v0, p2

    iget v0, v0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mType:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1f6

    .line 547
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 554
    :goto_172
    const v16, 0x205014f

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 555
    .local v5, flipClickView:Landroid/view/View;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 557
    const v16, 0x205014a

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 558
    .local v7, listIntentView:Landroid/view/View;
    const v16, 0x2050149

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 560
    .local v13, replyIntentView:Landroid/view/View;
    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 538
    .end local v5       #flipClickView:Landroid/view/View;,
    .end local v7       #listIntentView:Landroid/view/View;,
    .end local v13       #replyIntentView:Landroid/view/View;,
    :cond_1a7
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v16

    or-int/lit8 v16, v16, 0x20

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 539
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x206000f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x2060011

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 541
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x2060010

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 542
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x2060012

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_15c

    .line 551
    :cond_1f6
    const/16 v16, 0x8

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_172
.end method

.method private bindPhoto(Landroid/widget/ImageView;)V
    .registers 7
    .parameter "view"

    .prologue
    const v4, 0x2020132

    .line 566
    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    if-le v2, v3, :cond_15

    iget v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    if-gez v2, :cond_16

    .line 594
    :cond_15
    :goto_15
    return-void

    .line 573
    :cond_16
    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;

    .line 575
    .local v1, parcelable:Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;
    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 579
    :cond_36
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 583
    :cond_3a
    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 585
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_4a

    .line 587
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_15

    .line 591
    :cond_4a
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_15
.end method

.method private getFlipPosition(I)I
    .registers 6
    .parameter "direction"

    .prologue
    const/high16 v3, -0x8000

    const/4 v2, 0x1

    .line 874
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isEmptyMessage:Z

    if-eq v0, v2, :cond_14

    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    :cond_14
    move v0, v3

    .line 905
    :goto_15
    return v0

    .line 881
    :cond_16
    if-nez p1, :cond_2a

    .line 883
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_25

    .line 885
    const/4 v0, 0x0

    goto :goto_15

    .line 889
    :cond_25
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 893
    :cond_2a
    if-ne p1, v2, :cond_3c

    .line 895
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    if-nez v0, :cond_38

    .line 897
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_15

    .line 901
    :cond_38
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    sub-int/2addr v0, v2

    goto :goto_15

    :cond_3c
    move v0, v3

    .line 905
    goto :goto_15
.end method

.method private initMessageViewFlipper(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const v3, 0x203001c

    const/4 v2, 0x0

    .line 104
    iput v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    .line 106
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->removeAllViews()V

    .line 107
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->clearAnimation()V

    .line 109
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 111
    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->addView(Landroid/view/View;)V

    .line 113
    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->addView(Landroid/view/View;)V

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isEmptyMessage:Z

    .line 118
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->loadAnimation(Landroid/content/Context;)V

    .line 120
    new-instance v1, Lcom/lge/appwidget/Andy_MessageViewFlipper$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/appwidget/Andy_MessageViewFlipper$GestureListener;-><init>(Lcom/lge/appwidget/Andy_MessageViewFlipper;Lcom/lge/appwidget/Andy_MessageViewFlipper$1;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mGestureListener:Lcom/lge/appwidget/Andy_MessageViewFlipper$GestureListener;

    .line 121
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mGestureListener:Lcom/lge/appwidget/Andy_MessageViewFlipper$GestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 122
    return-void
.end method

.method private isFlipperChange(Ljava/util/ArrayList;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pacelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;>;"
    const/4 v6, 0x1

    .line 395
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    :cond_7
    move v1, v6

    .line 417
    :goto_8
    return v1

    .line 401
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_17

    move v1, v6

    .line 403
    goto :goto_8

    .line 408
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 410
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;

    iget-wide v2, v1, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mId:J

    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;

    iget-wide v4, v1, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_36

    move v1, v6

    .line 412
    goto :goto_8

    .line 408
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 417
    :cond_39
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private loadAnimation(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 773
    const v0, 0x204000a

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    .line 776
    const v0, 0x204000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    .line 779
    const v0, 0x204000c

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    .line 782
    const v0, 0x204000b

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    .line 784
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 126
    if-nez p1, :cond_3

    .line 210
    :goto_2
    return-void

    .line 131
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.message.bitmap.action.INIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.message.bitmap.action.SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.message.bitmap.action.SET_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;

    invoke-direct {v1, p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper$1;-><init>(Lcom/lge/appwidget/Andy_MessageViewFlipper;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isRegisteerReceiver:Z

    goto :goto_2
.end method

.method private setMessageView(Landroid/view/View;I)V
    .registers 5
    .parameter "view"
    .parameter "position"

    .prologue
    .line 464
    if-nez p1, :cond_3

    .line 486
    :cond_2
    :goto_2
    return-void

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_16

    .line 472
    :cond_f
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->bindEmptyFlipView(Landroid/view/View;)V

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isEmptyMessage:Z

    goto :goto_2

    .line 477
    :cond_16
    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 483
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->bindFlipView(Landroid/view/View;Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;II)V

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isEmptyMessage:Z

    goto :goto_2
.end method


# virtual methods
.method public broadcastPositionChange()V
    .registers 8

    .prologue
    const-string v6, "/"

    .line 343
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mIsSetPositionChangeListener:Z

    if-nez v3, :cond_7

    .line 368
    :cond_6
    :goto_6
    return-void

    .line 348
    :cond_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 349
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.message.position.action.CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v3, "message_position://message_position_data/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPositionAppWidgetId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPositionViewId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 358
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 360
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 362
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_6

    .line 367
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "motionEvent"

    .prologue
    .line 910
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isDisableScroll:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 912
    const/4 v0, 0x0

    .line 915
    :goto_6
    return v0

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    .line 216
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->registerReceiver(Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12
    .parameter "view"

    .prologue
    const v9, 0x2050149

    const/4 v8, 0x1

    const/high16 v6, 0x1000

    const-string v7, "com.android.mms.ui.ComposeMessageActivity"

    const-string v5, "com.android.mms"

    .line 788
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 790
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 792
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_19

    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isDisableScroll:Z

    if-ne v3, v8, :cond_1a

    .line 870
    :cond_19
    :goto_19
    return-void

    .line 798
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_dc

    goto :goto_19

    .line 808
    :sswitch_22
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isEmptyMessage:Z

    if-eq v3, v8, :cond_32

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4e

    .line 812
    :cond_32
    const-string v3, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 814
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_19

    .line 801
    :sswitch_40
    const-string v3, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationList"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 803
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_19

    .line 818
    :cond_4e
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    if-ltz v3, :cond_19

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    if-le v3, v4, :cond_19

    .line 824
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    iget v4, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;

    .line 826
    .local v2, parcelable:Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;
    if-eqz v2, :cond_19

    .line 831
    iget v3, v2, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a0

    .line 833
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v9, :cond_81

    .line 835
    const-string v3, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 837
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_19

    .line 841
    :cond_81
    const-string v3, "com.android.mms"

    const-string v3, "com.android.mms.ui.CBMessageViewActivity"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 842
    const-string v3, "cbs_id"

    iget-wide v4, v2, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mId:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 843
    const-string v3, "cbs_body"

    iget-object v4, v2, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const/high16 v3, 0x1020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 845
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 850
    :cond_a0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, v9, :cond_c3

    .line 852
    const-string v3, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    const-string/jumbo v3, "thread_id"

    iget v4, v2, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mThreadId:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 854
    const-string v3, "Re"

    invoke-virtual {v1, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 855
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 856
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 860
    :cond_c3
    const-string v3, "com.android.mms"

    const-string v3, "com.android.mms.ui.ComposeMessageActivity"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string/jumbo v3, "thread_id"

    iget v4, v2, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mThreadId:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 862
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 863
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 798
    nop

    :sswitch_data_dc
    .sparse-switch
        0x2050149 -> :sswitch_22
        0x205014a -> :sswitch_40
        0x205014f -> :sswitch_22
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    .line 223
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isRegisteerReceiver:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 226
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 229
    :cond_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isRegisteerReceiver:Z

    .line 231
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 602
    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mInterceptTouchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 604
    :try_start_4
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-ne v3, v5, :cond_82

    .line 606
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isEmptyMessage:Z

    if-eq v3, v5, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_20

    .line 610
    :cond_1d
    monitor-exit v2

    move v2, v5

    .line 658
    :goto_1f
    return v2

    .line 613
    :cond_20
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 615
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_29

    .line 617
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 620
    :cond_29
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3c

    .line 625
    :cond_39
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->loadAnimation(Landroid/content/Context;)V

    .line 628
    :cond_3c
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mDirection:I

    invoke-direct {p0, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getFlipPosition(I)I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    .line 630
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_4d

    .line 632
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 635
    :cond_4d
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getNextView()Landroid/view/View;

    move-result-object v1

    .line 636
    .local v1, view:Landroid/view/View;
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    invoke-direct {p0, v1, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setMessageView(Landroid/view/View;I)V

    .line 638
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mDirection:I

    if-nez v3, :cond_6d

    .line 640
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 641
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 643
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->showNext()V

    .line 653
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->broadcastPositionChange()V

    .line 655
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 645
    :cond_6d
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mDirection:I

    if-ne v3, v5, :cond_67

    .line 647
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 648
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 650
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->showNext()V

    goto :goto_67

    .line 659
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #view:Landroid/view/View;,
    :catchall_7f
    move-exception v3

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_4 .. :try_end_81} :catchall_7f

    throw v3

    .line 658
    :cond_82
    :try_start_82
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    monitor-exit v2
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_7f

    move v2, v3

    goto :goto_1f
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 665
    iget-object v2, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTouchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 667
    :try_start_4
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-ne v3, v5, :cond_6a

    .line 669
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isEmptyMessage:Z

    if-eq v3, v5, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_20

    .line 673
    :cond_1d
    monitor-exit v2

    move v2, v5

    .line 719
    :goto_1f
    return v2

    .line 676
    :cond_20
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 678
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_29

    .line 680
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 683
    :cond_29
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3c

    .line 688
    :cond_39
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->loadAnimation(Landroid/content/Context;)V

    .line 691
    :cond_3c
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mDirection:I

    invoke-direct {p0, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getFlipPosition(I)I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    .line 693
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_4d

    .line 695
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 698
    :cond_4d
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getNextView()Landroid/view/View;

    move-result-object v1

    .line 699
    .local v1, view:Landroid/view/View;
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    invoke-direct {p0, v1, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setMessageView(Landroid/view/View;I)V

    .line 701
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mDirection:I

    if-nez v3, :cond_6d

    .line 703
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 704
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 706
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->showNext()V

    .line 716
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->broadcastPositionChange()V

    .line 719
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #view:Landroid/view/View;,
    :cond_6a
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 708
    .restart local v0       #context:Landroid/content/Context;,
    .restart local v1       #view:Landroid/view/View;,
    :cond_6d
    iget v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mDirection:I

    if-ne v3, v5, :cond_67

    .line 710
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 711
    iget-object v3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 713
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->showNext()V

    goto :goto_67

    .line 720
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #view:Landroid/view/View;,
    :catchall_7f
    move-exception v3

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_4 .. :try_end_81} :catchall_7f

    throw v3
.end method

.method public setOnBitmapRequestListener(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 311
    const-string v1, "MessageBitmapRequestListenerParcelable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_MessageBitmapRequestListenerParcelable;

    .line 314
    .local v0, parcelable:Lcom/lge/appwidget/Andy_MessageBitmapRequestListenerParcelable;
    iget v1, v0, Lcom/lge/appwidget/Andy_MessageBitmapRequestListenerParcelable;->mAppWidgetId:I

    iput v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mAppWidgetId:I

    .line 315
    iget v1, v0, Lcom/lge/appwidget/Andy_MessageBitmapRequestListenerParcelable;->mViewId:I

    iput v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mViewId:I

    .line 316
    return-void
.end method

.method public setOnPositionChangeListener(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 332
    const-string v1, "MessagePositionListenerParcelable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_MessagePositionListenerParcelable;

    .line 335
    .local v0, parcelable:Lcom/lge/appwidget/Andy_MessagePositionListenerParcelable;
    iget v1, v0, Lcom/lge/appwidget/Andy_MessagePositionListenerParcelable;->mAppWidgetId:I

    iput v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPositionAppWidgetId:I

    .line 336
    iget v1, v0, Lcom/lge/appwidget/Andy_MessagePositionListenerParcelable;->mViewId:I

    iput v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPositionViewId:I

    .line 338
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mIsSetPositionChangeListener:Z

    .line 339
    return-void
.end method

.method public setPosition(I)V
    .registers 4
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 373
    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 391
    :cond_c
    :goto_c
    return-void

    .line 379
    :cond_d
    if-ltz p1, :cond_c

    iget-object v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_c

    .line 385
    iput p1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    .line 387
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 388
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    invoke-direct {p0, v0, v1}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setMessageView(Landroid/view/View;I)V

    .line 390
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->broadcastPositionChange()V

    goto :goto_c
.end method

.method public setViewFlipperItems(Landroid/os/Bundle;)V
    .registers 11
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->clearAnimation()V

    .line 239
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v5

    .line 243
    .local v5, view:Landroid/view/View;
    const/4 v6, 0x1

    :try_start_a
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isDisableScroll:Z

    .line 245
    if-nez p1, :cond_7c

    .line 247
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    .line 248
    invoke-direct {p0, v5}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->bindEmptyFlipView(Landroid/view/View;)V

    .line 249
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    .line 250
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isEmptyMessage:Z

    .line 252
    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    if-nez v6, :cond_2b

    .line 254
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    .line 261
    :goto_25
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->broadcastPositionChange()V
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_31

    .line 285
    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isDisableScroll:Z

    .line 306
    :cond_2a
    :goto_2a
    return-void

    .line 258
    :cond_2b
    :try_start_2b
    iget-object v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPhotoMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_31

    goto :goto_25

    .line 279
    :catch_31
    move-exception v6

    move-object v3, v6

    .line 281
    .local v3, exception:Ljava/lang/Exception;
    :try_start_33
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_96

    .line 285
    .end local v3       #exception:Ljava/lang/Exception;,
    :goto_36
    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isDisableScroll:Z

    .line 288
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "android.message.bitmap.action.REQUEST"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v6, "message_bitmap://message_bitmap_data/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mAppWidgetId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mViewId:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 296
    .local v2, dataUri:Landroid/net/Uri;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 300
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_2a

    .line 305
    invoke-virtual {v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2a

    .line 267
    .end local v1       #context:Landroid/content/Context;,
    .end local v2       #dataUri:Landroid/net/Uri;,
    .end local v4       #intent:Landroid/content/Intent;,
    :cond_7c
    :try_start_7c
    const-string v6, "MessageViewFlipperParcelable"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    .local v0, bundlePacelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;>;"
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isFlipperChange(Ljava/util/ArrayList;)Z

    move-result v6

    if-ne v6, v8, :cond_8e

    .line 271
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    .line 272
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->broadcastPositionChange()V

    .line 275
    :cond_8e
    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mMessageParcelableArray:Ljava/util/ArrayList;

    .line 276
    iget v6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->mPosition:I

    invoke-direct {p0, v5, v6}, Lcom/lge/appwidget/Andy_MessageViewFlipper;->setMessageView(Landroid/view/View;I)V
    :try_end_95
    .catchall {:try_start_7c .. :try_end_95} :catchall_96
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_95} :catch_31

    goto :goto_36

    .line 285
    .end local v0       #bundlePacelable:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;>;"
    :catchall_96
    move-exception v6

    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_MessageViewFlipper;->isDisableScroll:Z

    throw v6
.end method
