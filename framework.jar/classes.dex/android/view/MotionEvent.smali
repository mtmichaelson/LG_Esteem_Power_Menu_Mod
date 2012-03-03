.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"


# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerCoords;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_UP:I = 0x1

.field private static final BASE_AVAIL_POINTERS:I = 0x5

.field private static final BASE_AVAIL_SAMPLES:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field private static final MAX_RECYCLED:I = 0xa

.field private static final MS_PER_NS:J = 0xf4240L

.field private static final NUM_SAMPLE_DATA:I = 0x9

.field private static final SAMPLE_ORIENTATION:I = 0x8

.field private static final SAMPLE_PRESSURE:I = 0x2

.field private static final SAMPLE_SIZE:I = 0x3

.field private static final SAMPLE_TOOL_MAJOR:I = 0x6

.field private static final SAMPLE_TOOL_MINOR:I = 0x7

.field private static final SAMPLE_TOUCH_MAJOR:I = 0x4

.field private static final SAMPLE_TOUCH_MINOR:I = 0x5

.field private static final SAMPLE_X:I = 0x0

.field private static final SAMPLE_Y:I = 0x1

.field private static final TRACK_RECYCLED_LOCATION:Z

.field private static gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I



# instance fields
.field private mAction:I

.field private mDataSamples:[F

.field private mDownTimeNano:J

.field private mEdgeFlags:I

.field private mEventTimeNanoSamples:[J

.field private mFlags:I

.field private mLastDataSampleIndex:I

.field private mLastEventTimeNanoSampleIndex:I

.field private mMetaState:I

.field private mNext:Landroid/view/MotionEvent;

.field private mNumPointers:I

.field private mNumSamples:I

.field private mPointerIdentifiers:[I

.field private mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field private mXOffset:F

.field private mXPrecision:F

.field private mYOffset:F

.field private mYPrecision:F

.field private mfromWhere:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 320
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 321
    const/4 v0, 0x0

    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 322
    const/4 v0, 0x0

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1552
    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .registers 4
    .parameter "pointerCount"
    .parameter "sampleCount"

    .prologue
    .line 363
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 98
    const-string v0, "NotDefined"

    iput-object v0, p0, Landroid/view/MotionEvent;->mfromWhere:Ljava/lang/String;

    .line 364
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 365
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 366
    new-array v0, p2, [J

    iput-object v0, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    .line 367
    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .registers 12
    .parameter "in"

    .prologue
    const/4 v10, 0x1

    .line 1566
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1567
    .local v1, NP:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1568
    .local v2, NS:I
    mul-int v8, v1, v2

    mul-int/lit8 v0, v8, 0x9

    .line 1570
    .local v0, NI:I
    invoke-static {v1, v2}, Landroid/view/MotionEvent;->obtain(II)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1571
    .local v4, ev:Landroid/view/MotionEvent;
    iput v1, v4, Landroid/view/MotionEvent;->mNumPointers:I

    .line 1572
    iput v2, v4, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1574
    invoke-virtual {v4, p0}, Landroid/view/MotionEvent;->readBaseFromParcel(Landroid/os/Parcel;)V

    .line 1576
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v4, Landroid/view/MotionEvent;->mDownTimeNano:J

    .line 1577
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mAction:I

    .line 1578
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mXOffset:F

    .line 1579
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mYOffset:F

    .line 1580
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mXPrecision:F

    .line 1581
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mYPrecision:F

    .line 1582
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 1583
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mMetaState:I

    .line 1584
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mFlags:I

    .line 1586
    iget-object v7, v4, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 1587
    .local v7, pointerIdentifiers:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_51
    if-ge v6, v1, :cond_5c

    .line 1588
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    aput v8, v7, v6

    .line 1587
    add-int/lit8 v6, v6, 0x1

    goto :goto_51

    .line 1591
    :cond_5c
    iget-object v5, v4, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    .line 1592
    .local v5, eventTimeNanoSamples:[J
    const/4 v6, 0x0

    :goto_5f
    if-ge v6, v2, :cond_6a

    .line 1593
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    aput-wide v8, v5, v6

    .line 1592
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 1596
    :cond_6a
    iget-object v3, v4, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1597
    .local v3, dataSamples:[F
    const/4 v6, 0x0

    :goto_6d
    if-ge v6, v0, :cond_78

    .line 1598
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    aput v8, v3, v6

    .line 1597
    add-int/lit8 v6, v6, 0x1

    goto :goto_6d

    .line 1601
    :cond_78
    sub-int v8, v2, v10

    iput v8, v4, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 1602
    sub-int v8, v2, v10

    mul-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0x9

    iput v8, v4, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 1603
    return-object v4
.end method

.method private final getPointerCoordsAtSampleIndex(ILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6
    .parameter "sampleIndex"
    .parameter "outPointerCoords"

    .prologue
    .line 1431
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1432
    .local v0, dataSamples:[F
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    iget v2, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1433
    add-int/lit8 v1, p1, 0x1

    aget v1, v0, v1

    iget v2, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1434
    add-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1435
    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1436
    add-int/lit8 v1, p1, 0x4

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 1437
    add-int/lit8 v1, p1, 0x5

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 1438
    add-int/lit8 v1, p1, 0x6

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 1439
    add-int/lit8 v1, p1, 0x7

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 1440
    add-int/lit8 v1, p1, 0x8

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 1441
    return-void
.end method

.method private final incrementNumSamplesAndReserveStorage(I)V
    .registers 8
    .parameter "dataSampleStride"

    .prologue
    const/4 v5, 0x0

    .line 1481
    iget v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    iget-object v4, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    array-length v4, v4

    if-ne v3, v4, :cond_17

    .line 1482
    iget v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    add-int/lit8 v3, v3, 0x8

    new-array v1, v3, [J

    .line 1483
    .local v1, newEventTimeNanoSamples:[J
    iget-object v3, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v4, p0, Landroid/view/MotionEvent;->mNumSamples:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1484
    iput-object v1, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    .line 1487
    .end local v1       #newEventTimeNanoSamples:[J,
    :cond_17
    iget v3, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int v2, v3, p1

    .line 1488
    .local v2, nextDataSampleIndex:I
    add-int v3, v2, p1

    iget-object v4, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    array-length v4, v4

    if-le v3, v4, :cond_2e

    .line 1489
    mul-int/lit8 v3, p1, 0x8

    add-int/2addr v3, v2

    new-array v0, v3, [F

    .line 1491
    .local v0, newDataSamples:[F
    iget-object v3, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    invoke-static {v3, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1492
    iput-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1495
    .end local v0       #newDataSamples:[F,
    :cond_2e
    iget v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    iput v3, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 1496
    iput v2, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 1497
    iget v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1498
    return-void
.end method

.method private static obtain(II)Landroid/view/MotionEvent;
    .registers 8
    .parameter "pointerCount"
    .parameter "sampleCount"

    .prologue
    const/4 v5, 0x0

    .line 371
    sget-object v2, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 372
    :try_start_4
    sget-object v3, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    if-nez v3, :cond_1a

    .line 373
    const/4 v3, 0x5

    if-ge p0, v3, :cond_c

    .line 374
    const/4 p0, 0x5

    .line 376
    :cond_c
    const/16 v3, 0x8

    if-ge p1, v3, :cond_12

    .line 377
    const/16 p1, 0x8

    .line 379
    :cond_12
    new-instance v3, Landroid/view/MotionEvent;

    invoke-direct {v3, p0, p1}, Landroid/view/MotionEvent;-><init>(II)V

    monitor-exit v2

    move-object v2, v3

    .line 402
    :goto_19
    return-object v2

    .line 381
    :cond_1a
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 382
    .local v0, ev:Landroid/view/MotionEvent;
    iget-object v3, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v3, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 383
    sget v3, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    sput v3, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 384
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_4f

    .line 385
    iput-object v5, v0, Landroid/view/MotionEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    .line 386
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/MotionEvent;->mRecycled:Z

    .line 387
    iput-object v5, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 389
    iget-object v2, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    array-length v2, v2

    if-ge v2, p0, :cond_37

    .line 390
    new-array v2, p0, [I

    iput-object v2, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 393
    :cond_37
    iget-object v2, v0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    array-length v2, v2

    if-ge v2, p1, :cond_40

    .line 394
    new-array v2, p1, [J

    iput-object v2, v0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    .line 397
    :cond_40
    mul-int v2, p0, p1

    mul-int/lit8 v1, v2, 0x9

    .line 398
    .local v1, neededDataSamplesLength:I
    iget-object v2, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    array-length v2, v2

    if-ge v2, v1, :cond_4d

    .line 399
    new-array v2, v1, [F

    iput-object v2, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    :cond_4d
    move-object v2, v0

    .line 402
    goto :goto_19

    .line 384
    .end local v0       #ev:Landroid/view/MotionEvent;,
    .end local v1       #neededDataSamplesLength:I,
    :catchall_4f
    move-exception v3

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v3
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 22
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"

    .prologue
    .line 499
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->obtain(II)Landroid/view/MotionEvent;

    move-result-object v2

    .line 500
    .local v2, ev:Landroid/view/MotionEvent;
    move/from16 v0, p12

    move-object v1, v2

    iput v0, v1, Landroid/view/InputEvent;->mDeviceId:I

    .line 501
    const/16 p12, 0x0

    move/from16 v0, p12

    move-object v1, v2

    iput v0, v1, Landroid/view/InputEvent;->mSource:I

    .line 502
    .end local p12       
    move/from16 v0, p13

    move-object v1, v2

    iput v0, v1, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 503
    const-wide/32 p12, 0xf4240

    mul-long p0, p0, p12

    iput-wide p0, v2, Landroid/view/MotionEvent;->mDownTimeNano:J

    .line 504
    .end local p0       
    iput p4, v2, Landroid/view/MotionEvent;->mAction:I

    .line 505
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/MotionEvent;->mFlags:I

    .line 506
    move/from16 v0, p9

    move-object v1, v2

    iput v0, v1, Landroid/view/MotionEvent;->mMetaState:I

    .line 507
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/MotionEvent;->mXOffset:F

    .line 508
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/MotionEvent;->mYOffset:F

    .line 509
    move/from16 v0, p10

    move-object v1, v2

    iput v0, v1, Landroid/view/MotionEvent;->mXPrecision:F

    .line 510
    move/from16 v0, p11

    move-object v1, v2

    iput v0, v1, Landroid/view/MotionEvent;->mYPrecision:F

    .line 512
    const/4 p0, 0x1

    iput p0, v2, Landroid/view/MotionEvent;->mNumPointers:I

    .line 513
    const/4 p0, 0x1

    iput p0, v2, Landroid/view/MotionEvent;->mNumSamples:I

    .line 515
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 516
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 518
    iget-object p0, v2, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    const/4 p1, 0x0

    const/4 p4, 0x0

    aput p4, p0, p1

    .line 520
    .end local p4       
    iget-object p0, v2, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    const/4 p1, 0x0

    const-wide/32 p9, 0xf4240

    mul-long p2, p2, p9

    aput-wide p2, p0, p1

    .line 522
    .end local p2       
    .end local p9       
    const/4 v3, 0x0

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Landroid/view/MotionEvent;->setPointerCoordsAtSampleIndex(IFFFF)V

    .line 523
    return-object v2
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .registers 22
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 588
    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object p0

    .end local p0       
    return-object p0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .registers 29
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointers"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object p0

    .end local p0       
    return-object p0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .registers 16
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointers"
    .parameter "pointerIds"
    .parameter "pointerCoords"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .parameter "source"
    .parameter "flags"

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-static {p5, v0}, Landroid/view/MotionEvent;->obtain(II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 438
    .local v0, ev:Landroid/view/MotionEvent;
    iput p11, v0, Landroid/view/InputEvent;->mDeviceId:I

    .line 439
    iput p13, v0, Landroid/view/InputEvent;->mSource:I

    .line 440
    iput p12, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 441
    const-wide/32 p11, 0xf4240

    mul-long/2addr p0, p11

    iput-wide p0, v0, Landroid/view/MotionEvent;->mDownTimeNano:J

    .line 442
    .end local p0       
    .end local p11       
    iput p4, v0, Landroid/view/MotionEvent;->mAction:I

    .line 443
    iput p14, v0, Landroid/view/MotionEvent;->mFlags:I

    .line 444
    iput p8, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 445
    const/4 p0, 0x0

    iput p0, v0, Landroid/view/MotionEvent;->mXOffset:F

    .line 446
    const/4 p0, 0x0

    iput p0, v0, Landroid/view/MotionEvent;->mYOffset:F

    .line 447
    iput p9, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 448
    iput p10, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 450
    iput p5, v0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 451
    const/4 p0, 0x1

    iput p0, v0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 453
    const/4 p0, 0x0

    iput p0, v0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 454
    const/4 p0, 0x0

    iput p0, v0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 456
    const/4 p0, 0x0

    iget-object p1, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    const/4 p4, 0x0

    invoke-static {p6, p0, p1, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 458
    .end local p4       
    iget-object p0, v0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    const/4 p1, 0x0

    const-wide/32 p4, 0xf4240

    mul-long/2addr p2, p4

    aput-wide p2, p0, p1

    .line 460
    .end local p2       
    const/4 p0, 0x0

    invoke-direct {v0, p0, p7}, Landroid/view/MotionEvent;->setPointerCoordsAtSampleIndex(I[Landroid/view/MotionEvent$PointerCoords;)V

    .line 462
    return-object v0
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 8
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 596
    iget v3, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iget v4, p0, Landroid/view/MotionEvent;->mNumSamples:I

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->obtain(II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 597
    .local v0, ev:Landroid/view/MotionEvent;
    iget v3, p0, Landroid/view/InputEvent;->mDeviceId:I

    iput v3, v0, Landroid/view/InputEvent;->mDeviceId:I

    .line 598
    iget v3, p0, Landroid/view/InputEvent;->mSource:I

    iput v3, v0, Landroid/view/InputEvent;->mSource:I

    .line 599
    iget v3, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    iput v3, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 600
    iget-wide v3, p0, Landroid/view/MotionEvent;->mDownTimeNano:J

    iput-wide v3, v0, Landroid/view/MotionEvent;->mDownTimeNano:J

    .line 601
    iget v3, p0, Landroid/view/MotionEvent;->mAction:I

    iput v3, v0, Landroid/view/MotionEvent;->mAction:I

    .line 602
    iget v3, p0, Landroid/view/MotionEvent;->mFlags:I

    iput v3, v0, Landroid/view/MotionEvent;->mFlags:I

    .line 603
    iget v3, p0, Landroid/view/MotionEvent;->mMetaState:I

    iput v3, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 604
    iget v3, p0, Landroid/view/MotionEvent;->mXOffset:F

    iput v3, v0, Landroid/view/MotionEvent;->mXOffset:F

    .line 605
    iget v3, p0, Landroid/view/MotionEvent;->mYOffset:F

    iput v3, v0, Landroid/view/MotionEvent;->mYOffset:F

    .line 606
    iget v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    iput v3, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 607
    iget v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    iput v3, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 608
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iput v1, v0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 609
    .local v1, numPointers:I
    iget v2, p0, Landroid/view/MotionEvent;->mNumSamples:I

    iput v2, v0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 611
    .local v2, numSamples:I
    iget v3, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    iput v3, v0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 612
    iget v3, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    iput v3, v0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 614
    iget-object v3, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    iget-object v4, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    invoke-static {v3, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    iget-object v3, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget-object v4, v0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    invoke-static {v3, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    iget-object v3, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget-object v4, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    mul-int v5, v1, v2

    mul-int/lit8 v5, v5, 0x9

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 620
    return-object v0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 8
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 628
    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    invoke-static {v2, v4}, Landroid/view/MotionEvent;->obtain(II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 629
    .local v0, ev:Landroid/view/MotionEvent;
    iget v2, p0, Landroid/view/InputEvent;->mDeviceId:I

    iput v2, v0, Landroid/view/InputEvent;->mDeviceId:I

    .line 630
    iget v2, p0, Landroid/view/InputEvent;->mSource:I

    iput v2, v0, Landroid/view/InputEvent;->mSource:I

    .line 631
    iget v2, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    iput v2, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 632
    iget-wide v2, p0, Landroid/view/MotionEvent;->mDownTimeNano:J

    iput-wide v2, v0, Landroid/view/MotionEvent;->mDownTimeNano:J

    .line 633
    iget v2, p0, Landroid/view/MotionEvent;->mAction:I

    iput v2, v0, Landroid/view/MotionEvent;->mAction:I

    .line 634
    iget v2, p0, Landroid/view/MotionEvent;->mFlags:I

    iput v2, p0, Landroid/view/MotionEvent;->mFlags:I

    .line 635
    iget v2, p0, Landroid/view/MotionEvent;->mMetaState:I

    iput v2, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 636
    iget v2, p0, Landroid/view/MotionEvent;->mXOffset:F

    iput v2, v0, Landroid/view/MotionEvent;->mXOffset:F

    .line 637
    iget v2, p0, Landroid/view/MotionEvent;->mYOffset:F

    iput v2, v0, Landroid/view/MotionEvent;->mYOffset:F

    .line 638
    iget v2, p0, Landroid/view/MotionEvent;->mXPrecision:F

    iput v2, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 639
    iget v2, p0, Landroid/view/MotionEvent;->mYPrecision:F

    iput v2, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 641
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iput v1, v0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 642
    .local v1, numPointers:I
    iput v4, v0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 644
    iput v6, v0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 645
    iput v6, v0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 647
    iget-object v2, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    iget-object v3, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    invoke-static {v2, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    iget-object v2, v0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget-object v3, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v4, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    aget-wide v3, v3, v4

    aput-wide v3, v2, v6

    .line 651
    iget-object v2, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v3, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    iget-object v4, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    mul-int/lit8 v5, v1, 0x9

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    return-object v0
.end method

.method private final setPointerCoordsAtSampleIndex(IFFFF)V
    .registers 9
    .parameter "sampleIndex"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"

    .prologue
    .line 1468
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1469
    .local v0, dataSamples:[F
    add-int/lit8 v1, p1, 0x0

    iget v2, p0, Landroid/view/MotionEvent;->mXOffset:F

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 1470
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/view/MotionEvent;->mYOffset:F

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 1471
    add-int/lit8 v1, p1, 0x2

    aput p4, v0, v1

    .line 1472
    add-int/lit8 v1, p1, 0x3

    aput p5, v0, v1

    .line 1473
    add-int/lit8 v1, p1, 0x4

    aput p4, v0, v1

    .line 1474
    add-int/lit8 v1, p1, 0x5

    aput p4, v0, v1

    .line 1475
    add-int/lit8 v1, p1, 0x6

    aput p5, v0, v1

    .line 1476
    add-int/lit8 v1, p1, 0x7

    aput p5, v0, v1

    .line 1477
    add-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1478
    return-void
.end method

.method private final setPointerCoordsAtSampleIndex(ILandroid/view/MotionEvent$PointerCoords;)V
    .registers 7
    .parameter "sampleIndex"
    .parameter "pointerCoords"

    .prologue
    .line 1454
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1455
    .local v0, dataSamples:[F
    add-int/lit8 v1, p1, 0x0

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, p0, Landroid/view/MotionEvent;->mXOffset:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 1456
    add-int/lit8 v1, p1, 0x1

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v3, p0, Landroid/view/MotionEvent;->mYOffset:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 1457
    add-int/lit8 v1, p1, 0x2

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aput v2, v0, v1

    .line 1458
    add-int/lit8 v1, p1, 0x3

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->size:F

    aput v2, v0, v1

    .line 1459
    add-int/lit8 v1, p1, 0x4

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    aput v2, v0, v1

    .line 1460
    add-int/lit8 v1, p1, 0x5

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    aput v2, v0, v1

    .line 1461
    add-int/lit8 v1, p1, 0x6

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    aput v2, v0, v1

    .line 1462
    add-int/lit8 v1, p1, 0x7

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    aput v2, v0, v1

    .line 1463
    add-int/lit8 v1, p1, 0x8

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    aput v2, v0, v1

    .line 1464
    return-void
.end method

.method private final setPointerCoordsAtSampleIndex(I[Landroid/view/MotionEvent$PointerCoords;)V
    .registers 6
    .parameter "sampleIndex"
    .parameter "pointerCoords"

    .prologue
    .line 1445
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 1446
    .local v1, numPointers:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v1, :cond_f

    .line 1447
    aget-object v2, p2, v0

    invoke-direct {p0, p1, v2}, Landroid/view/MotionEvent;->setPointerCoordsAtSampleIndex(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1448
    add-int/lit8 p1, p1, 0x9

    .line 1446
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1450
    :cond_f
    return-void
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .registers 14
    .parameter "eventTime"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"

    .prologue
    .line 1516
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->incrementNumSamplesAndReserveStorage(I)V

    .line 1518
    iget-object v0, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v1, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    aput-wide v2, v0, v1

    .line 1519
    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/view/MotionEvent;->setPointerCoordsAtSampleIndex(IFFFF)V

    .line 1521
    iget v0, p0, Landroid/view/MotionEvent;->mMetaState:I

    or-int/2addr v0, p7

    iput v0, p0, Landroid/view/MotionEvent;->mMetaState:I

    .line 1522
    return-void
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .registers 10
    .parameter "eventTime"
    .parameter "pointerCoords"
    .parameter "metaState"

    .prologue
    .line 1536
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/lit8 v0, v1, 0x9

    .line 1537
    .local v0, dataSampleStride:I
    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->incrementNumSamplesAndReserveStorage(I)V

    .line 1539
    iget-object v1, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v2, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, p1

    aput-wide v3, v1, v2

    .line 1540
    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    invoke-direct {p0, v1, p3}, Landroid/view/MotionEvent;->setPointerCoordsAtSampleIndex(I[Landroid/view/MotionEvent$PointerCoords;)V

    .line 1542
    iget v1, p0, Landroid/view/MotionEvent;->mMetaState:I

    or-int/2addr v1, p4

    iput v1, p0, Landroid/view/MotionEvent;->mMetaState:I

    .line 1543
    return-void
.end method

.method public final findPointerIndex(I)I
    .registers 4
    .parameter "pointerId"

    .prologue
    .line 880
    iget v0, p0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 881
    .local v0, i:I
    :cond_2
    if-lez v0, :cond_e

    .line 882
    add-int/lit8 v0, v0, -0x1

    .line 883
    iget-object v1, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    move v1, v0

    .line 887
    :goto_d
    return v1

    :cond_e
    const/4 v1, -0x1

    goto :goto_d
.end method

.method public final getAction()I
    .registers 2

    .prologue
    .line 718
    iget v0, p0, Landroid/view/MotionEvent;->mAction:I

    return v0
.end method

.method public final getActionIndex()I
    .registers 3

    .prologue
    .line 742
    iget v0, p0, Landroid/view/MotionEvent;->mAction:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .registers 2

    .prologue
    .line 730
    iget v0, p0, Landroid/view/MotionEvent;->mAction:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getDownTime()J
    .registers 5

    .prologue
    .line 759
    iget-wide v0, p0, Landroid/view/MotionEvent;->mDownTimeNano:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .registers 2

    .prologue
    .line 1384
    iget v0, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    return v0
.end method

.method public final getEventTime()J
    .registers 5

    .prologue
    .line 766
    iget-object v0, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v1, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    aget-wide v0, v0, v1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .registers 3

    .prologue
    .line 776
    iget-object v0, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v1, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final getFlags()I
    .registers 2

    .prologue
    .line 751
    iget v0, p0, Landroid/view/MotionEvent;->mFlags:I

    return v0
.end method

.method public getFromWhere()Ljava/lang/String;
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Landroid/view/MotionEvent;->mfromWhere:Ljava/lang/String;

    return-object v0
.end method

.method public final getHistoricalEventTime(I)J
    .registers 6
    .parameter "pos"

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    aget-wide v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 1187
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalOrientation(II)F
    .registers 5
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1348
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6
    .parameter "pointerIndex"
    .parameter "pos"
    .parameter "outPointerCoords"

    .prologue
    .line 1369
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v0, v1, 0x9

    .line 1370
    .local v0, sampleIndex:I
    invoke-direct {p0, v0, p3}, Landroid/view/MotionEvent;->getPointerCoordsAtSampleIndex(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1371
    return-void
.end method

.method public final getHistoricalPressure(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 1139
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalPressure(II)F
    .registers 5
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalSize(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 1147
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalSize(II)F
    .registers 5
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalToolMajor(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 1171
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalToolMajor(II)F
    .registers 5
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1312
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalToolMinor(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 1179
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalToolMinor(II)F
    .registers 5
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1330
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalTouchMajor(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 1155
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalTouchMajor(II)F
    .registers 5
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1276
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalTouchMinor(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalTouchMinor(II)F
    .registers 5
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1294
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalX(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 1123
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getHistoricalX(II)F
    .registers 5
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1204
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getHistoricalY(I)F
    .registers 4
    .parameter "pos"

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getHistoricalY(II)F
    .registers 5
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1222
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getHistorySize()I
    .registers 2

    .prologue
    .line 1101
    iget v0, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    return v0
.end method

.method public final getMetaState()I
    .registers 2

    .prologue
    .line 1049
    iget v0, p0, Landroid/view/MotionEvent;->mMetaState:I

    return v0
.end method

.method public final getOrientation()F
    .registers 3

    .prologue
    .line 848
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public final getOrientation(I)F
    .registers 5
    .parameter "pointerIndex"

    .prologue
    .line 1021
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .registers 6
    .parameter "pointerIndex"
    .parameter "outPointerCoords"

    .prologue
    .line 1034
    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int v0, v1, v2

    .line 1035
    .local v0, sampleIndex:I
    invoke-direct {p0, v0, p2}, Landroid/view/MotionEvent;->getPointerCoordsAtSampleIndex(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1036
    return-void
.end method

.method public final getPointerCount()I
    .registers 2

    .prologue
    .line 856
    iget v0, p0, Landroid/view/MotionEvent;->mNumPointers:I

    return v0
.end method

.method public final getPointerId(I)I
    .registers 3
    .parameter "pointerIndex"

    .prologue
    .line 868
    iget-object v0, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getPressure()F
    .registers 3

    .prologue
    .line 800
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getPressure(I)F
    .registers 5
    .parameter "pointerIndex"

    .prologue
    .line 930
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getRawX()F
    .registers 3

    .prologue
    .line 1059
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getRawY()F
    .registers 3

    .prologue
    .line 1069
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getSize()F
    .registers 3

    .prologue
    .line 808
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getSize(I)F
    .registers 5
    .parameter "pointerIndex"

    .prologue
    .line 947
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getToolMajor()F
    .registers 3

    .prologue
    .line 832
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public final getToolMajor(I)F
    .registers 5
    .parameter "pointerIndex"

    .prologue
    .line 988
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public final getToolMinor()F
    .registers 3

    .prologue
    .line 840
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public final getToolMinor(I)F
    .registers 5
    .parameter "pointerIndex"

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public final getTouchMajor()F
    .registers 3

    .prologue
    .line 816
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getTouchMajor(I)F
    .registers 5
    .parameter "pointerIndex"

    .prologue
    .line 960
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getTouchMinor()F
    .registers 3

    .prologue
    .line 824
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public final getTouchMinor(I)F
    .registers 5
    .parameter "pointerIndex"

    .prologue
    .line 973
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public final getX()F
    .registers 3

    .prologue
    .line 784
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getX(I)F
    .registers 5
    .parameter "pointerIndex"

    .prologue
    .line 900
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getXPrecision()F
    .registers 2

    .prologue
    .line 1079
    iget v0, p0, Landroid/view/MotionEvent;->mXPrecision:F

    return v0
.end method

.method public final getY()F
    .registers 3

    .prologue
    .line 792
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getY(I)F
    .registers 5
    .parameter "pointerIndex"

    .prologue
    .line 914
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getYPrecision()F
    .registers 2

    .prologue
    .line 1089
    iget v0, p0, Landroid/view/MotionEvent;->mYPrecision:F

    return v0
.end method

.method public final offsetLocation(FF)V
    .registers 4
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 1411
    iget v0, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/view/MotionEvent;->mXOffset:F

    .line 1412
    iget v0, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/view/MotionEvent;->mYOffset:F

    .line 1413
    return-void
.end method

.method public final recycle()V
    .registers 4

    .prologue
    .line 669
    iget-boolean v0, p0, Landroid/view/MotionEvent;->mRecycled:Z

    if-eqz v0, :cond_21

    .line 670
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MotionEvent;->mRecycled:Z

    .line 675
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_27
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3c

    .line 677
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 678
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 679
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 680
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 682
    :cond_3c
    monitor-exit v0

    .line 683
    return-void

    .line 682
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_27 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public final scale(F)V
    .registers 7
    .parameter "scale"

    .prologue
    .line 691
    iget v3, p0, Landroid/view/MotionEvent;->mXOffset:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mXOffset:F

    .line 692
    iget v3, p0, Landroid/view/MotionEvent;->mYOffset:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mYOffset:F

    .line 693
    iget v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 694
    iget v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 696
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 697
    .local v0, history:[F
    iget v3, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iget v4, p0, Landroid/view/MotionEvent;->mNumSamples:I

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x9

    .line 698
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    if-ge v1, v2, :cond_54

    .line 699
    add-int/lit8 v3, v1, 0x0

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 700
    add-int/lit8 v3, v1, 0x1

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 702
    add-int/lit8 v3, v1, 0x3

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 703
    add-int/lit8 v3, v1, 0x4

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 704
    add-int/lit8 v3, v1, 0x5

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 705
    add-int/lit8 v3, v1, 0x6

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 706
    add-int/lit8 v3, v1, 0x7

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 698
    add-int/lit8 v1, v1, 0x9

    goto :goto_1e

    .line 708
    :cond_54
    return-void
.end method

.method public final setAction(I)V
    .registers 2
    .parameter "action"

    .prologue
    .line 1402
    iput p1, p0, Landroid/view/MotionEvent;->mAction:I

    .line 1403
    return-void
.end method

.method public final setEdgeFlags(I)V
    .registers 2
    .parameter "flags"

    .prologue
    .line 1395
    iput p1, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 1396
    return-void
.end method

.method public setFromWhere(Ljava/lang/String;)V
    .registers 2
    .parameter "fromWhere"

    .prologue
    .line 356
    iput-object p1, p0, Landroid/view/MotionEvent;->mfromWhere:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public final setLocation(FF)V
    .registers 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1423
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1424
    .local v0, dataSamples:[F
    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 1425
    .local v1, lastDataSampleIndex:I
    add-int/lit8 v2, v1, 0x0

    aget v2, v0, v2

    sub-float v2, p1, v2

    iput v2, p0, Landroid/view/MotionEvent;->mXOffset:F

    .line 1426
    add-int/lit8 v2, v1, 0x1

    aget v2, v0, v2

    sub-float v2, p2, v2

    iput v2, p0, Landroid/view/MotionEvent;->mYOffset:F

    .line 1427
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionEvent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/MotionEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 12
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1607
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1609
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 1610
    .local v1, NP:I
    iget v2, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1611
    .local v2, NS:I
    mul-int v7, v1, v2

    mul-int/lit8 v0, v7, 0x9

    .line 1613
    .local v0, NI:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1614
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->writeBaseToParcel(Landroid/os/Parcel;)V

    .line 1618
    iget-wide v7, p0, Landroid/view/MotionEvent;->mDownTimeNano:J

    invoke-virtual {p1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1619
    iget v7, p0, Landroid/view/MotionEvent;->mAction:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1620
    iget v7, p0, Landroid/view/MotionEvent;->mXOffset:F

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1621
    iget v7, p0, Landroid/view/MotionEvent;->mYOffset:F

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1622
    iget v7, p0, Landroid/view/MotionEvent;->mXPrecision:F

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1623
    iget v7, p0, Landroid/view/MotionEvent;->mYPrecision:F

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1624
    iget v7, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    iget v7, p0, Landroid/view/MotionEvent;->mMetaState:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    iget v7, p0, Landroid/view/MotionEvent;->mFlags:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1628
    iget-object v6, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 1629
    .local v6, pointerIdentifiers:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_45
    if-ge v5, v1, :cond_4f

    .line 1630
    aget v7, v6, v5

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 1633
    :cond_4f
    iget-object v4, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    .line 1634
    .local v4, eventTimeNanoSamples:[J
    const/4 v5, 0x0

    :goto_52
    if-ge v5, v2, :cond_5c

    .line 1635
    aget-wide v7, v4, v5

    invoke-virtual {p1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1634
    add-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 1638
    :cond_5c
    iget-object v3, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1639
    .local v3, dataSamples:[F
    const/4 v5, 0x0

    :goto_5f
    if-ge v5, v0, :cond_69

    .line 1640
    aget v7, v3, v5

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1639
    add-int/lit8 v5, v5, 0x1

    goto :goto_5f

    .line 1642
    :cond_69
    return-void
.end method
