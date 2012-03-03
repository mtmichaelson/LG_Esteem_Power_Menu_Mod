.class public Lcom/lge/appwidget/Andy_EmailMidViewFlipper;
.super Landroid/widget/ViewSwitcher;
.source "Andy_EmailMidViewFlipper.java"


# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_EmailMidViewFlipper$1;,
        Lcom/lge/appwidget/Andy_EmailMidViewFlipper$OnPositionChangeListener;,
        Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;
    }
.end annotation


# static fields
.field public static final EMAIL_POSITION_CHANGE_ACTION:Ljava/lang/String; = "android.email.mid.position.action.CHANGE"

.field public static final EMAIL_POSITION_CHANGE_DATA_URI:Ljava/lang/String; = "://email_position_data/"

.field public static final EMAIL_POSITION_CHANGE_URI_SCHEME:Ljava/lang/String; = "email_mid_position"

.field private static final FLIP_DOWN:I = 0x1

.field private static final FLIP_UP:I = 0x0

.field public static final REMOTE_EMAIL_NO_ACCOUNT_KEY:Ljava/lang/String; = "Andy_MidEmailNoAccout"

.field public static final REMOTE_EMAIL_POSITION_CHANGE_PARCELABLE_KEY:Ljava/lang/String; = "EmailMidPositionListenerParcelable"

.field public static final REMOTE_EMAIL_VIEW_FLIPPER_PARCELABLE_KEY:Ljava/lang/String; = "Andy_EmailMidViewFlipperParcelable"



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

