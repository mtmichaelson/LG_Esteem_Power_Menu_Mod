.class Lcom/lge/sui/widget/window/SUICommandBar$1;
.super Ljava/lang/Object;
.source "SUICommandBar.java"


# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sui/widget/window/SUICommandBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDelegateTargeted:Z

.field final synthetic this$0:Lcom/lge/sui/widget/window/SUICommandBar;



# direct methods
.method constructor <init>(Lcom/lge/sui/widget/window/SUICommandBar;)V
    .registers 2
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->this$0:Lcom/lge/sui/widget/window/SUICommandBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "v"
    .parameter "event"

    .prologue
    const/16 v10, 0x1e

    const-string v12, ", "

    const-string v11, ")"

    .line 283
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    .line 284
    .local v6, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    .line 285
    .local v7, y:I
    const/4 v3, 0x0

    .line 286
    .local v3, sendToDelegate:Z
    const/4 v2, 0x1

    .line 287
    .local v2, hit:Z
    const/4 v1, 0x0

    .line 288
    .local v1, handled:Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 289
    .local v0, bounds:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 290
    .local v5, slopBounds:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    .line 291
    .local v4, slop:I
    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 292
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    add-int/2addr v6, v8

    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v7, v8

    .line 295
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_16e

    .line 331
    :cond_3d
    :goto_3d
    if-eqz v3, :cond_61

    .line 332
    if-eqz v2, :cond_155

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 335
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->this$0:Lcom/lge/sui/widget/window/SUICommandBar;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUICommandBar;->access$000(Lcom/lge/sui/widget/window/SUICommandBar;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "hit!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_5d
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 345
    :cond_61
    return v1

    .line 297
    :pswitch_62
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 298
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->mDelegateTargeted:Z

    .line 299
    const/4 v3, 0x1

    .line 300
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->this$0:Lcom/lge/sui/widget/window/SUICommandBar;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUICommandBar;->access$000(Lcom/lge/sui/widget/window/SUICommandBar;)Ljava/lang/String;

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

    goto :goto_3d

    .line 302
    :cond_99
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->this$0:Lcom/lge/sui/widget/window/SUICommandBar;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUICommandBar;->access$000(Lcom/lge/sui/widget/window/SUICommandBar;)Ljava/lang/String;

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

    goto/16 :goto_3d

    .line 307
    :pswitch_c7
    iget-boolean v3, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->mDelegateTargeted:Z

    .line 308
    if-eqz v3, :cond_3d

    .line 310
    new-instance v5, Landroid/graphics/Rect;

    .end local v5       #slopBounds:Landroid/graphics/Rect;,
    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 311
    .restart local v5       #slopBounds:Landroid/graphics/Rect;,
    neg-int v8, v4

    neg-int v9, v4

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->inset(II)V

    .line 312
    iget v8, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v8, v8, 0x1e

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 313
    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v8, v8, 0x1e

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 314
    iget v8, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 315
    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v10

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 317
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_120

    .line 318
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->this$0:Lcom/lge/sui/widget/window/SUICommandBar;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUICommandBar;->access$000(Lcom/lge/sui/widget/window/SUICommandBar;)Ljava/lang/String;

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

    .line 319
    const/4 v2, 0x0

    goto/16 :goto_3d

    .line 321
    :cond_120
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->this$0:Lcom/lge/sui/widget/window/SUICommandBar;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUICommandBar;->access$000(Lcom/lge/sui/widget/window/SUICommandBar;)Ljava/lang/String;

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

    goto/16 :goto_3d

    .line 326
    :pswitch_14e
    iget-boolean v3, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->mDelegateTargeted:Z

    .line 327
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->mDelegateTargeted:Z

    goto/16 :goto_3d

    .line 339
    :cond_155
    mul-int/lit8 v8, v4, 0x2

    neg-int v8, v8

    int-to-float v8, v8

    mul-int/lit8 v9, v4, 0x2

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p2, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 340
    iget-object v8, p0, Lcom/lge/sui/widget/window/SUICommandBar$1;->this$0:Lcom/lge/sui/widget/window/SUICommandBar;

    invoke-static {v8}, Lcom/lge/sui/widget/window/SUICommandBar;->access$000(Lcom/lge/sui/widget/window/SUICommandBar;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "NOT hit!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5d

    .line 295
    nop

    :pswitch_data_16e
    .packed-switch 0x0
        :pswitch_62
        :pswitch_c7
        :pswitch_c7
        :pswitch_14e
    .end packed-switch
.end method
