.class public Landroid/view/animation/Animation$Description;
.super Ljava/lang/Object;
.source "Animation.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Description"
.end annotation


# instance fields
.field public type:I

.field public value:F



# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;
    .registers 7
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 946
    new-instance v0, Landroid/view/animation/Animation$Description;

    invoke-direct {v0}, Landroid/view/animation/Animation$Description;-><init>()V

    .line 947
    .local v0, d:Landroid/view/animation/Animation$Description;
    if-nez p0, :cond_13

    .line 948
    iput v3, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 949
    iput v4, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 969
    :cond_e
    iput v3, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 970
    iput v4, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 972
    :goto_12
    return-object v0

    .line 951
    :cond_13
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2c

    .line 952
    iget v1, p0, Landroid/util/TypedValue;->data:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v5, :cond_2a

    const/4 v1, 0x2

    :goto_1f
    iput v1, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 955
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    goto :goto_12

    :cond_2a
    move v1, v5

    .line 952
    goto :goto_1f

    .line 957
    :cond_2c
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3a

    .line 958
    iput v3, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 959
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    goto :goto_12

    .line 961
    :cond_3a
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_e

    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_e

    .line 963
    iput v3, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 964
    iget v1, p0, Landroid/util/TypedValue;->data:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    goto :goto_12
.end method
