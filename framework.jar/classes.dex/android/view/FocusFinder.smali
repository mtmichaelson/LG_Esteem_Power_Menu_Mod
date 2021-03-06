.class public Landroid/view/FocusFinder;
.super Ljava/lang/Object;
.source "FocusFinder.java"



# static fields
.field private static tlFocusFinder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/FocusFinder;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field mBestCandidateRect:Landroid/graphics/Rect;

.field mFocusedRect:Landroid/graphics/Rect;

.field mOtherRect:Landroid/graphics/Rect;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Landroid/view/FocusFinder$1;

    invoke-direct {v0}, Landroid/view/FocusFinder$1;-><init>()V

    sput-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/FocusFinder$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/view/FocusFinder;-><init>()V

    return-void
.end method

.method private findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 13
    .parameter "root"
    .parameter "focused"
    .parameter "focusedRect"
    .parameter "direction"

    .prologue
    const/4 v7, 0x0

    .line 109
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 113
    .local v2, focusables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 114
    sparse-switch p4, :sswitch_data_72

    .line 128
    :goto_d
    const/4 v0, 0x0

    .line 130
    .local v0, closest:Landroid/view/View;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 131
    .local v4, numFocusables:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_13
    if-ge v3, v4, :cond_71

    .line 132
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 135
    .local v1, focusable:Landroid/view/View;
    if-eq v1, p2, :cond_1f

    if-ne v1, p1, :cond_54

    .line 131
    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 116
    .end local v0       #closest:Landroid/view/View;,
    .end local v1       #focusable:Landroid/view/View;,
    .end local v3       #i:I,
    .end local v4       #numFocusables:I,
    :sswitch_22
    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_d

    .line 119
    :sswitch_2e
    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    neg-int v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_d

    .line 122
    :sswitch_3b
    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_d

    .line 125
    :sswitch_47
    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    neg-int v6, v6

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_d

    .line 138
    .restart local v0       #closest:Landroid/view/View;,
    .restart local v1       #focusable:Landroid/view/View;,
    .restart local v3       #i:I,
    .restart local v4       #numFocusables:I,
    :cond_54
    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 139
    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 141
    iget-object v5, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p4, p3, v5, v6}, Landroid/view/FocusFinder;->isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 142
    iget-object v5, p0, Landroid/view/FocusFinder;->mBestCandidateRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 143
    move-object v0, v1

    goto :goto_1f

    .line 146
    .end local v1       #focusable:Landroid/view/View;,
    :cond_71
    return-object v0

    .line 114
    :sswitch_data_72
    .sparse-switch
        0x11 -> :sswitch_22
        0x21 -> :sswitch_3b
        0x42 -> :sswitch_2e
        0x82 -> :sswitch_47
    .end sparse-switch
.end method

.method public static getInstance()Landroid/view/FocusFinder;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Landroid/view/FocusFinder;->tlFocusFinder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/FocusFinder;

    return-object v0
.end method

.method private isTouchCandidate(IILandroid/graphics/Rect;I)Z
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "destRect"
    .parameter "direction"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 467
    sparse-switch p4, :sswitch_data_4e

    .line 477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :sswitch_d
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_1b

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_1b

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_1b

    move v0, v2

    .line 475
    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    .line 469
    goto :goto_1a

    .line 471
    :sswitch_1d
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-lt v0, p1, :cond_2b

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_2b

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v0, :cond_2b

    move v0, v2

    goto :goto_1a

    :cond_2b
    move v0, v1

    goto :goto_1a

    .line 473
    :sswitch_2d
    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_3b

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_3b

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_3b

    move v0, v2

    goto :goto_1a

    :cond_3b
    move v0, v1

    goto :goto_1a

    .line 475
    :sswitch_3d
    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-lt v0, p2, :cond_4b

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_4b

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v0, :cond_4b

    move v0, v2

    goto :goto_1a

    :cond_4b
    move v0, v1

    goto :goto_1a

    .line 467
    nop

    :sswitch_data_4e
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_2d
        0x42 -> :sswitch_1d
        0x82 -> :sswitch_3d
    .end sparse-switch
