.class public final Lcom/lge/sui/widget/R$styleable;
.super Ljava/lang/Object;
.source "R.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AbsSpinner:[I = null

.field public static final AbsSpinner_entries:I = 0x0

.field public static final DatePicker:[I = null

.field public static final DatePicker_endYear:I = 0x1

.field public static final DatePicker_startYear:I = 0x0

.field public static final ExpandingView:[I = null

.field public static final ExpandingView_btnPressedBottomSlop:I = 0x3

.field public static final ExpandingView_btnPressedLeftSlop:I = 0x0

.field public static final ExpandingView_btnPressedRightSlop:I = 0x2

.field public static final ExpandingView_btnPressedTopSlop:I = 0x1

.field public static final ExpandingView_btnReleasedBottomSlop:I = 0x7

.field public static final ExpandingView_btnReleasedLeftSlop:I = 0x4

.field public static final ExpandingView_btnReleasedRightSlop:I = 0x6

.field public static final ExpandingView_btnReleasedTopSlop:I = 0x5

.field public static final Gallery1:[I = null

.field public static final Gallery1_android_galleryItemBackground:I = 0x0

.field public static final IndexedListView:[I = null

.field public static final IndexedListView_pinnedHeaderEnabled:I = 0x0

.field public static final MovableListView:[I = null

.field public static final MovableListView_removeMode:I = 0x0

.field public static final Theme:[I = null

.field public static final Theme_indexedListViewStyle:I = 0xe

.field public static final Theme_windowAnimationStyle:I = 0xa

.field public static final Theme_windowBackground:I = 0x0

.field public static final Theme_windowContentOverlay:I = 0x7

.field public static final Theme_windowDisablePreview:I = 0xc

.field public static final Theme_windowFrame:I = 0x1

.field public static final Theme_windowFullscreen:I = 0x3

.field public static final Theme_windowIsFloating:I = 0x4

.field public static final Theme_windowIsTranslucent:I = 0x5

.field public static final Theme_windowNoDisplay:I = 0xd

.field public static final Theme_windowNoTitle:I = 0x2

.field public static final Theme_windowShowWallpaper:I = 0x6

.field public static final Theme_windowSoftInputMode:I = 0xb

.field public static final Theme_windowTitleBackgroundStyle:I = 0x9

.field public static final Theme_windowTitleSize:I = 0x8

.field public static final TouchAreaAttr:[I = null

.field public static final TouchAreaAttr_pressedBottomSlop:I = 0x3

.field public static final TouchAreaAttr_pressedLeftSlop:I = 0x0

.field public static final TouchAreaAttr_pressedRightSlop:I = 0x2

.field public static final TouchAreaAttr_pressedTopSlop:I = 0x1

.field public static final TouchAreaAttr_releasedBottomSlop:I = 0x7

.field public static final TouchAreaAttr_releasedLeftSlop:I = 0x4

.field public static final TouchAreaAttr_releasedRightSlop:I = 0x6

.field public static final TouchAreaAttr_releasedTopSlop:I = 0x5

.field public static final VerticalGallery:[I = null

.field public static final VerticalGallery_animationDuration:I = 0x0

.field public static final VerticalGallery_gravity:I = 0x3

.field public static final VerticalGallery_spacing:I = 0x1

.field public static final VerticalGallery_unselectedAlpha:I = 0x2



# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1657
    new-array v0, v3, [I

    const/high16 v1, 0x301

    aput v1, v0, v2

    sput-object v0, Lcom/lge/sui/widget/R$styleable;->AbsSpinner:[I

    .line 1688
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_50

    sput-object v0, Lcom/lge/sui/widget/R$styleable;->DatePicker:[I

    .line 1747
    new-array v0, v4, [I

    fill-array-data v0, :array_58

    sput-object v0, Lcom/lge/sui/widget/R$styleable;->ExpandingView:[I

    .line 1889
    new-array v0, v3, [I

    const v1, 0x101004c

    aput v1, v0, v2

    sput-object v0, Lcom/lge/sui/widget/R$styleable;->Gallery1:[I

    .line 1908
    new-array v0, v3, [I

    const v1, 0x3010018

    aput v1, v0, v2

    sput-object v0, Lcom/lge/sui/widget/R$styleable;->IndexedListView:[I

    .line 1937
    new-array v0, v3, [I

    const v1, 0x3010017

    aput v1, v0, v2

    sput-object v0, Lcom/lge/sui/widget/R$styleable;->MovableListView:[I

    .line 2003
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/lge/sui/widget/R$styleable;->Theme:[I

    .line 2309
    new-array v0, v4, [I

    fill-array-data v0, :array_8e

    sput-object v0, Lcom/lge/sui/widget/R$styleable;->TouchAreaAttr:[I

    .line 2459
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/lge/sui/widget/R$styleable;->VerticalGallery:[I

    return-void

    .line 1688
    nop

    :array_50
    .array-data 0x4
        0x6t 0x0t 0x1t 0x3t
        0x7t 0x0t 0x1t 0x3t
    .end array-data

    .line 1747
    :array_58
    .array-data 0x4
        0x21t 0x0t 0x1t 0x3t
        0x22t 0x0t 0x1t 0x3t
        0x23t 0x0t 0x1t 0x3t
        0x24t 0x0t 0x1t 0x3t
        0x25t 0x0t 0x1t 0x3t
        0x26t 0x0t 0x1t 0x3t
        0x27t 0x0t 0x1t 0x3t
        0x28t 0x0t 0x1t 0x3t
    .end array-data

    .line 2003
    :array_6c
    .array-data 0x4
        0x8t 0x0t 0x1t 0x3t
        0x9t 0x0t 0x1t 0x3t
        0xat 0x0t 0x1t 0x3t
        0xbt 0x0t 0x1t 0x3t
        0xct 0x0t 0x1t 0x3t
        0xdt 0x0t 0x1t 0x3t
        0xet 0x0t 0x1t 0x3t
        0xft 0x0t 0x1t 0x3t
        0x10t 0x0t 0x1t 0x3t
        0x11t 0x0t 0x1t 0x3t
        0x12t 0x0t 0x1t 0x3t
        0x13t 0x0t 0x1t 0x3t
        0x14t 0x0t 0x1t 0x3t
        0x15t 0x0t 0x1t 0x3t
        0x16t 0x0t 0x1t 0x3t
    .end array-data

    .line 2309
    :array_8e
    .array-data 0x4
        0x19t 0x0t 0x1t 0x3t
        0x1at 0x0t 0x1t 0x3t
        0x1bt 0x0t 0x1t 0x3t
        0x1ct 0x0t 0x1t 0x3t
        0x1dt 0x0t 0x1t 0x3t
        0x1et 0x0t 0x1t 0x3t
        0x1ft 0x0t 0x1t 0x3t
        0x20t 0x0t 0x1t 0x3t
    .end array-data

    .line 2459
    :array_a2
    .array-data 0x4
        0x1t 0x0t 0x1t 0x3t
        0x2t 0x0t 0x1t 0x3t
        0x3t 0x0t 0x1t 0x3t
        0x4t 0x0t 0x1t 0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
