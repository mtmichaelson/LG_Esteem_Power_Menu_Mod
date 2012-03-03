.class Lcom/lge/appwidget/Andy_CarousalView$3;
.super Ljava/lang/Thread;
.source "Andy_CarousalView.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/appwidget/Andy_CarousalView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/appwidget/Andy_CarousalView;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_CarousalView;)V
    .registers 2
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 444
    const/4 v13, 0x0

    .line 445
    .local v13, updateImageIndex:Z
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2
    const/16 v14, 0xc

    if-ge v7, v14, :cond_439

    .line 446
    const/4 v4, 0x0

    .local v4, i:I
    :goto_7
    const/4 v14, 0x5

    if-ge v4, v14, :cond_1e9

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    iget v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->increment:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/high16 v15, 0x42c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->imagePriority:I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    iget v14, v14, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/16 v15, 0x3c

    if-lt v14, v15, :cond_80

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v15, v15, v4

    iget v15, v15, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    if-lez v15, :cond_1e5

    const/16 v15, -0x3c

    :goto_7d
    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    .line 454
    const/4 v13, 0x1

    .line 457
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/appwidget/Andy_CarousalView;->access$100(Lcom/lge/appwidget/Andy_CarousalView;)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->angleMultiple:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/lge/appwidget/Andy_CarousalView;->access$200(Lcom/lge/appwidget/Andy_CarousalView;)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->imageWidth:I

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/appwidget/Andy_CarousalView;->access$300(Lcom/lge/appwidget/Andy_CarousalView;)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->angleMultiple:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/lge/appwidget/Andy_CarousalView;->access$400(Lcom/lge/appwidget/Andy_CarousalView;)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->imageHeight:I

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/high16 v15, 0x42c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->imagePriority:I

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/appwidget/Andy_CarousalView;->access$100(Lcom/lge/appwidget/Andy_CarousalView;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/appwidget/Andy_ImageInfo;->imageWidth:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    sub-int v15, v15, v16

    int-to-float v15, v15

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->imageXPosition:F

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    invoke-static {v15}, Lcom/lge/appwidget/Andy_CarousalView;->access$300(Lcom/lge/appwidget/Andy_CarousalView;)I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->angleMultiple:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/appwidget/Andy_ImageInfo;->imageHeight:I

    move/from16 v16, v0

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->imageYPosition:F

    .line 446
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 452
    :cond_1e5
    const/16 v15, 0x3c

    goto/16 :goto_7d

    .line 473
    :cond_1e9
    if-eqz v13, :cond_318

    .line 474
    const/4 v4, 0x0

    :goto_1ec
    const/4 v14, 0x5

    if-ge v4, v14, :cond_2a6

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->increment:I

    if-gez v14, :cond_24a

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    iget v14, v14, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    sparse-switch v14, :sswitch_data_5de

    .line 474
    :cond_206
    :goto_206
    add-int/lit8 v4, v4, 0x1

    goto :goto_1ec

    .line 478
    :sswitch_209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x0

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_206

    .line 481
    :sswitch_216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x1

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_206

    .line 484
    :sswitch_223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x2

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_206

    .line 487
    :sswitch_230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x3

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_206

    .line 490
    :sswitch_23d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x4

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_206

    .line 494
    :cond_24a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->increment:I

    if-lez v14, :cond_206

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    iget v14, v14, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    sparse-switch v14, :sswitch_data_5f4

    goto :goto_206

    .line 498
    :sswitch_262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x0

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_206

    .line 501
    :sswitch_26f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x1

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_206

    .line 504
    :sswitch_27c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x2

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto/16 :goto_206

    .line 507
    :sswitch_28a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x3

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto/16 :goto_206

    .line 510
    :sswitch_298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x4

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto/16 :goto_206

    .line 516
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->increment:I

    if-gez v14, :cond_391

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v15

    const/16 v16, 0x5

    sub-int v15, v15, v16

    if-ge v14, v15, :cond_317

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/appwidget/Andy_CarousalView;->access$500(Lcom/lge/appwidget/Andy_CarousalView;)Lcom/lge/appwidget/UpdateLock;

    move-result-object v14

    monitor-enter v14

    .line 523
    :try_start_2dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 525
    .local v8, recycleBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/lge/appwidget/Andy_CarousalView;->access$600()Landroid/graphics/Bitmap;

    move-result-object v15

    if-eq v8, v15, :cond_2f4

    .line 526
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 528
    :cond_2f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x4

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/appwidget/UrlCache;

    .line 530
    .local v12, tempUrlCache:Lcom/lge/appwidget/UrlCache;
    invoke-virtual {v12}, Lcom/lge/appwidget/UrlCache;->getType()I

    move-result v11

    .line 532
    .local v11, tempType:I
    packed-switch v11, :pswitch_data_60a

    .line 547
    :goto_316
    :pswitch_316
    monitor-exit v14
    :try_end_317
    .catchall {:try_start_2dc .. :try_end_317} :catchall_364

    .line 588
    .end local v8       #recycleBitmap:Landroid/graphics/Bitmap;,
    .end local v11       #tempType:I,
    .end local v12       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    :cond_317
    :goto_317
    const/4 v13, 0x0

    .line 591
    :cond_318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->list:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->mImageComparator:Lcom/lge/appwidget/ImageComparator;

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->mUpdateResults:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 595
    :try_start_33a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/appwidget/Andy_CarousalView;->access$700(Lcom/lge/appwidget/Andy_CarousalView;)I

    move-result v14

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_347
    .catch Ljava/lang/InterruptedException; {:try_start_33a .. :try_end_347} :catch_432

    .line 445
    :goto_347
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 534
    .restart local v8       #recycleBitmap:Landroid/graphics/Bitmap;,
    .restart local v11       #tempType:I,
    .restart local v12       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    :pswitch_34b
    :try_start_34b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->forwardCachedBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_316

    .line 547
    .end local v8       #recycleBitmap:Landroid/graphics/Bitmap;,
    .end local v11       #tempType:I,
    .end local v12       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    :catchall_364
    move-exception v15

    monitor-exit v14
    :try_end_366
    .catchall {:try_start_34b .. :try_end_366} :catchall_364

    throw v15

    .line 538
    .restart local v8       #recycleBitmap:Landroid/graphics/Bitmap;,
    .restart local v11       #tempType:I,
    .restart local v12       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    :pswitch_367
    :try_start_367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    const/16 v16, 0x4

    invoke-static {}, Lcom/lge/appwidget/Andy_CarousalView;->access$600()Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_316

    .line 543
    :pswitch_378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    const/16 v16, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->forwardCachedBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_390
    .catchall {:try_start_367 .. :try_end_390} :catchall_364

    goto :goto_316

    .line 552
    .end local v8       #recycleBitmap:Landroid/graphics/Bitmap;,
    .end local v11       #tempType:I,
    .end local v12       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    :cond_391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    if-lez v14, :cond_317

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    const/16 v16, 0x1

    sub-int v15, v15, v16

    iput v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    invoke-static {v14}, Lcom/lge/appwidget/Andy_CarousalView;->access$500(Lcom/lge/appwidget/Andy_CarousalView;)Lcom/lge/appwidget/UpdateLock;

    move-result-object v14

    monitor-enter v14

    .line 557
    :try_start_3b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    .line 559
    .restart local v8       #recycleBitmap:Landroid/graphics/Bitmap;,
    invoke-static {}, Lcom/lge/appwidget/Andy_CarousalView;->access$600()Landroid/graphics/Bitmap;

    move-result-object v15

    if-eq v8, v15, :cond_3c9

    .line 560
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 562
    :cond_3c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/lge/appwidget/UrlCache;

    .line 564
    .restart local v12       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    invoke-virtual {v12}, Lcom/lge/appwidget/UrlCache;->getType()I

    move-result v11

    .line 566
    .restart local v11       #tempType:I,
    packed-switch v11, :pswitch_data_616

    .line 582
    :goto_3e9
    :pswitch_3e9
    monitor-exit v14

    goto/16 :goto_317

    .end local v8       #recycleBitmap:Landroid/graphics/Bitmap;,
    .end local v11       #tempType:I,
    .end local v12       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    :catchall_3ec
    move-exception v15

    monitor-exit v14
    :try_end_3ee
    .catchall {:try_start_3b1 .. :try_end_3ee} :catchall_3ec

    throw v15

    .line 569
    .restart local v8       #recycleBitmap:Landroid/graphics/Bitmap;,
    .restart local v11       #tempType:I,
    .restart local v12       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    :pswitch_3ef
    :try_start_3ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->backwardCacheBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3e9

    .line 573
    :pswitch_408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-static {}, Lcom/lge/appwidget/Andy_CarousalView;->access$600()Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3e9

    .line 577
    :pswitch_419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    iget-object v15, v15, Lcom/lge/appwidget/Andy_CarousalView;->bitmapList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView;->backwardCacheBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_431
    .catchall {:try_start_3ef .. :try_end_431} :catchall_3ec

    goto :goto_3e9

    .line 596
    .end local v8       #recycleBitmap:Landroid/graphics/Bitmap;,
    .end local v11       #tempType:I,
    .end local v12       #tempUrlCache:Lcom/lge/appwidget/UrlCache;,
    :catch_432
    move-exception v14

    move-object v2, v14

    .line 598
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_347

    .line 602
    .end local v2       #e:Ljava/lang/InterruptedException;,
    .end local v4       #i:I,
    :cond_439
    const/4 v4, 0x0

    .restart local v4       #i:I,
    :goto_43a
    const/4 v14, 0x5

    if-ge v4, v14, :cond_48f

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    iget v14, v14, Lcom/lge/appwidget/Andy_ImageInfo;->currentAngle:I

    sparse-switch v14, :sswitch_data_622

    .line 602
    :goto_44b
    add-int/lit8 v4, v4, 0x1

    goto :goto_43a

    .line 606
    :sswitch_44e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x0

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_44b

    .line 610
    :sswitch_45b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x1

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_44b

    .line 613
    :sswitch_468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x2

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_44b

    .line 617
    :sswitch_475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x3

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_44b

    .line 620
    :sswitch_482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->img:[Lcom/lge/appwidget/Andy_ImageInfo;

    aget-object v14, v14, v4

    const/4 v15, 0x4

    iput v15, v14, Lcom/lge/appwidget/Andy_ImageInfo;->ImageIndex:I

    goto :goto_44b

    .line 627
    :cond_48f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    add-int/lit8 v3, v14, 0x5

    .line 628
    .local v3, forwardBitmapCacheIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    const/4 v15, 0x2

    sub-int/2addr v14, v15

    if-ge v3, v14, :cond_4bb

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v14, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {v1}, Lcom/lge/appwidget/UrlCache;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_638

    .line 659
    :cond_4bb
    :goto_4bb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheIndex:I

    const/4 v15, 0x1

    sub-int v1, v14, v15

    .line 661
    .local v1, backwardBitmapCacheIndex:I
    const/4 v14, 0x1

    if-le v1, v14, :cond_4dc

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v14, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {v2}, Lcom/lge/appwidget/UrlCache;->getType()I

    move-result v14

    packed-switch v14, :pswitch_data_640

    .line 695
    .end local v1       #backwardBitmapCacheIndex:I,
    :cond_4dc
    :goto_4dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->threadAlive:Z

    .line 696
    return-void

    .line 633
    :pswitch_4e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v14, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {v1}, Lcom/lge/appwidget/UrlCache;->getString()Ljava/lang/String;

    move-result-object v6

    .line 635
    .local v6, imagePath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    .local v5, imageFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4bb

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    invoke-virtual {v15, v6}, Lcom/lge/appwidget/Andy_CarousalView;->cropImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->forwardCachedBitmap:Landroid/graphics/Bitmap;

    goto :goto_4bb

    .line 644
    .end local v5       #imageFile:Ljava/io/File;,
    .end local v6       #imagePath:Ljava/lang/String;,
    :pswitch_512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v14, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {v1}, Lcom/lge/appwidget/UrlCache;->getString()Ljava/lang/String;

    move-result-object v9

    .line 646
    .local v9, st:Ljava/lang/String;
    const-string v14, "#"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 647
    .local v10, str:[Ljava/lang/String;
    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_547

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v16, v10, v16

    const/16 v17, 0x1

    aget-object v17, v10, v17

    invoke-virtual/range {v15 .. v17}, Lcom/lge/appwidget/Andy_CarousalView;->drawText(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->forwardCachedBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_4bb

    .line 650
    :cond_547
    array-length v14, v10

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4bb

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Lcom/lge/appwidget/Andy_CarousalView;->drawText(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->forwardCachedBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_4bb

    .line 665
    .end local v9       #st:Ljava/lang/String;,
    .end local v10       #str:[Ljava/lang/String;,
    .restart local v1       #backwardBitmapCacheIndex:I,
    :pswitch_561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v14, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #backwardBitmapCacheIndex:I,
    check-cast v1, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {v1}, Lcom/lge/appwidget/UrlCache;->getString()Ljava/lang/String;

    move-result-object v6

    .line 667
    .restart local v6       #imagePath:Ljava/lang/String;,
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 668
    .restart local v5       #imageFile:Ljava/io/File;,
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4dc

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    invoke-virtual {v15, v6}, Lcom/lge/appwidget/Andy_CarousalView;->cropImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->backwardCacheBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_4dc

    .line 680
    .end local v5       #imageFile:Ljava/io/File;,
    .end local v6       #imagePath:Ljava/lang/String;,
    .restart local v1       #backwardBitmapCacheIndex:I,
    :pswitch_58f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    iget-object v14, v14, Lcom/lge/appwidget/Andy_CarousalView;->urlCacheList:Ljava/util/LinkedList;

    invoke-virtual {v14, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #backwardBitmapCacheIndex:I,
    check-cast v1, Lcom/lge/appwidget/UrlCache;

    invoke-virtual {v1}, Lcom/lge/appwidget/UrlCache;->getString()Ljava/lang/String;

    move-result-object v9

    .line 682
    .restart local v9       #st:Ljava/lang/String;,
    const-string v14, "#"

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 683
    .restart local v10       #str:[Ljava/lang/String;,
    array-length v14, v10

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5c4

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v16, v10, v16

    const/16 v17, 0x1

    aget-object v17, v10, v17

    invoke-virtual/range {v15 .. v17}, Lcom/lge/appwidget/Andy_CarousalView;->drawText(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->backwardCacheBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_4dc

    .line 686
    :cond_5c4
    array-length v14, v10

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4dc

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/appwidget/Andy_CarousalView$3;->this$0:Lcom/lge/appwidget/Andy_CarousalView;

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v16, v10, v16

    invoke-virtual/range {v15 .. v16}, Lcom/lge/appwidget/Andy_CarousalView;->drawText(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    iput-object v15, v14, Lcom/lge/appwidget/Andy_CarousalView;->backwardCacheBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_4dc

    .line 476
    :sswitch_data_5de
    .sparse-switch
        -0x24 -> :sswitch_209
        -0xc -> :sswitch_216
        0xc -> :sswitch_223
        0x24 -> :sswitch_230
        0x3c -> :sswitch_23d
    .end sparse-switch

    .line 495
    :sswitch_data_5f4
    .sparse-switch
        -0x3c -> :sswitch_262
        -0x24 -> :sswitch_26f
        -0xc -> :sswitch_27c
        0xc -> :sswitch_28a
        0x24 -> :sswitch_298
    .end sparse-switch

    .line 532
    :pswitch_data_60a
    .packed-switch 0x0
        :pswitch_367
        :pswitch_316
        :pswitch_34b
        :pswitch_378
    .end packed-switch

    .line 566
    :pswitch_data_616
    .packed-switch 0x0
        :pswitch_408
        :pswitch_3e9
        :pswitch_3ef
        :pswitch_419
    .end packed-switch

    .line 604
    :sswitch_data_622
    .sparse-switch
        -0x30 -> :sswitch_44e
        -0x18 -> :sswitch_45b
        0x0 -> :sswitch_468
        0x18 -> :sswitch_475
        0x30 -> :sswitch_482
    .end sparse-switch

    .line 630
    :pswitch_data_638
    .packed-switch 0x2
        :pswitch_4e5
        :pswitch_512
    .end packed-switch

    .line 662
    :pswitch_data_640
    .packed-switch 0x2
        :pswitch_561
        :pswitch_58f
    .end packed-switch
.end method
