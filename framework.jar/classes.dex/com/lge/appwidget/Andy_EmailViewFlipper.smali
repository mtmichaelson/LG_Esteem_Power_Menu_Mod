.class public Lcom/lge/appwidget/Andy_EmailViewFlipper;
.super Landroid/widget/ViewSwitcher;
.source "Andy_EmailViewFlipper.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_EmailViewFlipper$1;,
        Lcom/lge/appwidget/Andy_EmailViewFlipper$OnPositionChangeListener;,
        Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;
    }
.end annotation


# static fields
.field public static final EMAIL_POSITION_CHANGE_ACTION:Ljava/lang/String; = "android.email.position.action.CHANGE"

.field public static final EMAIL_POSITION_CHANGE_DATA_URI:Ljava/lang/String; = "://email_position_data/"

.field public static final EMAIL_POSITION_CHANGE_URI_SCHEME:Ljava/lang/String; = "email_position"

.field private static final FLIP_DOWN:I = 0x1

.field private static final FLIP_UP:I = 0x0

.field public static final REMOTE_EMAIL_NO_ACCOUNT_KEY:Ljava/lang/String; = "Andy_EmailNoAccout"

.field public static final REMOTE_EMAIL_POSITION_CHANGE_PARCELABLE_KEY:Ljava/lang/String; = "EmailPositionListenerParcelable"

.field public static final REMOTE_EMAIL_VIEW_FLIPPER_PARCELABLE_KEY:Ljava/lang/String; = "Andy_EmailViewFlipperParcelable"



# instance fields
.field private isDisableScroll:Z

.field private isEmptyEmail:Z

.field private isNoAccount:Z

.field private mBottomInAnimation:Landroid/view/animation/Animation;

.field private mBottomOutAnimation:Landroid/view/animation/Animation;

.field private mDirection:I

.field private mEmailParcelableArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;

.field public mInterceptTouchLock:Ljava/lang/Object;

.field mIsSetPositionChangeListener:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPosition:I

.field mPositionAppWidgetId:I

.field mPositionViewId:I

.field private mTopInAnimation:Landroid/view/animation/Animation;

.field private mTopOutAnimation:Landroid/view/animation/Animation;

.field public mTouchLock:Ljava/lang/Object;

.field private settingReply:Z



# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->settingReply:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isEmptyEmail:Z

    .line 56
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isNoAccount:Z

    .line 58
    iput v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    .line 103
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isDisableScroll:Z

    .line 182
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPositionAppWidgetId:I

    .line 185
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mIsSetPositionChangeListener:Z

    .line 567
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTouchLock:Ljava/lang/Object;

    .line 568
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mInterceptTouchLock:Ljava/lang/Object;

    .line 70
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->initEmailViewFlipper(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->settingReply:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isEmptyEmail:Z

    .line 56
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isNoAccount:Z

    .line 58
    iput v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    .line 103
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isDisableScroll:Z

    .line 182
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPositionAppWidgetId:I

    .line 185
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mIsSetPositionChangeListener:Z

    .line 567
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTouchLock:Ljava/lang/Object;

    .line 568
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mInterceptTouchLock:Ljava/lang/Object;

    .line 77
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->initEmailViewFlipper(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$102(Lcom/lge/appwidget/Andy_EmailViewFlipper;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mDirection:I

    return p1
.end method

.method private bindEmailView(Landroid/view/View;Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;II)V
    .registers 31
    .parameter "view"
    .parameter "parcelable"
    .parameter "position"
    .parameter "size"

    .prologue
    .line 317
    const-string v17, ""

    .line 320
    .local v17, sender:Ljava/lang/String;
    const v22, 0x20500d4

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 323
    .local v10, indexView:Landroid/widget/TextView;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v23, p3, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const v22, 0x20500d2

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 327
    .local v12, nameView:Landroid/widget/TextView;
    const v22, 0x20500cd

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 328
    .local v19, timeView:Landroid/widget/TextView;
    const v22, 0x20500ca

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 329
    .local v20, titleView:Landroid/widget/TextView;
    const v22, 0x20500d5

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 330
    .local v9, emptyView:Landroid/widget/TextView;
    const v22, 0x20500db

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 332
    .local v8, emailView:Landroid/widget/TextView;
    const v22, 0x20500c9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 333
    .local v15, priorityView:Landroid/widget/ImageView;
    const v22, 0x20500cf

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 334
    .local v4, attachView:Landroid/widget/ImageView;
    const v22, 0x20500d3

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 335
    .local v6, comView:Landroid/widget/ImageView;
    const v22, 0x20500cc

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    .line 336
    .local v18, timeStampView:Landroid/widget/LinearLayout;
    const/16 v22, 0x0

    move-object v0, v10

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    const v22, 0x20500d7

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout;

    .line 339
    .local v13, noAccountClickView:Landroid/widget/RelativeLayout;
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getName()Ljava/lang/String;

    move-result-object v17

    .line 341
    const-string v22, "<"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_f2

    const-string v22, "<"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_f2

    .line 343
    const/16 v22, 0x0

    const-string v23, "<"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 347
    :cond_f2
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getTimeStamp()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getTitle()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const/16 v22, 0x4

    move-object v0, v9

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getIsunread()I

    move-result v22

    if-nez v22, :cond_268

    .line 359
    const/16 v22, 0xc8

    const/16 v23, 0xc8

    const/16 v24, 0xc8

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 360
    const/16 v22, 0xc8

    const/16 v23, 0xc8

    const/16 v24, 0xc8

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    const/16 v22, 0xc8

    const/16 v23, 0xc8

    const/16 v24, 0xc8

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    const/16 v22, 0xc8

    const/16 v23, 0xc8

    const/16 v24, 0xc8

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move-object v0, v10

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 363
    const/16 v22, 0xc8

    const/16 v23, 0xc8

    const/16 v24, 0xc8

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    sget-object v22, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 378
    :goto_186
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getIsattach()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    cmp-long v22, v22, v24

    if-nez v22, :cond_2ca

    .line 380
    const/16 v22, 0x0

    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    :goto_198
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getPriority()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2d4

    .line 389
    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    :goto_1ac
    invoke-virtual {v15}, Landroid/widget/ImageView;->getVisibility()I

    move-result v21

    .line 396
    .local v21, visible:I
    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2de

    .line 399
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 400
    .local v14, plControl:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x207001c

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object v1, v14

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 401
    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    .end local v14       #plControl:Landroid/widget/RelativeLayout$LayoutParams;,
    :cond_1d4
    :goto_1d4
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getAccountType()I

    move-result v3

    .line 415
    .local v3, accountType:I
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getEmailAddress()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, domain:Ljava/lang/String;
    const/16 v22, 0x1

    move v0, v3

    move/from16 v1, v22

    if-ne v0, v1, :cond_2fe

    .line 420
    const v22, 0x20200c8

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 421
    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    :goto_1f8
    const/16 v22, 0x0

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    const/16 v22, 0x0

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 480
    const/16 v22, 0x8

    move-object v0, v13

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 482
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_EmailViewFlipper;->settingReply:Z

    .line 484
    const v22, 0x20500dd

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 485
    .local v5, clickView:Landroid/view/View;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    const v22, 0x20500d9

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 488
    .local v11, listIntentView:Landroid/view/View;
    const v22, 0x20500da

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 490
    .local v16, replyIntentView:Landroid/view/View;
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    return-void

    .line 369
    .end local v3       #accountType:I,
    .end local v5       #clickView:Landroid/view/View;,
    .end local v7       #domain:Ljava/lang/String;,
    .end local v11       #listIntentView:Landroid/view/View;,
    .end local v16       #replyIntentView:Landroid/view/View;,
    .end local v21       #visible:I,
    :cond_268
    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move-object v0, v12

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 371
    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move-object v0, v10

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 373
    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0xff

    invoke-static/range {v22 .. v24}, Landroid/graphics/Color;->rgb(III)I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    sget-object v22, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v22

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_186

    .line 384
    :cond_2ca
    const/16 v22, 0x4

    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_198

    .line 393
    :cond_2d4
    const/16 v22, 0x8

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1ac

    .line 403
    .restart local v21       #visible:I,
    :cond_2de
    if-nez v21, :cond_1d4

    .line 406
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 407
    .restart local v14       #plControl:Landroid/widget/RelativeLayout$LayoutParams;,
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x207001e

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object v1, v14

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 408
    move-object/from16 v0, v20

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1d4

    .line 425
    .end local v14       #plControl:Landroid/widget/RelativeLayout$LayoutParams;,
    .restart local v3       #accountType:I,
    .restart local v7       #domain:Ljava/lang/String;,
    :cond_2fe
    const-string v22, "@aol"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_31c

    .line 428
    const v22, 0x20200c4

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1f8

    .line 431
    :cond_31c
    const-string v22, "@clix"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_353

    const-string v22, "@oninet"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_353

    const-string v22, "@oniduo"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_353

    const-string v22, "@oninetspeed"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_353

    const-string v22, "@tele2"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_366

    .line 434
    :cond_353
    const v22, 0x20200c5

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 435
    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1f8

    .line 437
    :cond_366
    const-string v22, "@gmail"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_37c

    const-string v22, "@google"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_38f

    .line 440
    :cond_37c
    const v22, 0x20200c6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1f8

    .line 443
    :cond_38f
    const-string v22, "@yahoo"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3b0

    const-string v22, "@ymail"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3b0

    const-string v22, "@rocketmail"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3c3

    .line 445
    :cond_3b0
    const v22, 0x20200cb

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1f8

    .line 448
    :cond_3c3
    const-string v22, "@hotmail"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3d9

    const-string v22, "@live"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3ec

    .line 450
    :cond_3d9
    const v22, 0x20200c7

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1f8

    .line 453
    :cond_3ec
    const-string v22, "@verizon"

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_40a

    .line 455
    const v22, 0x20200ca

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1f8

    .line 460
    :cond_40a
    const v22, 0x20200c9

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 461
    const/16 v22, 0x0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1f8
.end method

.method private bindEmptyEmailView(Landroid/view/View;)V
    .registers 20
    .parameter "view"

    .prologue
    .line 509
    const v16, 0x20500d4

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 511
    .local v7, indexView:Landroid/widget/TextView;
    const v16, 0x20500d2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 512
    .local v9, nameView:Landroid/widget/TextView;
    const v16, 0x20500cd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 513
    .local v14, timeView:Landroid/widget/TextView;
    const v16, 0x20500ca

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 514
    .local v15, titleView:Landroid/widget/TextView;
    const v16, 0x20500db

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 515
    .local v5, emailView:Landroid/widget/TextView;
    const v16, 0x20500d5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 517
    .local v6, emptyView:Landroid/widget/TextView;
    const v16, 0x20500c9

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 518
    .local v11, notiView:Landroid/widget/ImageView;
    const v16, 0x20500cf

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 519
    .local v2, attView:Landroid/widget/ImageView;
    const v16, 0x20500d3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 520
    .local v3, comView:Landroid/widget/ImageView;
    const v16, 0x20500cc

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 521
    .local v13, timeStampView:Landroid/widget/LinearLayout;
    const v16, 0x20500d7

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout;

    .line 522
    .local v10, noAccountClickView:Landroid/widget/RelativeLayout;
    const/16 v16, 0x4

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    const/16 v16, 0x4

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 524
    const/16 v16, 0x4

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 525
    const/16 v16, 0x4

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    const/16 v16, 0x4

    move-object v0, v11

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    const/16 v16, 0x4

    move-object v0, v2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    const/16 v16, 0x4

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    const/16 v16, 0x4

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 536
    .local v4, context:Landroid/content/Context;
    if-nez v4, :cond_db

    .line 565
    :goto_da
    return-void

    .line 542
    :cond_db
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isNoAccount:Z

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_142

    .line 544
    const v16, 0x2080104

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 547
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isNoAccount:Z

    .line 558
    :cond_117
    :goto_117
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_EmailViewFlipper;->settingReply:Z

    .line 560
    const v16, 0x20500d9

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 561
    .local v8, listIntentView:Landroid/view/View;
    const v16, 0x20500da

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 563
    .local v12, replyIntentView:Landroid/view/View;
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_da

    .line 551
    .end local v8       #listIntentView:Landroid/view/View;,
    .end local v12       #replyIntentView:Landroid/view/View;,
    :cond_142
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isNoAccount:Z

    move/from16 v16, v0

    if-nez v16, :cond_117

    .line 553
    const v16, 0x2080103

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    const/16 v16, 0x8

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_117
.end method

.method private getFlipPosition(I)I
    .registers 6
    .parameter "direction"

    .prologue
    const/high16 v3, -0x8000

    const/4 v2, 0x1

    .line 831
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isEmptyEmail:Z

    if-eq v0, v2, :cond_14

    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    :cond_14
    move v0, v3

    .line 862
    :goto_15
    return v0

    .line 838
    :cond_16
    if-nez p1, :cond_2a

    .line 840
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_25

    .line 842
    const/4 v0, 0x0

    goto :goto_15

    .line 846
    :cond_25
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 850
    :cond_2a
    if-ne p1, v2, :cond_3c

    .line 852
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    if-nez v0, :cond_38

    .line 854
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_15

    .line 858
    :cond_38
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    sub-int/2addr v0, v2

    goto :goto_15

    :cond_3c
    move v0, v3

    .line 862
    goto :goto_15
.end method

.method private initEmailViewFlipper(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const v3, 0x203000e

    const/4 v2, 0x0

    .line 82
    iput v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    .line 83
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->removeAllViews()V

    .line 85
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->clearAnimation()V

    .line 87
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 89
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->addView(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->addView(Landroid/view/View;)V

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isEmptyEmail:Z

    .line 96
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->loadAnimation(Landroid/content/Context;)V

    .line 98
    new-instance v1, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;-><init>(Lcom/lge/appwidget/Andy_EmailViewFlipper;Lcom/lge/appwidget/Andy_EmailViewFlipper$1;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mGestureListener:Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;

    .line 99
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mGestureListener:Lcom/lge/appwidget/Andy_EmailViewFlipper$GestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mGestureDetector:Landroid/view/GestureDetector;

    .line 101
    return-void
.end method

.method private isFlipperChange(Ljava/util/ArrayList;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, pacelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;>;"
    const/4 v3, 0x1

    .line 261
    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    :cond_7
    move v1, v3

    .line 283
    :goto_8
    return v1

    .line 267
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_17

    move v1, v3

    .line 269
    goto :goto_8

    .line 274
    :cond_17
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 276
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;

    iget v2, v1, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgIdx:I

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;

    iget v1, v1, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgIdx:I

    if-eq v2, v1, :cond_34

    move v1, v3

    .line 278
    goto :goto_8

    .line 274
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 283
    :cond_37
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private loadAnimation(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 816
    const v0, 0x2040006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    .line 819
    const v0, 0x2040009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    .line 822
    const v0, 0x2040008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    .line 825
    const v0, 0x2040007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    .line 827
    return-void
.end method

.method private setEmailView(Landroid/view/View;I)V
    .registers 5
    .parameter "view"
    .parameter "position"

    .prologue
    .line 289
    if-nez p1, :cond_3

    .line 311
    :cond_2
    :goto_2
    return-void

    .line 294
    :cond_3
    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 299
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_20

    .line 303
    :cond_19
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->bindEmptyEmailView(Landroid/view/View;)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isEmptyEmail:Z

    goto :goto_2

    .line 308
    :cond_20
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->bindEmailView(Landroid/view/View;Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;II)V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isEmptyEmail:Z

    goto :goto_2
.end method


# virtual methods
.method public broadcastPositionChange()V
    .registers 8

    .prologue
    const-string v6, "/"

    .line 208
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mIsSetPositionChangeListener:Z

    if-nez v3, :cond_7

    .line 233
    :cond_6
    :goto_6
    return-void

    .line 213
    :cond_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 214
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.email.position.action.CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v3, "email_position://email_position_data/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPositionAppWidgetId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPositionViewId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 223
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 227
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "motionEvent"

    .prologue
    .line 1033
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isDisableScroll:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 1035
    const/4 v0, 0x0

    .line 1038
    :goto_6
    return v0

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_6
.end method

.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "view"

    .prologue
    .line 866
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 868
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 870
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_10

    iget-boolean v11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isDisableScroll:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_11

    .line 1029
    :cond_10
    :goto_10
    return-void

    .line 876
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v11

    packed-switch v11, :pswitch_data_16a

    :pswitch_18
    goto :goto_10

    .line 979
    :pswitch_19
    new-instance v0, Landroid/content/Intent;

    const-string v11, "com.lge.email.action.NEW_ACCOUNT"

    invoke-direct {v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    .local v0, accountIntent:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 981
    const/high16 v11, 0x400

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 982
    const-string/jumbo v11, "selidx"

    const/4 v12, -0x1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 983
    const-string/jumbo v11, "outer"

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 984
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 879
    .end local v0       #accountIntent:Landroid/content/Intent;,
    :pswitch_3c
    iget-object v11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v11, :cond_48

    iget-object v11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_64

    .line 882
    :cond_48
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.lge.email.activity.MailList"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 883
    .local v7, newIntent:Landroid/content/Intent;
    const-string/jumbo v11, "viewMode"

    const/4 v12, 0x2

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 884
    const/high16 v11, 0x1000

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 885
    const/high16 v11, 0x400

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 886
    invoke-virtual {v2, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 903
    .end local v7       #newIntent:Landroid/content/Intent;,
    :cond_64
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.lge.email.activity.MailList"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v6, listIntent:Landroid/content/Intent;
    const-string/jumbo v11, "viewMode"

    const/4 v12, 0x2

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const/high16 v11, 0x1000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 906
    const/high16 v11, 0x400

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 907
    invoke-virtual {v2, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_10

    .line 920
    .end local v6       #listIntent:Landroid/content/Intent;,
    :pswitch_80
    iget-boolean v11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->settingReply:Z

    if-eqz v11, :cond_d3

    .line 922
    iget v11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    if-ltz v11, :cond_10

    iget-object v11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v12, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    if-le v11, v12, :cond_10

    .line 928
    iget-object v11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    iget v12, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;

    .line 942
    .local v8, parcelable1:Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.lge.email.intent.action.MAIL_REPLY"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 943
    .local v3, i:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 944
    const/high16 v11, 0x400

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 945
    const-string v11, "external"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 946
    const-string v11, "Type"

    const/4 v12, 0x2

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 947
    const-string v11, "message_id"

    iget v12, v8, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgIdx:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 948
    const-string v11, "mailbox_id"

    iget v12, v8, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgBoxId:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 949
    const-string v11, "bodyData"

    iget-object v12, v8, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 954
    .end local v3       #i:Landroid/content/Intent;,
    .end local v8       #parcelable1:Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;,
    :cond_d3
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .local v5, it:Landroid/content/Intent;
    const-string v11, "com.lge.email"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 956
    const-string/jumbo v11, "text/plain"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 958
    const/high16 v11, 0x400

    invoke-virtual {v5, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 959
    const/4 v11, 0x1

    new-array v10, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v10, v11

    .line 960
    .local v10, tos:[Ljava/lang/String;
    const/4 v11, 0x1

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v1, v11

    .line 961
    .local v1, ccs:[Ljava/lang/String;
    const-string v11, "android.intent.extra.EMAIL"

    invoke-virtual {v5, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string v11, "android.intent.extra.CC"

    invoke-virtual {v5, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    const-string v11, "android.intent.extra.TEXT"

    const-string v12, ""

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 964
    const-string v11, "android.intent.extra.SUBJECT"

    const-string v12, ""

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    invoke-virtual {v2, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 989
    .end local v1       #ccs:[Ljava/lang/String;,
    .end local v5       #it:Landroid/content/Intent;,
    .end local v10       #tos:[Ljava/lang/String;,
    :pswitch_11c
    :try_start_11c
    iget v11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    if-ltz v11, :cond_10

    iget-object v11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    iget v12, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    if-le v11, v12, :cond_10

    .line 995
    iget-object v11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    iget v12, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;

    .line 1010
    .local v9, parcelable2:Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.lge.email.activity.MAIL_VIEW"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    .restart local v3       #i:Landroid/content/Intent;,
    const/high16 v11, 0x1000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1012
    const/high16 v11, 0x400

    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1013
    const-string/jumbo v11, "outer"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1014
    const-string v11, "accountID"

    iget v12, v9, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountId:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1015
    const-string v11, "msgBoxID"

    iget v12, v9, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgBoxId:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1016
    const-string v11, "msgID"

    iget v12, v9, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgIdx:I

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1020
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_164} :catch_166

    goto/16 :goto_10

    .line 1024
    .end local v3       #i:Landroid/content/Intent;,
    .end local v9       #parcelable2:Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;,
    :catch_166
    move-exception v11

    goto/16 :goto_10

    .line 876
    nop

    :pswitch_data_16a
    .packed-switch 0x20500d7
        :pswitch_19
        :pswitch_18
        :pswitch_80
        :pswitch_3c
        :pswitch_18
        :pswitch_18
        :pswitch_11c
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 573
    iget-object v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mInterceptTouchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 575
    :try_start_4
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-ne v3, v5, :cond_82

    .line 577
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isEmptyEmail:Z

    if-eq v3, v5, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_20

    .line 581
    :cond_1d
    monitor-exit v2

    move v2, v5

    .line 629
    :goto_1f
    return v2

    .line 584
    :cond_20
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 586
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_29

    .line 589
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 592
    :cond_29
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3c

    .line 597
    :cond_39
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->loadAnimation(Landroid/content/Context;)V

    .line 600
    :cond_3c
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mDirection:I

    invoke-direct {p0, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getFlipPosition(I)I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    .line 602
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_4d

    .line 604
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 607
    :cond_4d
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getNextView()Landroid/view/View;

    move-result-object v1

    .line 608
    .local v1, view:Landroid/view/View;
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    invoke-direct {p0, v1, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setEmailView(Landroid/view/View;I)V

    .line 610
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mDirection:I

    if-nez v3, :cond_6d

    .line 612
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 613
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 615
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->showNext()V

    .line 625
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->broadcastPositionChange()V

    .line 626
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 617
    :cond_6d
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mDirection:I

    if-ne v3, v5, :cond_67

    .line 619
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 620
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 622
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->showNext()V

    goto :goto_67

    .line 630
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #view:Landroid/view/View;,
    :catchall_7f
    move-exception v3

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_4 .. :try_end_81} :catchall_7f

    throw v3

    .line 629
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
    .parameter "ev"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 636
    iget-object v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTouchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 638
    :try_start_4
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-ne v3, v5, :cond_67

    .line 640
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isEmptyEmail:Z

    if-eq v3, v5, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_20

    .line 644
    :cond_1d
    monitor-exit v2

    move v2, v5

    .line 690
    :goto_1f
    return v2

    .line 647
    :cond_20
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 649
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_29

    .line 652
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 655
    :cond_29
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3c

    .line 660
    :cond_39
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->loadAnimation(Landroid/content/Context;)V

    .line 663
    :cond_3c
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mDirection:I

    invoke-direct {p0, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getFlipPosition(I)I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    .line 665
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_4d

    .line 667
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 670
    :cond_4d
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getNextView()Landroid/view/View;

    move-result-object v1

    .line 671
    .local v1, view:Landroid/view/View;
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    invoke-direct {p0, v1, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setEmailView(Landroid/view/View;I)V

    .line 673
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mDirection:I

    if-nez v3, :cond_6a

    .line 675
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 676
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 678
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->showNext()V

    .line 690
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #view:Landroid/view/View;,
    :cond_67
    :goto_67
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 680
    .restart local v0       #context:Landroid/content/Context;,
    .restart local v1       #view:Landroid/view/View;,
    :cond_6a
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mDirection:I

    if-ne v3, v5, :cond_67

    .line 682
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 683
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 685
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->broadcastPositionChange()V

    .line 686
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->showNext()V

    goto :goto_67

    .line 691
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #view:Landroid/view/View;,
    :catchall_7f
    move-exception v3

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_4 .. :try_end_81} :catchall_7f

    throw v3
.end method

.method public setEmailViewItems(Landroid/os/Bundle;)V
    .registers 7
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->clearAnimation()V

    .line 111
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x1

    :try_start_a
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isDisableScroll:Z

    .line 141
    if-nez p1, :cond_1d

    .line 143
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    .line 144
    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->bindEmptyEmailView(Landroid/view/View;)V

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isEmptyEmail:Z

    .line 146
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->broadcastPositionChange()V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_48

    .line 178
    :goto_1a
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isDisableScroll:Z

    .line 180
    return-void

    .line 150
    :cond_1d
    :try_start_1d
    const-string v2, "Andy_EmailNoAccout"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_2e

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isNoAccount:Z

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isEmptyEmail:Z

    .line 155
    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->bindEmptyEmailView(Landroid/view/View;)V

    .line 160
    :cond_2e
    const-string v2, "Andy_EmailViewFlipperParcelable"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    .local v0, bundlePacelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;>;"
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isFlipperChange(Ljava/util/ArrayList;)Z

    move-result v2

    if-ne v2, v3, :cond_40

    .line 164
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    .line 165
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->broadcastPositionChange()V

    .line 168
    :cond_40
    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    .line 169
    iget v2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    invoke-direct {p0, v1, v2}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setEmailView(Landroid/view/View;I)V
    :try_end_47
    .catchall {:try_start_1d .. :try_end_47} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_47} :catch_48

    goto :goto_1a

    .line 172
    .end local v0       #bundlePacelable:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;>;"
    :catch_48
    move-exception v2

    goto :goto_1a

    .line 178
    :catchall_4a
    move-exception v2

    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->isDisableScroll:Z

    throw v2
.end method

.method public setOnPositionChangeListener(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 197
    const-string v1, "EmailPositionListenerParcelable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_EmailPositionListenerParcelable;

    .line 200
    .local v0, parcelable:Lcom/lge/appwidget/Andy_EmailPositionListenerParcelable;
    iget v1, v0, Lcom/lge/appwidget/Andy_EmailPositionListenerParcelable;->mAppWidgetId:I

    iput v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPositionAppWidgetId:I

    .line 201
    iget v1, v0, Lcom/lge/appwidget/Andy_EmailPositionListenerParcelable;->mViewId:I

    iput v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPositionViewId:I

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mIsSetPositionChangeListener:Z

    .line 204
    return-void
.end method

.method public setPosition(I)V
    .registers 4
    .parameter "position"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 238
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 256
    :cond_c
    :goto_c
    return-void

    .line 244
    :cond_d
    if-ltz p1, :cond_c

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_c

    .line 250
    iput p1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    .line 252
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipper;->mPosition:I

    invoke-direct {p0, v0, v1}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->setEmailView(Landroid/view/View;I)V

    .line 255
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailViewFlipper;->broadcastPositionChange()V

    goto :goto_c
.end method