.end method

.method static majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 316
    sparse-switch p0, :sswitch_data_24

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 324
    :goto_10
    return v0

    .line 320
    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 322
    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 324
    :sswitch_1d
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 316
    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method static majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 337
    const/4 v0, 0x1

    invoke-static {p0, p1, p2}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static majorAxisDistanceToFarEdgeRaw(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 5
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 341
    sparse-switch p0, :sswitch_data_24

    .line 351
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 349
    :goto_10
    return v0

    .line 345
    :sswitch_11
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 347
    :sswitch_17
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 349
    :sswitch_1d
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    goto :goto_10

    .line 341
    nop

    :sswitch_data_24
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_17
        0x42 -> :sswitch_11
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method static minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 6
    .parameter "direction"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 364
    sparse-switch p0, :sswitch_data_3c

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :sswitch_b
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 374
    :goto_22
    return v0

    :sswitch_23
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_22

    .line 364
    nop

    :sswitch_data_3c
    .sparse-switch
        0x11 -> :sswitch_b
        0x21 -> :sswitch_23
        0x42 -> :sswitch_b
        0x82 -> :sswitch_23
    .end sparse-switch
.end method


# virtual methods
.method beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 11
    .parameter "direction"
    .parameter "source"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 200
    .local v0, rect1InSrcBeam:Z
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    .line 203
    .local v1, rect2InSrcBeam:Z
    if-nez v1, :cond_e

    if-nez v0, :cond_10

    :cond_e
    move v2, v5

    .line 226
    :goto_f
    return v2

    .line 213
    :cond_10
    invoke-virtual {p0, p1, p2, p4}, Landroid/view/FocusFinder;->isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_18

    move v2, v4

    .line 214
    goto :goto_f

    .line 218
    :cond_18
    const/16 v2, 0x11

    if-eq p1, v2, :cond_20

    const/16 v2, 0x42

    if-ne p1, v2, :cond_22

    :cond_20
    move v2, v4

    .line 219
    goto :goto_f

    .line 226
    :cond_22
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistanceToFarEdge(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v3

    if-ge v2, v3, :cond_2e

    move v2, v4

    goto :goto_f

    :cond_2e
    move v2, v5

    goto :goto_f
.end method

.method beamsOverlap(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 276
    sparse-switch p1, :sswitch_data_2e

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :sswitch_d
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_1b

    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_1b

    move v0, v3

    .line 282
    :goto_1a
    return v0

    :cond_1b
    move v0, v2

    .line 279
    goto :goto_1a

    .line 282
    :sswitch_1d
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2b

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_2b

    move v0, v3

    goto :goto_1a

    :cond_2b
    move v0, v2

    goto :goto_1a

    .line 276
    nop

    :sswitch_data_2e
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_1d
        0x42 -> :sswitch_d
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method public findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;
    .registers 23
    .parameter "root"
    .parameter "x"
    .parameter "y"
    .parameter "direction"
    .parameter "deltas"

    .prologue
    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTouchables()Ljava/util/ArrayList;

    move-result-object v14

    .line 395
    .local v14, touchables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const v10, 0x7fffffff

    .line 396
    .local v10, minDistance:I
    const/4 v5, 0x0

    .line 398
    .local v5, closest:Landroid/view/View;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 400
    .local v11, numTouchables:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-static {v15}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v8

    .line 402
    .local v8, edgeSlop:I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 403
    .local v6, closestBounds:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/FocusFinder;->mOtherRect:Landroid/graphics/Rect;

    move-object v13, v0

    .line 405
    .local v13, touchableBounds:Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_24
    if-ge v9, v11, :cond_9b

    .line 406
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 409
    .local v12, touchable:Landroid/view/View;
    invoke-virtual {v12, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 411
    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p1

    move-object v1, v12

    move-object v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 413
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v13

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/FocusFinder;->isTouchCandidate(IILandroid/graphics/Rect;I)Z

    move-result v15

    if-nez v15, :cond_4e

    .line 405
    :cond_4b
    :goto_4b
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 417
    :cond_4e
    const v7, 0x7fffffff

    .line 419
    .local v7, distance:I
    sparse-switch p4, :sswitch_data_9c

    .line 434
    :goto_54
    if-ge v7, v8, :cond_4b

    .line 436
    if-eqz v5, :cond_66

    invoke-virtual {v6, v13}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_66

    invoke-virtual {v13, v6}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v15

    if-nez v15, :cond_4b

    if-ge v7, v10, :cond_4b

    .line 439
    :cond_66
    move v10, v7

    .line 440
    move-object v5, v12

    .line 441
    invoke-virtual {v6, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 442
    sparse-switch p4, :sswitch_data_ae

    goto :goto_4b

    .line 444
    :sswitch_6f
    const/4 v15, 0x0

    move v0, v7

    neg-int v0, v0

    move/from16 v16, v0

    aput v16, p5, v15

    goto :goto_4b

    .line 421
    :sswitch_77
    iget v15, v13, Landroid/graphics/Rect;->right:I

    sub-int v15, p2, v15

    add-int/lit8 v7, v15, 0x1

    .line 422
    goto :goto_54

    .line 424
    :sswitch_7e
    iget v7, v13, Landroid/graphics/Rect;->left:I

    .line 425
    goto :goto_54

    .line 427
    :sswitch_81
    iget v15, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v15, p3, v15

    add-int/lit8 v7, v15, 0x1

    .line 428
    goto :goto_54

    .line 430
    :sswitch_88
    iget v7, v13, Landroid/graphics/Rect;->top:I

    goto :goto_54

    .line 447
    :sswitch_8b
    const/4 v15, 0x0

    aput v7, p5, v15

    goto :goto_4b

    .line 450
    :sswitch_8f
    const/4 v15, 0x1

    move v0, v7

    neg-int v0, v0

    move/from16 v16, v0

    aput v16, p5, v15

    goto :goto_4b

    .line 453
    :sswitch_97
    const/4 v15, 0x1

    aput v7, p5, v15

    goto :goto_4b

    .line 459
    .end local v7       #distance:I,
    .end local v12       #touchable:Landroid/view/View;,
    :cond_9b
    return-object v5

    .line 419
    :sswitch_data_9c
    .sparse-switch
        0x11 -> :sswitch_77
        0x21 -> :sswitch_81
        0x42 -> :sswitch_7e
        0x82 -> :sswitch_88
    .end sparse-switch

    .line 442
    :sswitch_data_ae
    .sparse-switch
        0x11 -> :sswitch_6f
        0x21 -> :sswitch_8f
        0x42 -> :sswitch_8b
        0x82 -> :sswitch_97
    .end sparse-switch
.end method

.method public final findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .registers 11
    .parameter "root"
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 61
    if-eqz p2, :cond_2d

    .line 63
    invoke-virtual {p2, p1, p3}, Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 64
    .local v4, userSetNextFocus:Landroid/view/View;
    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v4}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v4}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1a
    move-object v5, v4

    .line 93
    .end local v4       #userSetNextFocus:Landroid/view/View;,
    :goto_1b
    return-object v5

    .line 72
    .restart local v4       #userSetNextFocus:Landroid/view/View;,
    :cond_1c
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v5}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 73
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 93
    .end local v4       #userSetNextFocus:Landroid/view/View;,
    :goto_26
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v5, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v5

    goto :goto_1b

    .line 76
    :cond_2d
    sparse-switch p3, :sswitch_data_5a

    goto :goto_26

    .line 86
    :sswitch_31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int v0, v5, v6

    .line 87
    .local v0, rootBottom:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    add-int v2, v5, v6

    .line 88
    .local v2, rootRight:I
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_26

    .line 79
    .end local v0       #rootBottom:I,
    .end local v2       #rootRight:I,
    :sswitch_4b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v3

    .line 80
    .local v3, rootTop:I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    .line 81
    .local v1, rootLeft:I
    iget-object v5, p0, Landroid/view/FocusFinder;->mFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_26

    .line 76
    nop

    :sswitch_data_5a
    .sparse-switch
        0x11 -> :sswitch_31
        0x21 -> :sswitch_31
        0x42 -> :sswitch_4b
        0x82 -> :sswitch_4b
    .end sparse-switch
.end method

.method public findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;
    .registers 5
    .parameter "root"
    .parameter "focusedRect"
    .parameter "direction"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getWeightedDistanceFor(II)I
    .registers 5
    .parameter "majorAxisDistance"
    .parameter "minorAxisDistance"

    .prologue
    .line 236
    mul-int/lit8 v0, p1, 0xd

    mul-int/2addr v0, p1

    mul-int v1, p2, p2

    add-int/2addr v0, v1

    return v0
.end method

.method isBetterCandidate(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 10
    .parameter "direction"
    .parameter "source"
    .parameter "rect1"
    .parameter "rect2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0, p2, p3, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    .line 184
    :goto_9
    return v0

    .line 169
    :cond_a
    invoke-virtual {p0, p2, p4, p1}, Landroid/view/FocusFinder;->isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v4

    .line 170
    goto :goto_9

    .line 174
    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v4

    .line 175
    goto :goto_9

    .line 179
    :cond_1a
    invoke-virtual {p0, p1, p2, p4, p3}, Landroid/view/FocusFinder;->beamBeats(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v3

    .line 180
    goto :goto_9

    .line 184
    :cond_22
    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    invoke-static {p1, p2, p3}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v0

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->majorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    invoke-static {p1, p2, p4}, Landroid/view/FocusFinder;->minorAxisDistance(ILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/FocusFinder;->getWeightedDistanceFor(II)I

    move-result v1

    if-ge v0, v1, :cond_3e

    move v0, v4

    goto :goto_9

    :cond_3e
    move v0, v3

    goto :goto_9
.end method

.method isCandidate(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
    .registers 8
    .parameter "srcRect"
    .parameter "destRect"
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 249
    sparse-switch p3, :sswitch_data_66

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :sswitch_d
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_19

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_21

    :cond_19
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_21

    move v0, v3

    .line 260
    :goto_20
    return v0

    :cond_21
    move v0, v2

    .line 251
    goto :goto_20

    .line 254
    :sswitch_23
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_2f

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_37

    :cond_2f
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_37

    move v0, v3

    goto :goto_20

    :cond_37
    move v0, v2

    goto :goto_20

    .line 257
    :sswitch_39
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_45

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_4d

    :cond_45
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_4d

    move v0, v3

    goto :goto_20

    :cond_4d
    move v0, v2

    goto :goto_20

    .line 260
    :sswitch_4f
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_5b

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_63

    :cond_5b
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_63

    move v0, v3

    goto :goto_20

    :cond_63
    move v0, v2

    goto :goto_20

    .line 249
    nop

    :sswitch_data_66
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_39
        0x42 -> :sswitch_23
        0x82 -> :sswitch_4f
    .end sparse-switch
.end method

.method isToDirectionOf(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "src"
    .parameter "dest"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 292
    sparse-switch p1, :sswitch_data_36

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :sswitch_d
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_15

    move v0, v3

    .line 300
    :goto_14
    return v0

    :cond_15
    move v0, v2

    .line 294
    goto :goto_14

    .line 296
    :sswitch_17
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_1f

    move v0, v3

    goto :goto_14

    :cond_1f
    move v0, v2

    goto :goto_14

    .line 298
    :sswitch_21
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_29

    move v0, v3

    goto :goto_14

    :cond_29
    move v0, v2

    goto :goto_14

    .line 300
    :sswitch_2b
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_33

    move v0, v3

    goto :goto_14

    :cond_33
    move v0, v2

    goto :goto_14

    .line 292
    nop

    :sswitch_data_36
    .sparse-switch
        0x11 -> :sswitch_d
        0x21 -> :sswitch_21
        0x42 -> :sswitch_17
        0x82 -> :sswitch_2b
    .end sparse-switch
.end method
