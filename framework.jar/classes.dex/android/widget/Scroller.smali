.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$FrameRate;
    }
.end annotation


# static fields
.field public static final CTS_TIMEPASSED_CRITERIA:I = 0x9c4

.field public static final CTS_VELOCITY_SLOW:F = 3000.0f

.field private static final DAMPING_COEF:F = 100.0f

.field private static final DAMPING_COEF4:F = 400.0f

.field private static final DAMPINT_CONSTANT:F = 0.0033112583f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final DISTANCE_TABLE_ARRAY_SIZE_FOR_FLING:I = 0x100

.field private static final DISTANCE_TABLE_FOR_FLING:[F = null

.field private static final FLING_COMPUTE_MODE_USING_CONSTANT_TIME_DIFF:I = 0x2

.field private static final FLING_COMPUTE_MODE_USING_NOISE_SURPRESS:I = 0x1

.field private static final FLING_COMPUTE_ORIGINAL_MODE:I = 0x0

.field private static final FLING_MODE:I = 0x1

.field public static final LIMIT_NUM_OF_ACCELERATION:I = 0xa

.field private static final MAX_ACCELERATION_TIME_GAP:I = 0x3e8

.field public static final MAX_COMPUTE_OFFSET_PERIOD:I = 0x5a

.field public static final MIN_VELOCITY_ACCELERATION:I = 0x3e8

.field private static final SCROLL_MODE:I = 0x0

.field public static final START_NUM_VELOCITY_ACCELERATION:F = 5.0f

.field private static final TOTAL_FLING_DURATION:I = 0xaf0

.field private static final TOTAL_FLING_DURATION_AT_SLOW:I = 0xa6c

.field private static final VELOCITY_INFLICTION_INDEX:I = 0xc

.field public static final VELOCITY_MINIMIM:F = 90.0f

.field public static final VELOCITY_NORMAL:F = 2500.0f

.field private static final VGA_HEIGHT:I = 0x280

.field private static dispHeight:I = 0x0

.field private static dispWidth:I = 0x0

.field private static sViscousFluidNormalize:F = 0.0f

.field private static sViscousFluidScale:F = 0.0f

.field public static final vCoeff:F = 0.016666668f

.field public static final vSyncFreq:F = 60.0f



# instance fields
.field private INITIAL_TIME_DIFF:F

.field private accerationCount:I

.field private currVelocityX:I

.field private currVelocityY:I

.field private flingComputeMode:I

.field private frameRate:Landroid/widget/Scroller$FrameRate;

.field private initialAccelMode:Z

.field private mCoeffX:F

.field private mCoeffY:F

.field private mCurrX:I

.field private mCurrX_old:I

.field private mCurrY:I

.field private mCurrY_old:I

.field private final mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastStartTime:J

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private maxFlingSpeed:I

.field private modifiedDuration:F

.field private modifiedDurationReciprocal:F

.field private timePassedCurrent:F

.field private timePassedDiffConstant:F

.field private timePassedDiffMin:F

.field private timePassedMorePrivious:F

.field private timePassedOffset:I

.field private timePassedOld:I

.field private timePassedPrivious:F

.field private unitTime:F

.field private unitTimeRev:F

.field private velocityScalingFactor:F



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/high16 v1, 0x3f80

    .line 81
    const/high16 v0, 0x4100

    sput v0, Landroid/widget/Scroller;->sViscousFluidScale:F

    .line 83
    sput v1, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    .line 84
    invoke-static {v1}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    .line 140
    const/16 v0, 0x100

    new-array v0, v0, [F

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/widget/Scroller;->DISTANCE_TABLE_FOR_FLING:[F

    return-void

    :array_1a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3ct 0x83t 0xfet 0x3et
        0x32t 0x55t 0x92t 0x3ft
        0xa4t 0xa7t 0xf2t 0x3ft
        0x24t 0x7ct 0x2et 0x40t
        0xb5t 0x52t 0x67t 0x40t
        0xfdt 0x6at 0x91t 0x40t
        0x5at 0x1dt 0xb0t 0x40t
        0x63t 0x6et 0xcft 0x40t
        0xebt 0x1at 0xeft 0x40t
        0xa9t 0x75t 0x7t 0x41t
        0x30t 0xb4t 0x16t 0x41t
        0x2ct 0x8at 0x25t 0x41t
        0x76t 0x0t 0x34t 0x41t
        0x1ft 0x1et 0x42t 0x41t
        0xe7t 0xe8t 0x4ft 0x41t
        0x95t 0x65t 0x5dt 0x41t
        0x33t 0x98t 0x6at 0x41t
        0x36t 0x84t 0x77t 0x41t
        0x52t 0x16t 0x82t 0x41t
        0xct 0x4at 0x88t 0x41t
        0x77t 0x5et 0x8et 0x41t
        0x9ft 0x54t 0x94t 0x41t
        0x74t 0x2dt 0x9at 0x41t
        0xd1t 0xe9t 0x9ft 0x41t
        0x81t 0x8at 0xa5t 0x41t
        0x3ct 0x10t 0xabt 0x41t
        0xact 0x7bt 0xb0t 0x41t
        0x73t 0xcdt 0xb5t 0x41t
        0x25t 0x6t 0xbbt 0x41t
        0x50t 0x26t 0xc0t 0x41t
        0x78t 0x2et 0xc5t 0x41t
        0x1bt 0x1ft 0xcat 0x41t
        0xb2t 0xf8t 0xcet 0x41t
        0xaft 0xbbt 0xd3t 0x41t
        0x7et 0x68t 0xd8t 0x41t
        0x8ct 0xfft 0xdct 0x41t
        0x3dt 0x81t 0xe1t 0x41t
        0xf1t 0xedt 0xe5t 0x41t
        0xbt 0x46t 0xeat 0x41t
        0xe4t 0x89t 0xeet 0x41t
        0xd6t 0xb9t 0xf2t 0x41t
        0x38t 0xd6t 0xf6t 0x41t
        0x5ft 0xdft 0xfat 0x41t
        0x9ct 0xd5t 0xfet 0x41t
        0xa0t 0x5ct 0x1t 0x42t
        0x4et 0x45t 0x3t 0x42t
        0xfdt 0x24t 0x5t 0x42t
        0xd5t 0xfbt 0x6t 0x42t
        0xf8t 0xc9t 0x8t 0x42t
        0x8ct 0x8ft 0xat 0x42t
        0xb5t 0x4ct 0xct 0x42t
        0x95t 0x1t 0xet 0x42t
        0x4ft 0xaet 0xft 0x42t
        0x5t 0x53t 0x11t 0x42t
        0xd7t 0xeft 0x12t 0x42t
        0xe8t 0x84t 0x14t 0x42t
        0x55t 0x12t 0x16t 0x42t
        0x41t 0x98t 0x17t 0x42t
        0xc9t 0x16t 0x19t 0x42t
        0xdt 0x8et 0x1at 0x42t
        0x2bt 0xfet 0x1bt 0x42t
        0x40t 0x67t 0x1dt 0x42t
        0x6bt 0xc9t 0x1et 0x42t
        0xc8t 0x24t 0x20t 0x42t
        0x73t 0x79t 0x21t 0x42t
        0x8at 0xc7t 0x22t 0x42t
        0x27t 0xft 0x24t 0x42t
        0x67t 0x50t 0x25t 0x42t
        0x65t 0x8bt 0x26t 0x42t
        0x3at 0xc0t 0x27t 0x42t
        0x1t 0xeft 0x28t 0x42t
        0xd5t 0x17t 0x2at 0x42t
        0xcft 0x3at 0x2bt 0x42t
        0x9t 0x58t 0x2ct 0x42t
        0x99t 0x6ft 0x2dt 0x42t
        0x9at 0x81t 0x2et 0x42t
        0x25t 0x8et 0x2ft 0x42t
        0x50t 0x95t 0x30t 0x42t
        0x33t 0x97t 0x31t 0x42t
        0xe5t 0x93t 0x32t 0x42t
        0x7et 0x8bt 0x33t 0x42t
        0x13t 0x7et 0x34t 0x42t
        0xbct 0x6bt 0x35t 0x42t
        0x8dt 0x54t 0x36t 0x42t
        0x9dt 0x38t 0x37t 0x42t
        0x1t 0x18t 0x38t 0x42t
        0xcet 0xf2t 0x38t 0x42t
        0x19t 0xc9t 0x39t 0x42t
        0xf6t 0x9at 0x3at 0x42t
        0x78t 0x68t 0x3bt 0x42t
        0xb5t 0x31t 0x3ct 0x42t
        0xc0t 0xf6t 0x3ct 0x42t
        0xabt 0xb7t 0x3dt 0x42t
        0x8bt 0x74t 0x3et 0x42t
        0x70t 0x2dt 0x3ft 0x42t
        0x6ft 0xe2t 0x3ft 0x42t
        0x99t 0x93t 0x40t 0x42t
        0xfft 0x40t 0x41t 0x42t
        0xb4t 0xeat 0x41t 0x42t
        0xcat 0x90t 0x42t 0x42t
        0x4ft 0x33t 0x43t 0x42t
        0x57t 0xd2t 0x43t 0x42t
        0xf1t 0x6dt 0x44t 0x42t
        0x2dt 0x6t 0x45t 0x42t
        0x1ct 0x9bt 0x45t 0x42t
        0xcdt 0x2ct 0x46t 0x42t
        0x50t 0xbbt 0x46t 0x42t
        0xb5t 0x46t 0x47t 0x42t
        0x9t 0xcft 0x47t 0x42t
        0x5dt 0x54t 0x48t 0x42t
        0xbet 0xd6t 0x48t 0x42t
        0x3ct 0x56t 0x49t 0x42t
        0xe4t 0xd2t 0x49t 0x42t
        0xc4t 0x4ct 0x4at 0x42t
        0xeat 0xc3t 0x4at 0x42t
        0x63t 0x38t 0x4bt 0x42t
        0x3ct 0xaat 0x4bt 0x42t
        0x83t 0x19t 0x4ct 0x42t
        0x45t 0x86t 0x4ct 0x42t
        0x8dt 0xf0t 0x4ct 0x42t
        0x67t 0x58t 0x4dt 0x42t
        0xe2t 0xbdt 0x4dt 0x42t
        0x8t 0x21t 0x4et 0x42t
        0xe5t 0x81t 0x4et 0x42t
        0x85t 0xe0t 0x4et 0x42t
        0xf2t 0x3ct 0x4ft 0x42t
        0x39t 0x97t 0x4ft 0x42t
        0x65t 0xeft 0x4ft 0x42t
        0x7ft 0x45t 0x50t 0x42t
        0x94t 0x99t 0x50t 0x42t
        0xabt 0xebt 0x50t 0x42t
        0xd2t 0x3bt 0x51t 0x42t
        0x11t 0x8at 0x51t 0x42t
        0x72t 0xd6t 0x51t 0x42t
        0x0t 0x21t 0x52t 0x42t
        0xc3t 0x69t 0x52t 0x42t
        0xc4t 0xb0t 0x52t 0x42t
        0xft 0xf6t 0x52t 0x42t
        0xaat 0x39t 0x53t 0x42t
        0xa0t 0x7bt 0x53t 0x42t
        0xf8t 0xbbt 0x53t 0x42t
        0xbdt 0xfat 0x53t 0x42t
        0xf5t 0x37t 0x54t 0x42t
        0xa9t 0x73t 0x54t 0x42t
        0xe2t 0xadt 0x54t 0x42t
        0xa7t 0xe6t 0x54t 0x42t
        0x0t 0x1et 0x55t 0x42t
        0xf5t 0x53t 0x55t 0x42t
        0x8dt 0x88t 0x55t 0x42t
        0xd0t 0xbbt 0x55t 0x42t
        0xc6t 0xedt 0x55t 0x42t
        0x74t 0x1et 0x56t 0x42t
        0xe3t 0x4dt 0x56t 0x42t
        0x18t 0x7ct 0x56t 0x42t
        0x1ct 0xa9t 0x56t 0x42t
        0xf4t 0xd4t 0x56t 0x42t
        0xa7t 0xfft 0x56t 0x42t
        0x3bt 0x29t 0x57t 0x42t
        0xb7t 0x51t 0x57t 0x42t
        0x21t 0x79t 0x57t 0x42t
        0x7et 0x9ft 0x57t 0x42t
        0xd5t 0xc4t 0x57t 0x42t
        0x2bt 0xe9t 0x57t 0x42t
        0x87t 0xct 0x58t 0x42t
        0xedt 0x2et 0x58t 0x42t
        0x63t 0x50t 0x58t 0x42t
        0xeft 0x70t 0x58t 0x42t
        0x96t 0x90t 0x58t 0x42t
        0x5ct 0xaft 0x58t 0x42t
        0x48t 0xcdt 0x58t 0x42t
        0x5et 0xeat 0x58t 0x42t
        0xa2t 0x6t 0x59t 0x42t
        0x1at 0x22t 0x59t 0x42t
        0xcat 0x3ct 0x59t 0x42t
        0xb6t 0x56t 0x59t 0x42t
        0xe4t 0x6ft 0x59t 0x42t
        0x58t 0x88t 0x59t 0x42t
        0x15t 0xa0t 0x59t 0x42t
        0x21t 0xb7t 0x59t 0x42t
        0x7ft 0xcdt 0x59t 0x42t
        0x33t 0xe3t 0x59t 0x42t
        0x42t 0xf8t 0x59t 0x42t
        0xaft 0xct 0x5at 0x42t
        0x7et 0x20t 0x5at 0x42t
        0xb2t 0x33t 0x5at 0x42t
        0x50t 0x46t 0x5at 0x42t
        0x5bt 0x58t 0x5at 0x42t
        0xd7t 0x69t 0x5at 0x42t
        0xc6t 0x7at 0x5at 0x42t
        0x2dt 0x8bt 0x5at 0x42t
        0xet 0x9bt 0x5at 0x42t
        0x6et 0xaat 0x5at 0x42t
        0x4dt 0xb9t 0x5at 0x42t
        0xb1t 0xc7t 0x5at 0x42t
        0x9dt 0xd5t 0x5at 0x42t
        0x12t 0xe3t 0x5at 0x42t
        0x15t 0xf0t 0x5at 0x42t
        0xa7t 0xfct 0x5at 0x42t
        0xcct 0x8t 0x5bt 0x42t
        0x86t 0x14t 0x5bt 0x42t
        0xd8t 0x1ft 0x5bt 0x42t
        0xc4t 0x2at 0x5bt 0x42t
        0x4et 0x35t 0x5bt 0x42t
        0x77t 0x3ft 0x5bt 0x42t
        0x43t 0x49t 0x5bt 0x42t
        0xb3t 0x52t 0x5bt 0x42t
        0xcat 0x5bt 0x5bt 0x42t
        0x8at 0x64t 0x5bt 0x42t
        0xf5t 0x6ct 0x5bt 0x42t
        0xet 0x75t 0x5bt 0x42t
        0xd6t 0x7ct 0x5bt 0x42t
        0x51t 0x84t 0x5bt 0x42t
        0x7ft 0x8bt 0x5bt 0x42t
        0x63t 0x92t 0x5bt 0x42t
        0xfft 0x98t 0x5bt 0x42t
        0x54t 0x9ft 0x5bt 0x42t
        0x65t 0xa5t 0x5bt 0x42t
        0x34t 0xabt 0x5bt 0x42t
        0xc2t 0xb0t 0x5bt 0x42t
        0x10t 0xb6t 0x5bt 0x42t
        0x22t 0xbbt 0x5bt 0x42t
        0xf8t 0xbft 0x5bt 0x42t
        0x94t 0xc4t 0x5bt 0x42t
        0xf7t 0xc8t 0x5bt 0x42t
        0x24t 0xcdt 0x5bt 0x42t
        0x1bt 0xd1t 0x5bt 0x42t
        0xdet 0xd4t 0x5bt 0x42t
        0x70t 0xd8t 0x5bt 0x42t
        0xd0t 0xdbt 0x5bt 0x42t
        0x1t 0xdft 0x5bt 0x42t
        0x3t 0xe2t 0x5bt 0x42t
        0xd9t 0xe4t 0x5bt 0x42t
        0x83t 0xe7t 0x5bt 0x42t
        0x3t 0xeat 0x5bt 0x42t
        0x59t 0xect 0x5bt 0x42t
        0x88t 0xeet 0x5bt 0x42t
        0x91t 0xf0t 0x5bt 0x42t
        0x74t 0xf2t 0x5bt 0x42t
        0x32t 0xf4t 0x5bt 0x42t
        0xcdt 0xf5t 0x5bt 0x42t
        0x47t 0xf7t 0x5bt 0x42t
        0x9et 0xf8t 0x5bt 0x42t
        0xd6t 0xf9t 0x5bt 0x42t
        0xeft 0xfat 0x5bt 0x42t
        0xe9t 0xfbt 0x5bt 0x42t
        0xc7t 0xfct 0x5bt 0x42t
        0x88t 0xfdt 0x5bt 0x42t
        0x2dt 0xfet 0x5bt 0x42t
        0xb8t 0xfet 0x5bt 0x42t
        0x2at 0xfft 0x5bt 0x42t
        0x82t 0xfft 0x5bt 0x42t
        0xc3t 0xfft 0x5bt 0x42t
        0xedt 0xfft 0x5bt 0x42t
        0x0t 0x0t 0x5ct 0x42t
        0x0t 0x0t 0x5ct 0x42t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 283
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 8
    .parameter "context"
    .parameter "interpolator"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const-string/jumbo v4, "window"

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Scroller;->mCoeffX:F

    .line 67
    iput v2, p0, Landroid/widget/Scroller;->mCoeffY:F

    .line 115
    const/16 v1, 0x7530

    iput v1, p0, Landroid/widget/Scroller;->maxFlingSpeed:I

    .line 116
    iput v2, p0, Landroid/widget/Scroller;->velocityScalingFactor:F

    .line 193
    const/high16 v1, 0x4188

    iput v1, p0, Landroid/widget/Scroller;->INITIAL_TIME_DIFF:F

    .line 290
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 291
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 293
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 301
    const-string v1, "[gyuyoung.park]"

    const-string v2, "Scroller created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput v3, p0, Landroid/widget/Scroller;->currVelocityX:I

    .line 303
    iput v3, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 304
    iput v3, p0, Landroid/widget/Scroller;->accerationCount:I

    .line 305
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/widget/Scroller;->mLastStartTime:J

    .line 306
    new-instance v1, Landroid/widget/Scroller$FrameRate;

    invoke-direct {v1, p0}, Landroid/widget/Scroller$FrameRate;-><init>(Landroid/widget/Scroller;)V

    iput-object v1, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    .line 308
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Landroid/widget/Scroller;->dispHeight:I

    .line 309
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Landroid/widget/Scroller;->dispWidth:I

    .line 313
    return-void
.end method

.method private computeScrollOffsetByTableForFling(FF)F
    .registers 15
    .parameter "initVelocity"
    .parameter "timePassedFloat"

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xff

    const v9, 0x3c888889

    .line 232
    iget v7, p0, Landroid/widget/Scroller;->unitTimeRev:F

    mul-float/2addr v7, p2

    float-to-int v3, v7

    .line 234
    .local v3, tableIdx:I
    const v7, 0x451c4000

    cmpg-float v7, p1, v7

    if-lez v7, :cond_16

    iget-boolean v7, p0, Landroid/widget/Scroller;->initialAccelMode:Z

    if-nez v7, :cond_51

    .line 237
    :cond_16
    add-int/lit8 v3, v3, 0xc

    .line 238
    if-lt v3, v10, :cond_27

    .line 239
    mul-float v7, p1, v9

    sget-object v8, Landroid/widget/Scroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v8, v8, v10

    sget-object v9, Landroid/widget/Scroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v9, v9, v11

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    .line 270
    :goto_26
    return v7

    .line 243
    :cond_27
    sget-object v7, Landroid/widget/Scroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v5, v7, v3

    .line 244
    .local v5, v1:F
    sget-object v7, Landroid/widget/Scroller;->DISTANCE_TABLE_FOR_FLING:[F

    add-int/lit8 v8, v3, 0x1

    aget v6, v7, v8

    .line 247
    .local v6, v2:F
    sub-int v7, v3, v11

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/Scroller;->unitTime:F

    mul-float v2, v7, v8

    .line 248
    .local v2, t1:F
    sub-float v0, p2, v2

    .line 249
    .local v0, dt1:F
    iget v7, p0, Landroid/widget/Scroller;->unitTime:F

    add-float/2addr v7, v2

    sub-float v1, v7, p2

    .line 251
    .local v1, dt2:F
    mul-float v7, v0, v6

    mul-float v8, v1, v5

    add-float/2addr v7, v8

    iget v8, p0, Landroid/widget/Scroller;->unitTimeRev:F

    mul-float/2addr v7, v8

    sget-object v8, Landroid/widget/Scroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v8, v8, v11

    sub-float v4, v7, v8

    .line 252
    .local v4, v:F
    mul-float v7, p1, v9

    mul-float/2addr v7, v4

    goto :goto_26

    .line 257
    .end local v0       #dt1:F,
    .end local v1       #dt2:F,
    .end local v2       #t1:F,
    .end local v4       #v:F,
    .end local v5       #v1:F,
    .end local v6       #v2:F,
    :cond_51
    if-lt v3, v10, :cond_5b

    .line 258
    mul-float v7, p1, v9

    sget-object v8, Landroid/widget/Scroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v8, v8, v10

    mul-float/2addr v7, v8

    goto :goto_26

    .line 261
    :cond_5b
    sget-object v7, Landroid/widget/Scroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v5, v7, v3

    .line 262
    .restart local v5       #v1:F,
    sget-object v7, Landroid/widget/Scroller;->DISTANCE_TABLE_FOR_FLING:[F

    add-int/lit8 v8, v3, 0x1

    aget v6, v7, v8

    .line 265
    .restart local v6       #v2:F,
    int-to-float v7, v3

    iget v8, p0, Landroid/widget/Scroller;->unitTime:F

    mul-float v2, v7, v8

    .line 266
    .restart local v2       #t1:F,
    sub-float v0, p2, v2

    .line 267
    .restart local v0       #dt1:F,
    iget v7, p0, Landroid/widget/Scroller;->unitTime:F

    add-float/2addr v7, v2

    sub-float v1, v7, p2

    .line 268
    .restart local v1       #dt2:F,
    mul-float v7, v0, v6

    mul-float v8, v1, v5

    add-float/2addr v7, v8

    iget v8, p0, Landroid/widget/Scroller;->unitTimeRev:F

    mul-float v4, v7, v8

    .line 270
    .restart local v4       #v:F,
    mul-float v7, p1, v9

    mul-float/2addr v7, v4

    goto :goto_26
.end method

.method static viscousFluid(F)F
    .registers 5
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 830
    sget v1, Landroid/widget/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 831
    cmpg-float v1, p0, v3

    if-gez v1, :cond_17

    .line 832
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 838
    :goto_13
    sget v1, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 839
    return p0

    .line 834
    :cond_17
    const v0, 0x3ebc5ab2

    .line 835
    .local v0, start:F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 836
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_13
.end method


# virtual methods
.method public abortAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 850
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 851
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 857
    iput v1, p0, Landroid/widget/Scroller;->currVelocityX:I

    .line 858
    iput v1, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 859
    iput v1, p0, Landroid/widget/Scroller;->accerationCount:I

    .line 863
    return-void
.end method

.method public computeScrollOffset()Z
    .registers 15

    .prologue
    .line 437
    iget-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v10, :cond_6

    .line 438
    const/4 v10, 0x0

    .line 594
    :goto_5
    return v10

    .line 441
    :cond_6
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v6, v10

    .line 443
    .local v6, timePassed:I
    iget v10, p0, Landroid/widget/Scroller;->mDuration:I

    if-ge v6, v10, :cond_1a6

    .line 444
    iget v10, p0, Landroid/widget/Scroller;->mMode:I

    packed-switch v10, :pswitch_data_1bc

    .line 594
    :cond_17
    :goto_17
    const/4 v10, 0x1

    goto :goto_5

    .line 446
    :pswitch_19
    int-to-float v10, v6

    iget v11, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float v9, v10, v11

    .line 448
    .local v9, x:F
    iget-object v10, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v10, :cond_3f

    .line 449
    invoke-static {v9}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v9

    .line 453
    :goto_26
    iget v10, p0, Landroid/widget/Scroller;->mStartX:I

    iget v11, p0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 454
    iget v10, p0, Landroid/widget/Scroller;->mStartY:I

    iget v11, p0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    goto :goto_17

    .line 451
    :cond_3f
    iget-object v10, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    goto :goto_26

    .line 461
    .end local v9       #x:F,
    :pswitch_46
    iget v10, p0, Landroid/widget/Scroller;->mDuration:I

    if-nez v10, :cond_54

    .line 462
    iget v10, p0, Landroid/widget/Scroller;->mStartX:I

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 463
    iget v10, p0, Landroid/widget/Scroller;->mStartY:I

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 464
    const/4 v10, 0x0

    goto :goto_5

    .line 468
    :cond_54
    iget v10, p0, Landroid/widget/Scroller;->mVelocity:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x453b8000

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_7b

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v10, v10

    const/16 v11, 0x9c4

    if-le v10, v11, :cond_7b

    .line 470
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 471
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->currVelocityX:I

    .line 472
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 473
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->accerationCount:I

    .line 474
    const/4 v10, 0x0

    goto :goto_5

    .line 479
    :cond_7b
    iget v10, p0, Landroid/widget/Scroller;->timePassedOld:I

    sub-int v10, v6, v10

    const/16 v11, 0x5a

    if-le v10, v11, :cond_86

    .line 480
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 482
    :cond_86
    iput v6, p0, Landroid/widget/Scroller;->timePassedOld:I

    .line 484
    int-to-float v7, v6

    .line 486
    .local v7, timePassedFloat:F
    iget v10, p0, Landroid/widget/Scroller;->flingComputeMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18a

    .line 487
    iget-object v10, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v11, v10, Landroid/widget/Scroller$FrameRate;->frameCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 488
    iget-object v10, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iput v6, v10, Landroid/widget/Scroller$FrameRate;->timePassed:I

    .line 490
    iget-object v10, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v10, v10, Landroid/widget/Scroller$FrameRate;->frameCount:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b1

    .line 491
    iget v10, p0, Landroid/widget/Scroller;->INITIAL_TIME_DIFF:F

    float-to-int v10, v10

    sub-int/2addr v10, v6

    iput v10, p0, Landroid/widget/Scroller;->timePassedOffset:I

    .line 492
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->timePassedCurrent:F

    .line 493
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->timePassedPrivious:F

    .line 494
    iget v10, p0, Landroid/widget/Scroller;->INITIAL_TIME_DIFF:F

    iput v10, p0, Landroid/widget/Scroller;->timePassedDiffMin:F

    .line 497
    :cond_b1
    iget v10, p0, Landroid/widget/Scroller;->timePassedOffset:I

    add-int/2addr v6, v10

    .line 498
    iget v10, p0, Landroid/widget/Scroller;->timePassedPrivious:F

    iput v10, p0, Landroid/widget/Scroller;->timePassedMorePrivious:F

    .line 499
    iget v10, p0, Landroid/widget/Scroller;->timePassedCurrent:F

    iput v10, p0, Landroid/widget/Scroller;->timePassedPrivious:F

    .line 500
    const/high16 v10, 0x4000

    mul-float/2addr v10, v7

    const/high16 v11, 0x43c8

    iget v12, p0, Landroid/widget/Scroller;->timePassedPrivious:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/high16 v11, 0x42c8

    iget v12, p0, Landroid/widget/Scroller;->timePassedMorePrivious:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->timePassedCurrent:F

    .line 501
    iget v10, p0, Landroid/widget/Scroller;->timePassedCurrent:F

    const v11, 0x3b5901b2

    mul-float/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->timePassedCurrent:F

    .line 502
    iget v10, p0, Landroid/widget/Scroller;->timePassedCurrent:F

    iget v11, p0, Landroid/widget/Scroller;->INITIAL_TIME_DIFF:F

    add-float/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->timePassedCurrent:F

    .line 503
    iget v10, p0, Landroid/widget/Scroller;->timePassedCurrent:F

    iget v11, p0, Landroid/widget/Scroller;->timePassedPrivious:F

    iget v12, p0, Landroid/widget/Scroller;->timePassedDiffMin:F

    add-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->timePassedCurrent:F

    .line 505
    iget v10, p0, Landroid/widget/Scroller;->timePassedDiffMin:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_f7

    .line 506
    iget v10, p0, Landroid/widget/Scroller;->timePassedDiffMin:F

    const/high16 v11, 0x3f80

    sub-float/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->timePassedDiffMin:F

    .line 507
    :cond_f7
    iget v10, p0, Landroid/widget/Scroller;->timePassedDiffMin:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_101

    .line 508
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->timePassedDiffMin:F

    .line 517
    :cond_101
    :goto_101
    iget v10, p0, Landroid/widget/Scroller;->mDuration:I

    if-ge v6, v10, :cond_17

    .line 518
    int-to-float v10, v6

    const/high16 v11, 0x447a

    div-float v8, v10, v11

    .line 521
    .local v8, timePassedSeconds:F
    iget v10, p0, Landroid/widget/Scroller;->mVelocity:F

    invoke-direct {p0, v10, v7}, Landroid/widget/Scroller;->computeScrollOffsetByTableForFling(FF)F

    move-result v1

    .line 529
    .local v1, distance:F
    iget v10, p0, Landroid/widget/Scroller;->mStartX:I

    iget v11, p0, Landroid/widget/Scroller;->mCoeffX:F

    mul-float/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 530
    iget v10, p0, Landroid/widget/Scroller;->mStartY:I

    iget v11, p0, Landroid/widget/Scroller;->mCoeffY:F

    mul-float/2addr v11, v1

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 533
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v11, p0, Landroid/widget/Scroller;->mCurrX_old:I

    sub-int v2, v10, v11

    .line 534
    .local v2, mCurrXDiff_old:I
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v11, p0, Landroid/widget/Scroller;->mCurrY_old:I

    sub-int v3, v10, v11

    .line 535
    .local v3, mCurrYDiff_old:I
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iput v10, p0, Landroid/widget/Scroller;->mCurrX_old:I

    .line 536
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iput v10, p0, Landroid/widget/Scroller;->mCurrY_old:I

    .line 537
    mul-int/lit8 v10, v2, 0x3c

    iput v10, p0, Landroid/widget/Scroller;->currVelocityX:I

    .line 538
    mul-int/lit8 v10, v3, 0x3c

    iput v10, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 540
    iget v4, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 541
    .local v4, mOriginalCurrX:I
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v11, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 542
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v11, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 544
    iget v5, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 545
    .local v5, mOriginalCurrY:I
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v11, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 546
    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v11, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 548
    iget v10, p0, Landroid/widget/Scroller;->mCurrX:I

    iget v11, p0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v10, v11, :cond_17

    iget v10, p0, Landroid/widget/Scroller;->mCurrY:I

    iget v11, p0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v10, v11, :cond_17

    .line 549
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 550
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->currVelocityX:I

    .line 551
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 552
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->accerationCount:I

    goto/16 :goto_17

    .line 510
    .end local v1       #distance:F,
    .end local v2       #mCurrXDiff_old:I,
    .end local v3       #mCurrYDiff_old:I,
    .end local v4       #mOriginalCurrX:I,
    .end local v5       #mOriginalCurrY:I,
    .end local v8       #timePassedSeconds:F,
    :cond_18a
    iget v10, p0, Landroid/widget/Scroller;->flingComputeMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_101

    .line 511
    iget-object v10, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v11, v10, Landroid/widget/Scroller$FrameRate;->frameCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 512
    iget-object v10, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iput v6, v10, Landroid/widget/Scroller$FrameRate;->timePassed:I

    .line 513
    iget-object v10, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v10, v10, Landroid/widget/Scroller$FrameRate;->frameCount:I

    int-to-float v0, v10

    .line 514
    .local v0, count:F
    iget v10, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    mul-float v7, v10, v0

    goto/16 :goto_101

    .line 581
    .end local v0       #count:F,
    .end local v7       #timePassedFloat:F,
    :cond_1a6
    iget v10, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v10, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 582
    iget v10, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v10, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 583
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 587
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->currVelocityX:I

    .line 588
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 589
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/Scroller;->accerationCount:I

    goto/16 :goto_17

    .line 444
    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_19
        :pswitch_46
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 5
    .parameter "extend"

    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 875
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 876
    const/high16 v1, 0x3f80

    iget v2, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 877
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 878
    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 22
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 663
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/Scroller;->mMode:I

    .line 664
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 669
    sget v9, Landroid/widget/Scroller;->dispHeight:I

    sget v10, Landroid/widget/Scroller;->dispWidth:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 670
    .local v3, dispLength:I
    const/16 v9, 0x280

    if-ge v3, v9, :cond_b0

    .line 671
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/Scroller;->initialAccelMode:Z

    .line 675
    :goto_15
    move/from16 v0, p3

    int-to-float v0, v0

    move v9, v0

    iget v10, p0, Landroid/widget/Scroller;->velocityScalingFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v4, v9

    .line 676
    .local v4, fVelocityX:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v9, v0

    iget v10, p0, Landroid/widget/Scroller;->velocityScalingFactor:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v5, v9

    .line 683
    .local v5, fVelocityY:F
    const/4 v7, 0x1

    .line 684
    .local v7, usingAcceleration:Z
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 685
    iget-wide v9, p0, Landroid/widget/Scroller;->mStartTime:J

    iget-wide v11, p0, Landroid/widget/Scroller;->mLastStartTime:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    if-lez v9, :cond_3a

    .line 686
    const/4 v7, 0x0

    .line 688
    :cond_3a
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v9

    const/16 v10, 0x3e8

    if-ge v9, v10, :cond_43

    .line 689
    const/4 v7, 0x0

    .line 691
    :cond_43
    iget v9, p0, Landroid/widget/Scroller;->currVelocityY:I

    if-lez v9, :cond_4a

    if-gez p4, :cond_4a

    .line 692
    const/4 v7, 0x0

    .line 694
    :cond_4a
    iget v9, p0, Landroid/widget/Scroller;->currVelocityY:I

    if-gez v9, :cond_51

    if-lez p4, :cond_51

    .line 695
    const/4 v7, 0x0

    .line 698
    :cond_51
    if-eqz v7, :cond_bd

    .line 699
    iget v9, p0, Landroid/widget/Scroller;->accerationCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/widget/Scroller;->accerationCount:I

    .line 700
    iget v9, p0, Landroid/widget/Scroller;->accerationCount:I

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/widget/Scroller;->accerationCount:I

    .line 702
    iget v9, p0, Landroid/widget/Scroller;->accerationCount:I

    int-to-float v9, v9

    const/high16 v10, 0x40a0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_78

    .line 703
    iget v2, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 704
    .local v2, acceleratedVelocity:I
    if-lez v2, :cond_b5

    .line 705
    iget v9, p0, Landroid/widget/Scroller;->maxFlingSpeed:I

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 708
    :goto_76
    int-to-float v9, v2

    add-float/2addr v5, v9

    .line 717
    .end local v2       #acceleratedVelocity:I,
    :cond_78
    :goto_78
    float-to-double v9, v4

    float-to-double v11, v5

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v8, v9

    .line 718
    .local v8, velocity:F
    iget-wide v9, p0, Landroid/widget/Scroller;->mStartTime:J

    iput-wide v9, p0, Landroid/widget/Scroller;->mLastStartTime:J

    .line 720
    const/high16 v9, 0x42b4

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_c7

    .line 721
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/Scroller;->mDuration:I

    .line 731
    :goto_8c
    const/high16 v9, 0x3f80

    iget v10, p0, Landroid/widget/Scroller;->unitTime:F

    div-float/2addr v9, v10

    iput v9, p0, Landroid/widget/Scroller;->unitTimeRev:F

    .line 733
    iget v9, p0, Landroid/widget/Scroller;->mDuration:I

    if-nez v9, :cond_ec

    .line 734
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 735
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 736
    iput p2, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 737
    iget v9, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v9, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 738
    iget v9, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v9, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 739
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/Scroller;->currVelocityX:I

    .line 740
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 741
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/Scroller;->accerationCount:I

    .line 826
    :goto_af
    return-void

    .line 673
    .end local v4       #fVelocityX:F,
    .end local v5       #fVelocityY:F,
    .end local v7       #usingAcceleration:Z,
    .end local v8       #velocity:F,
    :cond_b0
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/Scroller;->initialAccelMode:Z

    goto/16 :goto_15

    .line 707
    .restart local v2       #acceleratedVelocity:I,
    .restart local v4       #fVelocityX:F,
    .restart local v5       #fVelocityY:F,
    .restart local v7       #usingAcceleration:Z,
    :cond_b5
    iget v9, p0, Landroid/widget/Scroller;->maxFlingSpeed:I

    neg-int v9, v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_76

    .line 712
    .end local v2       #acceleratedVelocity:I,
    :cond_bd
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/Scroller;->currVelocityX:I

    .line 713
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 714
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/Scroller;->accerationCount:I

    goto :goto_78

    .line 723
    .restart local v8       #velocity:F,
    :cond_c7
    const v9, 0x451c4000

    cmpg-float v9, v8, v9

    if-lez v9, :cond_d2

    iget-boolean v9, p0, Landroid/widget/Scroller;->initialAccelMode:Z

    if-nez v9, :cond_df

    .line 724
    :cond_d2
    const/16 v9, 0xa6c

    iput v9, p0, Landroid/widget/Scroller;->mDuration:I

    .line 725
    iget v9, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v9, v9

    const/high16 v10, 0x4374

    div-float/2addr v9, v10

    iput v9, p0, Landroid/widget/Scroller;->unitTime:F

    goto :goto_8c

    .line 728
    :cond_df
    const/16 v9, 0xaf0

    iput v9, p0, Landroid/widget/Scroller;->mDuration:I

    .line 729
    iget v9, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v9, v9

    const/high16 v10, 0x4380

    div-float/2addr v9, v10

    iput v9, p0, Landroid/widget/Scroller;->unitTime:F

    goto :goto_8c

    .line 745
    :cond_ec
    iget-object v9, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v9, v9, Landroid/widget/Scroller$FrameRate;->timePassed:I

    if-eqz v9, :cond_f9

    iget-object v9, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v9, v9, Landroid/widget/Scroller$FrameRate;->frameCount:I

    const/4 v10, 0x5

    if-ge v9, v10, :cond_185

    .line 746
    :cond_f9
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 752
    :goto_fc
    iput v8, p0, Landroid/widget/Scroller;->mVelocity:F

    .line 754
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-nez v9, :cond_192

    const/high16 v9, 0x3f80

    :goto_105
    iput v9, p0, Landroid/widget/Scroller;->mCoeffX:F

    .line 755
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-nez v9, :cond_196

    const/high16 v9, 0x3f80

    :goto_10e
    iput v9, p0, Landroid/widget/Scroller;->mCoeffY:F

    .line 757
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 758
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 771
    iget v9, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v10, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v10, v10

    invoke-direct {p0, v9, v10}, Landroid/widget/Scroller;->computeScrollOffsetByTableForFling(FF)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 772
    .local v6, totalDistance:I
    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinX:I

    .line 773
    move/from16 v0, p6

    move-object v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxX:I

    .line 774
    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinY:I

    .line 775
    move/from16 v0, p8

    move-object v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxY:I

    .line 777
    int-to-float v9, v6

    iget v10, p0, Landroid/widget/Scroller;->mCoeffX:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v9, p1

    iput v9, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 778
    iget v9, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v10, p0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 779
    iget v9, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v10, p0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 781
    int-to-float v9, v6

    iget v10, p0, Landroid/widget/Scroller;->mCoeffY:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    add-int/2addr v9, p2

    iput v9, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 782
    iget v9, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v10, p0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 783
    iget v9, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v10, p0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 785
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/Scroller;->timePassedOld:I

    .line 786
    iget-object v9, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v9}, Landroid/widget/Scroller$FrameRate;->reset()V

    .line 788
    iget v9, p0, Landroid/widget/Scroller;->mStartX:I

    iput v9, p0, Landroid/widget/Scroller;->mCurrX_old:I

    .line 789
    iget v9, p0, Landroid/widget/Scroller;->mStartY:I

    iput v9, p0, Landroid/widget/Scroller;->mCurrY_old:I

    goto/16 :goto_af

    .line 749
    .end local v6       #totalDistance:I,
    :cond_185
    iget-object v9, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v9}, Landroid/widget/Scroller$FrameRate;->getTimeDiff()F

    move-result v9

    iput v9, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    .line 750
    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/Scroller;->flingComputeMode:I

    goto/16 :goto_fc

    .line 754
    :cond_192
    div-float v9, v4, v8

    goto/16 :goto_105

    .line 755
    :cond_196
    div-float v9, v5, v8

    goto/16 :goto_10e
.end method

.method public final forceFinished(Z)V
    .registers 3
    .parameter "finished"

    .prologue
    const/4 v0, 0x0

    .line 331
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 336
    if-eqz p1, :cond_b

    .line 337
    iput v0, p0, Landroid/widget/Scroller;->currVelocityX:I

    .line 338
    iput v0, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 339
    iput v0, p0, Landroid/widget/Scroller;->accerationCount:I

    .line 344
    :cond_b
    return-void
.end method

.method public getCurrVelocity()F
    .registers 5

    .prologue
    .line 384
    iget v0, p0, Landroid/widget/Scroller;->currVelocityX:I

    int-to-double v0, v0

    iget v2, p0, Landroid/widget/Scroller;->currVelocityY:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getCurrVelocityX()F
    .registers 2

    .prologue
    .line 949
    iget v0, p0, Landroid/widget/Scroller;->currVelocityX:I

    int-to-float v0, v0

    return v0
.end method

.method public getCurrVelocityY()F
    .registers 2

    .prologue
    .line 953
    iget v0, p0, Landroid/widget/Scroller;->currVelocityY:I

    int-to-float v0, v0

    return v0
.end method

.method public final getCurrX()I
    .registers 2

    .prologue
    .line 361
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    .prologue
    .line 419
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .registers 2

    .prologue
    .line 401
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public resetCurrentVelocity()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 943
    iput v0, p0, Landroid/widget/Scroller;->currVelocityX:I

    .line 944
    iput v0, p0, Landroid/widget/Scroller;->currVelocityY:I

    .line 945
    iput v0, p0, Landroid/widget/Scroller;->accerationCount:I

    .line 946
    return-void
.end method

.method public setFinalX(I)V
    .registers 4
    .parameter "newX"

    .prologue
    .line 897
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 898
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 900
    return-void
.end method

.method public setFinalY(I)V
    .registers 4
    .parameter "newY"

    .prologue
    .line 910
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 911
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 912
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 913
    return-void
.end method

.method public setFlingUnitTime(I)V
    .registers 2
    .parameter "unitTime"

    .prologue
    .line 967
    return-void
.end method

.method public setFullAccerationAtFling()V
    .registers 1

    .prologue
    .line 929
    return-void
.end method

.method public setFullVelocityAtFling()V
    .registers 1

    .prologue
    .line 919
    return-void
.end method

.method public setHalfAccerationAtFling()V
    .registers 1

    .prologue
    .line 934
    return-void
.end method

.method public setHalfVelocityAtFling()V
    .registers 1

    .prologue
    .line 924
    return-void
.end method

.method public setInitialComputeOffsetPeriod(I)V
    .registers 2
    .parameter "time"

    .prologue
    .line 972
    return-void
.end method

.method public setInitialFlingVelocityScale(F)V
    .registers 2
    .parameter "scalingFactor"

    .prologue
    .line 962
    return-void
.end method

.method public setJustStopFlingForSlowDisplay()V
    .registers 1

    .prologue
    .line 977
    return-void
.end method

.method public setMaxFlingVelocity(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 957
    iput p1, p0, Landroid/widget/Scroller;->maxFlingSpeed:I

    .line 958
    return-void
.end method

.method public setNoAccerationAtFling()V
    .registers 1

    .prologue
    .line 939
    return-void
.end method

.method public startScroll(IIII)V
    .registers 11
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 612
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 613
    return-void
.end method

.method public startScroll(IIIII)V
    .registers 8
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 629
    iput v0, p0, Landroid/widget/Scroller;->mMode:I

    .line 630
    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 631
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 632
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 633
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 634
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 635
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 636
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 637
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 638
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 639
    const/high16 v0, 0x3f80

    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 640
    return-void
.end method

.method public timePassed()I
    .registers 5

    .prologue
    .line 886
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
