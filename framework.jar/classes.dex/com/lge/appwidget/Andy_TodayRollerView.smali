.class public final Lcom/lge/appwidget/Andy_TodayRollerView;
.super Lcom/lge/appwidget/Andy_RollerScrollView;
.source "Andy_TodayRollerView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;,
        Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;,
        Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;,
        Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACTION_ROLLERVIEW_LISTENER:Ljava/lang/String; = "android.widget.todayrollerview.action.LISTENER"

.field public static final ACTION_ROLLERVIEW_REFRESH:Ljava/lang/String; = "android.widget.todayrollerview.action.REFRESH"

.field public static final ACTION_ROLLERVIEW_REFRESHED:Ljava/lang/String; = "android.widget.todayrollerview.action.REFRESHED"

.field private static final CUE_SCROLL_STATUS_AVAILABLE:I = 0x1

.field private static final CUE_SCROLL_STATUS_SCROLLING:I = 0x2

.field private static final CUE_SCROLL_STATUS_UNAVAILABLE:I = 0x0

.field private static final CUE_SCROLL_TOUCHED_AREA_DOWN:I = 0x1

.field private static final CUE_SCROLL_TOUCHED_AREA_OUT_OF_BOUND:I = -0x1

.field private static final CUE_SCROLL_TOUCHED_AREA_UP:I = 0x0

.field private static final CUE_SCROLL_TOUCHED_MAX_GAP:I = 0xf

.field private static final DELAY_CUE_SCROLL_IMPOSSIBLE:I = 0x190

.field public static DUMMY_HEIGHT_LENGTH:I = 0x0

.field public static DUMMY_WIDTH_LENGTH:I = 0x0

.field private static final HVGA_HALF_LENGTH:I = 0x2a

.field private static final HVGA_LENGTH:I = 0x54

.field public static ITEM_LENGTH:I = 0x0

.field public static final ITEM_LENGTH_HALF:I = 0x29

.field private static ITEM_SCROLL_INTERVAL_COUNT:I = 0x0

.field public static ITEM_SCROLL_WAIT_INTERVAL:I = 0x0

.field private static final ITEM_SHRINK_WAIT_INTERVAL:I = 0x3

.field private static final LGE_HALF_LENGTH:I = 0x29

.field private static final LGE_LENGTH:I = 0x52

.field public static final LGE_WIDTH_LENGTH:I = 0x6c

.field public static final LISTENER_ITEM_SELECTED:I = 0x0

.field private static final MSG_RESET_DUMMY:I = 0x4

.field private static final MSG_SCROLL_ROLLER:I = 0x0

.field private static final MSG_SHRINK_DOWN_ROLLER:I = 0x3

.field private static final MSG_SHRINK_UP_ROLLER:I = 0x2

.field private static final MSG_SMOOTH_SCROLL_ROLLER:I = 0x5

.field private static final MSG_STOP_ROLLER:I = 0x1

.field public static final REQUEST_APPWIDGET_ID:Ljava/lang/String; = "android.widget.todayrollerview.request.APPWIDGET_ID"

.field public static final ROLLERVIEW_COMPLETE_REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "android.widget.TodayRollerView"

.field private static final TEMP:I = 0x32

.field public static final TODAY_URI_AUTHORITY:Ljava/lang/String; = "roller_info/"

.field public static final TODAY_URI_SCHEME:Ljava/lang/String; = "today://"

.field private static final VALUE_OF_MIN_VELOCITY:I = 0x12c

.field private static final VELOCITY_PER_ITEM:I = 0xc8

.field private static final WVGA_HALF_LENGTH:I = 0x3f

.field private static final WVGA_LENGTH:I = 0x7e



# instance fields
.field private ITEM_LENGTH_WHOLE:I

.field private _appwidget_id:I

.field private _dummy_head:Landroid/widget/ImageView;

.field private _dummy_tail:Landroid/widget/ImageView;

.field private _handler:Landroid/os/Handler;

.field private _increment:I

.field private _isFlingDone:Z

.field private _isHead:Z

.field private _isMoved:Z

.field private _isScrolling:Z

.field private _isStretchedDown:Z

.field private _isStretchedUp:Z

.field private _isTail:Z

.field private _isTouchedSet:Z

.field private _isWating:Z

