.class public Landroid/graphics/drawable/shapes/RoundRectShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "RoundRectShape.java"



# instance fields
.field private mInnerRadii:[F

.field private mInnerRect:Landroid/graphics/RectF;

.field private mInset:Landroid/graphics/RectF;

.field private mOuterRadii:[F

.field private mPath:Landroid/graphics/Path;



# direct methods
.method public constructor <init>([FLandroid/graphics/RectF;[F)V
    .registers 6
    .parameter "outerRadii"
    .parameter "inset"
    .parameter "innerRadii"

    .prologue
    const/16 v1, 0x8

    .line 59
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 60
    array-length v0, p1

    if-ge v0, v1, :cond_11

    .line 61
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "outer radii must have >= 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_11
    if-eqz p3, :cond_1e

    array-length v0, p3

    if-ge v0, v1, :cond_1e

    .line 65
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "inner radii must have >= 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1e
    iput-object p1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    .line 69
    iput-object p2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 70
    iput-object p3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    .line 72
    if-eqz p2, :cond_2d

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 75
    :cond_2d
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    .line 76
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/RectShape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public clone()Landroid/graphics/drawable/shapes/RoundRectShape;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-super {p0}, Landroid/graphics/drawable/shapes/RectShape;->clone()Landroid/graphics/drawable/shapes/RectShape;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 112
    .local v0, shape:Landroid/graphics/drawable/shapes/RoundRectShape;
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    .line 113
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    .line 114
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    .line 115
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    .line 116
    new-instance v1, Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-direct {v1, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v1, v0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    .line 117
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->clone()Landroid/graphics/drawable/shapes/RoundRectShape;

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 4
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 81
    return-void
.end method

.method protected onResize(FF)V
    .registers 10
    .parameter "w"
    .parameter "h"

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/shapes/RectShape;->onResize(FF)V

    .line 87
    invoke-virtual {p0}, Landroid/graphics/drawable/shapes/RoundRectShape;->rect()Landroid/graphics/RectF;

    move-result-object v0

    .line 88
    .local v0, r:Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 90
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    if-eqz v1, :cond_62

    .line 91
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mOuterRadii:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 95
    :goto_19
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_61

    .line 96
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInset:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 98
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, p1

    if-gez v1, :cond_61

    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_61

    .line 99
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    if-eqz v1, :cond_6a

    .line 100
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRadii:[F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 107
    :cond_61
    :goto_61
    return-void

    .line 93
    :cond_62
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_19

    .line 103
    :cond_6a
    iget-object v1, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/shapes/RoundRectShape;->mInnerRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_61
.end method
