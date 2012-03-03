.class Landroid/widget/OverScroller$MagneticOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MagneticOverScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;
    }
.end annotation


# static fields
.field public static final CTS_TIMEPASSED_CRITERIA:I = 0x9c4

.field public static final CTS_VELOCITY_SLOW:F = 3000.0f

.field private static final DAMPING_COEF:F = 100.0f

.field private static final DAMPING_COEF4:F = 400.0f

.field private static final DAMPINT_CONSTANT:F = 0.0033112583f

.field private static final DEFAULT_BOUNCE_COEFFICIENT:F = 0.16f

.field private static final DISTANCE_TABLE_ARRAY_SIZE_FOR_FLING:I = 0x100

.field private static final DISTANCE_TABLE_FOR_FLING:[F = null

.field private static final FLING_COMPUTE_MODE_USING_CONSTANT_TIME_DIFF:I = 0x2

.field private static final FLING_COMPUTE_MODE_USING_NOISE_SURPRESS:I = 0x1

.field private static final FLING_COMPUTE_ORIGINAL_MODE:I = 0x0

.field static GRAVITY:F = 0.0f

.field public static final LIMIT_NUM_OF_ACCELERATION:I = 0xa

.field private static final MAX_ACCELERATION_TIME_GAP:I = 0x3e8

.field public static final MAX_COMPUTE_OFFSET_PERIOD:I = 0x5a

.field private static final MINIMUM_VELOCITY_FOR_BOUNCE:F = 3.4028235E38f

.field public static final MIN_VELOCITY_ACCELERATION:I = 0x3e8

.field private static final OVERSCROLL_SPRINGBACK_DURATION:I = 0xc8

.field public static final START_NUM_VELOCITY_ACCELERATION:F = 5.0f

.field private static final TIME_COEF:F = 15.707964f

.field private static final TOTAL_FLING_DURATION:I = 0xaf0

.field private static final TOTAL_FLING_DURATION_AT_SLOW:I = 0xa6c

.field private static final TO_BOUNCE:I = 0x2

.field private static final TO_BOUNDARY:I = 0x1

.field private static final TO_EDGE:I = 0x0

.field private static final VELOCITY_INFLICTION_INDEX:I = 0xc

.field public static final VELOCITY_MINIMIM:F = 90.0f

.field public static final VELOCITY_NORMAL:F = 2500.0f

.field private static final VGA_HEIGHT:I = 0x280

.field private static dispHeight:I = 0x0

.field private static dispWidth:I = 0x0

.field public static final vCoeff:F = 0.016666668f

.field public static final vSyncFreq:F = 60.0f



# instance fields
.field private INITIAL_TIME_DIFF:F

.field private accerationCount:I

.field private baseTimePassed:F

.field private flingComputeMode:I

.field private frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

.field private initialAccelMode:Z

.field private mBounceCoefficient:F

.field mCurrVelocity:F

.field mCurrentPosition:I

.field private mCurrentPositionOld:I

.field mDeceleration:F

.field mDuration:I

.field mFinal:I

.field mFinished:Z

.field private mLastStartTime:J

.field private mOver:I

.field mStart:I

.field mStartTime:J

.field private mState:I

.field mVelocity:I

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
    .registers 1

    .prologue
    .line 531
    const/16 v0, 0x100

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    return-void

    :array_a
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

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    const v0, 0xc350

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->maxFlingSpeed:I

    .line 507
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->velocityScalingFactor:F

    .line 584
    const/high16 v0, 0x4188

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->INITIAL_TIME_DIFF:F

    .line 719
    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 739
    const v0, 0x3e23d70a

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mBounceCoefficient:F

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 747
    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    .line 748
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mLastStartTime:J

    .line 749
    new-instance v0, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    invoke-direct {v0, p0}, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;-><init>(Landroid/widget/OverScroller$MagneticOverScroller;)V

    iput-object v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    .line 753
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$MagneticOverScroller;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 478
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    return v0
.end method

.method static computeDuration(IIFF)I
    .registers 12
    .parameter "start"
    .parameter "end"
    .parameter "initialVelocity"
    .parameter "deceleration"

    .prologue
    const/16 v7, 0xff

    const v6, 0x3c888889

    .line 773
    sget v4, Landroid/widget/OverScroller$MagneticOverScroller;->dispHeight:I

    sget v5, Landroid/widget/OverScroller$MagneticOverScroller;->dispWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 774
    .local v0, dispLength:I
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 775
    .local v3, v:F
    const v4, 0x451c4000

    cmpg-float v4, v3, v4

    if-lez v4, :cond_1c

    const/16 v4, 0x280

    if-ge v0, v4, :cond_39

    .line 776
    :cond_1c
    mul-float v4, v3, v6

    sget-object v5, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v5, v5, v7

    sget-object v6, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    const/16 v7, 0xc

    aget v6, v6, v7

    sub-float/2addr v5, v6

    mul-float v2, v4, v5

    .line 779
    .local v2, totalDistance:F
    sub-int v4, p0, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 780
    .local v1, distance:F
    const v4, 0x4526c000

    mul-float/2addr v4, v1

    div-float/2addr v4, v2

    float-to-int v4, v4

    .line 786
    :goto_38
    return v4

    .line 783
    .end local v1       #distance:F,
    .end local v2       #totalDistance:F,
    :cond_39
    mul-float v4, v3, v6

    sget-object v5, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v5, v5, v7

    mul-float v2, v4, v5

    .line 785
    .restart local v2       #totalDistance:F,
    sub-int v4, p0, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 786
    .restart local v1       #distance:F,
    const/high16 v4, 0x452f

    mul-float/2addr v4, v1

    div-float/2addr v4, v2

    float-to-int v4, v4

    goto :goto_38
.end method

.method private computeScrollOffsetByTableForFling(FF)F
    .registers 15
    .parameter "initVelocity"
    .parameter "timePassedFloat"

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xff

    const v9, 0x3c888889

    .line 624
    iget v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTimeRev:F

    mul-float/2addr v7, p2

    float-to-int v3, v7

    .line 626
    .local v3, tableIdx:I
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x451c4000

    cmpg-float v7, v7, v8

    if-lez v7, :cond_1a

    iget-boolean v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->initialAccelMode:Z

    if-nez v7, :cond_55

    .line 629
    :cond_1a
    add-int/lit8 v3, v3, 0xc

    .line 630
    if-lt v3, v10, :cond_2b

    .line 631
    mul-float v7, p1, v9

    sget-object v8, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v8, v8, v10

    sget-object v9, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v9, v9, v11

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    .line 662
    :goto_2a
    return v7

    .line 635
    :cond_2b
    sget-object v7, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v5, v7, v3

    .line 636
    .local v5, v1:F
    sget-object v7, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    add-int/lit8 v8, v3, 0x1

    aget v6, v7, v8

    .line 639
    .local v6, v2:F
    sub-int v7, v3, v11

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTime:F

    mul-float v2, v7, v8

    .line 640
    .local v2, t1:F
    sub-float v0, p2, v2

    .line 641
    .local v0, dt1:F
    iget v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTime:F

    add-float/2addr v7, v2

    sub-float v1, v7, p2

    .line 643
    .local v1, dt2:F
    mul-float v7, v0, v6

    mul-float v8, v1, v5

    add-float/2addr v7, v8

    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTimeRev:F

    mul-float/2addr v7, v8

    sget-object v8, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v8, v8, v11

    sub-float v4, v7, v8

    .line 644
    .local v4, v:F
    mul-float v7, p1, v9

    mul-float/2addr v7, v4

    goto :goto_2a

    .line 649
    .end local v0       #dt1:F,
    .end local v1       #dt2:F,
    .end local v2       #t1:F,
    .end local v4       #v:F,
    .end local v5       #v1:F,
    .end local v6       #v2:F,
    :cond_55
    if-lt v3, v10, :cond_5f

    .line 650
    mul-float v7, p1, v9

    sget-object v8, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v8, v8, v10

    mul-float/2addr v7, v8

    goto :goto_2a

    .line 653
    :cond_5f
    sget-object v7, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    aget v5, v7, v3

    .line 654
    .restart local v5       #v1:F,
    sget-object v7, Landroid/widget/OverScroller$MagneticOverScroller;->DISTANCE_TABLE_FOR_FLING:[F

    add-int/lit8 v8, v3, 0x1

    aget v6, v7, v8

    .line 657
    .restart local v6       #v2:F,
    int-to-float v7, v3

    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTime:F

    mul-float v2, v7, v8

    .line 658
    .restart local v2       #t1:F,
    sub-float v0, p2, v2

    .line 659
    .restart local v0       #dt1:F,
    iget v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTime:F

    add-float/2addr v7, v2

    sub-float v1, v7, p2

    .line 660
    .restart local v1       #dt2:F,
    mul-float v7, v0, v6

    mul-float v8, v1, v5

    add-float/2addr v7, v8

    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTimeRev:F

    mul-float v4, v7, v8

    .line 662
    .restart local v4       #v:F,
    mul-float v7, p1, v9

    mul-float/2addr v7, v4

    goto :goto_2a
.end method

.method static getDeceleration(I)F
    .registers 2
    .parameter "velocity"

    .prologue
    .line 763
    if-lez p0, :cond_6

    sget v0, Landroid/widget/OverScroller$MagneticOverScroller;->GRAVITY:F

    neg-float v0, v0

    :goto_5
    return v0

    :cond_6
    sget v0, Landroid/widget/OverScroller$MagneticOverScroller;->GRAVITY:F

    goto :goto_5
.end method

.method static initializeFromContext(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const-string/jumbo v3, "window"

    .line 701
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 702
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    sput v1, Landroid/widget/OverScroller$MagneticOverScroller;->GRAVITY:F

    .line 709
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Landroid/widget/OverScroller$MagneticOverScroller;->dispHeight:I

    .line 710
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Landroid/widget/OverScroller$MagneticOverScroller;->dispWidth:I

    .line 713
    return-void
.end method

.method private onEdgeReached()V
    .registers 7

    .prologue
    .line 1260
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v2, v2

    const v3, 0x417b53d2

    div-float v0, v2, v3

    .line 1262
    .local v0, distance:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1f

    .line 1264
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 1265
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 1266
    const/16 v2, 0xc8

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 1274
    :goto_1e
    return-void

    .line 1269
    :cond_1f
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 1270
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    if-lez v2, :cond_45

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    move v1, v2

    .line 1271
    .local v1, over:I
    :goto_29
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 1272
    const-wide v2, 0x408f400000000000L

    int-to-float v4, v1

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x402f6a7a40000000L

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    goto :goto_1e

    .line 1270
    .end local v1       #over:I,
    :cond_45
    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    neg-int v2, v2

    move v1, v2

    goto :goto_29
.end method

.method private startSpringback(IIZ)V
    .registers 8
    .parameter "start"
    .parameter "end"
    .parameter "positive"

    .prologue
    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 1008
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 1009
    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 1010
    const/16 v0, 0xc8

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 1011
    iget-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    const-wide/16 v2, 0x64

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 1012
    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x417b53d2

    mul-float/2addr v0, v1

    float-to-double v0, v0

    if-eqz p3, :cond_2a

    const-wide/high16 v2, 0x3ff0

    :goto_25
    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 1013
    return-void

    .line 1012
    :cond_2a
    const-wide/high16 v2, -0x4010

    goto :goto_25
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1277
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    packed-switch v1, :pswitch_data_7e

    .line 1326
    :goto_7
    invoke-virtual {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->update()Z

    move v1, v6

    .line 1327
    :goto_b
    return v1

    .line 1280
    :pswitch_c
    const/high16 v1, -0x3b86

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 1283
    .local v0, duration:I
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedOld:I

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    if-le v1, v2, :cond_33

    .line 1285
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 1287
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 1288
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 1289
    invoke-direct {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached()V

    goto :goto_7

    .line 1292
    :cond_33
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    move v1, v5

    .line 1293
    goto :goto_b

    .line 1313
    .end local v0       #duration:I,
    :pswitch_39
    iget-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 1314
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    if-lez v3, :cond_55

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    :goto_4b
    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    if-lez v3, :cond_59

    move v3, v6

    :goto_51
    invoke-direct {p0, v1, v2, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->startSpringback(IIZ)V

    goto :goto_7

    :cond_55
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    neg-int v3, v3

    goto :goto_4b

    :cond_59
    move v3, v5

    goto :goto_51

    .line 1318
    :pswitch_5b
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mBounceCoefficient:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 1319
    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x7f7fffff

    cmpg-float v1, v1, v2

    if-gez v1, :cond_74

    move v1, v5

    .line 1320
    goto :goto_b

    .line 1322
    :cond_74
    iget-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    goto :goto_7

    .line 1277
    nop

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_39
        :pswitch_5b
    .end packed-switch
.end method

.method extendDuration(I)V
    .registers 7
    .parameter "extend"

    .prologue
    .line 978
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 979
    .local v1, time:J
    iget-wide v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 980
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 981
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 982
    return-void
.end method

.method finish()V
    .registers 2

    .prologue
    .line 966
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 969
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 970
    return-void
.end method

.method fling(IIII)V
    .registers 15
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 827
    iput-boolean v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 828
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 829
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 831
    sget v3, Landroid/widget/OverScroller$MagneticOverScroller;->dispHeight:I

    sget v4, Landroid/widget/OverScroller$MagneticOverScroller;->dispWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 832
    .local v0, dispLength:I
    const/16 v3, 0x280

    if-ge v0, v3, :cond_ca

    .line 833
    iput-boolean v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->initialAccelMode:Z

    .line 837
    :goto_1b
    int-to-float v3, p2

    iget v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->velocityScalingFactor:F

    mul-float v1, v3, v4

    .line 844
    .local v1, fVelocity:F
    const/4 v2, 0x1

    .line 846
    .local v2, usingAcceleration:Z
    iget-wide v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget-wide v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mLastStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_2d

    .line 847
    const/4 v2, 0x0

    .line 849
    :cond_2d
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_36

    .line 850
    const/4 v2, 0x0

    .line 852
    :cond_36
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_3f

    if-gez p2, :cond_3f

    .line 853
    const/4 v2, 0x0

    .line 855
    :cond_3f
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    cmpg-float v3, v3, v8

    if-gez v3, :cond_48

    if-lez p2, :cond_48

    .line 856
    const/4 v2, 0x0

    .line 858
    :cond_48
    if-eqz v2, :cond_ce

    .line 859
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    .line 860
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    .line 861
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    int-to-float v3, v3

    const/high16 v4, 0x40a0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_66

    .line 862
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    add-float/2addr v1, v3

    .line 868
    :cond_66
    :goto_66
    iget-wide v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iput-wide v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mLastStartTime:J

    .line 870
    cmpl-float v3, v1, v8

    if-lez v3, :cond_d2

    .line 871
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->maxFlingSpeed:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 874
    :goto_75
    float-to-int v3, v1

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 876
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42b4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_db

    .line 877
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 878
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 879
    iput v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 889
    :goto_8d
    const/high16 v3, 0x3f80

    iget v4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTime:F

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTimeRev:F

    .line 891
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-float v3, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->computeScrollOffsetByTableForFling(FF)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v3, p1

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 894
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    if-ge v3, p3, :cond_107

    .line 895
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 896
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 897
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    .line 898
    iput v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 907
    :cond_ab
    :goto_ab
    iget-object v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v3, v3, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->timePassed:I

    if-eqz v3, :cond_b8

    iget-object v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v3, v3, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_114

    .line 908
    :cond_b8
    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->flingComputeMode:I

    .line 914
    :goto_ba
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPositionOld:I

    .line 915
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 916
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedOld:I

    .line 917
    iget-object v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    invoke-virtual {v3}, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->reset()V

    .line 962
    return-void

    .line 835
    .end local v1       #fVelocity:F,
    .end local v2       #usingAcceleration:Z,
    :cond_ca
    iput-boolean v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->initialAccelMode:Z

    goto/16 :goto_1b

    .line 865
    .restart local v1       #fVelocity:F,
    .restart local v2       #usingAcceleration:Z,
    :cond_ce
    int-to-float v1, p2

    .line 866
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    goto :goto_66

    .line 873
    :cond_d2
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->maxFlingSpeed:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_75

    .line 881
    :cond_db
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x451c4000

    cmpg-float v3, v3, v4

    if-lez v3, :cond_ed

    iget-boolean v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->initialAccelMode:Z

    if-nez v3, :cond_fa

    .line 882
    :cond_ed
    const/16 v3, 0xa6c

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 883
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-float v3, v3

    const/high16 v4, 0x4374

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTime:F

    goto :goto_8d

    .line 886
    :cond_fa
    const/16 v3, 0xaf0

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 887
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-float v3, v3

    const/high16 v4, 0x4380

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTime:F

    goto :goto_8d

    .line 900
    :cond_107
    iget v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    if-le v3, p4, :cond_ab

    .line 901
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 902
    iput p4, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 903
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    .line 904
    iput v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    goto :goto_ab

    .line 911
    :cond_114
    iget-object v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    invoke-virtual {v3}, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->getTimeDiff()F

    move-result v3

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffConstant:F

    .line 912
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->flingComputeMode:I

    goto :goto_ba
.end method

.method fling(IIIII)V
    .registers 21
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    .line 1020
    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    .line 1021
    move/from16 v0, p5

    move-object v1, p0

    iput v0, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    .line 1022
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 1023
    move/from16 v0, p1

    move-object v1, p0

    iput v0, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 1024
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 1027
    sget v11, Landroid/widget/OverScroller$MagneticOverScroller;->dispHeight:I

    sget v12, Landroid/widget/OverScroller$MagneticOverScroller;->dispWidth:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1028
    .local v4, dispLength:I
    const/16 v11, 0x280

    if-ge v4, v11, :cond_121

    .line 1029
    const/4 v11, 0x0

    iput-boolean v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->initialAccelMode:Z

    .line 1033
    :goto_25
    move/from16 v0, p2

    int-to-float v0, v0

    move v11, v0

    iget v12, p0, Landroid/widget/OverScroller$MagneticOverScroller;->velocityScalingFactor:F

    mul-float v7, v11, v12

    .line 1040
    .local v7, fVelocity:F
    const/4 v10, 0x1

    .line 1042
    .local v10, usingAcceleration:Z
    iget-wide v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iget-wide v13, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mLastStartTime:J

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    cmp-long v11, v11, v13

    if-lez v11, :cond_3a

    .line 1043
    const/4 v10, 0x0

    .line 1045
    :cond_3a
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x3e8

    if-ge v11, v12, :cond_43

    .line 1046
    const/4 v10, 0x0

    .line 1048
    :cond_43
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4d

    if-gez p2, :cond_4d

    .line 1049
    const/4 v10, 0x0

    .line 1051
    :cond_4d
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    const/4 v12, 0x0

    cmpg-float v11, v11, v12

    if-gez v11, :cond_57

    if-lez p2, :cond_57

    .line 1052
    const/4 v10, 0x0

    .line 1054
    :cond_57
    if-eqz v10, :cond_126

    .line 1055
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    .line 1056
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    const/16 v12, 0xa

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    .line 1057
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    int-to-float v11, v11

    const/high16 v12, 0x40a0

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_75

    .line 1058
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    add-float/2addr v7, v11

    .line 1064
    :cond_75
    :goto_75
    iget-wide v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    iput-wide v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mLastStartTime:J

    .line 1066
    const/4 v11, 0x0

    cmpl-float v11, v7, v11

    if-lez v11, :cond_12f

    .line 1067
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->maxFlingSpeed:I

    int-to-float v11, v11

    invoke-static {v7, v11}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1070
    :goto_85
    float-to-int v11, v7

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 1072
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x42b4

    cmpg-float v11, v11, v12

    if-gtz v11, :cond_139

    .line 1073
    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 1074
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 1075
    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 1085
    :goto_9f
    const/high16 v11, 0x3f80

    iget v12, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTime:F

    div-float/2addr v11, v12

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTimeRev:F

    .line 1087
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-float v11, v11

    invoke-direct {p0, v7, v11}, Landroid/widget/OverScroller$MagneticOverScroller;->computeScrollOffsetByTableForFling(FF)F

    move-result v11

    float-to-int v11, v11

    add-int v11, v11, p1

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 1090
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    move v0, v11

    move/from16 v1, p3

    if-ge v0, v1, :cond_cd

    .line 1091
    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 1092
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iget v12, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    move v0, v11

    move/from16 v1, p3

    move v2, v7

    move v3, v12

    invoke-static {v0, v1, v2, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->computeDuration(IIFF)I

    move-result v11

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 1095
    :cond_cd
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    move v0, v11

    move/from16 v1, p4

    if-le v0, v1, :cond_e8

    .line 1096
    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 1097
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iget v12, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    move v0, v11

    move/from16 v1, p4

    move v2, v7

    move v3, v12

    invoke-static {v0, v1, v2, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->computeDuration(IIFF)I

    move-result v11

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 1100
    :cond_e8
    move/from16 v0, p1

    move/from16 v1, p4

    if-le v0, v1, :cond_1b8

    .line 1101
    add-int v11, p4, p5

    move/from16 v0, p1

    move v1, v11

    if-lt v0, v1, :cond_167

    .line 1102
    add-int v11, p4, p5

    move-object v0, p0

    move v1, v11

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    .line 1145
    :cond_100
    :goto_100
    iget-object v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v11, v11, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->timePassed:I

    if-eqz v11, :cond_10d

    iget-object v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v11, v11, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    const/4 v12, 0x5

    if-ge v11, v12, :cond_224

    .line 1146
    :cond_10d
    const/4 v11, 0x1

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->flingComputeMode:I

    .line 1152
    :goto_110
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPositionOld:I

    .line 1153
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 1154
    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedOld:I

    .line 1155
    iget-object v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    invoke-virtual {v11}, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->reset()V

    .line 1233
    return-void

    .line 1031
    .end local v7       #fVelocity:F,
    .end local v10       #usingAcceleration:Z,
    :cond_121
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->initialAccelMode:Z

    goto/16 :goto_25

    .line 1061
    .restart local v7       #fVelocity:F,
    .restart local v10       #usingAcceleration:Z,
    :cond_126
    move/from16 v0, p2

    int-to-float v0, v0

    move v7, v0

    .line 1062
    const/4 v11, 0x0

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->accerationCount:I

    goto/16 :goto_75

    .line 1069
    :cond_12f
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->maxFlingSpeed:I

    neg-int v11, v11

    int-to-float v11, v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto/16 :goto_85

    .line 1077
    :cond_139
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x451c4000

    cmpg-float v11, v11, v12

    if-lez v11, :cond_14b

    iget-boolean v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->initialAccelMode:Z

    if-nez v11, :cond_159

    .line 1078
    :cond_14b
    const/16 v11, 0xa6c

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 1079
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-float v11, v11

    const/high16 v12, 0x4374

    div-float/2addr v11, v12

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTime:F

    goto/16 :goto_9f

    .line 1082
    :cond_159
    const/16 v11, 0xaf0

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 1083
    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    int-to-float v11, v11

    const/high16 v12, 0x4380

    div-float/2addr v11, v12

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->unitTime:F

    goto/16 :goto_9f

    .line 1104
    :cond_167
    if-gtz p2, :cond_174

    .line 1105
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    goto :goto_100

    .line 1107
    :cond_174
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 1108
    .local v8, time:J
    sub-int v11, p1, p4

    int-to-float v11, v11

    const v12, 0x417b53d2

    mul-float/2addr v11, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move v12, v0

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    const-wide v13, 0x402f6a7a40000000L

    div-double v5, v11, v13

    .line 1110
    .local v5, durationSinceEdge:D
    long-to-double v11, v8

    const-wide v13, 0x408f400000000000L

    mul-double/2addr v13, v5

    sub-double/2addr v11, v13

    double-to-int v11, v11

    int-to-long v11, v11

    iput-wide v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 1113
    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 1115
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v11, v0

    const-wide v13, 0x402f6a7a40000000L

    mul-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-int v11, v11

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 1117
    invoke-direct {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached()V

    goto/16 :goto_100

    .line 1121
    .end local v5       #durationSinceEdge:D,
    .end local v8       #time:J,
    :cond_1b8
    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_100

    .line 1122
    sub-int v11, p3, p5

    move/from16 v0, p1

    move v1, v11

    if-gt v0, v1, :cond_1d2

    .line 1123
    sub-int v11, p3, p5

    move-object v0, p0

    move v1, v11

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    goto/16 :goto_100

    .line 1125
    :cond_1d2
    if-ltz p2, :cond_1e0

    .line 1126
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->springback(III)Z

    goto/16 :goto_100

    .line 1128
    :cond_1e0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v8

    .line 1129
    .restart local v8       #time:J,
    sub-int v11, p1, p3

    int-to-float v11, v11

    const v12, 0x417b53d2

    mul-float/2addr v11, v12

    move/from16 v0, p2

    int-to-float v0, v0

    move v12, v0

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    const-wide v13, 0x402f6a7a40000000L

    div-double v5, v11, v13

    .line 1131
    .restart local v5       #durationSinceEdge:D,
    long-to-double v11, v8

    const-wide v13, 0x408f400000000000L

    mul-double/2addr v13, v5

    sub-double/2addr v11, v13

    double-to-int v11, v11

    int-to-long v11, v11

    iput-wide v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 1134
    move/from16 v0, p3

    move-object v1, p0

    iput v0, v1, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 1136
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v11, v0

    const-wide v13, 0x402f6a7a40000000L

    mul-double/2addr v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-int v11, v11

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 1138
    invoke-direct {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached()V

    goto/16 :goto_100

    .line 1149
    .end local v5       #durationSinceEdge:D,
    .end local v8       #time:J,
    :cond_224
    iget-object v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    invoke-virtual {v11}, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->getTimeDiff()F

    move-result v11

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffConstant:F

    .line 1150
    const/4 v11, 0x2

    iput v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->flingComputeMode:I

    goto/16 :goto_110
.end method

.method notifyEdgeReached(III)V
    .registers 12
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 1237
    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v5}, Landroid/widget/OverScroller$MagneticOverScroller;->getDeceleration(I)F

    move-result v5

    iput v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    .line 1240
    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    iget v6, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    div-float v3, v5, v6

    .line 1241
    .local v3, timeCurrent:F
    sub-int v0, p2, p1

    .line 1242
    .local v0, distance:I
    const/high16 v5, 0x4000

    int-to-float v6, v0

    mul-float/2addr v5, v6

    iget v6, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    div-float/2addr v5, v6

    mul-float v6, v3, v3

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v4, v5

    .line 1245
    .local v4, timeEdge:F
    iget v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    mul-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 1248
    iput p2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 1250
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mOver:I

    .line 1252
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 1253
    .local v1, time:J
    long-to-float v5, v1

    const/high16 v6, 0x447a

    sub-float v7, v3, v4

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-long v5, v5

    iput-wide v5, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 1255
    invoke-direct {p0}, Landroid/widget/OverScroller$MagneticOverScroller;->onEdgeReached()V

    .line 1256
    return-void
.end method

.method setBounceCoefficient(F)V
    .registers 2
    .parameter "coefficient"

    .prologue
    .line 985
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mBounceCoefficient:F

    .line 986
    return-void
.end method

.method setFinalPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 973
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 974
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 975
    return-void
.end method

.method springback(III)Z
    .registers 8
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 989
    iput-boolean v3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 991
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 992
    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 994
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 995
    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 997
    if-ge p1, p2, :cond_1b

    .line 998
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/OverScroller$MagneticOverScroller;->startSpringback(IIZ)V

    .line 1003
    :cond_15
    :goto_15
    iget-boolean v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    if-nez v0, :cond_21

    move v0, v3

    :goto_1a
    return v0

    .line 999
    :cond_1b
    if-le p1, p3, :cond_15

    .line 1000
    invoke-direct {p0, p1, p3, v3}, Landroid/widget/OverScroller$MagneticOverScroller;->startSpringback(IIZ)V

    goto :goto_15

    :cond_21
    move v0, v2

    .line 1003
    goto :goto_1a
.end method

.method startScroll(III)V
    .registers 7
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 809
    iput-boolean v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinished:Z

    .line 811
    iput p1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    .line 812
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    .line 814
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    .line 815
    iput p3, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 818
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDeceleration:F

    .line 819
    iput v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    .line 820
    return-void
.end method

.method update()Z
    .registers 14

    .prologue
    .line 1340
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStartTime:J

    sub-long/2addr v9, v11

    long-to-int v7, v9

    .line 1342
    .local v7, timePassed:I
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    if-nez v9, :cond_e

    .line 1343
    const/4 v9, 0x0

    .line 1449
    :goto_d
    return v9

    .line 1346
    :cond_e
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    if-le v7, v9, :cond_16

    .line 1347
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedOld:I

    .line 1348
    const/4 v9, 0x0

    goto :goto_d

    .line 1351
    :cond_16
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iget v10, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    if-ge v9, v10, :cond_2c

    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    iget v10, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    if-le v9, v10, :cond_2c

    .line 1352
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 1353
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedOld:I

    .line 1354
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 1355
    const/4 v9, 0x0

    goto :goto_d

    .line 1357
    :cond_2c
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iget v10, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    if-le v9, v10, :cond_42

    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    iget v10, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    if-ge v9, v10, :cond_42

    .line 1358
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 1359
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedOld:I

    .line 1360
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    .line 1361
    const/4 v9, 0x0

    goto :goto_d

    .line 1365
    :cond_42
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-float v9, v9

    const v10, 0x453b8000

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_56

    const/16 v9, 0x9c4

    if-le v7, v9, :cond_56

    .line 1366
    const/4 v9, 0x0

    goto :goto_d

    .line 1369
    :cond_56
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mState:I

    if-eqz v9, :cond_87

    .line 1370
    int-to-float v9, v7

    const/high16 v10, 0x447a

    div-float v5, v9, v10

    .line 1371
    .local v5, t:F
    const v9, 0x417b53d2

    mul-float v1, v5, v9

    .line 1372
    .local v1, d:F
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v9, v9

    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 1373
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v9, v9

    const v10, 0x417b53d2

    div-float/2addr v9, v10

    float-to-double v9, v9

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v2, v9, v11

    .line 1374
    .local v2, distance:D
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    double-to-int v10, v2

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 1375
    const/4 v9, 0x1

    goto :goto_d

    .line 1380
    .end local v1       #d:F,
    .end local v2       #distance:D,
    .end local v5       #t:F,
    :cond_87
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedOld:I

    sub-int v6, v7, v9

    .line 1381
    .local v6, timeDelta:I
    const/16 v9, 0x5a

    if-le v6, v9, :cond_92

    .line 1382
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->flingComputeMode:I

    .line 1384
    :cond_92
    iput v7, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedOld:I

    .line 1386
    int-to-float v8, v7

    .line 1388
    .local v8, timePassedFloat:F
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->flingComputeMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_15f

    .line 1389
    iget-object v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v10, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    .line 1390
    iget-object v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iput v7, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->timePassed:I

    .line 1392
    iget-object v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v9, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e0

    .line 1393
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->INITIAL_TIME_DIFF:F

    float-to-int v9, v9

    sub-int/2addr v9, v7

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedOffset:I

    .line 1394
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedCurrent:F

    .line 1395
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedPrivious:F

    .line 1396
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->INITIAL_TIME_DIFF:F

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffMin:F

    .line 1430
    :cond_bd
    :goto_bd
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mDuration:I

    if-ge v7, v9, :cond_17b

    .line 1433
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mVelocity:I

    int-to-float v9, v9

    invoke-direct {p0, v9, v8}, Landroid/widget/OverScroller$MagneticOverScroller;->computeScrollOffsetByTableForFling(FF)F

    move-result v2

    .line 1441
    .local v2, distance:F
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    float-to-int v10, v2

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 1444
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    iget v10, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPositionOld:I

    sub-int v4, v9, v10

    .line 1445
    .local v4, mCurrDiffOld:I
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPositionOld:I

    .line 1446
    mul-int v9, v4, v6

    int-to-float v9, v9

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrVelocity:F

    .line 1447
    const/4 v9, 0x1

    goto/16 :goto_d

    .line 1398
    .end local v2       #distance:F,
    .end local v4       #mCurrDiffOld:I,
    :cond_e0
    iget-object v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v9, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    const/16 v10, 0xa

    if-ge v9, v10, :cond_14e

    .line 1399
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedOffset:I

    add-int/2addr v7, v9

    .line 1400
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedPrivious:F

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedMorePrivious:F

    .line 1401
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedCurrent:F

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedPrivious:F

    .line 1402
    const/high16 v9, 0x4000

    mul-float/2addr v9, v8

    const/high16 v10, 0x43c8

    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedPrivious:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    const/high16 v10, 0x42c8

    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedMorePrivious:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedCurrent:F

    .line 1403
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedCurrent:F

    const v10, 0x3b5901b2

    mul-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedCurrent:F

    .line 1404
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedCurrent:F

    iget v10, p0, Landroid/widget/OverScroller$MagneticOverScroller;->INITIAL_TIME_DIFF:F

    add-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedCurrent:F

    .line 1405
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedCurrent:F

    iget v10, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedPrivious:F

    iget v11, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffMin:F

    add-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedCurrent:F

    .line 1406
    iget v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedCurrent:F

    .line 1408
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffMin:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_130

    .line 1409
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffMin:F

    const/high16 v10, 0x3f80

    sub-float/2addr v9, v10

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffMin:F

    .line 1410
    :cond_130
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffMin:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_13a

    .line 1411
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffMin:F

    .line 1413
    :cond_13a
    iget-object v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v9, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    const/16 v10, 0x9

    if-ne v9, v10, :cond_bd

    .line 1414
    iput v8, p0, Landroid/widget/OverScroller$MagneticOverScroller;->baseTimePassed:F

    .line 1415
    iget-object v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    invoke-virtual {v9}, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->getTimeDiff()F

    move-result v9

    iput v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffConstant:F

    goto/16 :goto_bd

    .line 1419
    :cond_14e
    iget-object v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v9, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    const/16 v10, 0x9

    sub-int/2addr v9, v10

    int-to-float v0, v9

    .line 1420
    .local v0, count:F
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->baseTimePassed:F

    iget v10, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffConstant:F

    mul-float/2addr v10, v0

    add-float v8, v9, v10

    .line 1421
    goto/16 :goto_bd

    .line 1423
    .end local v0       #count:F,
    :cond_15f
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->flingComputeMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_bd

    .line 1424
    iget-object v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v10, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    .line 1425
    iget-object v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iput v7, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->timePassed:I

    .line 1426
    iget-object v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->frameRate:Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;

    iget v9, v9, Landroid/widget/OverScroller$MagneticOverScroller$FrameRate;->frameCount:I

    int-to-float v0, v9

    .line 1427
    .restart local v0       #count:F,
    iget v9, p0, Landroid/widget/OverScroller$MagneticOverScroller;->timePassedDiffConstant:F

    mul-float v8, v9, v0

    goto/16 :goto_bd

    .line 1449
    .end local v0       #count:F,
    :cond_17b
    const/4 v9, 0x0

    goto/16 :goto_d
.end method

.method updateScroll(F)V
    .registers 5
    .parameter "q"

    .prologue
    .line 756
    iget v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$MagneticOverScroller;->mCurrentPosition:I

    .line 757
    return-void
.end method
