.class Landroid/opengl/GLLogWrapper$PointerInfo;
.super Ljava/lang/Object;
.source "GLLogWrapper.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLLogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointerInfo"
.end annotation


# instance fields
.field public mPointer:Ljava/nio/Buffer;

.field public mSize:I

.field public mStride:I

.field public mTempByteBuffer:Ljava/nio/ByteBuffer;

.field public mType:I

.field final synthetic this$0:Landroid/opengl/GLLogWrapper;



# direct methods
.method public constructor <init>(Landroid/opengl/GLLogWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 3467
    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3468
    return-void
.end method

.method public constructor <init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V
    .registers 6
    .parameter
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 3470
    iput-object p1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3471
    iput p2, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    .line 3472
    iput p3, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    .line 3473
    iput p4, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    .line 3474
    iput-object p5, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    .line 3475
    return-void
.end method


# virtual methods
.method public bindByteBuffer()V
    .registers 4

    .prologue
    .line 3499
    iget-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 3500
    return-void

    .line 3499
    :cond_8
    iget-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->this$0:Landroid/opengl/GLLogWrapper;

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mPointer:Ljava/nio/Buffer;

    invoke-static {v0, v1, v2}, Landroid/opengl/GLLogWrapper;->access$000(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_5
.end method

.method public getStride()I
    .registers 3

    .prologue
    .line 3495
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    invoke-virtual {p0, v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result v0

    iget v1, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    mul-int/2addr v0, v1

    goto :goto_6
.end method

.method public sizeof(I)I
    .registers 4
    .parameter "type"

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 3478
    sparse-switch p1, :sswitch_data_e

    .line 3490
    const/4 v0, 0x0

    :goto_6
    :sswitch_6
    return v0

    .line 3484
    :sswitch_7
    const/4 v0, 0x2

    goto :goto_6

    :sswitch_9
    move v0, v1

    .line 3486
    goto :goto_6

    :sswitch_b
    move v0, v1

    .line 3488
    goto :goto_6

    .line 3478
    nop

    :sswitch_data_e
    .sparse-switch
        0x1400 -> :sswitch_6
        0x1401 -> :sswitch_6
        0x1402 -> :sswitch_7
        0x1406 -> :sswitch_b
        0x140c -> :sswitch_9
    .end sparse-switch
.end method

.method public unbindByteBuffer()V
    .registers 2

    .prologue
    .line 3503
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    .line 3504
    return-void
.end method
