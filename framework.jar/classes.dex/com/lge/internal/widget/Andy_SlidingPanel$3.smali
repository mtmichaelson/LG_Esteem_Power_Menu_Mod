.class Lcom/lge/internal/widget/Andy_SlidingPanel$3;
.super Ljava/lang/Object;
.source "Andy_SlidingPanel.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/internal/widget/Andy_SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;



# direct methods
.method constructor <init>(Lcom/lge/internal/widget/Andy_SlidingPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 459
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 568
    :cond_8
    :goto_8
    return-void

    .line 462
    :cond_9
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1002(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z

    .line 463
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v9

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->ANIMATING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v9

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->READY:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-eq v9, v10, :cond_8

    .line 470
    const/4 v2, 0x0

    .local v2, fromXDelta:I
    const/4 v6, 0x0

    .local v6, toXDelta:I
    const/4 v3, 0x0

    .local v3, fromYDelta:I
    const/4 v7, 0x0

    .line 471
    .local v7, toYDelta:I
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v9

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->FLYING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v9, v10, :cond_68

    .line 473
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v5

    .line 475
    .local v5, oldShrinking:Z
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v10, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v10

    if-eqz v10, :cond_4a

    iget-object v10, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_126

    :cond_4a
    const/4 v10, 0x1

    :goto_4b
    iget-object v11, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v11}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1300(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_129

    const/4 v11, 0x1

    :goto_57
    xor-int/2addr v10, v11

    invoke-static {v9, v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1102(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z

    .line 477
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v9

    if-eq v5, v9, :cond_68

    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9, v5}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1102(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z

    .line 481
    .end local v5       #oldShrinking:Z,
    :cond_68
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$400(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_168

    .line 483
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v9

    iget-object v10, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1400(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v10

    sub-int v4, v9, v10

    .line 485
    .local v4, height:I
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v9

    if-nez v9, :cond_12f

    .line 486
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v9

    if-nez v9, :cond_12c

    neg-int v9, v4

    move v3, v9

    .line 490
    :goto_91
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v9

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->TRACKING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v9, v10, :cond_13f

    .line 491
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1500(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v9

    int-to-float v10, v3

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget-object v10, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1500(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v10

    int-to-float v11, v7

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_c6

    .line 496
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v10, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v10

    if-nez v10, :cond_13d

    const/4 v10, 0x1

    :goto_c2
    invoke-static {v9, v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1102(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z

    .line 501
    move v7, v3

    .line 503
    :cond_c6
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1500(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v9

    float-to-int v3, v9

    .line 510
    :cond_cd
    :goto_cd
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v9

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->FLYING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v9, v10, :cond_152

    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1600(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v9

    if-eqz v9, :cond_152

    .line 511
    const/high16 v9, 0x447a

    sub-int v10, v7, v3

    int-to-float v10, v10

    iget-object v11, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v11}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1300(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v11

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 513
    .local v1, calculatedDuration:I
    const/16 v9, 0x14

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 547
    .end local v4       #height:I,
    :goto_f7
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v10, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1502(Lcom/lge/internal/widget/Andy_SlidingPanel;F)F

    move-result v10

    invoke-static {v9, v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1802(Lcom/lge/internal/widget/Andy_SlidingPanel;F)F

    .line 548
    if-nez v1, :cond_224

    .line 549
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->READY:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    invoke-static {v9, v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$002(Lcom/lge/internal/widget/Andy_SlidingPanel;Lcom/lge/internal/widget/Andy_SlidingPanel$State;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    .line 550
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v9

    if-eqz v9, :cond_11f

    .line 551
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$300(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 553
    :cond_11f
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1200(Lcom/lge/internal/widget/Andy_SlidingPanel;)V

    goto/16 :goto_8

    .line 475
    .end local v1       #calculatedDuration:I,
    .restart local v5       #oldShrinking:Z,
    :cond_126
    const/4 v10, 0x0

    goto/16 :goto_4b

    :cond_129
    const/4 v11, 0x0

    goto/16 :goto_57

    .end local v5       #oldShrinking:Z,
    .restart local v4       #height:I,
    :cond_12c
    move v3, v4

    .line 486
    goto/16 :goto_91

    .line 488
    :cond_12f
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v9

    if-nez v9, :cond_13b

    neg-int v9, v4

    move v7, v9

    :goto_139
    goto/16 :goto_91

    :cond_13b
    move v7, v4

    goto :goto_139

    .line 496
    :cond_13d
    const/4 v10, 0x0

    goto :goto_c2

    .line 504
    :cond_13f
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v9

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->FLYING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v9, v10, :cond_cd

    .line 505
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1500(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v9

    float-to-int v3, v9

    goto/16 :goto_cd

    .line 515
    :cond_152
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v9

    sub-int v10, v7, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    mul-int/2addr v9, v10

    iget-object v10, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v10

    div-int v1, v9, v10

    .restart local v1       #calculatedDuration:I,
    goto :goto_f7

    .line 519
    .end local v1       #calculatedDuration:I,
    .end local v4       #height:I,
    :cond_168
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$600(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v8

    .line 520
    .local v8, width:I
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v9

    if-nez v9, :cond_1eb

    .line 521
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1e9

    neg-int v9, v8

    move v2, v9

    .line 525
    :goto_181
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v9

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->TRACKING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v9, v10, :cond_1fb

    .line 526
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1800(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v9

    int-to-float v10, v2

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget-object v10, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1800(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v10

    int-to-float v11, v6

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1b6

    .line 527
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    iget-object v10, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1100(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v10

    if-nez v10, :cond_1f9

    const/4 v10, 0x1

    :goto_1b2
    invoke-static {v9, v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1102(Lcom/lge/internal/widget/Andy_SlidingPanel;Z)Z

    .line 528
    move v6, v2

    .line 530
    :cond_1b6
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1800(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v9

    float-to-int v2, v9

    .line 537
    :cond_1bd
    :goto_1bd
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v9

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->FLYING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v9, v10, :cond_20d

    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1600(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v9

    if-eqz v9, :cond_20d

    .line 538
    const/high16 v9, 0x447a

    sub-int v10, v6, v2

    int-to-float v10, v10

    iget-object v11, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v11}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1300(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v11

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 540
    .restart local v1       #calculatedDuration:I,
    const/16 v9, 0x14

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_f7

    .end local v1       #calculatedDuration:I,
    :cond_1e9
    move v2, v8

    .line 521
    goto :goto_181

    .line 523
    :cond_1eb
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$500(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1f7

    neg-int v9, v8

    move v6, v9

    :goto_1f6
    goto :goto_181

    :cond_1f7
    move v6, v8

    goto :goto_1f6

    .line 527
    :cond_1f9
    const/4 v10, 0x0

    goto :goto_1b2

    .line 531
    :cond_1fb
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v9

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->FLYING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v9, v10, :cond_1bd

    .line 532
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1800(Lcom/lge/internal/widget/Andy_SlidingPanel;)F

    move-result v9

    float-to-int v2, v9

    goto :goto_1bd

    .line 542
    :cond_20d
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1700(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v9

    sub-int v10, v6, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    mul-int/2addr v9, v10

    iget-object v10, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v10}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$600(Lcom/lge/internal/widget/Andy_SlidingPanel;)I

    move-result v10

    div-int v1, v9, v10

    .restart local v1       #calculatedDuration:I,
    goto/16 :goto_f7

    .line 557
    .end local v8       #width:I,
    :cond_224
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v9, v2

    int-to-float v10, v6

    int-to-float v11, v3

    int-to-float v12, v7

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 558
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    int-to-long v9, v1

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 562
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$000(Lcom/lge/internal/widget/Andy_SlidingPanel;)Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    move-result-object v9

    sget-object v10, Lcom/lge/internal/widget/Andy_SlidingPanel$State;->FLYING:Lcom/lge/internal/widget/Andy_SlidingPanel$State;

    if-ne v9, v10, :cond_252

    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1600(Lcom/lge/internal/widget/Andy_SlidingPanel;)Z

    move-result v9

    if-eqz v9, :cond_252

    .line 563
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 567
    :cond_24b
    :goto_24b
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v9, v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_8

    .line 564
    :cond_252
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1900(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/animation/Interpolator;

    move-result-object v9

    if-eqz v9, :cond_24b

    .line 565
    iget-object v9, p0, Lcom/lge/internal/widget/Andy_SlidingPanel$3;->this$0:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-static {v9}, Lcom/lge/internal/widget/Andy_SlidingPanel;->access$1900(Lcom/lge/internal/widget/Andy_SlidingPanel;)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_24b
.end method
