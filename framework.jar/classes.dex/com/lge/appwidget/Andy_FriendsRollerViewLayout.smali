.class public Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;
.super Landroid/widget/RelativeLayout;
.source "Andy_FriendsRollerViewLayout.java"


# interfaces
.implements Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final ANIMATION_SUPPORT:Z = true

.field private static final ANIM_ARROW_FADE_TIME:I = 0x15e

.field private static final ANIM_ARROW_FADE_TIME_LONG:I = 0x1f4

.field private static final ANIM_ARROW_FADE_TIME_REG:I = 0x64

.field private static final ANIM_ARROW_FADE_TIME_SHORT:I = 0xa

.field public static final FUNC_APPENDUSERCONTACTSPHOTOS:Ljava/lang/String; = "appendUserContactsPhotos"

.field public static final FUNC_SETAPPWIDGETID:Ljava/lang/String; = "setAppWidgetId"

.field public static final FUNC_SETCONTACTSPHOTORES:Ljava/lang/String; = "setContactsPhotoRes"

.field public static final FUNC_SETDUMMYLENGTH:Ljava/lang/String; = "setDummyLength"

.field public static final FUNC_SETROLLERDOWNCUE:Ljava/lang/String; = "setRollerDownCue"

.field public static final FUNC_SETROLLERPICKED:Ljava/lang/String; = "setRollerPicked"

.field public static final FUNC_SETROLLERPICKER:Ljava/lang/String; = "setRollerPicker"

.field public static final FUNC_SETROLLERUPCUE:Ljava/lang/String; = "setRollerUpCue"

.field public static final FUNC_SETUSERCONTACTSIDS:Ljava/lang/String; = "setUserContactsIds"

.field public static final FUNC_SETUSERCONTACTSNAMES:Ljava/lang/String; = "setUserContactsNames"

.field public static final FUNC_SETUSERCONTACTSPHOTOS:Ljava/lang/String; = "setUserContactsPhotos"

.field private static final ROLLERVIEW_MARGIN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Andy_FriendsRollerViewLayout"



# instance fields
.field private _anim_in:Landroid/view/animation/Animation;

.field private _anim_out:Landroid/view/animation/Animation;

.field private _anim_picked_in:Landroid/view/animation/Animation;

.field private _anim_picked_out:Landroid/view/animation/Animation;

.field private _isCueAvailable:Z

.field private _isNewObject:Z

.field private _iv_down:Landroid/widget/ImageView;

.field private _iv_picked:Landroid/widget/ImageView;

.field private _iv_up:Landroid/widget/ImageView;

.field private _last_pos:I

.field private _rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

.field private _rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

.field private _rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

.field private _rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

