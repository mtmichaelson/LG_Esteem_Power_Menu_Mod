.class public Lcom/lge/appwidget/Andy_TodayRollerViewLayout;
.super Landroid/widget/RelativeLayout;
.source "Andy_TodayRollerViewLayout.java"


# interfaces
.implements Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final ANIMATION_SUPPORT:Z = true

.field private static final ANIM_ARROW_FADE_TIME:I = 0x15e

.field private static final ANIM_ARROW_FADE_TIME_LONG:I = 0x1f4

.field private static final ANIM_ARROW_FADE_TIME_REG:I = 0x64

.field private static final ANIM_ARROW_FADE_TIME_SHORT:I = 0xa

.field public static final FUNC_SETAPPWIDGETID:Ljava/lang/String; = "setAppWidgetId"

.field public static final FUNC_SETDUMMYLENGTH:Ljava/lang/String; = "setDummyLength"

.field public static final FUNC_SETROLLERDOWNCUE:Ljava/lang/String; = "setRollerDownCue"

.field public static final FUNC_SETROLLERPICKED:Ljava/lang/String; = "setRollerPicked"

.field public static final FUNC_SETROLLERPICKER:Ljava/lang/String; = "setRollerPicker"

.field public static final FUNC_SETROLLERUPCUE:Ljava/lang/String; = "setRollerUpCue"

.field public static final KEY_TODAY_ITEM_ICON:Ljava/lang/String; = "TODAY_ITEM_ICON"

.field public static final KEY_TODAY_ITEM_POS:Ljava/lang/String; = "TODAY_ITEM_POS"

.field public static final KEY_TODAY_ITEM_TEXT:Ljava/lang/String; = "TODAY_ITEM_TEXT"

.field private static final TAG:Ljava/lang/String; = "com.lge.appwidget.Andy_TodayRollerViewLayout"



# instance fields
.field private _anim_in:Landroid/view/animation/Animation;

.field private _anim_out:Landroid/view/animation/Animation;

.field private _anim_picked_in:Landroid/view/animation/Animation;

.field private _anim_picked_out:Landroid/view/animation/Animation;

.field private _appwidget_id:I

.field private _isCueAvailable:Z

.field private _iv_down:Landroid/widget/ImageView;

.field private _iv_picked:Landroid/widget/ImageView;

.field private _iv_up:Landroid/widget/ImageView;

.field private _order:Ljava/lang/String;

.field private _rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

.field private _rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

.field private _rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

.field private _rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

