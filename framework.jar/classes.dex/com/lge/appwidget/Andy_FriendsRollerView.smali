.class public final Lcom/lge/appwidget/Andy_FriendsRollerView;
.super Lcom/lge/appwidget/Andy_RollerScrollView;
.source "Andy_FriendsRollerView.java"



# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;,
        Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkUpThread;,
        Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;,
        Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;
    }
.end annotation


# static fields
.field public static final ACTION_ROLLERVIEW_CONFIG_CHANGED:Ljava/lang/String; = "com.lge.appwidget.Andy_FriendsRollerView.action.CONFIG_CHANGED"

.field public static final ACTION_ROLLERVIEW_LISTENER:Ljava/lang/String; = "com.lge.appwidget.Andy_FriendsRollerView.action.LISTENER"

.field public static final ACTION_ROLLERVIEW_REFRESH:Ljava/lang/String; = "com.lge.appwidget.Andy_FriendsRollerView.action.REFRESH"

.field public static final ACTION_ROLLERVIEW_REQUEST_ITEMS:Ljava/lang/String; = "com.lge.appwidget.Andy_FriendsRollerView.action.REQUEST_ITEMS"

.field private static final CUE_SCROLL_TOUCHED_AREA_DOWN:I = 0x1

.field private static final CUE_SCROLL_TOUCHED_AREA_OUT_OF_BOUND:I = -0x1

.field private static final CUE_SCROLL_TOUCHED_AREA_UP:I = 0x0

.field private static final CUE_SCROLL_TOUCHED_MAX_GAP:I = 0xf

.field private static final DELAY_CUE_SCROLL_IMPOSSIBLE:I = 0x190

.field public static DUMMY_HEIGHT_LENGTH:I = 0x0

.field public static DUMMY_MARGIN_HEIGHT:I = 0x0

.field public static DUMMY_WIDTH_LENGTH:I = 0x0

.field public static final FRIENDS_BASE_URI:Ljava/lang/String; = "friends://roller_info/"

.field public static final FRIENDS_URI_AUTHORITY:Ljava/lang/String; = "roller_info/"

.field public static final FRIENDS_URI_SCHEME:Ljava/lang/String; = "friends://"

.field private static final HVGA_LENGTH:I = 0x40

.field public static ITEM_LENGTH:I = 0x0

.field public static ITEM_LENGTH_HALF:I = 0x0

.field private static ITEM_SCROLL_INTERVAL_COUNT:I = 0x0

.field public static ITEM_SCROLL_WAIT_INTERVAL:I = 0x0

.field private static final ITEM_SHRINK_WAIT_INTERVAL:I = 0x3

.field public static final KEY_CONTACTS_IDS:Ljava/lang/String; = "key_contactlist_ids"

.field public static final KEY_CONTACTS_NAMES:Ljava/lang/String; = "key_contactlist_names"

.field public static final KEY_CONTACTS_PHOTOS:Ljava/lang/String; = "key_contactlist_photos"

.field public static LGE_HALF_LENGTH:I = 0x0

.field public static LGE_LENGTH:I = 0x0

.field public static final LISTENER_COMPLETE_CONFIG_CHANGE:I = 0x1

.field public static final LISTENER_ITEM_SELECTED:I = 0x0

.field private static final MSG_RESET_DUMMY:I = 0x4

.field private static final MSG_SCROLL_ROLLER:I = 0x0

.field private static final MSG_SHRINK_DOWN_ROLLER:I = 0x3

.field private static final MSG_SHRINK_UP_ROLLER:I = 0x2

.field private static final MSG_SMOOTH_SCROLL_ROLLER:I = 0x5

.field private static final MSG_STOP_ROLLER:I = 0x1

.field public static final REQUEST_APPWIDGET_ID:Ljava/lang/String; = "com.lge.appwidget.Andy_FriendsRollerView.request.APPWIDGET_ID"

.field private static final TAG:Ljava/lang/String; = "Andy_FriendsRollerView"

#the value of this static final field might be set in the static constructor
.field private static final VALUE_OF_MAX_STRETCH_INC:I = 0x0

.field private static final VALUE_OF_MIN_VELOCITY:I = 0x12c

.field private static final VELOCITY_PER_ITEM:I = 0xc8

.field private static final WVGA_LENGTH:I = 0x60



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

.field private _isRcvRegistered:Z

.field private _isScrolling:Z

.field private _isStretchedDown:Z