.field private _roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_last_pos:I

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isNewObject:Z

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isNewObject:Z

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 77
    .local v0, length:I
    invoke-static {v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setItemLength(I)V

    .line 78
    return-void
.end method

.method private addViews()V
    .registers 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->removeAllViews()V

    .line 212
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->addView(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->addView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->addView(Landroid/view/View;)V

    .line 216
    return-void
.end method

.method private initAnimation(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x15e

    const v2, 0x10a0001

    const/high16 v1, 0x10a

    .line 278
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_in:Landroid/view/animation/Animation;

    .line 279
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_out:Landroid/view/animation/Animation;

    .line 280
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_picked_in:Landroid/view/animation/Animation;

    .line 281
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_picked_out:Landroid/view/animation/Animation;

    .line 283
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 284
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_out:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 285
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_picked_in:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 286
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_picked_out:Landroid/view/animation/Animation;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 287
    return-void
.end method

.method private initCueStatus(I)V
    .registers 5
    .parameter "item_num"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 291
    if-ne p1, v0, :cond_1a

    .line 293
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isCueAvailable:Z

    .line 295
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    invoke-virtual {p0, v1, p1}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->onRollerStopped(II)V

    .line 319
    :goto_19
    return-void

    .line 301
    :cond_1a
    if-le p1, v0, :cond_31

    .line 303
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isCueAvailable:Z

    .line 305
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    invoke-virtual {p0, v1, p1}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->onRollerStopped(II)V

    goto :goto_19

    .line 313
    :cond_31
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isCueAvailable:Z

    .line 315
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_19
.end method

.method private initViews(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 239
    invoke-static {p1}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->isLandscape(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_aa

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    move v0, v3

    .line 242
    .local v0, cue_height:I
    :goto_b
    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    .line 243
    .local v2, width:I
    sget v1, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    .line 246
    .local v1, item_len:I
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    shl-int/lit8 v4, v0, 0x1

    add-int/2addr v4, v1

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

    .line 247
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v6, v5, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 248
    new-instance v3, Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-direct {v3, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    .line 249
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v3, p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setOnItemStatusChangedListener(Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;)V

    .line 253
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/lit8 v4, v2, 0x8

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

    .line 254
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    .line 256
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    const v4, 0x202007e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/lit8 v4, v2, 0x8

    invoke-direct {v3, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    .line 262
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    add-int v4, v0, v1

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 263
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    .line 264
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    const v4, 0x202007a

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

    .line 270
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v6, v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 271
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    .line 272
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    const v4, 0x2020079

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    return-void

    .line 239
    .end local v0       #cue_height:I,
    .end local v1       #item_len:I,
    .end local v2       #width:I,
    :cond_aa
    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    sget v4, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_MARGIN_HEIGHT:I

    add-int/2addr v3, v4

    move v0, v3

    goto/16 :goto_b
.end method

.method private initialization()V
    .registers 2

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->updateViews()V

    .line 115
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->initCueStatus(I)V

    .line 116
    return-void
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 405
    if-eqz p0, :cond_16

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 409
    .local v0, config:Landroid/content/res/Configuration;
    if-eqz v0, :cond_16

    .line 411
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_18

    move v1, v2

    .line 420
    .end local v0       #config:Landroid/content/res/Configuration;,
    :goto_13
    return v1

    .line 413
    .restart local v0       #config:Landroid/content/res/Configuration;,
    :pswitch_14
    const/4 v1, 0x1

    goto :goto_13

    .end local v0       #config:Landroid/content/res/Configuration;,
    :cond_16
    move v1, v2

    .line 420
    goto :goto_13

    .line 411
    :pswitch_data_18
    .packed-switch 0x2
        :pswitch_14
    .end packed-switch
.end method

.method private setRollerCueHeight(I)V
    .registers 7
    .parameter "height"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 220
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    .line 222
    .local v0, item_len:I
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 223
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_up_cue:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 226
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    add-int v2, p1, v0

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 227
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_down_cue:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v4, p1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 231
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_picked:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 234
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_rl_params_roller:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    return-void
.end method

.method private updateViews()V
    .registers 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 201
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->initAnimation(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->initViews(Landroid/content/Context;)V

    .line 203
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->addViews()V

    .line 205
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v1, v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->updateRollerLayout(Landroid/content/Context;)V

    .line 206
    return-void
.end method

.method private vaporization()V
    .registers 1

    .prologue
    .line 121
    return-void
.end method


# virtual methods
.method public appendUserContactsPhotos(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setUserContactsPhotos(Landroid/os/Bundle;Z)V

    .line 133
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 85
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isNewObject:Z

    if-eqz v1, :cond_21

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.appwidget.Andy_FriendsRollerView.action.REQUEST_ITEMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "friends://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isNewObject:Z

    .line 93
    .end local v0       #intent:Landroid/content/Intent;,
    :cond_21
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 108
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->vaporization()V

    .line 109
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 100
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->initialization()V

    .line 101
    return-void
.end method

.method public onLeaveFromHead()V
    .registers 3

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_11

    .line 365
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 372
    :cond_11
    return-void
.end method

.method public onLeaveFromTail()V
    .registers 3

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_11

    .line 352
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 359
    :cond_11
    return-void
.end method

.method public onReachToHead()V
    .registers 3

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_11

    .line 339
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_out:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 346
    :cond_11
    return-void
.end method

.method public onReachToTail()V
    .registers 3

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_11

    .line 326
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_anim_out:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 333
    :cond_11
    return-void
.end method

.method public onRollerOrientationChanged(I)V
    .registers 2
    .parameter "length"

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->setRollerCueHeight(I)V

    .line 401
    return-void
.end method

.method public declared-synchronized onRollerStarted()V
    .registers 3

    .prologue
    .line 376
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_b

    .line 378
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 380
    :cond_b
    monitor-exit p0

    return-void

    .line 376
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
    .line 384
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_isCueAvailable:Z

    if-eqz v0, :cond_b

    .line 386
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 388
    :cond_b
    monitor-exit p0

    return-void

    .line 384
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRollerUpdated(I)V
    .registers 3
    .parameter "item_num"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    if-eqz v0, :cond_7

    .line 394
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->initCueStatus(I)V

    .line 396
    :cond_7
    return-void
.end method

.method public setAppWidgetId(I)V
    .registers 3
    .parameter "appwidget_id"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    if-eqz v0, :cond_9

    .line 166
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setAppWidgetId(I)V

    .line 168
    :cond_9
    return-void
.end method

.method public setContactsPhotoRes(I)V
    .registers 3
    .parameter "length"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setContactsPhotoRes(I)V

    .line 151
    return-void
.end method

.method public setDummyLength(I)V
    .registers 3
    .parameter "length"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setDummyLength(I)V

    .line 158
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->setRollerCueHeight(I)V

    .line 159
    return-void
.end method

.method public setRollerDownCue(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 184
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_down:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    :cond_9
    return-void
.end method

.method public setRollerPicked(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 193
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_picked:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    :cond_9
    return-void
.end method

.method public setRollerUpCue(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "bitmap"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_iv_up:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 177
    :cond_9
    return-void
.end method

.method public setUserContactsIds(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setUserContactsIds(Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method public setUserContactsNames(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setUserContactsNames(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public setUserContactsPhotos(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->_roller_view:Lcom/lge/appwidget/Andy_FriendsRollerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setUserContactsPhotos(Landroid/os/Bundle;Z)V

    .line 127
    return-void
.end method