.field private _roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method private addViews()V
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->removeAllViews()V

    .line 193
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->addView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->addView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->addView(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->addView(Landroid/view/View;)V

    .line 198
    return-void
.end method

.method private initAnimation(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x15e

    const v2, 0x10a0001

    const/high16 v1, 0x10a

    .line 267
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_in:Landroid/view/animation/Animation;

    .line 268
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_out:Landroid/view/animation/Animation;

    .line 269
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_picked_in:Landroid/view/animation/Animation;

    .line 270
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_picked_out:Landroid/view/animation/Animation;

    .line 272
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 273
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_out:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 274
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_picked_in:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 275
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_picked_out:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 276
    return-void
.end method

.method private initCueStatus(I)V
    .registers 5
    .parameter "item_num"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 280
    if-ne p1, v0, :cond_1a

    .line 282
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_isCueAvailable:Z

    .line 284
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    invoke-virtual {p0, v1, p1}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->onRollerStopped(II)V

    .line 308
    :goto_19
    return-void

    .line 290
    :cond_1a
    if-le p1, v0, :cond_31

    .line 292
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_isCueAvailable:Z

    .line 294
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    invoke-virtual {p0, v1, p1}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->onRollerStopped(II)V

    goto :goto_19

    .line 302
    :cond_31
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_isCueAvailable:Z

    .line 304
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19
.end method

.method private initViews(Landroid/content/Context;)V
    .registers 14
    .parameter "context"

    .prologue
    const/4 v11, 0x4

    const/16 v10, 0x6c

    const/4 v9, 0x0

    .line 220
    invoke-static {p1}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->isOrientationLandscape(Landroid/content/Context;)Z

    move-result v3

    .line 221
    .local v3, isLandscape:Z
    const/16 v6, 0x6c

    .line 222
    .local v6, width:I
    sget v4, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    .line 223
    .local v4, item_len:I
    if-eqz v3, :cond_a8

    const/16 v7, 0x29

    move v2, v7

    .line 226
    .local v2, height:I
    :goto_11
    sget v1, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_WIDTH_LENGTH:I

    .line 227
    .local v1, dummy_width_len:I
    sget v0, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    .line 230
    .local v0, dummy_height_len:I
    const/4 v5, 0x0

    .line 234
    .local v5, params:Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v8, v0, 0x2

    add-int/2addr v8, v4

    invoke-direct {v7, v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

    .line 235
    new-instance v7, Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-direct {v7, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    .line 236
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    iget-object v8, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v8}, Lcom/lge/appwidget/Andy_TodayRollerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v7, p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->setOnItemStatusChangedListener(Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;)V

    .line 240
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

    .line 241
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 242
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    .line 243
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    const v8, 0x20201cc

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    .line 249
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    add-int v8, v0, v4

    invoke-virtual {v7, v9, v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    .line 251
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    const v8, 0x20201ca

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v10, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

    .line 257
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v9, v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 258
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    .line 259
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v7, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    const v8, 0x20201cd

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    return-void

    .line 223
    .end local v0       #dummy_height_len:I,
    .end local v1       #dummy_width_len:I,
    .end local v2       #height:I,
    .end local v5       #params:Landroid/widget/RelativeLayout$LayoutParams;,
    :cond_a8
    sget v7, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    move v2, v7

    goto/16 :goto_11
.end method

.method private initialization()V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->updateViews()V

    .line 95
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->initCueStatus(I)V

    .line 96
    return-void
.end method

.method public static isOrientationLandscape(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 396
    if-eqz p0, :cond_16

    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 400
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_16

    .line 402
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_18

    move v1, v2

    .line 414
    .end local v0       #config:Landroid/content/res/Configuration;,
    :goto_13
    return v1

    .line 405
    .restart local v0       #config:Landroid/content/res/Configuration;,
    :pswitch_14
    const/4 v1, 0x1

    goto :goto_13

    .end local v0       #config:Landroid/content/res/Configuration;,
    :cond_16
    move v1, v2

    .line 414
    goto :goto_13

    .line 402
    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_14
    .end packed-switch
.end method

.method private setRollerCueHeight(I)V
    .registers 6
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 202
    sget v0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    .line 204
    .local v0, item_len:I
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 205
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 208
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    add-int v2, p1, v0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 209
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3, p1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 212
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 215
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/lge/appwidget/Andy_TodayRollerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    return-void
.end method

.method private updateViews()V
    .registers 3

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->initAnimation(Landroid/content/Context;)V

    .line 183
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->initViews(Landroid/content/Context;)V

    .line 184
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->addViews()V

    .line 186
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v1, v0}, Lcom/lge/appwidget/Andy_TodayRollerView;->updateRollerLayout(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method private vaporization()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 88
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->vaporization()V

    .line 89
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 80
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->initialization()V

    .line 81
    return-void
.end method

.method public onLeaveFromHead()V
    .registers 3

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_11

    .line 354
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 361
    :cond_11
    return-void
.end method

.method public onLeaveFromTail()V
    .registers 3

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_11

    .line 341
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 348
    :cond_11
    return-void
.end method

.method public onReachToHead()V
    .registers 3

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_11

    .line 328
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_out:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 335
    :cond_11
    return-void
.end method

.method public onReachToTail()V
    .registers 3

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_11

    .line 315
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_anim_out:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 322
    :cond_11
    return-void
.end method

.method public onRollerOrientationChanged(I)V
    .registers 2
    .parameter "length"

    .prologue
    .line 391
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->setRollerCueHeight(I)V

    .line 392
    return-void
.end method

.method public declared-synchronized onRollerStarted()V
    .registers 3

    .prologue
    .line 365
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_b

    .line 367
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 370
    :cond_b
    monitor-exit p0

    return-void

    .line 365
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRollerStopped(II)V
    .registers 5
    .parameter "pos"
    .parameter "item_num"

    .prologue
    .line 374
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_b

    .line 376
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 379
    :cond_b
    monitor-exit p0

    return-void

    .line 374
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRollerUpdated(I)V
    .registers 3
    .parameter "item_num"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    if-eqz v0, :cond_7

    .line 385
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->initCueStatus(I)V

    .line 387
    :cond_7
    return-void
.end method

.method public setAppWidgetId(I)V
    .registers 3
    .parameter "appwidget_id"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 128
    iput p1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_appwidget_id:I

    .line 130
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    if-eqz v0, :cond_b

    .line 132
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->setAppWidgetId(I)V

    .line 134
    :cond_b
    return-void
.end method

.method public setDummyLength(I)V
    .registers 3
    .parameter "length"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->setDummyLength(I)V

    .line 108
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->setRollerCueHeight(I)V

    .line 109
    return-void
.end method

.method public setIconHeight(I)V
    .registers 3
    .parameter "length"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->setIconHeight(I)V

    .line 116
    return-void
.end method

.method public setIconLayoutHeight(I)V
    .registers 3
    .parameter "length"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->setIconLayoutHeight(I)V

    .line 123
    return-void
.end method

.method public setItemOrder(Ljava/lang/String;)V
    .registers 3
    .parameter "order"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 168
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_order:Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    if-eqz v0, :cond_b

    .line 172
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->setItemOrder(Ljava/lang/String;)V

    .line 174
    :cond_b
    return-void
.end method

.method public setRollerDownCue(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 150
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    :cond_9
    return-void
.end method

.method public setRollerPicked(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 159
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 161
    :cond_9
    return-void
.end method

.method public setRollerUpCue(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 141
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    :cond_9
    return-void
.end method