.field private _isStretchedUp:Z

.field private _isTail:Z

.field private _isTouchedSet:Z

.field private _isWating:Z

.field private _item_manager:Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

.field private _listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

.field private _ll_item_list:Landroid/widget/LinearLayout;

.field private _ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

.field private _ll_params_list:Landroid/widget/LinearLayout$LayoutParams;

.field private _ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

.field private _receiver:Landroid/content/BroadcastReceiver;

.field private _roller_top:I

.field private _touched_x:F

.field private _touched_y:F



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 66
    const/16 v0, 0x60

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    .line 67
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    shr-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_HALF_LENGTH:I

    .line 68
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_HALF_LENGTH:I

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_MARGIN_HEIGHT:I

    .line 70
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_WIDTH_LENGTH:I

    .line 71
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    sget v1, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_MARGIN_HEIGHT:I

    add-int/2addr v0, v1

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    .line 72
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    .line 73
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_HALF_LENGTH:I

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_HALF:I

    .line 76
    const/16 v0, 0x32

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_SCROLL_WAIT_INTERVAL:I

    .line 77
    const/4 v0, 0x0

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_SCROLL_INTERVAL_COUNT:I

    .line 103
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->VALUE_OF_MAX_STRETCH_INC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;-><init>(Landroid/content/Context;)V

    .line 58
    iput v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_appwidget_id:I

    .line 59
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isRcvRegistered:Z

    .line 74
    iput v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_WHOLE:I

    .line 92
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isHead:Z

    .line 93
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTail:Z

    .line 94
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isWating:Z

    .line 95
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isFlingDone:Z

    .line 96
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTouchedSet:Z

    .line 97
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedUp:Z

    .line 98
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedDown:Z

    .line 101
    iput v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_increment:I

    .line 108
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isMoved:Z

    .line 109
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isScrolling:Z

    .line 864
    new-instance v0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_FriendsRollerView$3;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_handler:Landroid/os/Handler;

    .line 1012
    new-instance v0, Lcom/lge/appwidget/Andy_FriendsRollerView$4;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_FriendsRollerView$4;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_receiver:Landroid/content/BroadcastReceiver;

    .line 151
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->initialize(Landroid/content/Context;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/lge/appwidget/Andy_RollerScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_appwidget_id:I

    .line 59
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isRcvRegistered:Z

    .line 74
    iput v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_WHOLE:I

    .line 92
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isHead:Z

    .line 93
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTail:Z

    .line 94
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isWating:Z

    .line 95
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isFlingDone:Z

    .line 96
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTouchedSet:Z

    .line 97
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedUp:Z

    .line 98
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedDown:Z

    .line 101
    iput v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_increment:I

    .line 108
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isMoved:Z

    .line 109
    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isScrolling:Z

    .line 864
    new-instance v0, Lcom/lge/appwidget/Andy_FriendsRollerView$3;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_FriendsRollerView$3;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_handler:Landroid/os/Handler;

    .line 1012
    new-instance v0, Lcom/lge/appwidget/Andy_FriendsRollerView$4;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_FriendsRollerView$4;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_receiver:Landroid/content/BroadcastReceiver;

    .line 158
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->initialize(Landroid/content/Context;)V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/lge/appwidget/Andy_FriendsRollerView;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->sleepForMillis(J)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/appwidget/Andy_FriendsRollerView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isScrolling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_tail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/appwidget/Andy_FriendsRollerView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->increaseDummyHead(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/appwidget/Andy_FriendsRollerView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->increaseDummyTail(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/lge/appwidget/Andy_FriendsRollerView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isWating:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/lge/appwidget/Andy_FriendsRollerView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isWating:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/lge/appwidget/Andy_FriendsRollerView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_roller_top:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/appwidget/Andy_FriendsRollerView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->isAutoLockPossible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/lge/appwidget/Andy_FriendsRollerView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedUp:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/lge/appwidget/Andy_FriendsRollerView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedDown:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/lge/appwidget/Andy_FriendsRollerView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_WHOLE:I

    return v0
.end method

.method static synthetic access$2100(Lcom/lge/appwidget/Andy_FriendsRollerView;)Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemManager()Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/appwidget/Andy_FriendsRollerView;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/appwidget/Andy_FriendsRollerView;->sendMessageAtFrontOfQueue(IIZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/appwidget/Andy_FriendsRollerView;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getAlignedPos(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/lge/appwidget/Andy_FriendsRollerView;)Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/appwidget/Andy_FriendsRollerView;Landroid/content/Context;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->sendRollerViewBroadcast(Landroid/content/Context;III)V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/appwidget/Andy_FriendsRollerView;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_head:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getAlignedPos(I)I
    .registers 6
    .parameter "src"

    .prologue
    .line 846
    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    div-int v0, p1, v2

    .line 847
    .local v0, portion:I
    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    rem-int v1, p1, v2

    .line 849
    .local v1, remain:I
    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_HALF:I

    if-le v1, v2, :cond_12

    add-int/lit8 v2, v0, 0x1

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    mul-int/2addr v2, v3

    :goto_11
    return v2

    :cond_12
    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    mul-int/2addr v2, v0

    goto :goto_11
.end method

.method private final getAppWidgetId()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_appwidget_id:I

    return v0
.end method

.method private getItemManager()Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_item_manager:Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    if-nez v0, :cond_f

    .line 337
    new-instance v0, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_item_manager:Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    .line 340
    :cond_f
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_item_manager:Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    return-object v0
.end method

.method private getProperVelocityY(IIZ)I
    .registers 10
    .parameter "velocityY"
    .parameter "pos"
    .parameter "isFlingDown"

    .prologue
    const/4 v5, 0x1

    .line 376
    move v2, p1

    .line 377
    .local v2, proper:I
    invoke-direct {p0, p2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getVisibleItemPos(I)I

    move-result v0

    .line 379
    .local v0, item_pos:I
    if-eqz p3, :cond_24

    .line 381
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    sub-int v1, v3, v4

    .line 382
    .local v1, num:I
    if-lez v1, :cond_18

    .line 384
    sub-int v3, v1, v5

    mul-int/lit16 v3, v3, 0xc8

    add-int/lit16 v2, v3, 0x12c

    .line 397
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

    .line 389
    .end local v1       #num:I,
    :cond_24
    move v1, v0

    .line 390
    .restart local v1       #num:I,
    if-lez v1, :cond_18

    .line 392
    sub-int v3, v1, v5

    mul-int/lit16 v3, v3, 0xc8

    add-int/lit16 v2, v3, 0x12c

    .line 393
    neg-int v2, v2

    goto :goto_18

    :cond_2f
    move v3, v2

    .line 397
    goto :goto_23
.end method

.method private getScrollPos(F)I
    .registers 9
    .parameter "y"

    .prologue
    .line 569
    const/4 v2, -0x1

    .line 570
    .local v2, pos_y:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getScrollY()I

    move-result v1

    .line 571
    .local v1, cur_y:I
    sget v4, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    rem-int v3, v1, v4

    .line 572
    .local v3, rem:I
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getTouchedAreaWithPos(F)I

    move-result v0

    .line 574
    .local v0, area:I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->scrollTo(II)V

    .line 576
    packed-switch v0, :pswitch_data_36

    .line 598
    const-string v4, "Andy_FriendsRollerView"

    const-string v5, "TH: ## Out of bound!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_1b
    :goto_1b
    return v2

    .line 579
    :pswitch_1c
    if-eqz v1, :cond_1b

    .line 584
    sget v4, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    add-int/2addr v4, v3

    sub-int v2, v1, v4

    .line 585
    goto :goto_1b

    .line 588
    :pswitch_24
    sget v4, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    mul-int/2addr v4, v5

    if-ge v1, v4, :cond_1b

    .line 593
    sget v4, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    add-int/2addr v4, v3

    add-int v2, v1, v4

    .line 594
    goto :goto_1b

    .line 576
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method private final getStretchingIncrement(FF)I
    .registers 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 528
    sub-float v1, p1, p2

    float-to-int v1, v1

    shr-int/lit8 v0, v1, 0x1

    .line 529
    .local v0, inc:I
    sget v1, Lcom/lge/appwidget/Andy_FriendsRollerView;->VALUE_OF_MAX_STRETCH_INC:I

    if-ge v0, v1, :cond_b

    move v1, v0

    :goto_a
    return v1

    :cond_b
    sget v1, Lcom/lge/appwidget/Andy_FriendsRollerView;->VALUE_OF_MAX_STRETCH_INC:I

    goto :goto_a
.end method

.method private getTouchedAreaWithPos(F)I
    .registers 9
    .parameter "y"

    .prologue
    .line 546
    float-to-int v3, p1

    .line 548
    .local v3, touched:I
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getPaddingTop()I

    move-result v6

    sub-int v2, v5, v6

    .line 549
    .local v2, height:I
    sget v5, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    sget v6, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    add-int/2addr v5, v6

    sub-int v4, v2, v5

    .line 550
    .local v4, up:I
    sget v5, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    sget v6, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    add-int v1, v5, v6

    .line 551
    .local v1, down_start:I
    move v0, v2

    .line 553
    .local v0, down_end:I
    if-ltz v3, :cond_24

    if-gt v3, v4, :cond_24

    .line 555
    const/4 v5, 0x0

    .line 564
    :goto_23
    return v5

    .line 557
    :cond_24
    if-ltz v3, :cond_2c

    if-lt v3, v1, :cond_2c

    if-ge v3, v0, :cond_2c

    .line 561
    const/4 v5, 0x1

    goto :goto_23

    .line 564
    :cond_2c
    const/4 v5, -0x1

    goto :goto_23
.end method

.method private getVisibleItemPos(I)I
    .registers 3
    .parameter "crnt_pos"

    .prologue
    .line 411
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    div-int v0, p1, v0

    return v0
.end method

.method private declared-synchronized increaseDummyHead(I)V
    .registers 5
    .parameter "gap"

    .prologue
    .line 534
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-ltz p1, :cond_14

    move v2, p1

    :goto_8
    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 535
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_head:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 536
    monitor-exit p0

    return-void

    .line 534
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
    .line 540
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-ltz p1, :cond_14

    move v2, p1

    :goto_8
    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 541
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_tail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_16

    .line 542
    monitor-exit p0

    return-void

    .line 540
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
    const v4, 0x202007b

    const/4 v2, -0x1

    .line 309
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 313
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_list:Landroid/widget/LinearLayout$LayoutParams;

    .line 314
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    .line 315
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 316
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_list:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->addView(Landroid/view/View;)V

    .line 320
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    .line 321
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_head:Landroid/widget/ImageView;

    .line 322
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_head:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_head:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 324
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_head:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    .line 327
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_tail:Landroid/widget/ImageView;

    .line 328
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_tail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_tail:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_tail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 331
    return-void
.end method

.method private initRollerView()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 224
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setVerticalScrollBarEnabled(Z)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setHorizontalScrollBarEnabled(Z)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setSmoothScrollingEnabled(Z)V

    .line 227
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setVerticalFadingEdgeEnabled(Z)V

    .line 228
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setFadingEdgeLength(I)V

    .line 229
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 230
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setAnimationCacheEnabled(Z)V

    .line 231
    invoke-virtual {p0, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setDrawingCacheEnabled(Z)V

    .line 233
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->removeAllViews()V

    .line 234
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 163
    invoke-static {p1}, Lcom/lge/appwidget/Andy_FriendsRollerViewLayout;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    .line 164
    .local v0, isLandscape:Z
    if-eqz v0, :cond_e

    sget v1, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    :goto_8
    sput v1, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    .line 165
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_WHOLE:I

    .line 166
    return-void

    .line 164
    :cond_e
    sget v1, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_MARGIN_HEIGHT:I

    add-int/2addr v1, v2

    goto :goto_8
.end method

.method private final isAutoLockPossible()Z
    .registers 2

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isFlingDone:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedDown:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedUp:Z

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

    .line 345
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemManager()Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    move-result-object v1

    .line 346
    .local v1, manager:Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;
    invoke-virtual {v1}, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->getItemCount()I

    move-result v3

    .line 348
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v3, :cond_21

    .line 350
    invoke-virtual {v1, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->getItemView(I)Landroid/view/View;

    move-result-object v4

    .line 351
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 352
    .local v2, parent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_1b

    .line 354
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 357
    :cond_1b
    invoke-virtual {p0, v4}, Lcom/lge/appwidget/Andy_FriendsRollerView;->addItem(Landroid/view/View;)Z

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 360
    .end local v2       #parent:Landroid/view/ViewGroup;,
    .end local v4       #view:Landroid/view/View;,
    :cond_21
    if-lez v3, :cond_2f

    .line 362
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5, v6, v6, v6}, Lcom/lge/appwidget/Andy_FriendsRollerView;->sendRollerViewBroadcast(Landroid/content/Context;III)V

    .line 364
    iget-object v5, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    invoke-interface {v5, v3}, Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;->onRollerUpdated(I)V

    .line 366
    :cond_2f
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 201
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isRcvRegistered:Z

    if-nez v1, :cond_16

    .line 203
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 204
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.lge.appwidget.Andy_FriendsRollerView.action.REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 207
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isRcvRegistered:Z

    .line 209
    .end local v0       #filter:Landroid/content/IntentFilter;,
    :cond_16
    return-void
.end method

.method private declared-synchronized scrollToPosFrom(F)Z
    .registers 6
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 607
    monitor-enter p0

    :try_start_3
    iget-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isScrolling:Z

    if-nez v1, :cond_2b

    .line 609
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isScrolling:Z

    .line 611
    invoke-direct {p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getScrollPos(F)I

    move-result v0

    .line 612
    .local v0, pos_y:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 614
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->sendMessageAtFrontOfQueue(IIZ)V

    .line 616
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/appwidget/Andy_FriendsRollerView$1;

    invoke-direct {v2, p0}, Lcom/lge/appwidget/Andy_FriendsRollerView$1;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2d

    move v1, v3

    .line 635
    .end local v0       #pos_y:I,
    :goto_24
    monitor-exit p0

    return v1

    .line 629
    .restart local v0       #pos_y:I,
    :cond_26
    const/4 v1, 0x0

    :try_start_27
    iput-boolean v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isScrolling:Z
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2d

    move v1, v2

    .line 631
    goto :goto_24

    .end local v0       #pos_y:I,
    :cond_2b
    move v1, v3

    .line 635
    goto :goto_24

    .line 607
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
    .line 854
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_handler:Landroid/os/Handler;

    if-eqz v1, :cond_18

    .line 856
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 857
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 859
    if-eqz p3, :cond_13

    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 860
    :cond_13
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 862
    .end local v0       #msg:Landroid/os/Message;,
    :cond_18
    return-void
.end method

.method private sendRollerViewBroadcast(Landroid/content/Context;III)V
    .registers 13
    .parameter "context"
    .parameter "type"
    .parameter "target"
    .parameter "pos"

    .prologue
    const-string v7, "friends://roller_info/"

    .line 801
    const/4 v1, 0x0

    .line 803
    .local v1, intent:Landroid/content/Intent;
    packed-switch p2, :pswitch_data_5c

    .line 823
    :goto_6
    if-eqz v1, :cond_b

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 824
    :cond_b
    return-void

    .line 806
    :pswitch_c
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 807
    .local v2, item_pos:Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getAppWidgetId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 808
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

    .line 809
    .local v3, path:Ljava/lang/String;
    const-string v5, "friends://roller_info/"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 811
    .local v4, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    .end local v1       #intent:Landroid/content/Intent;,
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 812
    .restart local v1       #intent:Landroid/content/Intent;,
    const-string v5, "com.lge.appwidget.Andy_FriendsRollerView.action.LISTENER"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_6

    .line 817
    .end local v0       #appwidget_id:Ljava/lang/String;,
    .end local v2       #item_pos:Ljava/lang/String;,
    .end local v3       #path:Ljava/lang/String;,
    .end local v4       #uri:Landroid/net/Uri;,
    :pswitch_47
    new-instance v1, Landroid/content/Intent;

    .end local v1       #intent:Landroid/content/Intent;,
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 818
    .restart local v1       #intent:Landroid/content/Intent;,
    const-string v5, "com.lge.appwidget.Andy_FriendsRollerView.action.CONFIG_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 819
    const-string v5, "friends://roller_info/"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_6

    .line 803
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_47
    .end packed-switch
.end method

.method public static setItemLength(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 238
    sput p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    .line 239
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    shr-int/lit8 v0, v0, 0x1

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_HALF_LENGTH:I

    .line 240
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_HALF_LENGTH:I

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_MARGIN_HEIGHT:I

    .line 242
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_WIDTH_LENGTH:I

    .line 243
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    sget v1, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_MARGIN_HEIGHT:I

    add-int/2addr v0, v1

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    .line 244
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_LENGTH:I

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    .line 245
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->LGE_HALF_LENGTH:I

    sput v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_HALF:I

    .line 246
    return-void
.end method

.method private final setWholeItemLength()V
    .registers 4

    .prologue
    .line 490
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_WHOLE:I

    .line 491
    return-void
.end method

.method private final sleepForMillis(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 793
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 797
    :goto_3
    return-void

    .line 794
    :catch_4
    move-exception v0

    .line 795
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isRcvRegistered:Z

    if-eqz v0, :cond_c

    .line 215
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isRcvRegistered:Z

    .line 219
    :cond_c
    return-void
.end method

.method private vaporizeViews()V
    .registers 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->removeAllViews()V

    .line 197
    return-void
.end method


# virtual methods
.method public addItem(Landroid/view/View;)Z
    .registers 6
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 416
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1a

    .line 418
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 420
    .local v0, cnt:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1a

    .line 422
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    sub-int v2, v0, v3

    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 423
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setWholeItemLength()V

    move v1, v3

    .line 429
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

    .line 434
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_21

    .line 436
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 438
    .local v0, cnt:I
    if-lt v0, v2, :cond_21

    .line 440
    sub-int v1, v0, v3

    if-lt p2, v1, :cond_15

    sub-int v1, v0, v2

    move p2, v1

    .line 441
    :cond_15
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 442
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setWholeItemLength()V

    move v1, v3

    .line 448
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
    .line 403
    div-int/lit8 p1, p1, 0x3

    .line 404
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getScrollY()I

    move-result v0

    if-ltz p1, :cond_11

    const/4 v1, 0x1

    :goto_9
    invoke-direct {p0, p1, v0, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getProperVelocityY(IIZ)I

    move-result p1

    .line 406
    invoke-super {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->fling(I)V

    .line 407
    return-void

    .line 404
    :cond_11
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public getItemAt(I)Landroid/view/View;
    .registers 5
    .parameter "position"

    .prologue
    .line 463
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1b

    .line 465
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 467
    .local v0, cnt:I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_1b

    const/4 v1, 0x1

    sub-int v1, v0, v1

    if-ge p1, v1, :cond_1b

    .line 469
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 473
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

    .line 453
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_15

    .line 455
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 458
    :goto_14
    return v0

    :cond_15
    const/4 v0, -0x1

    goto :goto_14
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 171
    invoke-super {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->onAttachedToWindow()V

    .line 173
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->registerReceiver(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/lge/appwidget/Andy_RollerScrollView;->onDetachedFromWindow()V

    .line 181
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->unregisterReceiver(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 641
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 646
    invoke-super {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_b
    return v0

    .line 643
    :pswitch_c
    iget-boolean v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isMoved:Z

    goto :goto_b

    .line 641
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method protected onScrollChanged(IIII)V
    .registers 11
    .parameter "left"
    .parameter "top"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 496
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lge/appwidget/Andy_RollerScrollView;->onScrollChanged(IIII)V

    .line 498
    iput p2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_roller_top:I

    .line 500
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 501
    .local v1, roller_size:I
    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_HALF:I

    add-int/2addr v2, v3

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 503
    .local v0, boundary:I
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isHead:Z

    if-nez v2, :cond_36

    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_HALF:I

    if-ge p2, v2, :cond_36

    .line 505
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isHead:Z

    .line 506
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    invoke-interface {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;->onReachToHead()V

    .line 514
    :cond_28
    :goto_28
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTail:Z

    if-nez v2, :cond_46

    if-le p2, v0, :cond_46

    .line 516
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTail:Z

    .line 517
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    invoke-interface {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;->onReachToTail()V

    .line 524
    :cond_35
    :goto_35
    return-void

    .line 508
    :cond_36
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isHead:Z

    if-eqz v2, :cond_28

    sget v2, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_HALF:I

    if-lt p2, v2, :cond_28

    .line 510
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isHead:Z

    .line 511
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    invoke-interface {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;->onLeaveFromHead()V

    goto :goto_28

    .line 519
    :cond_46
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTail:Z

    if-eqz v2, :cond_35

    if-gt p2, v0, :cond_35

    .line 521
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTail:Z

    .line 522
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    invoke-interface {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;->onLeaveFromTail()V

    goto :goto_35
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "ev"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 653
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 655
    .local v0, x:F
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isScrolling:Z

    if-nez v2, :cond_153

    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_156

    .line 782
    :cond_16
    :goto_16
    invoke-super {p0, p1}, Lcom/lge/appwidget/Andy_RollerScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 786
    :goto_1a
    return v2

    .line 660
    :pswitch_1b
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v2

    if-lez v2, :cond_26

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    invoke-interface {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;->onRollerStarted()V

    .line 661
    :cond_26
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isMoved:Z

    .line 662
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isFlingDone:Z

    .line 663
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_roller_top:I

    if-nez v2, :cond_36

    move v2, v5

    :goto_2f
    iput-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTouchedSet:Z

    .line 664
    iput v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    .line 665
    iput v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_x:F

    goto :goto_16

    :cond_36
    move v2, v4

    .line 663
    goto :goto_2f

    .line 669
    :pswitch_38
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_x:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 671
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    float-to-int v2, v2

    float-to-int v3, v1

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xf

    if-gt v2, v3, :cond_50

    move v2, v5

    .line 673
    goto :goto_1a

    .line 676
    :cond_50
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isMoved:Z

    .line 679
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_roller_top:I

    if-gtz v2, :cond_7b

    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_7b

    .line 682
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTouchedSet:Z

    if-nez v2, :cond_64

    .line 684
    iput v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    .line 685
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTouchedSet:Z

    .line 688
    :cond_64
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v2

    if-le v2, v5, :cond_79

    .line 690
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    invoke-direct {p0, v1, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getStretchingIncrement(FF)I

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_increment:I

    .line 691
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_increment:I

    invoke-direct {p0, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->increaseDummyHead(I)V

    .line 692
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedUp:Z

    :cond_79
    move v2, v5

    .line 695
    goto :goto_1a

    .line 697
    :cond_7b
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_roller_top:I

    iget v3, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH_WHOLE:I

    if-lt v2, v3, :cond_a6

    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_a6

    .line 700
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTouchedSet:Z

    if-nez v2, :cond_8f

    .line 702
    iput v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    .line 703
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTouchedSet:Z

    .line 706
    :cond_8f
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v2

    if-le v2, v5, :cond_16

    .line 708
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    invoke-direct {p0, v2, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getStretchingIncrement(FF)I

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_increment:I

    .line 709
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_increment:I

    invoke-direct {p0, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->increaseDummyTail(I)V

    .line 710
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedDown:Z

    goto/16 :goto_16

    .line 715
    :cond_a6
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedUp:Z

    if-eqz v2, :cond_cd

    .line 717
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-le v2, v3, :cond_c2

    .line 719
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    invoke-direct {p0, v1, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getStretchingIncrement(FF)I

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_increment:I

    .line 720
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_increment:I

    invoke-direct {p0, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->increaseDummyHead(I)V

    move v2, v5

    .line 722
    goto/16 :goto_1a

    .line 726
    :cond_c2
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    invoke-virtual {p1, v0, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 727
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedUp:Z

    .line 728
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isTouchedSet:Z

    goto/16 :goto_16

    .line 731
    :cond_cd
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedDown:Z

    if-eqz v2, :cond_16

    .line 733
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v3, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    if-le v2, v3, :cond_e8

    .line 735
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    invoke-direct {p0, v1, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getStretchingIncrement(FF)I

    move-result v2

    iput v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_increment:I

    .line 736
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_increment:I

    invoke-direct {p0, v2}, Lcom/lge/appwidget/Andy_FriendsRollerView;->increaseDummyTail(I)V

    goto/16 :goto_16

    .line 740
    :cond_e8
    iput-boolean v4, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedDown:Z

    goto/16 :goto_16

    .line 748
    :pswitch_ec
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isMoved:Z

    if-nez v2, :cond_10a

    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_roller_top:I

    if-ltz v2, :cond_10a

    .line 750
    invoke-direct {p0, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView;->scrollToPosFrom(F)Z

    move-result v2

    if-nez v2, :cond_16

    .line 755
    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getScrollY()I

    move-result v3

    sget v4, Lcom/lge/appwidget/Andy_FriendsRollerView;->ITEM_LENGTH:I

    div-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;->onRollerStopped(II)V

    .line 758
    :cond_10a
    :pswitch_10a
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedUp:Z

    if-eqz v2, :cond_146

    .line 760
    new-instance v2, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkUpThread;

    invoke-direct {v2, p0, v6}, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkUpThread;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;Lcom/lge/appwidget/Andy_FriendsRollerView$1;)V

    invoke-virtual {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkUpThread;->start()V

    .line 768
    :cond_116
    :goto_116
    iput-boolean v5, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isFlingDone:Z

    .line 770
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isWating:Z

    if-nez v2, :cond_16

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v2

    if-lez v2, :cond_16

    .line 772
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    .line 774
    iget v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_touched_y:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_16

    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedUp:Z

    if-nez v2, :cond_16

    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedDown:Z

    if-nez v2, :cond_16

    .line 776
    new-instance v2, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;

    invoke-direct {v2, p0, v6}, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;Lcom/lge/appwidget/Andy_FriendsRollerView$1;)V

    invoke-virtual {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView$AutoLockThread;->start()V

    goto/16 :goto_16

    .line 762
    :cond_146
    iget-boolean v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_isStretchedDown:Z

    if-eqz v2, :cond_116

    .line 764
    new-instance v2, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;

    invoke-direct {v2, p0, v6}, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;Lcom/lge/appwidget/Andy_FriendsRollerView$1;)V

    invoke-virtual {v2}, Lcom/lge/appwidget/Andy_FriendsRollerView$ShrinkDownThread;->start()V

    goto :goto_116

    :cond_153
    move v2, v5

    .line 786
    goto/16 :goto_1a

    .line 657
    :pswitch_data_156
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_ec
        :pswitch_38
        :pswitch_10a
    .end packed-switch
.end method

.method public removeItem(Landroid/view/View;)Z
    .registers 4
    .parameter "view"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_14

    .line 480
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_item_list:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 482
    const/4 v0, 0x1

    .line 485
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
    .line 290
    iput p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_appwidget_id:I

    .line 291
    return-void
.end method

.method public setContactsPhotoRes(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemManager()Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->setContactsPhotoRes(I)V

    .line 277
    return-void
.end method

.method public setDummyHeight(I)V
    .registers 5
    .parameter "height"

    .prologue
    .line 300
    if-ltz p1, :cond_1a

    move v0, p1

    .line 301
    .local v0, h:I
    :goto_3
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 303
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_head:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_head:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_dummy_tail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_ll_params_tail:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    return-void

    .line 300
    .end local v0       #h:I,
    :cond_1a
    const/4 v1, 0x0

    move v0, v1

    goto :goto_3
.end method

.method public setDummyLength(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    if-eqz v0, :cond_b

    .line 283
    sput p1, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    .line 284
    sget v0, Lcom/lge/appwidget/Andy_FriendsRollerView;->DUMMY_HEIGHT_LENGTH:I

    invoke-virtual {p0, v0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->setDummyHeight(I)V

    .line 286
    :cond_b
    return-void
.end method

.method public setOnItemStatusChangedListener(Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    .line 53
    return-void
.end method

.method public setUserContactsIds(Landroid/os/Bundle;)V
    .registers 6
    .parameter "bundle"

    .prologue
    .line 266
    const-string v1, "key_contactlist_ids"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    .line 267
    .local v0, list:[J
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemManager()Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->setUserContactsIds([J)V

    .line 269
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.appwidget.Andy_FriendsRollerView.action.REFRESH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public setUserContactsNames(Landroid/os/Bundle;)V
    .registers 4
    .parameter "bundle"

    .prologue
    .line 258
    const-string v1, "key_contactlist_names"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, list:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemManager()Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->setUserContactsNames([Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public setUserContactsPhotos(Landroid/os/Bundle;Z)V
    .registers 7
    .parameter "bundle"
    .parameter "isAppended"

    .prologue
    .line 250
    const-string v1, "key_contactlist_photos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemManager()Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/lge/appwidget/util/friends/Andy_FriendsItemManager;->setUserContactsPhotos(Ljava/util/ArrayList;Z)V

    .line 253
    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.lge.appwidget.Andy_FriendsRollerView.action.REFRESH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method public updateItemPosChanged(I)V
    .registers 4
    .parameter "pos"

    .prologue
    .line 828
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/appwidget/Andy_FriendsRollerView$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/appwidget/Andy_FriendsRollerView$2;-><init>(Lcom/lge/appwidget/Andy_FriendsRollerView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 837
    return-void
.end method

.method public updateRollerLayout(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->initRollerView()V

    .line 187
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->initInnerLayout()V

    .line 189
    invoke-direct {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->populateRollerList()V

    .line 191
    iget-object v0, p0, Lcom/lge/appwidget/Andy_FriendsRollerView;->_listener_roller:Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;

    invoke-virtual {p0}, Lcom/lge/appwidget/Andy_FriendsRollerView;->getItemCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/lge/appwidget/Andy_FriendsRollerView$OnRollerViewStatusChanged;->onRollerUpdated(I)V

    .line 192
    return-void
.end method
