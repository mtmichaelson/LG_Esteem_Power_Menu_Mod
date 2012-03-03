.class Lcom/android/internal/policy/impl/Andy_LockScreen2;
.super Landroid/widget/LinearLayout;
.source "Andy_LockScreen2.java"


# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EventDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/Andy_LockScreen2$13;,
        Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;,
        Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;,
        Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;,
        Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final MUSIC_DBG:Z = false

.field public static final MUSIC_PACKAGE:Ljava/lang/String; = "com.android.music"

.field public static final MUSIC_SERVICE_CLASS:Ljava/lang/String; = "com.android.music.MediaPlaybackService"

.field private static final TAG:Ljava/lang/String; = "Andy_LockScreen2"

.field private static final UICC_DBG:Z

.field private static isMetroPCS:Z

.field private static mEventText:[Landroid/widget/TextView;

.field private static mEventTextNumber:[I

.field private static mMusicPlayInfo:Ljava/lang/String;



# instance fields
.field private allowedArea:I

.field countOfCalendarEvent:I

.field private density:F

.field private displayHeight:I

.field private eventGroupPos:[I

.field private mAlarmIcon:Landroid/graphics/drawable/Drawable;

.field private mAlarmInfo:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBTstatus:Landroid/widget/TextView;

.field private mBatteryBadColor:I

.field private mBatteryGoodColor:I

.field private mBatteryIcon:Landroid/widget/ImageView;

.field private mBatteryInstruction:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private mCalendarEvents:Landroid/widget/TextView;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field private mChargingInstruction:Ljava/lang/String;

.field public mConnection:Landroid/content/ServiceConnection;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateStatusFrame:Landroid/widget/RelativeLayout;

.field private mDisplayTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEmails:Landroid/widget/TextView;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mEnableMenuKeyInLockScreen:Z

.field private mEvboxDetailsLine1:Landroid/widget/TextView;

.field private mEvboxDetailsLine2:Landroid/widget/TextView;

.field private mEventBg:[I

.field private mEventBgPress:[I

.field private mEventBox:Landroid/widget/LinearLayout;

.field private mEventGroup:Landroid/widget/LinearLayout;

.field private mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mFmradio:Landroid/widget/TextView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mIccText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

.field private mKeyboardHidden:I

.field private mLastSeekEventTime:J

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

.field private mMessages:Landroid/widget/TextView;

.field private mMissedCalls:Landroid/widget/TextView;

.field private mMusicArtistText:Landroid/widget/TextView;

.field private mMusicControlFF:Lcom/android/music/RepeatingImageButton;

.field private mMusicControlPlayToggle:Landroid/widget/ImageButton;

.field private mMusicControlRew:Lcom/android/music/RepeatingImageButton;

.field private mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

.field private mMusicControlinTouch:Z

.field private mMusicPlaying:Z

.field private mMusicTitleText:Landroid/widget/TextView;

.field private mMusicTrackInfoText:Landroid/widget/TextView;

.field private mNextAlarm:Ljava/lang/String;

.field private mNotiMove:Landroid/widget/FrameLayout;

.field private mPM:Landroid/os/PowerManager;

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mPluggedIn:Z

.field private mPosOverride:J

.field private mResIdGroup:[I

.field private mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mRuimText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSeeking:Z

.field private mShowMainBatteryImage:Z

.field private mShowSimState:Z

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mSimLockInfoGroup:Landroid/widget/RelativeLayout;

.field private mSimLockReason:Landroid/widget/TextView;

.field private mSimText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

.field private mSlideDownText:Landroid/widget/TextView;

.field private mSlideLayout:Landroid/widget/RelativeLayout;

.field private mSlideUp:Landroid/widget/TextView;

.field private mSlidingUnlock:Landroid/widget/FrameLayout;

.field private mStartSeekPos:J

.field private mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mTouchLayer:Landroid/widget/FrameLayout;

.field private mUICC_IOError:Z

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVoiceMails:Landroid/widget/TextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWasMusicActive:Z

.field private notiArea:Z

.field private notiBgPressRes:I

.field private notiBgRes:I

.field private notiScrollRange:I

.field private slideArea:Z

.field private slideEnabled:Z

.field private statusHeight:I

.field private unLockDeltaScroll:I

.field private unlocked:Z

.field private whatsNew:Landroid/content/Intent;

.field private whatsNewPoint:I

.field private yMove:F



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 112
    sput-boolean v2, Lcom/android/internal/policy/impl/Andy_LockScreen2;->isMetroPCS:Z

    .line 153
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventTextNumber:[I

    .line 2232
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void

    .line 153
    nop

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 13
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 444
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 114
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUICC_IOError:Z

    .line 117
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Normal:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 204
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideEnabled:Z

    .line 205
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideArea:Z

    .line 206
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiArea:Z

    .line 207
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->unlocked:Z

    .line 208
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->yMove:F

    .line 209
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->eventGroupPos:[I

    .line 211
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mHandler:Landroid/os/Handler;

    .line 218
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mShowingBatteryInfo:Z

    .line 221
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPluggedIn:Z

    .line 224
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    .line 226
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    .line 227
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 228
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    .line 229
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 230
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingInstruction:Ljava/lang/String;

    .line 231
    iput v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryGoodColor:I

    .line 232
    iput v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryBadColor:I

    .line 254
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mWasMusicActive:Z

    .line 258
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlinTouch:Z

    .line 274
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlaying:Z

    .line 394
    new-array v2, v4, [I

    fill-array-data v2, :array_174

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBg:[I

    .line 403
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBg:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiBgRes:I

    .line 406
    new-array v2, v4, [I

    fill-array-data v2, :array_186

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBgPress:[I

    .line 415
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBgPress:[I

    aget v2, v2, v5

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiBgPressRes:I

    .line 749
    new-instance v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$4;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mConnection:Landroid/content/ServiceConnection;

    .line 775
    new-instance v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$5;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 784
    new-instance v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$6;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 793
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSeeking:Z

    .line 794
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStartSeekPos:J

    .line 796
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPosOverride:J

    .line 2235
    iput v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->countOfCalendarEvent:I

    .line 445
    iput-object p3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 446
    iput-object p4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 447
    iput-object p5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 449
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUICC_IOError:Z

    .line 453
    sput-boolean v5, Lcom/android/internal/policy/impl/Andy_LockScreen2;->isMetroPCS:Z

    .line 456
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEnableMenuKeyInLockScreen:Z

    .line 458
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCreationOrientation:I

    .line 460
    iget v2, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mKeyboardHidden:I

    .line 468
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 469
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v2, "Andy_LockScreen2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creation orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCreationOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const v2, 0x2030010

    invoke-virtual {v1, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 474
    const v2, 0x20500e2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    .line 476
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 477
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    const v2, 0x2050010

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDate:Landroid/widget/TextView;

    .line 480
    const v2, 0x2050011

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    .line 481
    const v2, 0x2050012

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus2:Landroid/widget/TextView;

    .line 483
    const v2, 0x2050009

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    .line 485
    const v2, 0x205000a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    .line 486
    const v2, 0x2050008

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    .line 487
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    const v3, 0x104029e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 489
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 490
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/Andy_LockScreen2$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$1;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->initView()V

    .line 498
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->initSetting()V

    .line 499
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerEventDataCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EventDataCallback;)V

    .line 501
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->setFocusable(Z)V

    .line 502
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->setFocusableInTouchMode(Z)V

    .line 503
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->setDescendantFocusability(I)V

    .line 505
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 506
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 508
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAudioManager:Landroid/media/AudioManager;

    .line 509
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->isSilentMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSilentMode:Z

    .line 513
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v0

    .line 514
    .local v0, andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicState()I

    move-result v2

    if-ne v2, v6, :cond_171

    .line 515
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mWasMusicActive:Z

    .line 522
    :goto_164
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->initializeMusicPlayer()V

    .line 524
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateRightTabResources()V

    .line 526
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getCalendarEventInfo(Landroid/content/Context;)V

    .line 531
    return-void

    .line 517
    :cond_171
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mWasMusicActive:Z

    goto :goto_164

    .line 394
    :array_174
    .array-data 0x4
        0x9ct 0x0t 0x2t 0x2t
        0x9et 0x0t 0x2t 0x2t
        0xa0t 0x0t 0x2t 0x2t
        0xa2t 0x0t 0x2t 0x2t
        0xa4t 0x0t 0x2t 0x2t
        0xa6t 0x0t 0x2t 0x2t
        0xa8t 0x0t 0x2t 0x2t
    .end array-data

    .line 406
    :array_186
    .array-data 0x4
        0x9dt 0x0t 0x2t 0x2t
        0x9ft 0x0t 0x2t 0x2t
        0xa1t 0x0t 0x2t 0x2t
        0xa3t 0x0t 0x2t 0x2t
        0xa5t 0x0t 0x2t 0x2t
        0xa7t 0x0t 0x2t 0x2t
        0xa9t 0x0t 0x2t 0x2t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiArea:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/FrameLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNotiMove:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->whatsNew:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->refreshEventDisplay()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/internal/policy/impl/Andy_LockScreen2;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlinTouch:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlaying:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/internal/policy/impl/Andy_LockScreen2;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlaying:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicTrackInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/lge/internal/widget/Andy_SlidingPanel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/music/IMediaPlaybackService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/Andy_LockScreen2;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/Andy_LockScreen2;IJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/Andy_LockScreen2;IJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/Andy_LockScreen2;)F
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->yMove:F

    return v0
.end method

.method static synthetic access$816(Lcom/android/internal/policy/impl/Andy_LockScreen2;F)F
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->yMove:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->yMove:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideArea:Z

    return v0
.end method

.method private addNotiText()V
    .registers 3

    .prologue
    .line 1113
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideArea:Z

    if-eqz v0, :cond_4c

    .line 1115
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x2050017

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x2050018

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x2050019

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1118
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x205001a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x20500e7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x20500e8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    :cond_4c
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x205000a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x20500e2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x2050011

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x2050012

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1128
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x20500e3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x20500e4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1130
    return-void
.end method

.method private bounceAnimation(I)V
    .registers 5
    .parameter "scrollY"

    .prologue
    const/4 v2, 0x0

    .line 1104
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1105
    .local v0, bounceAni:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1106
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a000a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1107
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1109
    return-void
.end method

.method private checkNotiArea(II)Z
    .registers 7
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1059
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->eventGroupPos:[I

    aget v0, v0, v2

    if-le p2, v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->eventGroupPos:[I

    aget v0, v0, v3

    if-ge p2, v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->eventGroupPos:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    if-le p1, v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->eventGroupPos:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-ge p1, v0, :cond_1e

    move v0, v3

    .line 1063
    :goto_1d
    return v0

    :cond_1e
    move v0, v2

    goto :goto_1d
.end method

.method private createRuimText()Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;
    .registers 3

    .prologue
    .line 1961
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;Lcom/android/internal/policy/impl/Andy_LockScreen2$1;)V

    .line 1962
    .local v0, ruimText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;
    const v1, 0x208001b

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccPukLockedMessage:I

    .line 1963
    const v1, 0x208001c

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccPukLockedInstructions:I

    .line 1964
    const v1, 0x2080012

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccMissingMessage:I

    .line 1965
    const v1, 0x2080013

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccMissingInstructions:I

    .line 1966
    const v1, 0x2080010

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccErrorMessage:I

    .line 1967
    const v1, 0x104029b

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccInstructionsWhenPatternEnabled:I

    .line 1968
    const v1, 0x104029c

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccInstructionsWhenPatternDisabled:I

    .line 1969
    const v1, 0x2080046

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccPinLockedMessage:I

    .line 1970
    const v1, 0x2080011

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccMissingMessageShort:I

    .line 1971
    const v1, 0x208000f

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccErrorMessageShort:I

    .line 1972
    const v1, 0x2080014

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->networkLockedMessage:I

    .line 1973
    return-object v0
.end method

.method private createSimText()Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;
    .registers 4

    .prologue
    const v2, 0x10402b1

    .line 1938
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;Lcom/android/internal/policy/impl/Andy_LockScreen2$1;)V

    .line 1939
    .local v0, simText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;
    iput v2, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccPukLockedMessage:I

    .line 1940
    const v1, 0x10402b2

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccPukLockedInstructions:I

    .line 1941
    const v1, 0x10402a7

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccMissingMessage:I

    .line 1942
    const v1, 0x10402a8

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccMissingInstructions:I

    .line 1943
    const v1, 0x2080005

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccErrorMessage:I

    .line 1944
    const v1, 0x104029b

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccInstructionsWhenPatternEnabled:I

    .line 1945
    const v1, 0x104029c

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccInstructionsWhenPatternDisabled:I

    .line 1947
    const v1, 0x208004e

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccPinLockedMessage:I

    .line 1949
    const v1, 0x10402a6

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccMissingMessageShort:I

    .line 1950
    const v1, 0x2080004

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccErrorMessageShort:I

    .line 1951
    const v1, 0x2080006

    iput v1, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->networkLockedMessage:I

    .line 1954
    iput v2, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;->iccPermLockedMessage:I

    .line 1957
    return-object v0
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1805
    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    move-object v0, p0

    .line 1817
    :goto_5
    return-object v0

    .line 1807
    :cond_6
    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    .line 1809
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    move-object v0, p0

    .line 1810
    goto :goto_5

    .line 1812
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 1814
    :cond_32
    if-nez p0, :cond_38

    if-eqz p1, :cond_38

    move-object v0, p1

    .line 1815
    goto :goto_5

    .line 1817
    :cond_38
    const-string v0, ""

    goto :goto_5
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;
    .registers 9
    .parameter "simState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "Andy_LockScreen2"

    .line 1471
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_24

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v2, :cond_24

    move v1, v4

    .line 1484
    .local v1, missingAndNotProvisioned:Z
    :goto_11
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_26

    .line 1485
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Airplane:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 1565
    :goto_23
    return-object v2

    .end local v1       #missingAndNotProvisioned:Z,
    :cond_24
    move v1, v5

    .line 1471
    goto :goto_11

    .line 1491
    .restart local v1       #missingAndNotProvisioned:Z,
    :cond_26
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->DISPLAY_TEXT:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v2, :cond_38

    const-string v2, "persist.radio.display_txt_chk"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1495
    :cond_38
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUICC_IOError:Z

    .line 1496
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->CARDERROR:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1501
    :cond_3d
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_TYPE:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v2, :cond_71

    .line 1513
    :try_start_41
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isMPCS4GSIM()Z

    move-result v2

    if-nez v2, :cond_55

    sget-boolean v2, Lcom/android/internal/policy/impl/Andy_LockScreen2;->isMetroPCS:Z

    if-ne v2, v4, :cond_5b

    .line 1516
    :cond_55
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/policy/impl/Andy_LockScreen2;->isMetroPCS:Z

    .line 1517
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Normal:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1521
    :cond_5b
    const-string v2, "Andy_LockScreen2"

    const-string v3, "Current SIM STATUS is NON MPCS SIM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->NONMPCSSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_64} :catch_65

    goto :goto_23

    .line 1525
    :catch_65
    move-exception v2

    move-object v0, v2

    .line 1526
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "Andy_LockScreen2"

    const-string v2, "Current SIM STATUS is unknown"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Unknown:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1532
    .end local v0       #ex:Landroid/os/RemoteException;,
    :cond_71
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a6

    .line 1565
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1534
    :pswitch_7f
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1536
    :pswitch_82
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1538
    :pswitch_85
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1540
    :pswitch_88
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1542
    :pswitch_8b
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimPukLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1545
    :pswitch_8e
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUICC_IOError:Z

    .line 1548
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Normal:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1551
    :pswitch_93
    const-string v2, "Andy_LockScreen2"

    const-string v2, "Current SIM STATUS is SIM IO ERROR"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUICC_IOError:Z

    .line 1553
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->CARDERROR:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1556
    :pswitch_9f
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto :goto_23

    .line 1561
    :pswitch_a2
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimPermLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    goto/16 :goto_23

    .line 1532
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_82
        :pswitch_85
        :pswitch_88
        :pswitch_8b
        :pswitch_8e
        :pswitch_93
        :pswitch_9f
        :pswitch_a2
    .end packed-switch
.end method

.method private getCurrentText()Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 1977
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 1978
    .local v0, activePhoneType:I
    if-ne v3, v0, :cond_37

    move v1, v3

    .line 1979
    .local v1, isGsm:Z
    :goto_c
    const-string v2, "Andy_LockScreen2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating Lock Screen text to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3a

    const-string v4, "Sim"

    :goto_1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    if-eqz v1, :cond_3d

    .line 1982
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSimText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    if-nez v2, :cond_34

    .line 1983
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->createSimText()Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSimText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    .line 1985
    :cond_34
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSimText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    .line 1990
    :goto_36
    return-object v2

    .line 1978
    .end local v1       #isGsm:Z,
    :cond_37
    const/4 v2, 0x0

    move v1, v2

    goto :goto_c

    .line 1979
    .restart local v1       #isGsm:Z,
    :cond_3a
    const-string v4, "Ruim"

    goto :goto_1d

    .line 1987
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mRuimText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    if-nez v2, :cond_47

    .line 1988
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->createRuimText()Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mRuimText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    .line 1990
    :cond_47
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mRuimText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    goto :goto_36
.end method

.method private initSetting()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 623
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPM:Landroid/os/PowerManager;

    .line 624
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPM:Landroid/os/PowerManager;

    const v3, 0x1000001a

    const-string v4, "keyguard"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 626
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 629
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->density:F

    .line 631
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 633
    .local v1, display:Landroid/view/Display;
    const/high16 v2, 0x40c0

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->allowedArea:I

    .line 634
    const/high16 v2, 0x41c8

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->statusHeight:I

    .line 635
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->statusHeight:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->displayHeight:I

    .line 639
    const/high16 v2, 0x4305

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->unLockDeltaScroll:I

    .line 641
    const/high16 v2, 0x42fc

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->whatsNewPoint:I

    .line 644
    const/high16 v2, 0x43b4

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiScrollRange:I

    .line 648
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->whatsNew:Landroid/content/Intent;

    .line 649
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->whatsNew:Landroid/content/Intent;

    const-string v3, "com.android.whatsnew"

    const-string v4, "com.android.whatsnew.WhatsNewMainActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->whatsNew:Landroid/content/Intent;

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 651
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->whatsNew:Landroid/content/Intent;

    const-string v3, "android.intent.action.LockScreen"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mTouchLayer:Landroid/widget/FrameLayout;

    const v3, 0x2040014

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->setAnimation(Landroid/view/ViewGroup;I)V

    .line 657
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;

    invoke-direct {v4, p0, v6}, Lcom/android/internal/policy/impl/Andy_LockScreen2$LayoutMovingGesture;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;Lcom/android/internal/policy/impl/Andy_LockScreen2$1;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mGestureDetector:Landroid/view/GestureDetector;

    .line 658
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v5}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 659
    const v2, 0x2050004

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 660
    .local v0, baseLayout:Landroid/widget/RelativeLayout;
    new-instance v2, Lcom/android/internal/policy/impl/Andy_LockScreen2$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$2;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 669
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 673
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2060022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryGoodColor:I

    .line 674
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryBadColor:I

    .line 677
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    .line 678
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v3, 0x205000e

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v3, 0x205000f

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v3, 0x2050010

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    return-void
.end method

.method private initView()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 535
    const v0, 0x2050007

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mTouchLayer:Landroid/widget/FrameLayout;

    .line 536
    const v0, 0x20500e5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBox:Landroid/widget/LinearLayout;

    .line 537
    const v0, 0x2050016

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventGroup:Landroid/widget/LinearLayout;

    .line 538
    const v0, 0x2050014

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideUp:Landroid/widget/TextView;

    .line 539
    const v0, 0x20500e6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideDownText:Landroid/widget/TextView;

    .line 540
    const v0, 0x2050005

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    .line 541
    const v0, 0x2050015

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNotiMove:Landroid/widget/FrameLayout;

    .line 542
    const v0, 0x20500e0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    .line 546
    const v0, 0x2050006

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideLayout:Landroid/widget/RelativeLayout;

    .line 554
    const v0, 0x20500ec

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryIcon:Landroid/widget/ImageView;

    .line 555
    const v0, 0x20500ed

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    .line 557
    const v0, 0x2050017

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMissedCalls:Landroid/widget/TextView;

    .line 558
    const v0, 0x2050018

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMessages:Landroid/widget/TextView;

    .line 559
    const v0, 0x2050019

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmails:Landroid/widget/TextView;

    .line 560
    const v0, 0x205001a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mVoiceMails:Landroid/widget/TextView;

    .line 563
    const v0, 0x20500e7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEvboxDetailsLine1:Landroid/widget/TextView;

    .line 564
    const v0, 0x20500e8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEvboxDetailsLine2:Landroid/widget/TextView;

    .line 568
    const v0, 0x20500e9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCalendarEvents:Landroid/widget/TextView;

    .line 569
    const v0, 0x20500ea

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAlarmInfo:Landroid/widget/TextView;

    .line 572
    const v0, 0x20500e3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mFmradio:Landroid/widget/TextView;

    .line 573
    const v0, 0x20500e4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBTstatus:Landroid/widget/TextView;

    .line 576
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    const v1, 0x2080034

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x202008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 581
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mFmradio:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBTstatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x202008c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMissedCalls:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMessages:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmails:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mVoiceMails:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEvboxDetailsLine1:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEvboxDetailsLine2:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCalendarEvents:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAlarmInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mFmradio:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBTstatus:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMissedCalls:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMessages:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmails:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mVoiceMails:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mFmradio:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBTstatus:Landroid/widget/TextView;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventText:[Landroid/widget/TextView;

    .line 611
    new-array v0, v5, [I

    fill-array-data v0, :array_190

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mResIdGroup:[I

    .line 619
    return-void

    .line 611
    nop

    :array_190
    .array-data 0x4
        0x0t 0x0t 0x9t 0x2t
        0x1t 0x0t 0x9t 0x2t
        0x2t 0x0t 0x9t 0x2t
        0x3t 0x0t 0x9t 0x2t
        0x4t 0x0t 0x9t 0x2t
    .end array-data
.end method

.method private initializeMusicPlayer()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x104

    const/4 v3, 0x1

    .line 686
    const v0, 0x20500f1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/internal/widget/Andy_SlidingPanel;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    .line 688
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$3;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V

    invoke-virtual {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->setOnPanelListener(Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;)V

    .line 714
    const v0, 0x20500f9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicArtistText:Landroid/widget/TextView;

    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicArtistText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 716
    const v0, 0x20500fa

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicTitleText:Landroid/widget/TextView;

    .line 717
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 718
    const v0, 0x20500f4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicTrackInfoText:Landroid/widget/TextView;

    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicTrackInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 721
    const v0, 0x20500f6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/RepeatingImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlRew:Lcom/android/music/RepeatingImageButton;

    .line 722
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlRew:Lcom/android/music/RepeatingImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;I)V

    invoke-virtual {v0, v1}, Lcom/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlRew:Lcom/android/music/RepeatingImageButton;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 725
    const v0, 0x20500f7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    const v1, 0x2020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 727
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlaying:Z

    .line 728
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    invoke-direct {v1, p0, v3}, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    const v0, 0x20500f8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/RepeatingImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlFF:Lcom/android/music/RepeatingImageButton;

    .line 731
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlFF:Lcom/android/music/RepeatingImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;I)V

    invoke-virtual {v0, v1}, Lcom/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlFF:Lcom/android/music/RepeatingImageButton;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 733
    return-void
.end method

.method private isSilentMode()Z
    .registers 3

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private putEmergencyBelow(I)V
    .registers 4
    .parameter "viewId"

    .prologue
    .line 1459
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1461
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1462
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1463
    return-void
.end method

.method private refreshAlarmDisplay()V
    .registers 3

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    .line 1297
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 1298
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 1302
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateStatusLines()V

    .line 1303
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .registers 10

    .prologue
    const/16 v8, 0x32

    const/16 v7, 0x1e

    const/16 v6, 0xf

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1318
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mShowingBatteryInfo:Z

    if-nez v0, :cond_10

    .line 1319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    .line 1373
    :goto_f
    return-void

    .line 1323
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_25

    .line 1324
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x202008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 1327
    :cond_25
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPluggedIn:Z

    if-eqz v0, :cond_157

    .line 1328
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_60

    .line 1329
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    .line 1330
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x208010a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingInstruction:Ljava/lang/String;

    .line 1332
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingInstruction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1333
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryGoodColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1334
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x2020120

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_f

    .line 1336
    :cond_60
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a2

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    .line 1337
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x2080109

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingInstruction:Ljava/lang/String;

    .line 1338
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingInstruction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1340
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_b2

    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_b2

    .line 1341
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x2020120

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1342
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryGoodColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    .line 1343
    :cond_b2
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_cf

    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    const/16 v1, 0x46

    if-lt v0, v1, :cond_cf

    .line 1344
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x202011f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1345
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryGoodColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    .line 1346
    :cond_cf
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    const/16 v1, 0x46

    if-ge v0, v1, :cond_ea

    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    if-lt v0, v8, :cond_ea

    .line 1347
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x202011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1348
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryGoodColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    .line 1349
    :cond_ea
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    if-ge v0, v8, :cond_103

    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    if-lt v0, v7, :cond_103

    .line 1350
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x202011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1351
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryGoodColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    .line 1352
    :cond_103
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    if-ge v0, v7, :cond_11c

    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    if-lt v0, v6, :cond_11c

    .line 1353
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x202011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1354
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryBadColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    .line 1355
    :cond_11c
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    if-ge v0, v6, :cond_136

    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_136

    .line 1356
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x202011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1357
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryBadColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    .line 1361
    :cond_136
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x2080108

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryIcon:Landroid/widget/ImageView;

    const v1, 0x202011a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1364
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryBadColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f

    .line 1368
    :cond_157
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    .line 1369
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x2080108

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingInstruction:Ljava/lang/String;

    .line 1370
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingInstruction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1371
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryInstruction:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryBadColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_f
.end method

.method private refreshEventDisplay()V
    .registers 19

    .prologue
    .line 1997
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->onRefreshMusicPlayerInfo()V

    .line 1998
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v2

    .line 1999
    .local v2, andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;
    const/4 v7, 0x0

    .line 2000
    .local v7, flag:Z
    const/4 v5, 0x0

    .line 2001
    .local v5, eventErased:Z
    const/4 v10, 0x0

    .line 2002
    .local v10, index:I
    const/4 v11, 0x0

    .line 2005
    .local v11, lastChecked:I
    const/4 v4, 0x0

    .line 2007
    .local v4, eventCounter:I
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getEventTextNumber()[I

    move-result-object v14

    sput-object v14, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventTextNumber:[I

    .line 2008
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getFMPlayInfo()Ljava/lang/String;

    move-result-object v6

    .line 2009
    .local v6, fMPlayInfo:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getLastEvent()I

    move-result v12

    .line 2010
    .local v12, lastEvent:I
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getBluetoothInfo()Ljava/lang/String;

    move-result-object v3

    .line 2012
    .local v3, bluetoothInfo:Ljava/lang/String;
    sget-object v14, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventTextNumber:[I

    aget v14, v14, v12

    if-nez v14, :cond_25

    .line 2013
    const/4 v5, 0x1

    .line 2017
    :cond_25
    const/4 v9, 0x0

    .local v9, i:I
    :goto_26
    sget-object v14, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventTextNumber:[I

    array-length v14, v14

    if-ge v9, v14, :cond_90

    .line 2018
    sget-object v14, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventTextNumber:[I

    aget v14, v14, v9

    if-eqz v14, :cond_3c

    .line 2019
    packed-switch v9, :pswitch_data_1d2

    .line 2058
    :cond_34
    :goto_34
    sget-object v14, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventText:[Landroid/widget/TextView;

    aget-object v14, v14, v10

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2017
    :cond_3c
    :goto_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_26

    .line 2024
    :pswitch_3f
    add-int/lit8 v4, v4, 0x1

    .line 2025
    move v10, v9

    .line 2026
    move v11, v9

    .line 2027
    const/4 v7, 0x1

    .line 2028
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mResIdGroup:[I

    move-object v15, v0

    aget v15, v15, v9

    sget-object v16, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventTextNumber:[I

    aget v16, v16, v9

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 2029
    .local v8, format:Ljava/lang/String;
    sget-object v14, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventText:[Landroid/widget/TextView;

    aget-object v14, v14, v10

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    sget-object v17, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventTextNumber:[I

    aget v17, v17, v9

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2031
    if-eqz v5, :cond_34

    .line 2032
    const/4 v5, 0x0

    .line 2033
    move v12, v10

    goto :goto_34

    .line 2039
    .end local v8       #format:Ljava/lang/String;,
    :pswitch_76
    move v10, v9

    .line 2040
    const/4 v7, 0x1

    .line 2041
    sget-object v14, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventText:[Landroid/widget/TextView;

    aget-object v14, v14, v10

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 2045
    :pswitch_80
    if-nez v7, :cond_3c

    const/4 v7, 0x0

    goto :goto_3c

    .line 2052
    :pswitch_84
    const/4 v14, 0x1

    sub-int v10, v9, v14

    .line 2053
    const/4 v7, 0x1

    .line 2054
    sget-object v14, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventText:[Landroid/widget/TextView;

    aget-object v14, v14, v10

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 2064
    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_b0

    .line 2065
    add-int/lit8 v4, v4, 0x1

    .line 2066
    const/4 v7, 0x1

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAlarmInfo:Landroid/widget/TextView;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAlarmInfo:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2071
    :cond_b0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->countOfCalendarEvent:I

    move v14, v0

    if-eqz v14, :cond_f7

    .line 2072
    add-int/lit8 v4, v4, 0x1

    .line 2073
    const/4 v7, 0x1

    .line 2074
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mResIdGroup:[I

    move-object v15, v0

    const/16 v16, 0x4

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->countOfCalendarEvent:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    .line 2075
    .restart local v8       #format:Ljava/lang/String;,
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCalendarEvents:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->countOfCalendarEvent:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v8, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCalendarEvents:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2085
    .end local v8       #format:Ljava/lang/String;,
    :cond_f7
    if-eqz v7, :cond_17f

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNotiMove:Landroid/widget/FrameLayout;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2087
    const/4 v14, 0x1

    if-ne v4, v14, :cond_16a

    sget-object v14, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventTextNumber:[I

    aget v14, v14, v11

    const/4 v15, 0x1

    if-ne v14, v15, :cond_16a

    .line 2090
    invoke-virtual {v2, v11}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getEventDetailsLine1(I)Ljava/lang/String;

    move-result-object v13

    .line 2091
    .local v13, str:Ljava/lang/String;
    if-eqz v13, :cond_125

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEvboxDetailsLine1:Landroid/widget/TextView;

    move-object v14, v0

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEvboxDetailsLine1:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2094
    add-int/lit8 v4, v4, 0x1

    .line 2097
    :cond_125
    invoke-virtual {v2, v11}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getEventDetailsLine2(I)Ljava/lang/String;

    move-result-object v13

    .line 2098
    if-eqz v13, :cond_13e

    .line 2099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEvboxDetailsLine2:Landroid/widget/TextView;

    move-object v14, v0

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEvboxDetailsLine2:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2101
    add-int/lit8 v4, v4, 0x1

    .line 2107
    .end local v13       #str:Ljava/lang/String;,
    :cond_13e
    :goto_13e
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->setEventGroupBackground(I)V

    .line 2109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventGroup:Landroid/widget/LinearLayout;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBox:Landroid/widget/LinearLayout;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2113
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mShowMainBatteryImage:Z

    .line 2115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideLayout:Landroid/widget/RelativeLayout;

    move-object v14, v0

    const v15, 0x202008a

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2132
    :goto_169
    return-void

    .line 2104
    :cond_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEvboxDetailsLine1:Landroid/widget/TextView;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEvboxDetailsLine2:Landroid/widget/TextView;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_13e

    .line 2117
    :cond_17f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPluggedIn:Z

    move v14, v0

    if-eqz v14, :cond_1b5

    .line 2118
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mShowMainBatteryImage:Z

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNotiMove:Landroid/widget/FrameLayout;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideLayout:Landroid/widget/RelativeLayout;

    move-object v14, v0

    const v15, 0x2020089

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 2128
    :goto_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventGroup:Landroid/widget/LinearLayout;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBox:Landroid/widget/LinearLayout;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_169

    .line 2123
    :cond_1b5
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mShowMainBatteryImage:Z

    .line 2124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNotiMove:Landroid/widget/FrameLayout;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideLayout:Landroid/widget/RelativeLayout;

    move-object v14, v0

    const v15, 0x202008a

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1a0

    .line 2019
    nop

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_76
        :pswitch_80
        :pswitch_84
    .end packed-switch
.end method

.method private refreshMusicPlayerDisplay()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2190
    const-string v0, "Andy_LockScreen2"

    const-string v1, "***** refreshMusicPlayerDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    if-nez v0, :cond_f

    .line 2212
    :cond_e
    :goto_e
    return-void

    .line 2196
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mWasMusicActive:Z

    if-eqz v0, :cond_42

    .line 2197
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->setVisibility(I)V

    .line 2198
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2199
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_e

    .line 2200
    :cond_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2202
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2203
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_e

    .line 2205
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_e

    .line 2208
    :cond_42
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0, v3}, Lcom/lge/internal/widget/Andy_SlidingPanel;->setVisibility(I)V

    .line 2209
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_e
.end method

.method private refreshTimeAndDateDisplay()V
    .registers 4

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    return-void
.end method

.method private removeNotiText()V
    .registers 3

    .prologue
    .line 1133
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideArea:Z

    if-eqz v0, :cond_4c

    .line 1135
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x2050017

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1136
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x2050018

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1137
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x2050019

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1138
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x205001a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1139
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x20500e7

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1140
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x20500e8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1144
    :cond_4c
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x205000a

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1145
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x20500e2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1146
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x2050011

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1147
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x2050012

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1148
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x20500e3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1149
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDisplayTexts:Ljava/util/ArrayList;

    const v1, 0x20500e4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1150
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 4
    .parameter "updateMonitor"

    .prologue
    .line 1200
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mShowingBatteryInfo:Z

    .line 1201
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPluggedIn:Z

    .line 1202
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    .line 1206
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 1207
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateLayout(Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;)V

    .line 1209
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->refreshBatteryStringAndIcon()V

    .line 1210
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->refreshAlarmDisplay()V

    .line 1212
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mTimeFormat:Ljava/text/DateFormat;

    .line 1213
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mDateFormatString:Ljava/lang/String;

    .line 1214
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->refreshTimeAndDateDisplay()V

    .line 1215
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateStatusLines()V

    .line 1218
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->refreshMusicPlayerDisplay()V

    .line 1219
    return-void
.end method

.method private scanBackward(IJ)V
    .registers 16
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 799
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    if-nez v4, :cond_9

    .line 836
    :goto_8
    return-void

    .line 803
    :cond_9
    if-nez p1, :cond_1d

    .line 804
    :try_start_b
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStartSeekPos:J

    .line 805
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLastSeekEventTime:J

    .line 806
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSeeking:Z

    goto :goto_8

    .line 834
    :catch_1b
    move-exception v4

    goto :goto_8

    .line 808
    :cond_1d
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSeeking:Z

    .line 809
    cmp-long v4, p2, v6

    if-gez v4, :cond_58

    .line 811
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 816
    :goto_27
    iget-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 817
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_40

    .line 819
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 820
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 821
    .local v0, duration:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStartSeekPos:J

    .line 822
    add-long/2addr v2, v0

    .line 824
    .end local v0       #duration:J,
    :cond_40
    iget-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_4c

    if-gez p1, :cond_53

    .line 825
    :cond_4c
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 826
    iput-wide p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLastSeekEventTime:J

    .line 828
    :cond_53
    if-ltz p1, :cond_63

    .line 829
    iput-wide v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPosOverride:J

    goto :goto_8

    .line 814
    .end local v2       #newpos:J,
    :cond_58
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_27

    .line 831
    .restart local v2       #newpos:J,
    :cond_63
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPosOverride:J
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_67} :catch_1b

    goto :goto_8
.end method

.method private scanForward(IJ)V
    .registers 15
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    .line 839
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    if-nez v5, :cond_5

    .line 881
    :goto_4
    return-void

    .line 841
    :cond_5
    if-nez p1, :cond_19

    .line 842
    :try_start_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStartSeekPos:J

    .line 843
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLastSeekEventTime:J

    .line 844
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSeeking:Z

    goto :goto_4

    .line 879
    :catch_17
    move-exception v5

    goto :goto_4

    .line 846
    :cond_19
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSeeking:Z

    .line 847
    const-wide/16 v5, 0x1388

    cmp-long v5, p2, v5

    if-gez v5, :cond_68

    .line 849
    const-wide/16 v5, 0xa

    mul-long/2addr p2, v5

    .line 854
    :goto_25
    iget-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStartSeekPos:J

    add-long v3, v5, p2

    .line 855
    .local v3, newpos:J
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 856
    .local v0, duration:J
    cmp-long v5, v3, v0

    if-ltz v5, :cond_50

    .line 858
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v5

    if-nez v5, :cond_75

    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_75

    const/4 v5, 0x1

    move v2, v5

    .line 860
    .local v2, isLastSong:Z
    :goto_4e
    if-eqz v2, :cond_78

    .line 869
    .end local v2       #isLastSong:Z,
    :cond_50
    :goto_50
    iget-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLastSeekEventTime:J

    sub-long v5, p2, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5c

    if-gez p1, :cond_63

    .line 870
    :cond_5c
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5, v3, v4}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 871
    iput-wide p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLastSeekEventTime:J

    .line 873
    :cond_63
    if-ltz p1, :cond_84

    .line 874
    iput-wide v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPosOverride:J

    goto :goto_4

    .line 852
    .end local v0       #duration:J,
    .end local v3       #newpos:J,
    :cond_68
    const-wide/32 v5, 0xc350

    const-wide/16 v7, 0x1388

    sub-long v7, p2, v7

    const-wide/16 v9, 0x28

    mul-long/2addr v7, v9

    add-long p2, v5, v7

    goto :goto_25

    .line 858
    .restart local v0       #duration:J,
    .restart local v3       #newpos:J,
    :cond_75
    const/4 v5, 0x0

    move v2, v5

    goto :goto_4e

    .line 864
    .restart local v2       #isLastSong:Z,
    :cond_78
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 865
    iget-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStartSeekPos:J

    sub-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStartSeekPos:J

    .line 866
    sub-long/2addr v3, v0

    goto :goto_50

    .line 876
    .end local v2       #isLastSong:Z,
    :cond_84
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPosOverride:J
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_88} :catch_17

    goto/16 :goto_4
.end method

.method private scrollAnimation(Landroid/view/View;III)V
    .registers 9
    .parameter "v"
    .parameter "fromDy"
    .parameter "toDy"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 1170
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1171
    .local v0, scrollAni:Landroid/view/animation/TranslateAnimation;
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1172
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1173
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1174
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1175
    return-void
.end method

.method private setAnimation(Landroid/view/ViewGroup;I)V
    .registers 5
    .parameter "v"
    .parameter "res"

    .prologue
    .line 1090
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1091
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1092
    .local v0, animation:Landroid/graphics/drawable/AnimationDrawable;
    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$8;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$8;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1097
    return-void
.end method

.method private setEventGroupBackground(I)V
    .registers 5
    .parameter "counter"

    .prologue
    const/4 v2, 0x1

    .line 2217
    if-ge p1, v2, :cond_4

    .line 2228
    :goto_3
    return-void

    .line 2220
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBg:[I

    array-length v0, v0

    if-le p1, v0, :cond_c

    .line 2221
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBg:[I

    array-length p1, v0

    .line 2225
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBg:[I

    sub-int v1, p1, v2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiBgRes:I

    .line 2226
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBgPress:[I

    sub-int v1, p1, v2

    aget v0, v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiBgPressRes:I

    .line 2227
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventGroup:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiBgRes:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private shouldEnableMenuKey()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 427
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 428
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 429
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 430
    .local v1, fileOverride:Z
    if-eqz v0, :cond_23

    if-nez v2, :cond_23

    if-eqz v1, :cond_25

    :cond_23
    const/4 v4, 0x1

    :goto_24
    return v4

    :cond_25
    move v4, v6

    goto :goto_24
.end method

.method private startWhatsNew()V
    .registers 5

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$9;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$9;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1188
    return-void
.end method

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
    .registers 13
    .parameter "textView"
    .parameter "text"
    .parameter "color"
    .parameter "iconResourceId"

    .prologue
    const/4 v1, 0x0

    .line 1255
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 1256
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1257
    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR1:Ljava/lang/Runnable;

    .line 1259
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    .line 1260
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1261
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1262
    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR2:Ljava/lang/Runnable;

    .line 1265
    :cond_1c
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1266
    .local v7, oldText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 1268
    .local v6, oldColors:Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/Andy_LockScreen2$10;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;Landroid/widget/TextView;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR1:Ljava/lang/Runnable;

    .line 1278
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1279
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$11;

    invoke-direct {v0, p0, p1, v7, v6}, Lcom/android/internal/policy/impl/Andy_LockScreen2$11;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR2:Ljava/lang/Runnable;

    .line 1286
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1287
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;)V
    .registers 10
    .parameter "status"

    .prologue
    const v3, 0x2020092

    const v7, 0x202008f

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1574
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getCurrentText()Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mIccText:Lcom/android/internal/policy/impl/Andy_LockScreen2$IccText;

    .line 1577
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideEnabled:Z

    .line 1580
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1581
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideUp:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1583
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1584
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNotiMove:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5, v5}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1585
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideUp:Landroid/widget/TextView;

    const v1, 0x208009c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1586
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideDownText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1588
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2020091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1600
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUICC_IOError:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_80

    .line 1601
    const-string v0, "Andy_LockScreen2"

    const-string v1, "updateLayout : mUICC_IOError "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    const v1, 0x2080214

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1603
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x208004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1604
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1607
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    const v1, 0x2080039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1608
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1802
    :goto_7f
    return-void

    .line 1613
    :cond_80
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_25e

    goto :goto_7f

    .line 1617
    :pswitch_8c
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1619
    const-string v0, "Andy_LockScreen2"

    const-string v1, "updateLayout : Normal case but plmn and spn empty!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1636
    :goto_b0
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1640
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7f

    .line 1624
    :cond_bd
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1628
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b0

    .line 1645
    :pswitch_d8
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10403e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1649
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x104029c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1653
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7f

    .line 1659
    :pswitch_100
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    const v1, 0x2080048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1662
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1666
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x10402a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1670
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7f

    .line 1675
    :pswitch_124
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1680
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1683
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x10402a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1687
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7f

    .line 1703
    :pswitch_15a
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x208004e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1711
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7f

    .line 1715
    :pswitch_17b
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1720
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1723
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x10402b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1734
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1736
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1739
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1740
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideUp:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7f

    .line 1747
    :pswitch_1c1
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    const v1, 0x2080023

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1749
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1753
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x208004d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1756
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1757
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1759
    const v0, 0x10201e4

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->putEmergencyBelow(I)V

    .line 1764
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideEnabled:Z

    .line 1765
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1766
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideUp:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7f

    .line 1773
    :pswitch_1fc
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    const v1, 0x2080213

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1774
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x208004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1776
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1780
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7f

    .line 1784
    :pswitch_220
    const-string v0, "Andy_LockScreen2"

    const-string v1, "updateLayout : CARDERROR case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    const v1, 0x2080214

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1786
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x208004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1788
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1791
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    const v1, 0x2080039

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1792
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7f

    .line 1797
    :pswitch_253
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCarrier:Landroid/widget/TextView;

    const v1, 0x208001d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_7f

    .line 1613
    nop

    :pswitch_data_25e
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_d8
        :pswitch_100
        :pswitch_124
        :pswitch_15a
        :pswitch_17b
        :pswitch_1c1
        :pswitch_1fc
        :pswitch_220
        :pswitch_253
    .end packed-switch
.end method

.method private updateRightTabResources()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1195
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSilentMode:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_f

    move v0, v2

    .line 1197
    .local v0, vibe:Z
    :goto_e
    return-void

    .line 1195
    .end local v0       #vibe:Z,
    :cond_f
    const/4 v1, 0x0

    move v0, v1

    goto :goto_e
.end method

.method private updateStatusLines()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1405
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->showStatusLines()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 1407
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1408
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1448
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->onRefreshEventInfo()V

    .line 1449
    return-void

    .line 1409
    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_43

    .line 1411
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1412
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1414
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 1417
    :cond_43
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_64

    .line 1419
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1420
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1422
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1423
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 1424
    :cond_64
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 1426
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1427
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1429
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1430
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1431
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1432
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1892
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    .line 1893
    return-void
.end method

.method getCalendarEventInfo(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 2239
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2240
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen2;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v3, ""

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2242
    .local v6, eventCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1e

    .line 2243
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->countOfCalendarEvent:I

    .line 2245
    :cond_1e
    return-void
.end method

.method public lockMovingAction(Landroid/view/MotionEvent;)Z
    .registers 14
    .parameter "event"

    .prologue
    const/4 v11, 0x0

    const v7, 0x2040014

    const/16 v10, 0xfa

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 890
    .local v0, action:I
    packed-switch v0, :pswitch_data_12c

    .line 1050
    :cond_f
    :goto_f
    :pswitch_f
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v5, :cond_125

    .line 1051
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1053
    :goto_19
    return v5

    .line 893
    :pswitch_1a
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 895
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideEnabled:Z

    if-nez v5, :cond_28

    .line 896
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideArea:Z

    .line 897
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiArea:Z

    goto :goto_f

    .line 902
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 903
    .local v4, yPos:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 905
    .local v3, xPos:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mTouchLayer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTop()I

    move-result v5

    if-le v4, v5, :cond_47

    .line 906
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideArea:Z

    .line 907
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiArea:Z

    .line 908
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mTouchLayer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 910
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->addNotiText()V

    goto :goto_f

    .line 942
    :cond_47
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideArea:Z

    .line 943
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiArea:Z

    goto :goto_f

    .line 949
    .end local v3       #xPos:I,
    .end local v4       #yPos:I,
    :pswitch_4c
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->unlocked:Z

    .line 950
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->slideArea:Z

    if-eqz v5, :cond_b7

    .line 954
    iget v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->yMove:F

    iget v6, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->unLockDeltaScroll:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9e

    .line 960
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->removeNotiText()V

    .line 963
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    .line 964
    .local v2, scrollY:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 966
    .local v1, h:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 967
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideLayout:Landroid/widget/RelativeLayout;

    sub-int v6, v1, v2

    invoke-direct {p0, v5, v6, v8, v10}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->scrollAnimation(Landroid/view/View;III)V

    .line 970
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->unlocked:Z

    .line 971
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v8, v11}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->updatePendingIntent(ZLandroid/app/PendingIntent;)V

    .line 1027
    .end local v1       #h:I,
    .end local v2       #scrollY:I,
    :cond_7f
    :goto_7f
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->yMove:F

    .line 1030
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 1031
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1034
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->unlocked:Z

    if-eqz v5, :cond_f

    .line 1035
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/internal/policy/impl/Andy_LockScreen2$7;

    invoke-direct {v6, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$7;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V

    const-wide/16 v7, 0x104

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_f

    .line 976
    :cond_9e
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    .line 978
    .restart local v2       #scrollY:I,
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlidingUnlock:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8, v8}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 980
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->bounceAnimation(I)V

    .line 983
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mTouchLayer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5, v7}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->setAnimation(Landroid/view/ViewGroup;I)V

    .line 987
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->removeNotiText()V

    .line 989
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->unlocked:Z

    goto :goto_7f

    .line 991
    .end local v2       #scrollY:I,
    :cond_b7
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiArea:Z

    if-eqz v5, :cond_7f

    .line 992
    iget v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->yMove:F

    iget v6, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->whatsNewPoint:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_f7

    .line 996
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->removeNotiText()V

    .line 1001
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNotiMove:Landroid/widget/FrameLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiScrollRange:I

    neg-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->yMove:F

    float-to-int v7, v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v8, v6}, Landroid/widget/FrameLayout;->scrollBy(II)V

    .line 1002
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventBox:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiScrollRange:I

    neg-int v6, v6

    iget v7, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->yMove:F

    float-to-int v7, v7

    sub-int/2addr v6, v7

    invoke-direct {p0, v5, v6, v8, v10}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->scrollAnimation(Landroid/view/View;III)V

    .line 1005
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->startWhatsNew()V

    .line 1007
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->unlocked:Z

    .line 1008
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->whatsNew:Landroid/content/Intent;

    invoke-static {v6, v8, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->updatePendingIntent(ZLandroid/app/PendingIntent;)V

    goto :goto_7f

    .line 1011
    :cond_f7
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mNotiMove:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v8, v8}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1013
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideUp:Landroid/widget/TextView;

    const v6, 0x208009c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1014
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSlideDownText:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1015
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEventGroup:Landroid/widget/LinearLayout;

    iget v6, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->notiBgRes:I

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1016
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mTouchLayer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v5, v7}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->setAnimation(Landroid/view/ViewGroup;I)V

    .line 1020
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->removeNotiText()V

    .line 1022
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->unlocked:Z

    goto/16 :goto_7f

    .line 1045
    :pswitch_11e
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_f

    .line 1053
    :cond_125
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto/16 :goto_19

    .line 890
    nop

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_4c
        :pswitch_f
        :pswitch_11e
    .end packed-switch
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 1867
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1844
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1850
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateConfiguration()V

    .line 1851
    return-void
.end method

.method public onBindService()V
    .registers 6

    .prologue
    .line 738
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    if-nez v2, :cond_1a

    .line 739
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 740
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.music"

    const-string v3, "com.android.music.MediaPlaybackService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 741
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 747
    .end local v1       #intent:Landroid/content/Intent;,
    :cond_1a
    :goto_1a
    return-void

    .line 743
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 744
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Andy_LockScreen2"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 1856
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1862
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateConfiguration()V

    .line 1863
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 1234
    const/16 v1, 0x12

    if-ne p1, v1, :cond_2a

    .line 1235
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->updatePendingIntent(ZLandroid/app/PendingIntent;)V

    .line 1236
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lg_hidden_w2bi_set"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1237
    .local v0, mW2bi_val:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 1238
    const-string v1, "[chiyoung]"

    const-string v2, "[Andy_LockScreen] mW2bi on, KEYCODE_POUND pushed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 1244
    .end local v0       #mW2bi_val:I,
    :cond_2a
    return v3
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 1872
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1906
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 7
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 1308
    const-string v0, "Andy_LockScreen2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshBatteryInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mShowingBatteryInfo:Z

    .line 1310
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mPluggedIn:Z

    .line 1311
    iput p3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mBatteryLevel:I

    .line 1313
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->refreshBatteryStringAndIcon()V

    .line 1314
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateStatusLines()V

    .line 1315
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 1453
    const-string v0, "Andy_LockScreen2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshCarrierInfo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateLayout(Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;)V

    .line 1455
    return-void
.end method

.method public onRefreshEventInfo()V
    .registers 3

    .prologue
    .line 1928
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->handleEventDisplay()V

    .line 1930
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$12;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2$12;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1935
    return-void
.end method

.method public onRefreshMusicPlayerInfo()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2141
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    if-nez v5, :cond_7

    .line 2187
    :cond_6
    :goto_6
    return-void

    .line 2143
    :cond_7
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v0

    .line 2144
    .local v0, andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicArtist()Ljava/lang/String;

    move-result-object v1

    .line 2145
    .local v1, artist:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicTrack()Ljava/lang/String;

    move-result-object v3

    .line 2146
    .local v3, track:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicState()I

    move-result v2

    .line 2147
    .local v2, musicState:I
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicPlayInfo()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlayInfo:Ljava/lang/String;

    .line 2148
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2155
    .local v4, trackInfo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicArtistText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2156
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicTitleText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2157
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicTrackInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2160
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4c

    .line 2161
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mWasMusicActive:Z

    .line 2165
    :cond_4c
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->refreshMusicPlayerDisplay()V

    .line 2166
    sget-object v5, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlayInfo:Ljava/lang/String;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlayInfo:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlayInfo:Ljava/lang/String;

    const-string v6, "unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 2172
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicState()I

    move-result v5

    if-ne v5, v8, :cond_7c

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlinTouch:Z

    if-nez v5, :cond_7c

    .line 2173
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    const v6, 0x2020136

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2174
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlaying:Z

    .line 2184
    :goto_79
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlinTouch:Z

    goto :goto_6

    .line 2175
    :cond_7c
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicState()I

    move-result v5

    if-nez v5, :cond_91

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlinTouch:Z

    if-nez v5, :cond_91

    .line 2176
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    const v6, 0x2020137

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2177
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlaying:Z

    goto :goto_79

    .line 2181
    :cond_91
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicPlaying:Z

    goto :goto_79
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1876
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1877
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1881
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlRew:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/android/music/RepeatingImageButton;->setPressed(Z)V

    .line 1882
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 1883
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMusicControlFF:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/android/music/RepeatingImageButton;->setPressed(Z)V

    .line 1887
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1897
    const/4 v1, 0x2

    if-eq v1, p1, :cond_f

    const/4 v1, 0x1

    move v0, v1

    .line 1898
    .local v0, silent:Z
    :goto_5
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSilentMode:Z

    if-eq v0, v1, :cond_e

    .line 1899
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mSilentMode:Z

    .line 1900
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateRightTabResources()V

    .line 1902
    :cond_e
    return-void

    .line 1897
    .end local v0       #silent:Z,
    :cond_f
    const/4 v1, 0x0

    move v0, v1

    goto :goto_5
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 5
    .parameter "simState"

    .prologue
    .line 1822
    const-string v0, "Andy_LockScreen2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    .line 1824
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateLayout(Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;)V

    .line 1825
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->updateStatusLines()V

    .line 1826
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 1377
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->refreshTimeAndDateDisplay()V

    .line 1378
    return-void
.end method

.method public unBindService()V
    .registers 4

    .prologue
    .line 766
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_1e

    .line 767
    const-string v1, "Andy_LockScreen2"

    const-string v2, "MediaPlaybackService is unBindService !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 769
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.music"

    const-string v2, "com.android.music.MediaPlaybackService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 772
    .end local v0       #intent:Landroid/content/Intent;,
    :cond_1e
    return-void
.end method

.method updateConfiguration()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1829
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1830
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCreationOrientation:I

    if-eq v2, v3, :cond_16

    .line 1831
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 1840
    :cond_15
    :goto_15
    return-void

    .line 1832
    :cond_16
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mKeyboardHidden:I

    if-eq v2, v3, :cond_15

    .line 1833
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mKeyboardHidden:I

    .line 1834
    iget v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mKeyboardHidden:I

    if-ne v2, v5, :cond_3d

    move v0, v5

    .line 1835
    .local v0, isKeyboardOpen:Z
    :goto_25
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v0, :cond_15

    .line 1836
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->updatePendingIntent(ZLandroid/app/PendingIntent;)V

    .line 1837
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_15

    .end local v0       #isKeyboardOpen:Z,
    :cond_3d
    move v0, v4

    .line 1834
    goto :goto_25
.end method
