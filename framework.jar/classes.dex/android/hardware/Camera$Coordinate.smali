.class public Landroid/hardware/Camera$Coordinate;
.super Ljava/lang/Object;
.source "Camera.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Coordinate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/Camera;

.field public xCoordinate:I

.field public yCoordinate:I



# direct methods
.method public constructor <init>(Landroid/hardware/Camera;II)V
    .registers 4
    .parameter
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1075
    iput-object p1, p0, Landroid/hardware/Camera$Coordinate;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    iput p2, p0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    .line 1077
    iput p3, p0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    .line 1078
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 1088
    instance-of v2, p1, Landroid/hardware/Camera$Coordinate;

    if-nez v2, :cond_7

    move v2, v4

    .line 1092
    :goto_6
    return v2

    .line 1091
    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/hardware/Camera$Coordinate;

    move-object v1, v0

    .line 1092
    .local v1, c:Landroid/hardware/Camera$Coordinate;
    iget v2, p0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    iget v3, v1, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    if-ne v2, v3, :cond_19

    iget v2, p0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    iget v3, v1, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    if-ne v2, v3, :cond_19

    const/4 v2, 0x1

    goto :goto_6

    :cond_19
    move v2, v4

    goto :goto_6
.end method