.field private mGestureListener:Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;

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
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->settingReply:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isEmptyEmail:Z

    .line 56
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isNoAccount:Z

    .line 58
    iput v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    .line 103
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isDisableScroll:Z

    .line 182
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPositionAppWidgetId:I

    .line 185
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mIsSetPositionChangeListener:Z

    .line 547
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTouchLock:Ljava/lang/Object;

    .line 548
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mInterceptTouchLock:Ljava/lang/Object;

    .line 70
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->initEmailViewFlipper(Landroid/content/Context;)V

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
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->settingReply:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isEmptyEmail:Z

    .line 56
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isNoAccount:Z

    .line 58
    iput v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    .line 103
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isDisableScroll:Z

    .line 182
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPositionAppWidgetId:I

    .line 185
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mIsSetPositionChangeListener:Z

    .line 547
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTouchLock:Ljava/lang/Object;

    .line 548
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mInterceptTouchLock:Ljava/lang/Object;

    .line 77
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->initEmailViewFlipper(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method static synthetic access$102(Lcom/lge/appwidget/Andy_EmailMidViewFlipper;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mDirection:I

    return p1
.end method

.method private bindEmailView(Landroid/view/View;Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;II)V
    .registers 28
    .parameter "view"
    .parameter "parcelable"
    .parameter "position"
    .parameter "size"

    .prologue
    .line 317
    const-string v14, ""

    .line 320
    .local v14, sender:Ljava/lang/String;
    const v19, 0x20500d4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 323
    .local v9, indexView:Landroid/widget/TextView;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v20, p3, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v9

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const v19, 0x20500d2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 327
    .local v10, nameView:Landroid/widget/TextView;
    const v19, 0x20500cd

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 328
    .local v16, timeView:Landroid/widget/TextView;
    const v19, 0x20500ca

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 329
    .local v17, titleView:Landroid/widget/TextView;
    const v19, 0x20500d5

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 330
    .local v8, emptyView:Landroid/widget/TextView;
    const v19, 0x20500c9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 331
    .local v13, priorityView:Landroid/widget/ImageView;
    const v19, 0x20500cf

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 332
    .local v4, attachView:Landroid/widget/ImageView;
    const v19, 0x20500d3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 333
    .local v6, comView:Landroid/widget/ImageView;
    const v19, 0x20500cc

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 334
    .local v15, timeStampView:Landroid/widget/LinearLayout;
    const/16 v19, 0x0

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    const v19, 0x20500d7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 337
    .local v11, noAccountClickView:Landroid/widget/RelativeLayout;
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getName()Ljava/lang/String;

    move-result-object v14

    .line 339
    const-string v19, "<"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    if-eqz v19, :cond_e1

    const-string v19, "<"

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_e1

    .line 341
    const/16 v19, 0x0

    const-string v20, "<"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move-object v0, v14

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 345
    :cond_e1
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getTimeStamp()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getTitle()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const/16 v19, 0x4

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getIsunread()I

    move-result v19

    if-nez v19, :cond_20e

    .line 356
    const/16 v19, 0xc8

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    const/16 v19, 0xc8

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 358
    const/16 v19, 0xc8

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 359
    const/16 v19, 0xc8

    const/16 v20, 0xc8

    const/16 v21, 0xc8

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    sget-object v19, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 373
    :goto_158
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getIsattach()J

    move-result-wide v19

    const-wide/16 v21, 0x1

    cmp-long v19, v19, v21

    if-nez v19, :cond_260

    .line 375
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    :goto_16a
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getPriority()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_26a

    .line 384
    const/16 v19, 0x0

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    :goto_17e
    invoke-virtual {v13}, Landroid/widget/ImageView;->getVisibility()I

    move-result v18

    .line 391
    .local v18, visible:I
    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_274

    .line 394
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 395
    .local v12, plControl:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x207001c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object v1, v12

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 396
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    .end local v12       #plControl:Landroid/widget/RelativeLayout$LayoutParams;,
    :cond_1a6
    :goto_1a6
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getAccountType()I

    move-result v3

    .line 410
    .local v3, accountType:I
    invoke-virtual/range {p2 .. p2}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->getEmailAddress()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 412
    .local v7, domain:Ljava/lang/String;
    const/16 v19, 0x1

    move v0, v3

    move/from16 v1, v19

    if-ne v0, v1, :cond_294

    .line 415
    const v19, 0x20200c8

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    :goto_1ca
    const/16 v19, 0x0

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    const/16 v19, 0x0

    move-object v0, v15

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 474
    const/16 v19, 0x8

    move-object v0, v11

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 476
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->settingReply:Z

    .line 478
    const v19, 0x20500d6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 479
    .local v5, clickView:Landroid/view/View;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    return-void

    .line 365
    .end local v3       #accountType:I,
    .end local v5       #clickView:Landroid/view/View;,
    .end local v7       #domain:Ljava/lang/String;,
    .end local v18       #visible:I,
    :cond_20e
    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object v0, v10

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 367
    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object v0, v9

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    const/16 v19, 0xff

    const/16 v20, 0xff

    const/16 v21, 0xff

    invoke-static/range {v19 .. v21}, Landroid/graphics/Color;->rgb(III)I

    move-result v19

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    sget-object v19, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_158

    .line 379
    :cond_260
    const/16 v19, 0x4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_16a

    .line 388
    :cond_26a
    const/16 v19, 0x8

    move-object v0, v13

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_17e

    .line 398
    .restart local v18       #visible:I,
    :cond_274
    if-nez v18, :cond_1a6

    .line 401
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 402
    .restart local v12       #plControl:Landroid/widget/RelativeLayout$LayoutParams;,
    invoke-virtual/range {p0 .. p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x207001e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object v1, v12

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 403
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1a6

    .line 420
    .end local v12       #plControl:Landroid/widget/RelativeLayout$LayoutParams;,
    .restart local v3       #accountType:I,
    .restart local v7       #domain:Ljava/lang/String;,
    :cond_294
    const-string v19, "@aol"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2b2

    .line 423
    const v19, 0x20200c4

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 424
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1ca

    .line 426
    :cond_2b2
    const-string v19, "@clix"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2e9

    const-string v19, "@oninet"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2e9

    const-string v19, "@oniduo"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2e9

    const-string v19, "@oninetspeed"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2e9

    const-string v19, "@tele2"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2fc

    .line 429
    :cond_2e9
    const v19, 0x20200c5

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1ca

    .line 432
    :cond_2fc
    const-string v19, "@gmail"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_312

    const-string v19, "@google"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_325

    .line 435
    :cond_312
    const v19, 0x20200c6

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 436
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1ca

    .line 438
    :cond_325
    const-string v19, "@yahoo"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_346

    const-string v19, "@ymail"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_346

    const-string v19, "@rocketmail"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_359

    .line 440
    :cond_346
    const v19, 0x20200cb

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 441
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1ca

    .line 443
    :cond_359
    const-string v19, "@hotmail"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_36f

    const-string v19, "@live"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_382

    .line 445
    :cond_36f
    const v19, 0x20200c7

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 446
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1ca

    .line 448
    :cond_382
    const-string v19, "@verizon"

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3a0

    .line 450
    const v19, 0x20200ca

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1ca

    .line 455
    :cond_3a0
    const v19, 0x20200c9

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    const/16 v19, 0x0

    move-object v0, v6

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1ca
.end method

.method private bindEmptyEmailView(Landroid/view/View;)V
    .registers 16
    .parameter "view"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x4

    .line 497
    const v11, 0x20500d4

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 499
    .local v4, indexView:Landroid/widget/TextView;
    const v11, 0x20500d2

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 500
    .local v5, nameView:Landroid/widget/TextView;
    const v11, 0x20500cd

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 501
    .local v9, timeView:Landroid/widget/TextView;
    const v11, 0x20500ca

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 502
    .local v10, titleView:Landroid/widget/TextView;
    const v11, 0x20500d5

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 504
    .local v3, emptyView:Landroid/widget/TextView;
    const v11, 0x20500c9

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 505
    .local v7, notiView:Landroid/widget/ImageView;
    const v11, 0x20500cf

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 506
    .local v0, attView:Landroid/widget/ImageView;
    const v11, 0x20500d3

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 507
    .local v1, comView:Landroid/widget/ImageView;
    const v11, 0x20500cc

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 508
    .local v8, timeStampView:Landroid/widget/LinearLayout;
    const v11, 0x20500d7

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 509
    .local v6, noAccountClickView:Landroid/widget/RelativeLayout;
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 511
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 522
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_7b

    .line 545
    :goto_7a
    return-void

    .line 528
    :cond_7b
    iget-boolean v11, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isNoAccount:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_98

    .line 530
    const v11, 0x2080104

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 533
    invoke-virtual {v6, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iput-boolean v13, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isNoAccount:Z

    .line 544
    :cond_95
    :goto_95
    iput-boolean v13, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->settingReply:Z

    goto :goto_7a

    .line 537
    :cond_98
    iget-boolean v11, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isNoAccount:Z

    if-nez v11, :cond_95

    .line 539
    const v11, 0x2080103

    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_95
.end method

.method private getFlipPosition(I)I
    .registers 6
    .parameter "direction"

    .prologue
    const/high16 v3, -0x8000

    const/4 v2, 0x1

    .line 811
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isEmptyEmail:Z

    if-eq v0, v2, :cond_14

    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    :cond_14
    move v0, v3

    .line 842
    :goto_15
    return v0

    .line 818
    :cond_16
    if-nez p1, :cond_2a

    .line 820
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_25

    .line 822
    const/4 v0, 0x0

    goto :goto_15

    .line 826
    :cond_25
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 830
    :cond_2a
    if-ne p1, v2, :cond_3c

    .line 832
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    if-nez v0, :cond_38

    .line 834
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_15

    .line 838
    :cond_38
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    sub-int/2addr v0, v2

    goto :goto_15

    :cond_3c
    move v0, v3

    .line 842
    goto :goto_15
.end method

.method private initEmailViewFlipper(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const v3, 0x203000c

    const/4 v2, 0x0

    .line 82
    iput v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    .line 83
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->removeAllViews()V

    .line 85
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->clearAnimation()V

    .line 87
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 89
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->addView(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->addView(Landroid/view/View;)V

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isEmptyEmail:Z

    .line 96
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->loadAnimation(Landroid/content/Context;)V

    .line 98
    new-instance v1, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;-><init>(Lcom/lge/appwidget/Andy_EmailMidViewFlipper;Lcom/lge/appwidget/Andy_EmailMidViewFlipper$1;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mGestureListener:Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;

    .line 99
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mGestureListener:Lcom/lge/appwidget/Andy_EmailMidViewFlipper$GestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mGestureDetector:Landroid/view/GestureDetector;

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

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

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

    iget-object v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

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

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

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
    .line 796
    const v0, 0x2040006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    .line 799
    const v0, 0x2040009

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    .line 802
    const v0, 0x2040008

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    .line 805
    const v0, 0x2040007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    .line 807
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

    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 299
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_20

    .line 303
    :cond_19
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->bindEmptyEmailView(Landroid/view/View;)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isEmptyEmail:Z

    goto :goto_2

    .line 308
    :cond_20
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->bindEmailView(Landroid/view/View;Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;II)V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isEmptyEmail:Z

    goto :goto_2
.end method


# virtual methods
.method public broadcastPositionChange()V
    .registers 8

    .prologue
    const-string v6, "/"

    .line 208
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mIsSetPositionChangeListener:Z

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
    const-string v3, "android.email.mid.position.action.CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v3, "email_mid_position://email_position_data/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPositionAppWidgetId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPositionViewId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

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
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getContext()Landroid/content/Context;

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
    .line 879
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isDisableScroll:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 881
    const/4 v0, 0x0

    .line 884
    :goto_6
    return v0

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_6
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    const/high16 v8, 0x1000

    const/high16 v7, 0x400

    const/4 v6, 0x1

    .line 846
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 848
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 850
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_14

    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isDisableScroll:Z

    if-ne v4, v6, :cond_15

    .line 875
    :cond_14
    :goto_14
    return-void

    .line 856
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_54

    goto :goto_14

    .line 868
    :pswitch_1d
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.lge.email.activity.MailList"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v3, newIntent:Landroid/content/Intent;
    const-string/jumbo v4, "viewMode"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 870
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 871
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 872
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_14

    .line 859
    .end local v3       #newIntent:Landroid/content/Intent;,
    :pswitch_35
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.lge.email.action.NEW_ACCOUNT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 860
    .local v0, accountIntent:Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 861
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 862
    const-string/jumbo v4, "selidx"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 863
    const-string/jumbo v4, "outer"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 864
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_14

    .line 856
    nop

    :pswitch_data_54
    .packed-switch 0x20500d6
        :pswitch_1d
        :pswitch_35
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "ev"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 553
    iget-object v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mInterceptTouchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 555
    :try_start_4
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-ne v3, v5, :cond_82

    .line 557
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isEmptyEmail:Z

    if-eq v3, v5, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_20

    .line 561
    :cond_1d
    monitor-exit v2

    move v2, v5

    .line 609
    :goto_1f
    return v2

    .line 564
    :cond_20
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 566
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_29

    .line 569
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 572
    :cond_29
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3c

    .line 577
    :cond_39
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->loadAnimation(Landroid/content/Context;)V

    .line 580
    :cond_3c
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mDirection:I

    invoke-direct {p0, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getFlipPosition(I)I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    .line 582
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_4d

    .line 584
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 587
    :cond_4d
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getNextView()Landroid/view/View;

    move-result-object v1

    .line 588
    .local v1, view:Landroid/view/View;
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    invoke-direct {p0, v1, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setEmailView(Landroid/view/View;I)V

    .line 590
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mDirection:I

    if-nez v3, :cond_6d

    .line 592
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 593
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 595
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->showNext()V

    .line 605
    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->broadcastPositionChange()V

    .line 606
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 597
    :cond_6d
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mDirection:I

    if-ne v3, v5, :cond_67

    .line 599
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 600
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 602
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->showNext()V

    goto :goto_67

    .line 610
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #view:Landroid/view/View;,
    :catchall_7f
    move-exception v3

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_4 .. :try_end_81} :catchall_7f

    throw v3

    .line 609
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

    .line 616
    iget-object v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTouchLock:Ljava/lang/Object;

    monitor-enter v2

    .line 618
    :try_start_4
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-ne v3, v5, :cond_67

    .line 620
    iget-boolean v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isEmptyEmail:Z

    if-eq v3, v5, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_20

    .line 624
    :cond_1d
    monitor-exit v2

    move v2, v5

    .line 670
    :goto_1f
    return v2

    .line 627
    :cond_20
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 629
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_29

    .line 632
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 635
    :cond_29
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_39

    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3c

    .line 640
    :cond_39
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->loadAnimation(Landroid/content/Context;)V

    .line 643
    :cond_3c
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mDirection:I

    invoke-direct {p0, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getFlipPosition(I)I

    move-result v3

    iput v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    .line 645
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_4d

    .line 647
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 650
    :cond_4d
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getNextView()Landroid/view/View;

    move-result-object v1

    .line 651
    .local v1, view:Landroid/view/View;
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    invoke-direct {p0, v1, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setEmailView(Landroid/view/View;I)V

    .line 653
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mDirection:I

    if-nez v3, :cond_6a

    .line 655
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mBottomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 656
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTopOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 658
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->showNext()V

    .line 670
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #view:Landroid/view/View;,
    :cond_67
    :goto_67
    monitor-exit v2

    move v2, v5

    goto :goto_1f

    .line 660
    .restart local v0       #context:Landroid/content/Context;,
    .restart local v1       #view:Landroid/view/View;,
    :cond_6a
    iget v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mDirection:I

    if-ne v3, v5, :cond_67

    .line 662
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mTopInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 663
    iget-object v3, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mBottomOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v3}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 665
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->broadcastPositionChange()V

    .line 666
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->showNext()V

    goto :goto_67

    .line 671
    .end local v0       #context:Landroid/content/Context;,
    .end local v1       #view:Landroid/view/View;,
    :catchall_7f
    move-exception v3

    monitor-exit v2
    :try_end_81
    .catchall {:try_start_4 .. :try_end_81} :catchall_7f

    throw v3
.end method

.method public setEmailMidViewItems(Landroid/os/Bundle;)V
    .registers 7
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->clearAnimation()V

    .line 111
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x1

    :try_start_a
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isDisableScroll:Z

    .line 141
    if-nez p1, :cond_1d

    .line 143
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    .line 144
    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->bindEmptyEmailView(Landroid/view/View;)V

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isEmptyEmail:Z

    .line 146
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->broadcastPositionChange()V
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_4a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_48

    .line 178
    :goto_1a
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isDisableScroll:Z

    .line 180
    return-void

    .line 150
    :cond_1d
    :try_start_1d
    const-string v2, "Andy_MidEmailNoAccout"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_2e

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isNoAccount:Z

    .line 154
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isEmptyEmail:Z

    .line 155
    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->bindEmptyEmailView(Landroid/view/View;)V

    .line 160
    :cond_2e
    const-string v2, "Andy_EmailMidViewFlipperParcelable"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    .local v0, bundlePacelable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;>;"
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isFlipperChange(Ljava/util/ArrayList;)Z

    move-result v2

    if-ne v2, v3, :cond_40

    .line 164
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    .line 165
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->broadcastPositionChange()V

    .line 168
    :cond_40
    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    .line 169
    iget v2, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    invoke-direct {p0, v1, v2}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setEmailView(Landroid/view/View;I)V
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

    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->isDisableScroll:Z

    throw v2
.end method

.method public setOnPositionChangeListener(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 197
    const-string v1, "EmailMidPositionListenerParcelable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/lge/appwidget/Andy_EmailPositionListenerParcelable;

    .line 200
    .local v0, parcelable:Lcom/lge/appwidget/Andy_EmailPositionListenerParcelable;
    iget v1, v0, Lcom/lge/appwidget/Andy_EmailPositionListenerParcelable;->mAppWidgetId:I

    iput v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPositionAppWidgetId:I

    .line 201
    iget v1, v0, Lcom/lge/appwidget/Andy_EmailPositionListenerParcelable;->mViewId:I

    iput v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPositionViewId:I

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mIsSetPositionChangeListener:Z

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
    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

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

    iget-object v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mEmailParcelableArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_c

    .line 250
    iput p1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    .line 252
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, view:Landroid/view/View;
    iget v1, p0, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->mPosition:I

    invoke-direct {p0, v0, v1}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->setEmailView(Landroid/view/View;I)V

    .line 255
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_EmailMidViewFlipper;->broadcastPositionChange()V

    goto :goto_c
.end method
