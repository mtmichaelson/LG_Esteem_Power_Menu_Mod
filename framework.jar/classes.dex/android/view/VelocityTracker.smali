.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"


# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Pointer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/VelocityTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_AGE_MILLISECONDS:I = 0xc8

.field static final MAX_VELOCITY:F = 1500.0f

.field private static final NUM_PAST:I = 0xa

.field private static final POINTER_POOL_CAPACITY:I = 0x14

.field private static final TAG:Ljava/lang/String; = "VelocityTracker"

.field private static final localLOGV:Z

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecycledPointerCount:I

.field private static sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;



# instance fields
.field final idxj:[I

.field private mGeneration:I

.field private mLastTouchIndex:I

.field private mNext:Landroid/view/VelocityTracker;

.field private mPointerListHead:Landroid/view/VelocityTracker$Pointer;



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 53
    new-instance v0, Landroid/view/VelocityTracker$1;

    invoke-direct {v0}, Landroid/view/VelocityTracker$1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/VelocityTracker;->idxj:[I

    .line 139
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VelocityTracker$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/view/VelocityTracker;-><init>()V

    return-void
.end method

.method private final getPointer(I)Landroid/view/VelocityTracker$Pointer;
    .registers 4
    .parameter "id"

    .prologue
    .line 547
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_2
    if-eqz v0, :cond_d

    .line 548
    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->id:I

    if-ne v1, p1, :cond_a

    move-object v1, v0

    .line 552
    :goto_9
    return-object v1

    .line 547
    :cond_a
    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    goto :goto_2

    .line 552
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .registers 1

    .prologue
    .line 113
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    return-object v0
.end method

.method private static final obtainPointer()Landroid/view/VelocityTracker$Pointer;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 556
    sget-object v1, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    monitor-enter v1

    .line 557
    :try_start_4
    sget v2, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    if-eqz v2, :cond_1a

    .line 558
    sget-object v0, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 559
    .local v0, element:Landroid/view/VelocityTracker$Pointer;
    sget v2, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    .line 560
    iget-object v2, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    sput-object v2, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 561
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 562
    monitor-exit v1

    move-object v1, v0

    .line 565
    .end local v0       #element:Landroid/view/VelocityTracker$Pointer;,
    :goto_19
    return-object v1

    .line 564
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_21

    .line 565
    new-instance v1, Landroid/view/VelocityTracker$Pointer;

    invoke-direct {v1, v3}, Landroid/view/VelocityTracker$Pointer;-><init>(Landroid/view/VelocityTracker$1;)V

    goto :goto_19

    .line 564
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v2
.end method

.method private static final releasePointer(Landroid/view/VelocityTracker$Pointer;)V
    .registers 4
    .parameter "pointer"

    .prologue
    .line 569
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    monitor-enter v0

    .line 570
    :try_start_3
    sget v1, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_15

    .line 571
    sget-object v1, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    iput-object v1, p0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 572
    sget v1, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    .line 573
    sput-object p0, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 575
    :cond_15
    monitor-exit v0

    .line 576
    return-void

    .line 575
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private static final releasePointerList(Landroid/view/VelocityTracker$Pointer;)V
    .registers 6
    .parameter "pointer"

    .prologue
    const/16 v4, 0x14

    .line 579
    if-eqz p0, :cond_c

    .line 580
    sget-object v3, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    monitor-enter v3

    .line 581
    :try_start_7
    sget v0, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    .line 582
    .local v0, count:I
    if-lt v0, v4, :cond_d

    .line 583
    monitor-exit v3

    .line 605
    .end local v0       #count:I,
    :cond_c
    :goto_c
    return-void

    .line 586
    .restart local v0       #count:I,
    :cond_d
    move-object v2, p0

    .line 588
    .local v2, tail:Landroid/view/VelocityTracker$Pointer;
    :goto_e
    add-int/lit8 v0, v0, 0x1

    .line 589
    if-lt v0, v4, :cond_1f

    .line 600
    :cond_12
    sget-object v4, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    iput-object v4, v2, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 601
    sput v0, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    .line 602
    sput-object p0, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 603
    monitor-exit v3

    goto :goto_c

    .end local v0       #count:I,
    .end local v2       #tail:Landroid/view/VelocityTracker$Pointer;,
    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v4

    .line 593
    .restart local v0       #count:I,
    .restart local v2       #tail:Landroid/view/VelocityTracker$Pointer;,
    :cond_1f
    :try_start_1f
    iget-object v1, v2, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_1c

    .line 594
    .local v1, next:Landroid/view/VelocityTracker$Pointer;
    if-eqz v1, :cond_12

    .line 597
    move-object v2, v1

    .line 598
    goto :goto_e
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .registers 25
    .parameter "ev"

    .prologue
    .line 162
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    .line 163
    .local v5, historySize:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 164
    .local v16, pointerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    move v8, v0

    .line 165
    .local v8, lastTouchIndex:I
    add-int/lit8 v20, v8, 0x1

    rem-int/lit8 v11, v20, 0xa

    .line 166
    .local v11, nextTouchIndex:I
    add-int v20, v11, v5

    rem-int/lit8 v3, v20, 0xa

    .line 167
    .local v3, finalTouchIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VelocityTracker;->mGeneration:I

    move v4, v0

    add-int/lit8 v20, v4, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/VelocityTracker;->mGeneration:I

    .line 169
    .local v4, generation:I
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    .line 172
    const/16 v18, 0x0

    .line 173
    .local v18, previousPointer:Landroid/view/VelocityTracker$Pointer;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2a
    move v0, v6

    move/from16 v1, v16

    if-ge v0, v1, :cond_d2

    .line 174
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 181
    .local v17, pointerId:I
    if-eqz v18, :cond_44

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/VelocityTracker$Pointer;->id:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_86

    .line 182
    :cond_44
    const/16 v18, 0x0

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    move-object v9, v0

    .line 190
    .local v9, nextPointer:Landroid/view/VelocityTracker$Pointer;
    :goto_4b
    if-eqz v9, :cond_94

    .line 191
    iget v10, v9, Landroid/view/VelocityTracker$Pointer;->id:I

    .line 192
    .local v10, nextPointerId:I
    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_8c

    .line 193
    move-object v15, v9

    .line 217
    .end local v10       #nextPointerId:I,
    .local v15, pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_55
    iput v4, v15, Landroid/view/VelocityTracker$Pointer;->generation:I

    .line 218
    move-object/from16 v18, v15

    .line 220
    iget-object v13, v15, Landroid/view/VelocityTracker$Pointer;->pastX:[F

    .line 221
    .local v13, pastX:[F
    iget-object v14, v15, Landroid/view/VelocityTracker$Pointer;->pastY:[F

    .line 222
    .local v14, pastY:[F
    iget-object v12, v15, Landroid/view/VelocityTracker$Pointer;->pastTime:[J

    .line 224
    .local v12, pastTime:[J
    const/4 v7, 0x0

    .local v7, j:I
    :goto_60
    if-ge v7, v5, :cond_b6

    .line 225
    add-int v20, v11, v7

    rem-int/lit8 v19, v20, 0xa

    .line 226
    .local v19, touchIndex:I
    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v20

    aput v20, v13, v19

    .line 227
    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v20

    aput v20, v14, v19

    .line 228
    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v20

    aput-wide v20, v12, v19

    .line 224
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    .line 185
    .end local v7       #j:I,
    .end local v9       #nextPointer:Landroid/view/VelocityTracker$Pointer;,
    .end local v12       #pastTime:[J,
    .end local v13       #pastX:[F,
    .end local v14       #pastY:[F,
    .end local v15       #pointer:Landroid/view/VelocityTracker$Pointer;,
    .end local v19       #touchIndex:I,
    :cond_86
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    move-object v9, v0

    .restart local v9       #nextPointer:Landroid/view/VelocityTracker$Pointer;,
    goto :goto_4b

    .line 196
    .restart local v10       #nextPointerId:I,
    :cond_8c
    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_94

    .line 197
    iget-object v9, v9, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 198
    goto :goto_4b

    .line 205
    .end local v10       #nextPointerId:I,
    :cond_94
    invoke-static {}, Landroid/view/VelocityTracker;->obtainPointer()Landroid/view/VelocityTracker$Pointer;

    move-result-object v15

    .line 206
    .restart local v15       #pointer:Landroid/view/VelocityTracker$Pointer;,
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Landroid/view/VelocityTracker$Pointer;->id:I

    .line 207
    move-object v0, v15

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastTime:[J

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x8000

    aput-wide v21, v20, v8

    .line 208
    iput-object v9, v15, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 209
    if-nez v18, :cond_b0

    .line 210
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    goto :goto_55

    .line 212
    :cond_b0
    move-object v0, v15

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    goto :goto_55

    .line 230
    .restart local v7       #j:I,
    .restart local v12       #pastTime:[J,
    .restart local v13       #pastX:[F,
    .restart local v14       #pastY:[F,
    :cond_b6
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    aput v20, v13, v3

    .line 231
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    aput v20, v14, v3

    .line 232
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    aput-wide v20, v12, v3

    .line 173
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2a

    .line 236
    .end local v7       #j:I,
    .end local v9       #nextPointer:Landroid/view/VelocityTracker$Pointer;,
    .end local v12       #pastTime:[J,
    .end local v13       #pastX:[F,
    .end local v14       #pastY:[F,
    .end local v15       #pointer:Landroid/view/VelocityTracker$Pointer;,
    .end local v17       #pointerId:I,
    :cond_d2
    const/16 v18, 0x0

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    move-object v15, v0

    .restart local v15       #pointer:Landroid/view/VelocityTracker$Pointer;,
    :goto_d9
    if-eqz v15, :cond_fc

    .line 238
    iget-object v9, v15, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .line 239
    .restart local v9       #nextPointer:Landroid/view/VelocityTracker$Pointer;,
    move-object v0, v15

    iget v0, v0, Landroid/view/VelocityTracker$Pointer;->generation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move v1, v4

    if-eq v0, v1, :cond_f9

    .line 241
    if-nez v18, :cond_f3

    .line 242
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 246
    :goto_ee
    invoke-static {v15}, Landroid/view/VelocityTracker;->releasePointer(Landroid/view/VelocityTracker$Pointer;)V

    .line 250
    :goto_f1
    move-object v15, v9

    .line 251
    goto :goto_d9

    .line 244
    :cond_f3
    move-object v0, v9

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    goto :goto_ee

    .line 248
    :cond_f9
    move-object/from16 v18, v15

    goto :goto_f1

    .line 252
    .end local v9       #nextPointer:Landroid/view/VelocityTracker$Pointer;,
    :cond_fc
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    invoke-static {v0}, Landroid/view/VelocityTracker;->releasePointerList(Landroid/view/VelocityTracker$Pointer;)V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    .line 150
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .registers 3
    .parameter "units"

    .prologue
    .line 261
    const v0, 0x7f7fffff

    invoke-virtual {p0, p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 262
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .registers 39
    .parameter "units"
    .parameter "maxVelocity"

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    move v11, v0

    .line 280
    .local v11, lastTouchIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    move-object/from16 v28, v0

    .local v28, pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_b
    if-eqz v28, :cond_326

    .line 281
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastTime:[J

    move-object/from16 v25, v0

    .line 285
    .local v25, pastTime:[J
    move/from16 v22, v11

    .line 286
    .local v22, oldestTouchIndex:I
    const/16 v19, 0x1

    .line 287
    .local v19, numTouches:I
    aget-wide v32, v25, v11

    const-wide/16 v34, 0xc8

    sub-long v13, v32, v34

    .line 288
    .local v13, minTime:J
    :goto_1d
    const/16 v32, 0xa

    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_33

    .line 289
    add-int/lit8 v32, v22, 0xa

    const/16 v33, 0x1

    sub-int v32, v32, v33

    rem-int/lit8 v18, v32, 0xa

    .line 290
    .local v18, nextOldestTouchIndex:I
    aget-wide v16, v25, v18

    .line 291
    .local v16, nextOldestTime:J
    cmp-long v32, v16, v13

    if-gez v32, :cond_68

    .line 300
    .end local v16       #nextOldestTime:J,
    .end local v18       #nextOldestTouchIndex:I,
    :cond_33
    const/16 v32, 0x3

    move/from16 v0, v19

    move/from16 v1, v32

    if-le v0, v1, :cond_3d

    .line 301
    add-int/lit8 v19, v19, -0x1

    .line 305
    :cond_3d
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastX:[F

    move-object/from16 v26, v0

    .line 306
    .local v26, pastX:[F
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastY:[F

    move-object/from16 v27, v0

    .line 308
    .local v27, pastY:[F
    aget v23, v26, v22

    .line 309
    .local v23, oldestX:F
    aget v24, v27, v22

    .line 310
    .local v24, oldestY:F
    aget-wide v20, v25, v22

    .line 312
    .local v20, oldestTime:J
    const/4 v2, 0x0

    .line 313
    .local v2, accumX:F
    const/4 v3, 0x0

    .line 315
    .local v3, accumY:F
    const/4 v7, 0x1

    .local v7, i:I
    :goto_52
    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_ba

    .line 316
    add-int v32, v22, v7

    rem-int/lit8 v30, v32, 0xa

    .line 317
    .local v30, touchIndex:I
    aget-wide v32, v25, v30

    sub-long v32, v32, v20

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move v5, v0

    .line 319
    .local v5, duration:I
    if-nez v5, :cond_6d

    .line 315
    :goto_65
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 294
    .end local v2       #accumX:F,
    .end local v3       #accumY:F,
    .end local v5       #duration:I,
    .end local v7       #i:I,
    .end local v20       #oldestTime:J,
    .end local v23       #oldestX:F,
    .end local v24       #oldestY:F,
    .end local v26       #pastX:[F,
    .end local v27       #pastY:[F,
    .end local v30       #touchIndex:I,
    .restart local v16       #nextOldestTime:J,
    .restart local v18       #nextOldestTouchIndex:I,
    :cond_68
    move/from16 v22, v18

    .line 295
    add-int/lit8 v19, v19, 0x1

    .line 296
    goto :goto_1d

    .line 321
    .end local v16       #nextOldestTime:J,
    .end local v18       #nextOldestTouchIndex:I,
    .restart local v2       #accumX:F,
    .restart local v3       #accumY:F,
    .restart local v5       #duration:I,
    .restart local v7       #i:I,
    .restart local v20       #oldestTime:J,
    .restart local v23       #oldestX:F,
    .restart local v24       #oldestY:F,
    .restart local v26       #pastX:[F,
    .restart local v27       #pastY:[F,
    .restart local v30       #touchIndex:I,
    :cond_6d
    aget v32, v26, v30

    sub-float v4, v32, v23

    .line 322
    .local v4, delta:F
    move v0, v5

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v4, v32

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v31, v32, v33

    .line 323
    .local v31, velocity:F
    const/16 v32, 0x0

    cmpl-float v32, v2, v32

    if-nez v32, :cond_a8

    move/from16 v2, v31

    .line 325
    :goto_86
    aget v32, v27, v30

    sub-float v4, v32, v24

    .line 326
    move v0, v5

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v32, v4, v32

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v33, v0

    mul-float v31, v32, v33

    .line 327
    const/16 v32, 0x0

    cmpl-float v32, v3, v32

    if-nez v32, :cond_b1

    move/from16 v3, v31

    .line 332
    :goto_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->idxj:[I

    move-object/from16 v32, v0

    aput v30, v32, v7

    goto :goto_65

    .line 323
    :cond_a8
    add-float v32, v2, v31

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    move/from16 v2, v32

    goto :goto_86

    .line 327
    :cond_b1
    add-float v32, v3, v31

    const/high16 v33, 0x3f00

    mul-float v32, v32, v33

    move/from16 v3, v32

    goto :goto_9f

    .line 338
    .end local v4       #delta:F,
    .end local v5       #duration:I,
    .end local v30       #touchIndex:I,
    .end local v31       #velocity:F,
    :cond_ba
    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v2, v32

    if-gez v32, :cond_12d

    .line 339
    move/from16 v0, p2

    neg-float v0, v0

    move v2, v0

    .line 344
    :cond_c7
    :goto_c7
    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v32, v0

    cmpg-float v32, v3, v32

    if-gez v32, :cond_134

    .line 345
    move/from16 v0, p2

    neg-float v0, v0

    move v3, v0

    .line 350
    :cond_d4
    :goto_d4
    move v0, v2

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/VelocityTracker$Pointer;->xVelocity:F

    .line 351
    move v0, v3

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/VelocityTracker$Pointer;->yVelocity:F

    .line 362
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionX:Z

    .line 363
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionY:Z

    .line 364
    move/from16 v15, v19

    .line 366
    .local v15, n:I
    const/16 v32, 0x5

    move v0, v15

    move/from16 v1, v32

    if-le v0, v1, :cond_31e

    .line 367
    const/16 v32, 0x2

    sub-int v32, v15, v32

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object v6, v0

    .line 368
    .local v6, finiteDifference:[I
    const/16 v32, 0xa

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v29, v0

    .line 370
    .local v29, posVal:[I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/VelocityTracker$Pointer;->xVelocity:F

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    const v33, 0x44bb8000

    cmpg-float v32, v32, v33

    if-gez v32, :cond_21a

    .line 371
    const/4 v7, 0x0

    :goto_11a
    const/16 v32, 0xa

    move v0, v7

    move/from16 v1, v32

    if-ge v0, v1, :cond_13b

    .line 372
    aget v32, v26, v7

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    aput v32, v29, v7

    .line 371
    add-int/lit8 v7, v7, 0x1

    goto :goto_11a

    .line 340
    .end local v6       #finiteDifference:[I,
    .end local v15       #n:I,
    .end local v29       #posVal:[I,
    :cond_12d
    cmpl-float v32, v2, p2

    if-lez v32, :cond_c7

    .line 341
    move/from16 v2, p2

    goto :goto_c7

    .line 346
    :cond_134
    cmpl-float v32, v3, p2

    if-lez v32, :cond_d4

    .line 347
    move/from16 v3, p2

    goto :goto_d4

    .line 375
    .restart local v6       #finiteDifference:[I,
    .restart local v15       #n:I,
    .restart local v29       #posVal:[I,
    :cond_13b
    const/4 v7, 0x2

    :goto_13c
    if-ge v7, v15, :cond_177

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->idxj:[I

    move-object/from16 v32, v0

    aget v8, v32, v7

    .line 377
    .local v8, j0:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->idxj:[I

    move-object/from16 v32, v0

    const/16 v33, 0x1

    sub-int v33, v7, v33

    aget v9, v32, v33

    .line 378
    .local v9, j1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->idxj:[I

    move-object/from16 v32, v0

    const/16 v33, 0x2

    sub-int v33, v7, v33

    aget v10, v32, v33

    .line 379
    .local v10, j2:I
    aget v8, v29, v8

    .line 380
    aget v9, v29, v9

    .line 381
    aget v10, v29, v10

    .line 384
    const/16 v32, 0x2

    sub-int v32, v7, v32

    shl-int/lit8 v33, v8, 0x1

    add-int v33, v33, v8

    shl-int/lit8 v34, v9, 0x2

    sub-int v33, v33, v34

    add-int v33, v33, v10

    aput v33, v6, v32

    .line 375
    add-int/lit8 v7, v7, 0x1

    goto :goto_13c

    .line 386
    .end local v8       #j0:I,
    .end local v9       #j1:I,
    .end local v10       #j2:I,
    :cond_177
    move-object v0, v6

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    sub-int v12, v32, v33

    .line 387
    .local v12, len:I
    const/4 v7, 0x1

    :goto_180
    if-ge v7, v12, :cond_21a

    .line 388
    aget v32, v6, v7

    if-gez v32, :cond_19d

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-nez v32, :cond_19d

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-lez v32, :cond_19d

    .line 389
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionX:Z

    .line 387
    :cond_19a
    :goto_19a
    add-int/lit8 v7, v7, 0x1

    goto :goto_180

    .line 391
    :cond_19d
    aget v32, v6, v7

    if-gez v32, :cond_1b6

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-lez v32, :cond_1b6

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-lez v32, :cond_1b6

    .line 392
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionX:Z

    goto :goto_19a

    .line 394
    :cond_1b6
    aget v32, v6, v7

    if-gez v32, :cond_1cf

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-gez v32, :cond_1cf

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-lez v32, :cond_1cf

    .line 395
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionX:Z

    goto :goto_19a

    .line 397
    :cond_1cf
    aget v32, v6, v7

    if-lez v32, :cond_1e8

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-nez v32, :cond_1e8

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-lez v32, :cond_1e8

    .line 398
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionX:Z

    goto :goto_19a

    .line 400
    :cond_1e8
    aget v32, v6, v7

    if-lez v32, :cond_201

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-gez v32, :cond_201

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-gez v32, :cond_201

    .line 401
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionX:Z

    goto :goto_19a

    .line 403
    :cond_201
    aget v32, v6, v7

    if-lez v32, :cond_19a

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-lez v32, :cond_19a

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-gez v32, :cond_19a

    .line 404
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionX:Z

    goto :goto_19a

    .line 409
    .end local v12       #len:I,
    :cond_21a
    move-object/from16 v0, v28

    iget v0, v0, Landroid/view/VelocityTracker$Pointer;->yVelocity:F

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->abs(F)F

    move-result v32

    const v33, 0x44bb8000

    cmpg-float v32, v32, v33

    if-gez v32, :cond_31e

    .line 410
    const/4 v7, 0x0

    :goto_22c
    const/16 v32, 0xa

    move v0, v7

    move/from16 v1, v32

    if-ge v0, v1, :cond_23f

    .line 411
    aget v32, v27, v7

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v32, v0

    aput v32, v29, v7

    .line 410
    add-int/lit8 v7, v7, 0x1

    goto :goto_22c

    .line 413
    :cond_23f
    const/4 v7, 0x2

    :goto_240
    if-ge v7, v15, :cond_27b

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->idxj:[I

    move-object/from16 v32, v0

    aget v8, v32, v7

    .line 415
    .restart local v8       #j0:I,
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->idxj:[I

    move-object/from16 v32, v0

    const/16 v33, 0x1

    sub-int v33, v7, v33

    aget v9, v32, v33

    .line 416
    .restart local v9       #j1:I,
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->idxj:[I

    move-object/from16 v32, v0

    const/16 v33, 0x2

    sub-int v33, v7, v33

    aget v10, v32, v33

    .line 417
    .restart local v10       #j2:I,
    aget v8, v29, v8

    .line 418
    aget v9, v29, v9

    .line 419
    aget v10, v29, v10

    .line 422
    const/16 v32, 0x2

    sub-int v32, v7, v32

    shl-int/lit8 v33, v8, 0x1

    add-int v33, v33, v8

    shl-int/lit8 v34, v9, 0x2

    sub-int v33, v33, v34

    add-int v33, v33, v10

    aput v33, v6, v32

    .line 413
    add-int/lit8 v7, v7, 0x1

    goto :goto_240

    .line 425
    .end local v8       #j0:I,
    .end local v9       #j1:I,
    .end local v10       #j2:I,
    :cond_27b
    move-object v0, v6

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x2

    sub-int v12, v32, v33

    .line 426
    .restart local v12       #len:I,
    const/4 v7, 0x1

    :goto_284
    if-ge v7, v12, :cond_31e

    .line 427
    aget v32, v6, v7

    if-gez v32, :cond_2a1

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-nez v32, :cond_2a1

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-lez v32, :cond_2a1

    .line 428
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionY:Z

    .line 426
    :cond_29e
    :goto_29e
    add-int/lit8 v7, v7, 0x1

    goto :goto_284

    .line 430
    :cond_2a1
    aget v32, v6, v7

    if-gez v32, :cond_2ba

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-lez v32, :cond_2ba

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-lez v32, :cond_2ba

    .line 431
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionY:Z

    goto :goto_29e

    .line 433
    :cond_2ba
    aget v32, v6, v7

    if-gez v32, :cond_2d3

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-gez v32, :cond_2d3

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-lez v32, :cond_2d3

    .line 434
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionY:Z

    goto :goto_29e

    .line 436
    :cond_2d3
    aget v32, v6, v7

    if-lez v32, :cond_2ec

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-nez v32, :cond_2ec

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-lez v32, :cond_2ec

    .line 437
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionY:Z

    goto :goto_29e

    .line 439
    :cond_2ec
    aget v32, v6, v7

    if-lez v32, :cond_305

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-gez v32, :cond_305

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-gez v32, :cond_305

    .line 440
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionY:Z

    goto :goto_29e

    .line 442
    :cond_305
    aget v32, v6, v7

    if-lez v32, :cond_29e

    add-int/lit8 v32, v7, 0x1

    aget v32, v6, v32

    if-lez v32, :cond_29e

    add-int/lit8 v32, v7, 0x2

    aget v32, v6, v32

    if-gez v32, :cond_29e

    .line 443
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput-boolean v0, v1, Landroid/view/VelocityTracker$Pointer;->mPastInflectionY:Z

    goto :goto_29e

    .line 280
    .end local v6       #finiteDifference:[I,
    .end local v12       #len:I,
    .end local v29       #posVal:[I,
    :cond_31e
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    move-object/from16 v28, v0

    goto/16 :goto_b

    .line 452
    .end local v2       #accumX:F,
    .end local v3       #accumY:F,
    .end local v7       #i:I,
    .end local v13       #minTime:J,
    .end local v15       #n:I,
    .end local v19       #numTouches:I,
    .end local v20       #oldestTime:J,
    .end local v22       #oldestTouchIndex:I,
    .end local v23       #oldestX:F,
    .end local v24       #oldestY:F,
    .end local v25       #pastTime:[J,
    .end local v26       #pastX:[F,
    .end local v27       #pastY:[F,
    :cond_326
    return-void
.end method

.method public getNextPoolable()Landroid/view/VelocityTracker;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getNextPoolable()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0
.end method

.method public getXVelocity()F
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 462
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 467
    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    if-eqz v0, :cond_b

    iget-boolean v1, v0, Landroid/view/VelocityTracker$Pointer;->mPastInflectionX:Z

    if-eqz v1, :cond_b

    move v1, v2

    .line 474
    :goto_a
    return v1

    :cond_b
    if-eqz v0, :cond_10

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->xVelocity:F

    goto :goto_a

    :cond_10
    move v1, v2

    goto :goto_a
.end method

.method public getXVelocity(I)F
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 508
    invoke-direct {p0, p1}, Landroid/view/VelocityTracker;->getPointer(I)Landroid/view/VelocityTracker$Pointer;

    move-result-object v0

    .line 513
    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    if-eqz v0, :cond_d

    iget-boolean v1, v0, Landroid/view/VelocityTracker$Pointer;->mPastInflectionX:Z

    if-eqz v1, :cond_d

    move v1, v2

    .line 520
    :goto_c
    return v1

    :cond_d
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->xVelocity:F

    goto :goto_c

    :cond_12
    move v1, v2

    goto :goto_c
.end method

.method public getYVelocity()F
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 485
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .line 490
    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    if-eqz v0, :cond_b

    iget-boolean v1, v0, Landroid/view/VelocityTracker$Pointer;->mPastInflectionY:Z

    if-eqz v1, :cond_b

    move v1, v2

    .line 497
    :goto_a
    return v1

    :cond_b
    if-eqz v0, :cond_10

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->yVelocity:F

    goto :goto_a

    :cond_10
    move v1, v2

    goto :goto_a
.end method

.method public getYVelocity(I)F
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 531
    invoke-direct {p0, p1}, Landroid/view/VelocityTracker;->getPointer(I)Landroid/view/VelocityTracker$Pointer;

    move-result-object v0

    .line 536
    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    if-eqz v0, :cond_d

    iget-boolean v1, v0, Landroid/view/VelocityTracker$Pointer;->mPastInflectionY:Z

    if-eqz v1, :cond_d

    move v1, v2

    .line 543
    :goto_c
    return v1

    :cond_d
    if-eqz v0, :cond_12

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->yVelocity:F

    goto :goto_c

    :cond_12
    move v1, v2

    goto :goto_c
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 121
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 122
    return-void
.end method

.method public setNextPoolable(Landroid/view/VelocityTracker;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 128
    iput-object p1, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    .line 129
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    check-cast p1, Landroid/view/VelocityTracker;

    .end local p1       
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->setNextPoolable(Landroid/view/VelocityTracker;)V

    return-void
.end method
