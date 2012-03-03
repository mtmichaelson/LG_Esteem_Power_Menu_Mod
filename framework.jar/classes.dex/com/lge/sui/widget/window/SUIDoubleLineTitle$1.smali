.class Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;
.super Ljava/lang/Object;
.source "SUIDoubleLineTitle.java"


# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/window/SUIDoubleLineTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDelegateTargeted:Z

.field final synthetic this$0:Lcom/lge/sui/widget/window/SUIDoubleLineTitle;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->this$0:Lcom/lge/sui/widget/window/SUIDoubleLineTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "v"
    .parameter "event"

    .prologue
    const-string v12, ", "

    const-string v11, ")"

    .line 263
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 264
    .local v6, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 265
    .local v7, y:I
    const/4 v3, 0x0

    .line 266
    .local v3, sendToDelegate:Z
    const/4 v2, 0x1

    .line 267
    .local v2, hit:Z
    const/4 v1, 0x0

    .line 268
    .local v1, handled:Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 269
    .local v0, bounds:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 270
    .local v5, slopBounds:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 271
    .local v4, slop:I
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/2addr v6, v8

    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v7, v8

    .line 275
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_162

    .line 309
    :cond_3b
    :goto_3b
    if-eqz v3, :cond_5f

    .line 310
    if-eqz v2, :cond_149

    .line 312
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 313
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->this$0:Lcom/lge/sui/widget/window/SUIDoubleLineTitle;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->access$000(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "hit!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_5b
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 323
    :cond_5f
    return v1

    .line 277
    :pswitch_60
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 278
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->mDelegateTargeted:Z

    .line 279
    const/4 v3, 0x1

    .line 280
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->this$0:Lcom/lge/sui/widget/window/SUIDoubleLineTitle;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->access$000(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_DOWN : bounds.contain("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 282
    :cond_97
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->this$0:Lcom/lge/sui/widget/window/SUIDoubleLineTitle;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->access$000(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_DOWN : NOT bounds.contain("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 287
    :pswitch_c5
    iget-boolean v3, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->mDelegateTargeted:Z

    .line 288
    if-eqz v3, :cond_3b

    .line 290
    new-instance v5, Landroid/graphics/Rect;

    .end local v5       #slopBounds:Landroid/graphics/Rect;,
    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 291
    .restart local v5       #slopBounds:Landroid/graphics/Rect;,
    neg-int v8, v4

    neg-int v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 292
    iget v8, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, 0x32

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 293
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x32

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 295
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_114

    .line 296
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->this$0:Lcom/lge/sui/widget/window/SUIDoubleLineTitle;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->access$000(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_MOVE or UP : NOT slopBounds.contain("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v2, 0x0

    goto/16 :goto_3b

    .line 299
    :cond_114
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->this$0:Lcom/lge/sui/widget/window/SUIDoubleLineTitle;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->access$000(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_MOVE or UP : slopBounds.contain("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 304
    :pswitch_142
    iget-boolean v3, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->mDelegateTargeted:Z

    .line 305
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->mDelegateTargeted:Z

    goto/16 :goto_3b

    .line 317
    :cond_149
    mul-int/lit8 v8, v4, 0x2

    neg-int v8, v8

    int-to-float v8, v8

    mul-int/lit8 v9, v4, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 318
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUIDoubleLineTitle$1;->this$0:Lcom/lge/sui/widget/window/SUIDoubleLineTitle;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUIDoubleLineTitle;->access$000(Lcom/lge/sui/widget/window/SUIDoubleLineTitle;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "NOT hit!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5b

    .line 275
    nop

    :pswitch_data_162
    .packed-switch 0x0
        :pswitch_60
        :pswitch_c5
        :pswitch_c5
        :pswitch_142
    .end packed-switch
.end method