.field private _item_manager:Lcom/lge/appwidget/util/today/Andy_TodayItemManager;

.field private _listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

.field private _ll_item_list:Landroid/widget/LinearLayout;

.field private _ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

.field private _ll_params_list:Landroid/widget/LinearLayout$LayoutParams;

.field private _ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

.field private _receiver:Landroid/content/BroadcastReceiver;

.field private _roller_top:I

.field private _target:I

.field private _touched_x:F

.field private _touched_y:F



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-class v0, Lcom/lge/appwidget/Andy_TodayRollerView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/lge/appwidget/Andy_TodayRollerView;->$assertionsDisabled:Z

    .line 79
    const/16 v0, 0x6c

    sput v0, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_WIDTH_LENGTH:I

    .line 80
    const/16 v0, 0x84

    sput v0, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    .line 83
    const/16 v0, 0x52

    sput v0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    .line 86
    const/16 v0, 0x32

    sput v0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_SCROLL_WAIT_INTERVAL:I

    .line 87
    sput v1, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_SCROLL_INTERVAL_COUNT:I

    return-void

    :cond_1f
    move v0, v1

    .line 32
    goto :goto_a
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;-><init>(Landroid/content/Context;)V

    .line 63
    iput v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_appwidget_id:I

    .line 78
    iput v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH_WHOLE:I

    .line 102
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isWating:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isFlingDone:Z

    .line 104
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTouchedSet:Z

    .line 105
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedUp:Z

    .line 106
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedDown:Z

    .line 109
    iput v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_increment:I

    .line 110
    iput v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_target:I

    .line 116
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isMoved:Z

    .line 117
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isScrolling:Z

    .line 884
    new-instance v0, Lcom/lge/appwidget/Andy_TodayRollerView$3;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_TodayRollerView$3;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_handler:Landroid/os/Handler;

    .line 1045
    new-instance v0, Lcom/lge/appwidget/Andy_TodayRollerView$4;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_TodayRollerView$4;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_receiver:Landroid/content/BroadcastReceiver;

    .line 163
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->initialize(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/lge/appwidget/Andy_RollerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_appwidget_id:I

    .line 78
    iput v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH_WHOLE:I

    .line 102
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isWating:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isFlingDone:Z

    .line 104
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTouchedSet:Z

    .line 105
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedUp:Z

    .line 106
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedDown:Z

    .line 109
    iput v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_increment:I

    .line 110
    iput v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_target:I

    .line 116
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isMoved:Z

    .line 117
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isScrolling:Z

    .line 884
    new-instance v0, Lcom/lge/appwidget/Andy_TodayRollerView$3;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_TodayRollerView$3;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_handler:Landroid/os/Handler;

    .line 1045
    new-instance v0, Lcom/lge/appwidget/Andy_TodayRollerView$4;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_TodayRollerView$4;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_receiver:Landroid/content/BroadcastReceiver;

    .line 170
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->initialize(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_TodayRollerView;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/lge/appwidget/Andy_TodayRollerView;->sleepForMillis(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/appwidget/Andy_TodayRollerView;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/appwidget/Andy_TodayRollerView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isScrolling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/appwidget/Andy_TodayRollerView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_tail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/appwidget/Andy_TodayRollerView;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/appwidget/Andy_TodayRollerView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->increaseDummyHead(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/appwidget/Andy_TodayRollerView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->increaseDummyTail(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/lge/appwidget/Andy_TodayRollerView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isWating:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/lge/appwidget/Andy_TodayRollerView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isWating:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/lge/appwidget/Andy_TodayRollerView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_roller_top:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/appwidget/Andy_TodayRollerView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->isAutoLockPossible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/lge/appwidget/Andy_TodayRollerView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedUp:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/lge/appwidget/Andy_TodayRollerView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedDown:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/lge/appwidget/Andy_TodayRollerView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH_WHOLE:I

    return v0
.end method

.method static synthetic access$2100(Lcom/lge/appwidget/Andy_TodayRollerView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/appwidget/Andy_TodayRollerView;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/appwidget/Andy_TodayRollerView;->sendMessageAtFrontOfQueue(IIZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/appwidget/Andy_TodayRollerView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->getAlignedPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/lge/appwidget/Andy_TodayRollerView;)Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/appwidget/Andy_TodayRollerView;Landroid/content/Context;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/appwidget/Andy_TodayRollerView;->sendRollerViewBroadcast(Landroid/content/Context;III)V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/appwidget/Andy_TodayRollerView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_head:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getAlignedPos(I)I
    .registers 6
    .parameter "src"

    .prologue
    .line 856
    sget v2, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    div-int v0, p1, v2

    .line 857
    .local v0, portion:I
    sget v2, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    rem-int v1, p1, v2

    .line 859
    .local v1, remain:I
    const/16 v2, 0x29

    if-le v1, v2, :cond_12

    .line 861
    add-int/lit8 v2, v0, 0x1

    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    mul-int/2addr v2, v3

    .line 865
    :goto_11
    return v2

    :cond_12
    sget v2, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    mul-int/2addr v2, v0

    goto :goto_11
.end method

.method private final getAppWidgetId()I
    .registers 2

    .prologue
    .line 287
    iget v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_appwidget_id:I

    return v0
.end method

.method private getItemManager()Lcom/lge/appwidget/util/today/Andy_TodayItemManager;
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_item_manager:Lcom/lge/appwidget/util/today/Andy_TodayItemManager;

    if-nez v0, :cond_f

    .line 329
    new-instance v0, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_item_manager:Lcom/lge/appwidget/util/today/Andy_TodayItemManager;

    .line 332
    :cond_f
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_item_manager:Lcom/lge/appwidget/util/today/Andy_TodayItemManager;

    return-object v0
.end method

.method private getProperVelocityY(IIZ)I
    .registers 10
    .parameter "velocityY"
    .parameter "pos"
    .parameter "isFlingDown"

    .prologue
    const/4 v5, 0x1

    .line 370
    move v2, p1

    .line 371
    .local v2, proper:I
    invoke-direct {p0, p2}, Lcom/lge/appwidget/Andy_TodayRollerView;->getVisibleItemPos(I)I

    move-result v0

    .line 373
    .local v0, item_pos:I
    if-eqz p3, :cond_24

    .line 375
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemCount()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    sub-int v1, v3, v4

    .line 376
    .local v1, num:I
    if-lez v1, :cond_18

    .line 378
    sub-int v3, v1, v5

    mul-int/lit16 v3, v3, 0xc8

    add-int/lit16 v2, v3, 0x12c

    .line 391
    :cond_18
    :goto_18
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_2f

    move v3, p1

    :goto_23
    return v3

    .line 383
    .end local v1       #num:I,
    :cond_24
    move v1, v0

    .line 384
    .restart local v1       #num:I,
    if-lez v1, :cond_18

    .line 386
    sub-int v3, v1, v5

    mul-int/lit16 v3, v3, 0xc8

    add-int/lit16 v2, v3, 0x12c

    .line 387
    neg-int v2, v2

    goto :goto_18

    :cond_2f
    move v3, v2

    .line 391
    goto :goto_23
.end method

.method private getScrollPos(F)I
    .registers 9
    .parameter "y"

    .prologue
    .line 562
    const/4 v2, -0x1

    .line 563
    .local v2, pos_y:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getScrollY()I

    move-result v1

    .line 564
    .local v1, cur_y:I
    sget v4, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    rem-int v3, v1, v4

    .line 565
    .local v3, rem:I
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->getTouchedAreaWithPos(F)I

    move-result v0

    .line 567
    .local v0, area:I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->scrollTo(II)V

    .line 569
    packed-switch v0, :pswitch_data_36

    .line 591
    const-string v4, "android.widget.TodayRollerView"

    const-string v5, "TH: ## Out of bound!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_1b
    :goto_1b
    return v2

    .line 572
    :pswitch_1c
    if-eqz v1, :cond_1b

    .line 577
    sget v4, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    add-int/2addr v4, v3

    sub-int v2, v1, v4

    .line 578
    goto :goto_1b

    .line 581
    :pswitch_24
    sget v4, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    if-ge v1, v4, :cond_1b

    .line 586
    sget v4, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    add-int/2addr v4, v3

    add-int v2, v1, v4

    .line 587
    goto :goto_1b

    .line 569
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method private final getStretchingIncrement(FF)I
    .registers 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 522
    sub-float v0, p1, p2

    float-to-int v0, v0

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getTouchedAreaWithPos(F)I
    .registers 9
    .parameter "y"

    .prologue
    .line 539
    float-to-int v3, p1

    .line 541
    .local v3, touched:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getPaddingTop()I

    move-result v6

    sub-int v2, v5, v6

    .line 542
    .local v2, height:I
    sget v5, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    sget v6, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    add-int/2addr v5, v6

    sub-int v4, v2, v5

    .line 543
    .local v4, up:I
    sget v5, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    sget v6, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    add-int v1, v5, v6

    .line 544
    .local v1, down_start:I
    move v0, v2

    .line 546
    .local v0, down_end:I
    if-ltz v3, :cond_24

    if-gt v3, v4, :cond_24

    .line 548
    const/4 v5, 0x0

    .line 557
    :goto_23
    return v5

    .line 550
    :cond_24
    if-ltz v3, :cond_2c

    if-lt v3, v1, :cond_2c

    if-ge v3, v0, :cond_2c

    .line 554
    const/4 v5, 0x1

    goto :goto_23

    .line 557
    :cond_2c
    const/4 v5, -0x1

    goto :goto_23
.end method

.method private getVisibleItemPos(I)I
    .registers 3
    .parameter "crnt_pos"

    .prologue
    .line 405
    sget v0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    div-int v0, p1, v0

    return v0
.end method

.method private declared-synchronized increaseDummyHead(I)V
    .registers 5
    .parameter "gap"

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-ltz p1, :cond_14

    move v2, p1

    :goto_8
    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 528
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_head:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 529
    monitor-exit p0

    return-void

    .line 527
    :cond_14
    const/4 v2, 0x0

    goto :goto_8

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized increaseDummyTail(I)V
    .registers 5
    .parameter "gap"

    .prologue
    .line 533
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-ltz p1, :cond_14

    move v2, p1

    :goto_8
    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 534
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_tail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 535
    monitor-exit p0

    return-void

    .line 533
    :cond_14
    const/4 v2, 0x0

    goto :goto_8

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initInnerLayout()V
    .registers 6

    .prologue
    const v4, 0x20201cb

    const/4 v2, -0x1

    .line 301
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_list:Landroid/widget/LinearLayout$LayoutParams;

    .line 306
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    .line 307
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 308
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_list:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->addView(Landroid/view/View;)V

    .line 312
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    .line 313
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_head:Landroid/widget/ImageView;

    .line 314
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_head:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_head:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_head:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    .line 319
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_tail:Landroid/widget/ImageView;

    .line 320
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_tail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_tail:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_tail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 323
    return-void
.end method

.method private initRollerView()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 223
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerView;->setVerticalScrollBarEnabled(Z)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerView;->setHorizontalScrollBarEnabled(Z)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->setSmoothScrollingEnabled(Z)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 227
    sget v0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerView;->setFadingEdgeLength(I)V

    .line 228
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 229
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->setAnimationCacheEnabled(Z)V

    .line 230
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->setDrawingCacheEnabled(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->removeAllViews()V

    .line 233
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTail:Z

    .line 176
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isHead:Z

    .line 177
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isWating:Z

    .line 178
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedUp:Z

    .line 179
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedDown:Z

    .line 181
    sget v0, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerView;->setDummyLength(I)V

    .line 182
    iput v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH_WHOLE:I

    .line 184
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->registerReceiver(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method private isAutoLockPossible()Z
    .registers 2

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isFlingDone:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedDown:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedUp:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private populateRollerList()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 339
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemManager()Lcom/lge/appwidget/util/today/Andy_TodayItemManager;

    move-result-object v1

    .line 340
    .local v1, manager:Lcom/lge/appwidget/util/today/Andy_TodayItemManager;
    invoke-virtual {v1}, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->getItemCount()I

    move-result v3

    .line 342
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v3, :cond_21

    .line 344
    invoke-virtual {v1, v0}, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->getItemView(I)Landroid/view/View;

    move-result-object v4

    .line 345
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 346
    .local v2, parent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_1b

    .line 348
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 351
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->addItem(Landroid/view/View;)Z

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 354
    .end local v2       #parent:Landroid/view/ViewGroup;,
    .end local v4       #view:Landroid/view/View;,
    :cond_21
    if-lez v3, :cond_2f

    .line 356
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v6, v6, v6}, Lcom/lge/appwidget/Andy_TodayRollerView;->sendRollerViewBroadcast(Landroid/content/Context;III)V

    .line 358
    iget-object v5, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    invoke-interface {v5, v3}, Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;->onRollerUpdated(I)V

    .line 360
    :cond_2f
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 214
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.widget.todayrollerview.action.REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    return-void
.end method

.method private declared-synchronized scrollToPosFrom(F)Z
    .registers 6
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 600
    monitor-enter p0

    :try_start_3
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isScrolling:Z

    if-nez v1, :cond_2b

    .line 602
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isScrolling:Z

    .line 604
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->getScrollPos(F)I

    move-result v0

    .line 605
    .local v0, pos_y:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 607
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/lge/appwidget/Andy_TodayRollerView;->sendMessageAtFrontOfQueue(IIZ)V

    .line 609
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/appwidget/Andy_TodayRollerView$1;

    invoke-direct {v2, p0}, Lcom/lge/appwidget/Andy_TodayRollerView$1;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2d

    move v1, v3

    .line 628
    .end local v0       #pos_y:I,
    :goto_24
    monitor-exit p0

    return v1

    .line 622
    .restart local v0       #pos_y:I,
    :cond_26
    const/4 v1, 0x0

    :try_start_27
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isScrolling:Z
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2d

    move v1, v2

    .line 624
    goto :goto_24

    .end local v0       #pos_y:I,
    :cond_2b
    move v1, v3

    .line 628
    goto :goto_24

    .line 600
    :catchall_2d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private sendMessageAtFrontOfQueue(IIZ)V
    .registers 6
    .parameter "what"
    .parameter "arg1"
    .parameter "remove"

    .prologue
    .line 871
    sget-boolean v1, Lcom/lge/appwidget/Andy_TodayRollerView;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_handler:Landroid/os/Handler;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 873
    :cond_e
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 874
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 876
    if-eqz p3, :cond_1d

    .line 878
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 881
    :cond_1d
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 882
    return-void
.end method

.method private sendRollerViewBroadcast(Landroid/content/Context;III)V
    .registers 13
    .parameter "context"
    .parameter "type"
    .parameter "target"
    .parameter "pos"

    .prologue
    const-string/jumbo v7, "today://roller_info/"

    .line 805
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 806
    .local v1, intent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 810
    .local v4, uri:Landroid/net/Uri;
    packed-switch p2, :pswitch_data_58

    .line 831
    :goto_c
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 832
    return-void

    .line 813
    :pswitch_10
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, item_pos:Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getAppWidgetId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, appwidget_id:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 816
    .local v3, path:Ljava/lang/String;
    const-string/jumbo v5, "today://roller_info/"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 819
    const-string v5, "android.widget.todayrollerview.action.LISTENER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_c

    .line 824
    .end local v0       #appwidget_id:Ljava/lang/String;,
    .end local v2       #item_pos:Ljava/lang/String;,
    .end local v3       #path:Ljava/lang/String;,
    :pswitch_47
    const-string/jumbo v5, "today://roller_info/"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 826
    const-string v5, "android.widget.todayrollerview.action.REFRESHED"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_c

    .line 810
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_10
        :pswitch_47
    .end packed-switch
.end method

.method private final setWholeItemLength()V
    .registers 4

    .prologue
    .line 484
    sget v0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH_WHOLE:I

    .line 485
    return-void
.end method

.method private final sleepForMillis(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 797
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 801
    :goto_3
    return-void

    .line 798
    :catch_4
    move-exception v0

    .line 799
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method private updateItemManager(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "order"

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemManager()Lcom/lge/appwidget/util/today/Andy_TodayItemManager;

    move-result-object v0

    .line 252
    .local v0, manager:Lcom/lge/appwidget/util/today/Andy_TodayItemManager;
    invoke-virtual {v0, p2}, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->organizeItems(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private vaporizeViews()V
    .registers 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->removeAllViews()V

    .line 210
    return-void
.end method


# virtual methods
.method public addItem(Landroid/view/View;)Z
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 410
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1a

    .line 412
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 414
    .local v0, cnt:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1a

    .line 416
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    sub-int v2, v0, v3

    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 417
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->setWholeItemLength()V

    move v1, v3

    .line 423
    .end local v0       #cnt:I,
    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public addItem(Landroid/view/View;I)Z
    .registers 7
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 428
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_21

    .line 430
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 432
    .local v0, cnt:I
    if-lt v0, v2, :cond_21

    .line 434
    sub-int v1, v0, v3

    if-lt p2, v1, :cond_15

    sub-int v1, v0, v2

    move p2, v1

    .line 435
    :cond_15
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 436
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->setWholeItemLength()V

    move v1, v3

    .line 442
    .end local v0       #cnt:I,
    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public fling(I)V
    .registers 4
    .parameter "velocityY"

    .prologue
    .line 397
    div-int/lit8 p1, p1, 0x3

    .line 398
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getScrollY()I

    move-result v0

    if-ltz p1, :cond_11

    const/4 v1, 0x1

    :goto_9
    invoke-direct {p0, p1, v0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView;->getProperVelocityY(IIZ)I

    move-result p1

    .line 400
    invoke-super {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->fling(I)V

    .line 401
    return-void

    .line 398
    :cond_11
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getItemAt(I)Landroid/view/View;
    .registers 5
    .parameter "position"

    .prologue
    .line 457
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1b

    .line 459
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 461
    .local v0, cnt:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1b

    const/4 v1, 0x1

    sub-int v1, v0, v1

    if-ge p1, v1, :cond_1b

    .line 463
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 467
    .end local v0       #cnt:I,
    :goto_1a
    return-object v1

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getItemCount()I
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 447
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_15

    .line 449
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 452
    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 190
    invoke-super {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->onDetachedFromWindow()V

    .line 191
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 193
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    :cond_10
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 640
    invoke-super {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_b
    return v0

    .line 637
    :pswitch_c
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isMoved:Z

    goto :goto_b

    .line 634
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/16 v6, 0x29

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 490
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lge/appwidget/Andy_RollerScrollView;->onScrollChanged(IIII)V

    .line 492
    iput p2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_roller_top:I

    .line 494
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 495
    .local v1, roller_size:I
    sget v2, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    add-int/lit8 v2, v2, 0x29

    sget v3, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 497
    .local v0, boundary:I
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isHead:Z

    if-nez v2, :cond_35

    if-ge p2, v6, :cond_35

    .line 499
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isHead:Z

    .line 500
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    invoke-interface {v2}, Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;->onReachToHead()V

    .line 508
    :cond_27
    :goto_27
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTail:Z

    if-nez v2, :cond_43

    if-le p2, v0, :cond_43

    .line 510
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTail:Z

    .line 511
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    invoke-interface {v2}, Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;->onReachToTail()V

    .line 518
    :cond_34
    :goto_34
    return-void

    .line 502
    :cond_35
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isHead:Z

    if-eqz v2, :cond_27

    if-lt p2, v6, :cond_27

    .line 504
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isHead:Z

    .line 505
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    invoke-interface {v2}, Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;->onLeaveFromHead()V

    goto :goto_27

    .line 513
    :cond_43
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTail:Z

    if-eqz v2, :cond_34

    if-gt p2, v0, :cond_34

    .line 515
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTail:Z

    .line 516
    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    invoke-interface {v2}, Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;->onLeaveFromTail()V

    goto :goto_34
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .parameter "ev"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 646
    .local v3, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 648
    .local v2, x:F
    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isScrolling:Z

    if-nez v4, :cond_148

    .line 650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_14c

    .line 786
    :cond_16
    :goto_16
    invoke-super {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 790
    :goto_1a
    return v4

    .line 653
    :pswitch_1b
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemCount()I

    move-result v4

    if-lez v4, :cond_26

    .line 655
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    invoke-interface {v4}, Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;->onRollerStarted()V

    .line 658
    :cond_26
    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isMoved:Z

    .line 659
    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isFlingDone:Z

    .line 660
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_roller_top:I

    if-nez v4, :cond_36

    move v4, v6

    :goto_2f
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTouchedSet:Z

    .line 661
    iput v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    .line 662
    iput v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_x:F

    goto :goto_16

    :cond_36
    move v4, v7

    .line 660
    goto :goto_2f

    .line 666
    :pswitch_38
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 669
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    float-to-int v4, v4

    float-to-int v5, v3

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 670
    .local v0, gap:I
    const/16 v4, 0xf

    if-gt v0, v4, :cond_50

    move v4, v6

    .line 672
    goto :goto_1a

    .line 676
    :cond_50
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isMoved:Z

    .line 680
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_roller_top:I

    if-gtz v4, :cond_75

    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    cmpg-float v4, v4, v3

    if-gez v4, :cond_75

    .line 683
    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTouchedSet:Z

    if-nez v4, :cond_64

    .line 685
    iput v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    .line 686
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTouchedSet:Z

    .line 689
    :cond_64
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    invoke-direct {p0, v3, v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->getStretchingIncrement(FF)I

    move-result v4

    iput v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_increment:I

    .line 690
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_increment:I

    invoke-direct {p0, v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->increaseDummyHead(I)V

    .line 691
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedUp:Z

    move v4, v6

    .line 694
    goto :goto_1a

    .line 696
    :cond_75
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_roller_top:I

    iget v5, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH_WHOLE:I

    if-lt v4, v5, :cond_9a

    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_9a

    .line 699
    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTouchedSet:Z

    if-nez v4, :cond_89

    .line 701
    iput v3, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    .line 702
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTouchedSet:Z

    .line 705
    :cond_89
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    invoke-direct {p0, v4, v3}, Lcom/lge/appwidget/Andy_TodayRollerView;->getStretchingIncrement(FF)I

    move-result v4

    iput v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_increment:I

    .line 706
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_increment:I

    invoke-direct {p0, v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->increaseDummyTail(I)V

    .line 707
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedDown:Z

    goto/16 :goto_16

    .line 711
    :cond_9a
    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedUp:Z

    if-eqz v4, :cond_c1

    .line 713
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v5, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-le v4, v5, :cond_b6

    .line 715
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    invoke-direct {p0, v3, v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->getStretchingIncrement(FF)I

    move-result v4

    iput v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_increment:I

    .line 716
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_increment:I

    invoke-direct {p0, v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->increaseDummyHead(I)V

    move v4, v6

    .line 719
    goto/16 :goto_1a

    .line 723
    :cond_b6
    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedUp:Z

    .line 727
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    invoke-virtual {p1, v2, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 728
    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isTouchedSet:Z

    goto/16 :goto_16

    .line 731
    :cond_c1
    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedDown:Z

    if-eqz v4, :cond_16

    .line 733
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v5, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-le v4, v5, :cond_dc

    .line 735
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    invoke-direct {p0, v3, v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->getStretchingIncrement(FF)I

    move-result v4

    iput v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_increment:I

    .line 736
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_increment:I

    invoke-direct {p0, v4}, Lcom/lge/appwidget/Andy_TodayRollerView;->increaseDummyTail(I)V

    goto/16 :goto_16

    .line 740
    :cond_dc
    iput-boolean v7, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedDown:Z

    goto/16 :goto_16

    .line 748
    .end local v0       #gap:I,
    :pswitch_e0
    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isMoved:Z

    if-nez v4, :cond_ff

    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_roller_top:I

    if-ltz v4, :cond_ff

    .line 750
    invoke-direct {p0, v3}, Lcom/lge/appwidget/Andy_TodayRollerView;->scrollToPosFrom(F)Z

    move-result v4

    if-nez v4, :cond_16

    .line 756
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getScrollY()I

    move-result v4

    sget v5, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    div-int v1, v4, v5

    .line 757
    .local v1, pos_item:I
    iget-object v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemCount()I

    move-result v5

    invoke-interface {v4, v1, v5}, Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;->onRollerStopped(II)V

    .line 761
    .end local v1       #pos_item:I,
    :cond_ff
    :pswitch_ff
    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedUp:Z

    if-eqz v4, :cond_13b

    .line 763
    new-instance v4, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;

    invoke-direct {v4, p0, v8}, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;Lcom/lge/appwidget/Andy_TodayRollerView$1;)V

    invoke-virtual {v4}, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkUpThread;->start()V

    .line 771
    :cond_10b
    :goto_10b
    iput-boolean v6, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isFlingDone:Z

    .line 773
    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isWating:Z

    if-nez v4, :cond_16

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemCount()I

    move-result v4

    if-lez v4, :cond_16

    .line 775
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    sub-float/2addr v4, v3

    iput v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    .line 777
    iget v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_touched_y:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_16

    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedUp:Z

    if-nez v4, :cond_16

    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedDown:Z

    if-nez v4, :cond_16

    .line 780
    new-instance v4, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;

    invoke-direct {v4, p0, v8}, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;Lcom/lge/appwidget/Andy_TodayRollerView$1;)V

    invoke-virtual {v4}, Lcom/lge/appwidget/Andy_TodayRollerView$AutoLockThread;->start()V

    goto/16 :goto_16

    .line 765
    :cond_13b
    iget-boolean v4, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_isStretchedDown:Z

    if-eqz v4, :cond_10b

    .line 767
    new-instance v4, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;

    invoke-direct {v4, p0, v8}, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;Lcom/lge/appwidget/Andy_TodayRollerView$1;)V

    invoke-virtual {v4}, Lcom/lge/appwidget/Andy_TodayRollerView$ShrinkDownThread;->start()V

    goto :goto_10b

    :cond_148
    move v4, v6

    .line 790
    goto/16 :goto_1a

    .line 650
    nop

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_e0
        :pswitch_38
        :pswitch_ff
    .end packed-switch
.end method

.method public removeItem(Landroid/view/View;)Z
    .registers 4
    .parameter "view"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_14

    .line 474
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 476
    const/4 v0, 0x1

    .line 479
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public setAppWidgetId(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 282
    iput p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_appwidget_id:I

    .line 283
    return-void
.end method

.method public setDummyHeight(I)V
    .registers 5
    .parameter "height"

    .prologue
    .line 292
    if-ltz p1, :cond_1a

    move v0, p1

    .line 293
    .local v0, h:I
    :goto_3
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 294
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 295
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_head:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_dummy_tail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    return-void

    .line 292
    .end local v0       #h:I,
    :cond_1a
    const/4 v1, 0x0

    move v0, v1

    goto :goto_3
.end method

.method public setDummyLength(I)V
    .registers 3
    .parameter "length"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    if-eqz v0, :cond_b

    .line 260
    sput p1, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    .line 261
    sget v0, Lcom/lge/appwidget/Andy_TodayRollerView;->DUMMY_HEIGHT_LENGTH:I

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerView;->setDummyHeight(I)V

    .line 263
    :cond_b
    return-void
.end method

.method public setIconHeight(I)V
    .registers 2
    .parameter "length"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 277
    sput p1, Lcom/lge/appwidget/Andy_TodayRollerView;->ITEM_LENGTH:I

    .line 278
    return-void
.end method

.method public setIconLayoutHeight(I)V
    .registers 3
    .parameter "length"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemManager()Lcom/lge/appwidget/util/today/Andy_TodayItemManager;

    move-result-object v0

    .line 270
    .local v0, manager:Lcom/lge/appwidget/util/today/Andy_TodayItemManager;
    invoke-virtual {v0, p1}, Lcom/lge/appwidget/util/today/Andy_TodayItemManager;->setIconLayoutHeight(I)V

    .line 271
    return-void
.end method

.method public setItemOrder(Ljava/lang/String;)V
    .registers 5
    .parameter "order"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView;->updateItemManager(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_TodayRollerView;->updateRollerLayout(Landroid/content/Context;)V

    .line 243
    invoke-virtual {p0, v2, v2}, Lcom/lge/appwidget/Andy_TodayRollerView;->scrollTo(II)V

    .line 244
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;->onRollerUpdated(I)V

    .line 245
    invoke-virtual {p0, v2}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 247
    return-void
.end method

.method public setOnItemStatusChangedListener(Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    .line 58
    return-void
.end method

.method public updateItemPosChanged(I)V
    .registers 4
    .parameter "pos"

    .prologue
    .line 836
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/appwidget/Andy_TodayRollerView$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/appwidget/Andy_TodayRollerView$2;-><init>(Lcom/lge/appwidget/Andy_TodayRollerView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 845
    return-void
.end method

.method public updateRollerLayout(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->initRollerView()V

    .line 200
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->initInnerLayout()V

    .line 202
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->populateRollerList()V

    .line 204
    iget-object v0, p0, Lcom/lge/appwidget/Andy_TodayRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_TodayRollerView;->getItemCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/appwidget/Andy_TodayRollerView$OnRollerViewStatusChanged;->onRollerUpdated(I)V

    .line 205
    return-void
.end method
