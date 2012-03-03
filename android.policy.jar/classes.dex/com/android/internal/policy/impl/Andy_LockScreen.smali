.class Lcom/android/internal/policy/impl/Andy_LockScreen;
.super Landroid/widget/LinearLayout;
.source "Andy_LockScreen.java"


# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EventDataCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/Andy_LockScreen$11;,
        Lcom/android/internal/policy/impl/Andy_LockScreen$Status;
    }
.end annotation


# static fields
.field public static final ASYNC_OPEN_COMPLETE:Ljava/lang/String; = "com.android.music.asyncopencomplete"

.field private static final DBG:Z = false

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field public static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field private static final TAG:Ljava/lang/String; = "Andy_LockScreen"

.field private static mEventText:[Landroid/widget/TextView;

.field private static mEventTextNumber:[I

.field private static mMusicPlayInfo:Ljava/lang/String;

.field private static mResIdGroup:[I



# instance fields
.field private mAlarmIcon:Landroid/graphics/drawable/Drawable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryFull:Landroid/widget/TextView;

.field private mBatteryLevel:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCarrier:Landroid/widget/TextView;

.field private mCharging:Ljava/lang/String;

.field private mChargingIcon:Landroid/graphics/drawable/Drawable;

.field public mConnection:Landroid/content/ServiceConnection;

.field private mCreationOrientation:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateStatusFrame:Landroid/widget/RelativeLayout;

.field private mEmails:Landroid/widget/TextView;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEmergencyCallText:Landroid/widget/TextView;

.field private mEnableMenuKeyInLockScreen:Z

.field private mEventGroup:Landroid/widget/LinearLayout;

.field private mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mFmradio:Landroid/widget/TextView;

.field private mIsMusicActive:Z

.field private mKeyboardHidden:I

.field private mLastSeekEventTime:J

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

.field private mMessages:Landroid/widget/TextView;

.field private mMissedCalls:Landroid/widget/TextView;

.field private mMusic:Landroid/widget/TextView;

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

.field private mPendingR1:Ljava/lang/Runnable;

.field private mPendingR2:Ljava/lang/Runnable;

.field private mPluggedIn:Z

.field private mPosOverride:J

.field private mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

.field private mScreenLocked:Landroid/widget/TextView;

.field private mSeeking:Z

.field private mSelector:Lcom/android/internal/widget/SlidingTab;

.field private mShowingBatteryInfo:Z

.field private mSilentMode:Z

.field private mStartSeekPos:J

.field private mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

.field private mStatus1:Landroid/widget/TextView;

.field private mStatus2:Landroid/widget/TextView;

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVoiceMails:Landroid/widget/TextView;

.field private mWasMusicActive:Z



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventTextNumber:[I

    return-void

    nop

    :array_a
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
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 237
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    sget-object v2, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    .line 106
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mShowingBatteryInfo:Z

    .line 109
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPluggedIn:Z

    .line 112
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mBatteryLevel:I

    .line 114
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mNextAlarm:Ljava/lang/String;

    .line 115
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 116
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    .line 117
    iput-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 132
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mWasMusicActive:Z

    .line 133
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mIsMusicActive:Z

    .line 136
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlinTouch:Z

    .line 155
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlaying:Z

    .line 484
    new-instance v2, Lcom/android/internal/policy/impl/Andy_LockScreen$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen$6;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mConnection:Landroid/content/ServiceConnection;

    .line 508
    new-instance v2, Lcom/android/internal/policy/impl/Andy_LockScreen$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen$7;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 517
    new-instance v2, Lcom/android/internal/policy/impl/Andy_LockScreen$8;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen$8;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    .line 526
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSeeking:Z

    .line 527
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStartSeekPos:J

    .line 529
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPosOverride:J

    .line 238
    iput-object p3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 239
    iput-object p4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 240
    iput-object p5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 242
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->shouldEnableMenuKey()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 244
    iget v2, p2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCreationOrientation:I

    .line 246
    iget v2, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mKeyboardHidden:I

    .line 254
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 256
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCreationOrientation:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_153

    .line 257
    const v2, 0x2030014

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 262
    :goto_64
    const v2, 0x20500e2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCarrier:Landroid/widget/TextView;

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 265
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCarrier:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    const v2, 0x2050010

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mDate:Landroid/widget/TextView;

    .line 268
    const v2, 0x2050011

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    .line 269
    const v2, 0x2050012

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus2:Landroid/widget/TextView;

    .line 271
    const v2, 0x2050009

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    .line 272
    const v2, 0x205010e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SlidingTab;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    .line 273
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 274
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v3, 0x10402d3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 276
    const v2, 0x205000a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    .line 277
    const v2, 0x2050008

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v3, 0x104029e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/internal/policy/impl/Andy_LockScreen$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen$1;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v2, 0x205010d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mBatteryFull:Landroid/widget/TextView;

    .line 288
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mBatteryFull:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->initSetting()V

    .line 292
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Andy_LockScreen;->setFocusable(Z)V

    .line 293
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/Andy_LockScreen;->setFocusableInTouchMode(Z)V

    .line 294
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->setDescendantFocusability(I)V

    .line 296
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 297
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 300
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->isSilentMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    .line 304
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v0

    .line 305
    .local v0, andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicState()I

    move-result v2

    if-ne v2, v4, :cond_15b

    .line 306
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mWasMusicActive:Z

    .line 311
    :goto_133
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->initializeMusicPlayer()V

    .line 313
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v3, 0x10801a5

    const v4, 0x1080219

    const v5, 0x10801fa

    const v6, 0x108020d

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIII)V

    .line 319
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateRightTabResources()V

    .line 321
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 323
    invoke-direct {p0, p4}, Lcom/android/internal/policy/impl/Andy_LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 324
    return-void

    .line 259
    .end local v0       #andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;,
    :cond_153
    const v2, 0x2030015

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_64

    .line 308
    .restart local v0       #andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;,
    :cond_15b
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mWasMusicActive:Z

    goto :goto_133
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/Andy_LockScreen;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/Andy_LockScreen;IJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/Andy_LockScreen;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/Andy_LockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicTrackInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/lge/internal/widget/Andy_SlidingPanel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/Andy_LockScreen;)Lcom/android/music/IMediaPlaybackService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/Andy_LockScreen;Lcom/android/music/IMediaPlaybackService;)Lcom/android/music/IMediaPlaybackService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/Andy_LockScreen;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/Andy_LockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlaying:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/Andy_LockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlaying:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/Andy_LockScreen;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlinTouch:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/Andy_LockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/Andy_LockScreen;->sendMediaButtonEvent(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/Andy_LockScreen;IJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/Andy_LockScreen;->scanBackward(IJ)V

    return-void
.end method

.method static getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .parameter "telephonyPlmn"
    .parameter "telephonySpn"

    .prologue
    .line 1023
    if-eqz p0, :cond_6

    if-nez p1, :cond_6

    move-object v0, p0

    .line 1030
    :goto_5
    return-object v0

    .line 1025
    :cond_6
    if-eqz p0, :cond_22

    if-eqz p1, :cond_22

    .line 1026
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

    .line 1027
    :cond_22
    if-nez p0, :cond_28

    if-eqz p1, :cond_28

    move-object v0, p1

    .line 1028
    goto :goto_5

    .line 1030
    :cond_28
    const-string v0, ""

    goto :goto_5
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/Andy_LockScreen$Status;
    .registers 5
    .parameter "simState"

    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_13

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_13

    const/4 v1, 0x1

    move v0, v1

    .line 906
    .local v0, missingAndNotProvisioned:Z
    :goto_e
    if-eqz v0, :cond_16

    .line 907
    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    .line 926
    :goto_12
    return-object v1

    .line 904
    .end local v0       #missingAndNotProvisioned:Z,
    :cond_13
    const/4 v1, 0x0

    move v0, v1

    goto :goto_e

    .line 910
    .restart local v0       #missingAndNotProvisioned:Z,
    :cond_16
    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen$11;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    .line 926
    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    goto :goto_12

    .line 912
    :pswitch_24
    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    goto :goto_12

    .line 914
    :pswitch_27
    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    goto :goto_12

    .line 916
    :pswitch_2a
    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    goto :goto_12

    .line 918
    :pswitch_2d
    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    goto :goto_12

    .line 920
    :pswitch_30
    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    goto :goto_12

    .line 922
    :pswitch_33
    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    goto :goto_12

    .line 924
    :pswitch_36
    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    goto :goto_12

    .line 910
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method private initSetting()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 327
    const v0, 0x205010c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusic:Landroid/widget/TextView;

    .line 328
    const v0, 0x205010b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mFmradio:Landroid/widget/TextView;

    .line 329
    const v0, 0x2050105

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMissedCalls:Landroid/widget/TextView;

    .line 330
    const v0, 0x2050106

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMessages:Landroid/widget/TextView;

    .line 331
    const v0, 0x2050107

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmails:Landroid/widget/TextView;

    .line 332
    const v0, 0x2050108

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mVoiceMails:Landroid/widget/TextView;

    .line 333
    const v0, 0x2050104

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventGroup:Landroid/widget/LinearLayout;

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMissedCalls:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20200b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMessages:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20200b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmails:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20200af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mVoiceMails:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20200b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusic:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20200b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mFmradio:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20200b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusic:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mFmradio:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMissedCalls:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMessages:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmails:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mVoiceMails:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/TextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMissedCalls:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMessages:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmails:Landroid/widget/TextView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mVoiceMails:Landroid/widget/TextView;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mFmradio:Landroid/widget/TextView;

    aput-object v1, v0, v5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusic:Landroid/widget/TextView;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventText:[Landroid/widget/TextView;

    .line 364
    new-array v0, v5, [I

    fill-array-data v0, :array_fe

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mResIdGroup:[I

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerEventDataCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$EventDataCallback;)V

    .line 372
    return-void

    .line 364
    :array_fe
    .array-data 0x4
        0x0t 0x0t 0x9t 0x2t
        0x1t 0x0t 0x9t 0x2t
        0x2t 0x0t 0x9t 0x2t
        0x3t 0x0t 0x9t 0x2t
    .end array-data
.end method

.method private initializeMusicPlayer()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x104

    const/4 v2, 0x1

    .line 376
    const v0, 0x20500f1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/internal/widget/Andy_SlidingPanel;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    .line 378
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen$2;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V

    invoke-virtual {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->setOnPanelListener(Lcom/lge/internal/widget/Andy_SlidingPanel$OnPanelListener;)V

    .line 406
    const v0, 0x20500f9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicArtistText:Landroid/widget/TextView;

    .line 407
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicArtistText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 408
    const v0, 0x20500fa

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicTitleText:Landroid/widget/TextView;

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 410
    const v0, 0x20500f4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicTrackInfoText:Landroid/widget/TextView;

    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicTrackInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 415
    const v0, 0x20500f6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/RepeatingImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlRew:Lcom/android/music/RepeatingImageButton;

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlRew:Lcom/android/music/RepeatingImageButton;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mRewListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlRew:Lcom/android/music/RepeatingImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen$3;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    const v0, 0x20500f7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    .line 433
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    const v1, 0x2020136

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 434
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlaying:Z

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen$4;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    const v0, 0x20500f8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/music/RepeatingImageButton;

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlFF:Lcom/android/music/RepeatingImageButton;

    .line 454
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlFF:Lcom/android/music/RepeatingImageButton;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mFfwdListener:Lcom/android/music/RepeatingImageButton$RepeatListener;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/music/RepeatingImageButton;->setRepeatListener(Lcom/android/music/RepeatingImageButton$RepeatListener;J)V

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlFF:Lcom/android/music/RepeatingImageButton;

    new-instance v1, Lcom/android/internal/policy/impl/Andy_LockScreen$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/Andy_LockScreen$5;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen;)V

    invoke-virtual {v0, v1}, Lcom/android/music/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    return-void
.end method

.method private isSilentMode()Z
    .registers 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mAudioManager:Landroid/media/AudioManager;

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

.method private refreshAlarmDisplay()V
    .registers 3

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mNextAlarm:Ljava/lang/String;

    .line 810
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    .line 813
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateStatusLines()V

    .line 814
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 829
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mBatteryFull:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 831
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mShowingBatteryInfo:Z

    if-nez v0, :cond_10

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    .line 852
    :goto_f
    return-void

    .line 836
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_25

    .line 837
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    .line 841
    :cond_25
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPluggedIn:Z

    if-eqz v0, :cond_63

    .line 842
    iget v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_4a

    .line 843
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mBatteryFull:Landroid/widget/TextView;

    const v1, 0x2080053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 844
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mBatteryFull:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_f

    .line 847
    :cond_4a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_f

    .line 850
    :cond_63
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    goto :goto_f
.end method

.method private refreshEventDisplay()V
    .registers 15

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 1130
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->onRefreshMusicPlayerInfo()V

    .line 1131
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v0

    .line 1132
    .local v0, andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;
    const/4 v4, 0x0

    .line 1133
    .local v4, flag:Z
    const/4 v2, 0x0

    .line 1136
    .local v2, eventErased:Z
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getEventTextNumber()[I

    move-result-object v9

    sput-object v9, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventTextNumber:[I

    .line 1137
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicPlayInfo()Ljava/lang/String;

    move-result-object v8

    .line 1138
    .local v8, musicPlayInfo:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getFMPlayInfo()Ljava/lang/String;

    move-result-object v3

    .line 1139
    .local v3, fMPlayInfo:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getLastEvent()I

    move-result v7

    .line 1140
    .local v7, lastEvent:I
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getBluetoothInfo()Ljava/lang/String;

    move-result-object v1

    .line 1142
    .local v1, bluetoothInfo:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventTextNumber:[I

    aget v9, v9, v7

    if-nez v9, :cond_29

    .line 1143
    const/4 v2, 0x1

    .line 1147
    :cond_29
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2a
    sget-object v9, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventText:[Landroid/widget/TextView;

    array-length v9, v9

    if-ge v6, v9, :cond_99

    .line 1148
    sget-object v9, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventTextNumber:[I

    aget v9, v9, v6

    if-eqz v9, :cond_91

    .line 1149
    const/4 v4, 0x1

    .line 1150
    packed-switch v6, :pswitch_data_a8

    .line 1172
    :goto_39
    sget-object v9, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventText:[Landroid/widget/TextView;

    aget-object v9, v9, v6

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    if-eqz v2, :cond_44

    .line 1175
    const/4 v2, 0x0

    .line 1176
    move v7, v6

    .line 1179
    :cond_44
    if-ne v7, v6, :cond_87

    .line 1180
    sget-object v9, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventText:[Landroid/widget/TextView;

    aget-object v9, v9, v6

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1147
    :cond_4f
    :goto_4f
    :pswitch_4f
    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 1155
    :pswitch_52
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget-object v10, Lcom/android/internal/policy/impl/Andy_LockScreen;->mResIdGroup:[I

    aget v10, v10, v6

    sget-object v11, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventTextNumber:[I

    aget v11, v11, v6

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    .line 1156
    .local v5, format:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventText:[Landroid/widget/TextView;

    aget-object v9, v9, v6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    sget-object v11, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventTextNumber:[I

    aget v11, v11, v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 1160
    .end local v5       #format:Ljava/lang/String;,
    :pswitch_7b
    sget-object v9, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventText:[Landroid/widget/TextView;

    aget-object v9, v9, v6

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_39

    .line 1163
    :pswitch_83
    if-nez v4, :cond_4f

    const/4 v4, 0x0

    goto :goto_4f

    .line 1182
    :cond_87
    sget-object v9, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventText:[Landroid/widget/TextView;

    aget-object v9, v9, v6

    sget-object v10, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4f

    .line 1184
    :cond_91
    sget-object v9, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventText:[Landroid/widget/TextView;

    aget-object v9, v9, v6

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4f

    .line 1188
    :cond_99
    if-eqz v4, :cond_a1

    .line 1189
    iget-object v9, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1193
    :goto_a0
    return-void

    .line 1191
    :cond_a1
    iget-object v9, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEventGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a0

    .line 1150
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_7b
        :pswitch_83
        :pswitch_4f
    .end packed-switch
.end method

.method private refreshTimeAndDateDisplay()V
    .registers 4

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .registers 5
    .parameter "updateMonitor"

    .prologue
    const/4 v2, 0x1

    .line 658
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mShowingBatteryInfo:Z

    .line 659
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDevicePluggedIn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPluggedIn:Z

    .line 660
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getBatteryLevel()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mBatteryLevel:I

    .line 665
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v0

    .line 666
    .local v0, andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicState()I

    move-result v1

    if-ne v1, v2, :cond_55

    .line 667
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mIsMusicActive:Z

    .line 673
    :goto_1f
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    .line 674
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateLayout(Lcom/android/internal/policy/impl/Andy_LockScreen$Status;)V

    .line 676
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->refreshBatteryStringAndIcon()V

    .line 677
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->refreshAlarmDisplay()V

    .line 679
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mTimeFormat:Ljava/text/DateFormat;

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mDateFormatString:Ljava/lang/String;

    .line 681
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->refreshTimeAndDateDisplay()V

    .line 682
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateStatusLines()V

    .line 685
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->refreshMusicPlayerDisplay()V

    .line 686
    return-void

    .line 669
    :cond_55
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mIsMusicActive:Z

    goto :goto_1f
.end method

.method private scanBackward(IJ)V
    .registers 16
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    const-wide/16 v7, 0x1388

    const-wide/16 v10, 0x0

    const-string v5, "LockScreen_Music"

    .line 532
    const-string v4, "LockScreen_Music"

    const-string v4, "SCAN_BACKWARD METHOD !!!"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    if-nez v4, :cond_19

    .line 534
    const-string v4, "LockScreen_Music"

    const-string v4, "mMediaPlayBackService is Null !!!!"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_18
    return-void

    .line 538
    :cond_19
    if-nez p1, :cond_47

    .line 539
    :try_start_1b
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStartSeekPos:J

    .line 540
    const-string v4, "LockScreen_Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scanBackward .............. mMediaPlayBackService.position() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStartSeekPos:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLastSeekEventTime:J

    .line 542
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSeeking:Z

    goto :goto_18

    .line 572
    :catch_45
    move-exception v4

    goto :goto_18

    .line 544
    :cond_47
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSeeking:Z

    .line 545
    const-string v4, "LockScreen_Music"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scanBackward .............. delta = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    cmp-long v4, p2, v7

    if-gez v4, :cond_b3

    .line 548
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 553
    :goto_69
    iget-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 554
    .local v2, newpos:J
    cmp-long v4, v2, v10

    if-gez v4, :cond_9a

    .line 556
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->prev()V

    .line 557
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 558
    .local v0, duration:J
    const-string v4, "scanBackward"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMediaPlayBackService.duration() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStartSeekPos:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStartSeekPos:J

    .line 560
    add-long/2addr v2, v0

    .line 562
    .end local v0       #duration:J,
    :cond_9a
    iget-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_a6

    if-gez p1, :cond_ad

    .line 563
    :cond_a6
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v4, v2, v3}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 564
    iput-wide p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLastSeekEventTime:J

    .line 566
    :cond_ad
    if-ltz p1, :cond_be

    .line 567
    iput-wide v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPosOverride:J

    goto/16 :goto_18

    .line 551
    .end local v2       #newpos:J,
    :cond_b3
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v7

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_69

    .line 569
    .restart local v2       #newpos:J,
    :cond_be
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPosOverride:J
    :try_end_c2
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_c2} :catch_45

    goto/16 :goto_18
.end method

.method private scanForward(IJ)V
    .registers 15
    .parameter "repcnt"
    .parameter "delta"

    .prologue
    .line 577
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    if-nez v5, :cond_5

    .line 619
    :goto_4
    return-void

    .line 579
    :cond_5
    if-nez p1, :cond_19

    .line 580
    :try_start_7
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->position()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStartSeekPos:J

    .line 581
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLastSeekEventTime:J

    .line 582
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSeeking:Z

    goto :goto_4

    .line 617
    :catch_17
    move-exception v5

    goto :goto_4

    .line 584
    :cond_19
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSeeking:Z

    .line 585
    const-wide/16 v5, 0x1388

    cmp-long v5, p2, v5

    if-gez v5, :cond_68

    .line 587
    const-wide/16 v5, 0xa

    mul-long/2addr p2, v5

    .line 592
    :goto_25
    iget-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStartSeekPos:J

    add-long v3, v5, p2

    .line 593
    .local v3, newpos:J
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 594
    .local v0, duration:J
    cmp-long v5, v3, v0

    if-ltz v5, :cond_50

    .line 596
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v5

    if-nez v5, :cond_75

    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_75

    const/4 v5, 0x1

    move v2, v5

    .line 598
    .local v2, isLastSong:Z
    :goto_4e
    if-eqz v2, :cond_78

    .line 607
    .end local v2       #isLastSong:Z,
    :cond_50
    :goto_50
    iget-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLastSeekEventTime:J

    sub-long v5, p2, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5c

    if-gez p1, :cond_63

    .line 608
    :cond_5c
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5, v3, v4}, Lcom/android/music/IMediaPlaybackService;->seek(J)J

    .line 609
    iput-wide p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLastSeekEventTime:J

    .line 611
    :cond_63
    if-ltz p1, :cond_84

    .line 612
    iput-wide v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPosOverride:J

    goto :goto_4

    .line 590
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

    .line 596
    .restart local v0       #duration:J,
    .restart local v3       #newpos:J,
    :cond_75
    const/4 v5, 0x0

    move v2, v5

    goto :goto_4e

    .line 602
    .restart local v2       #isLastSong:Z,
    :cond_78
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/android/music/IMediaPlaybackService;->next()V

    .line 603
    iget-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStartSeekPos:J

    sub-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStartSeekPos:J

    .line 604
    sub-long/2addr v3, v0

    goto :goto_50

    .line 614
    .end local v2       #isLastSong:Z,
    :cond_84
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPosOverride:J
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_88} :catch_17

    goto/16 :goto_4
.end method

.method private sendMediaButtonEvent(I)V
    .registers 15
    .parameter "code"

    .prologue
    .line 623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 625
    .local v1, eventtime:J
    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v11, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 626
    .local v11, downIntent:Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 627
    .local v0, downEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 630
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 631
    .local v12, upIntent:Landroid/content/Intent;
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move v9, p1

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 632
    .local v3, upEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v12, v5}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method private shouldEnableMenuKey()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 220
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x10d000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 221
    .local v0, configDisabled:Z
    const-string v4, "ro.monkey"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 222
    .local v2, isMonkey:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 223
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

.method private toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V
    .registers 13
    .parameter "textView"
    .parameter "text"
    .parameter "color"
    .parameter "iconResourceId"

    .prologue
    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR1:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 773
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR1:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 774
    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 776
    :cond_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR2:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    .line 777
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 778
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 779
    iput-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 782
    :cond_1c
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 783
    .local v7, oldText:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 785
    .local v6, oldColors:Landroid/content/res/ColorStateList;
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/Andy_LockScreen$9;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen;Landroid/widget/TextView;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR1:Ljava/lang/Runnable;

    .line 795
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR1:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 796
    new-instance v0, Lcom/android/internal/policy/impl/Andy_LockScreen$10;

    invoke-direct {v0, p0, p1, v7, v6}, Lcom/android/internal/policy/impl/Andy_LockScreen$10;-><init>(Lcom/android/internal/policy/impl/Andy_LockScreen;Landroid/widget/TextView;Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR2:Ljava/lang/Runnable;

    .line 803
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPendingR2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 804
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/Andy_LockScreen$Status;)V
    .registers 9
    .parameter "status"

    .prologue
    const v6, 0x10402a8

    const v3, 0x10402a6

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 936
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 938
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen$11;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_128

    .line 1020
    :goto_19
    return-void

    .line 941
    :pswitch_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 952
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19

    .line 957
    :pswitch_46
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10403e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x104029c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 964
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19

    .line 970
    :pswitch_78
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 971
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 974
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 975
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_19

    .line 981
    :pswitch_92
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 988
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_19

    .line 995
    :pswitch_c4
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 1003
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_19

    .line 1007
    :pswitch_f0
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCarrier:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402b1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    const v1, 0x10402b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_19

    .line 938
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_46
        :pswitch_78
        :pswitch_92
        :pswitch_c4
        :pswitch_f0
    .end packed-switch
.end method

.method private updateRightTabResources()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 642
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_32

    move v0, v2

    .line 645
    .local v0, vibe:Z
    :goto_e
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eqz v2, :cond_39

    if-eqz v0, :cond_35

    const v2, 0x10801a6

    :goto_19
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eqz v3, :cond_3d

    const v3, 0x108021b

    :goto_20
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_41

    const v4, 0x1080204

    :goto_27
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eqz v5, :cond_45

    const v5, 0x1080217

    :goto_2e
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIII)V

    .line 655
    return-void

    .line 642
    .end local v0       #vibe:Z,
    :cond_32
    const/4 v1, 0x0

    move v0, v1

    goto :goto_e

    .line 645
    .restart local v0       #vibe:Z,
    :cond_35
    const v2, 0x10801a3

    goto :goto_19

    :cond_39
    const v2, 0x10801a4

    goto :goto_19

    :cond_3d
    const v3, 0x1080218

    goto :goto_20

    :cond_41
    const v4, 0x1080203

    goto :goto_27

    :cond_45
    const v5, 0x1080216

    goto :goto_2e
.end method

.method private updateStatusLines()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 864
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_LockScreen$Status;->showStatusLines()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 866
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    :cond_1d
    :goto_1d
    return-void

    .line 868
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mNextAlarm:Ljava/lang/String;

    if-nez v0, :cond_3f

    .line 870
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 871
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 875
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    if-nez v0, :cond_60

    .line 877
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 882
    :cond_60
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mNextAlarm:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 884
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus2:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCharging:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mChargingIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 889
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mNextAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mAlarmIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 1107
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 1079
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 1056
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1062
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateConfiguration()V

    .line 1063
    return-void
.end method

.method public onBindService()V
    .registers 6

    .prologue
    .line 475
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 476
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.music"

    const-string v3, "com.android.music.MediaPlaybackService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 482
    .end local v1       #intent:Landroid/content/Intent;,
    :goto_16
    return-void

    .line 478
    :catch_17
    move-exception v2

    move-object v0, v2

    .line 479
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LockScreen_Music"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 1068
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateConfiguration()V

    .line 1075
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 756
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    .line 757
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->isSilentMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    .line 758
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eqz v1, :cond_1b

    const v1, 0x10402d4

    :goto_12
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 761
    :cond_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 762
    return-void

    .line 758
    :cond_1b
    const v1, 0x10402d5

    goto :goto_12
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 690
    const/16 v0, 0x52

    if-ne p1, v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEnableMenuKeyInLockScreen:Z

    if-eqz v0, :cond_d

    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 693
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 1085
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1120
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 820
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mShowingBatteryInfo:Z

    .line 821
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mPluggedIn:Z

    .line 822
    iput p3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mBatteryLevel:I

    .line 824
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->refreshBatteryStringAndIcon()V

    .line 825
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateStatusLines()V

    .line 826
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateLayout(Lcom/android/internal/policy/impl/Andy_LockScreen$Status;)V

    .line 898
    return-void
.end method

.method public onRefreshEventInfo()V
    .registers 2

    .prologue
    .line 1123
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->handleEventDisplay()V

    .line 1124
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->refreshEventDisplay()V

    .line 1125
    return-void
.end method

.method public onRefreshMusicPlayerInfo()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1198
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    if-nez v5, :cond_7

    .line 1236
    :cond_6
    :goto_6
    return-void

    .line 1200
    :cond_7
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getInstance()Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;

    move-result-object v0

    .line 1201
    .local v0, andyKeyguardMonitor:Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicArtist()Ljava/lang/String;

    move-result-object v1

    .line 1202
    .local v1, artist:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicTrack()Ljava/lang/String;

    move-result-object v3

    .line 1203
    .local v3, track:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicState()I

    move-result v2

    .line 1206
    .local v2, musicState:I
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicPlayInfo()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlayInfo:Ljava/lang/String;

    .line 1208
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

    .line 1210
    .local v4, trackInfo:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicArtistText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicTitleText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1212
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicTrackInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->refreshMusicPlayerDisplay()V

    .line 1215
    sget-object v5, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlayInfo:Ljava/lang/String;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlayInfo:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlayInfo:Ljava/lang/String;

    const-string v6, "unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1221
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicState()I

    move-result v5

    if-ne v5, v8, :cond_73

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlinTouch:Z

    if-nez v5, :cond_73

    .line 1222
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    const v6, 0x2020136

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1223
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlaying:Z

    .line 1233
    :goto_70
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlinTouch:Z

    goto :goto_6

    .line 1224
    :cond_73
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/Andy_KeyguardUpdateMonitor;->getMusicState()I

    move-result v5

    if-nez v5, :cond_88

    iget-boolean v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlinTouch:Z

    if-nez v5, :cond_88

    .line 1225
    iget-object v5, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    const v6, 0x2020137

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1226
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlaying:Z

    goto :goto_70

    .line 1230
    :cond_88
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicPlaying:Z

    goto :goto_70
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 1090
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 1094
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlRew:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/android/music/RepeatingImageButton;->setPressed(Z)V

    .line 1095
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlPlayToggle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 1096
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlFF:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/android/music/RepeatingImageButton;->setPressed(Z)V

    .line 1099
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mFmradio:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1101
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->onRefreshEventInfo()V

    .line 1102
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 4
    .parameter "state"

    .prologue
    .line 1111
    const/4 v1, 0x2

    if-eq v1, p1, :cond_f

    const/4 v1, 0x1

    move v0, v1

    .line 1112
    .local v0, silent:Z
    :goto_5
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eq v0, v1, :cond_e

    .line 1113
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    .line 1114
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateRightTabResources()V

    .line 1116
    :cond_e
    return-void

    .line 1111
    .end local v0       #silent:Z,
    :cond_f
    const/4 v1, 0x0

    move v0, v1

    goto :goto_5
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .registers 3
    .parameter "simState"

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    .line 1037
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mStatus:Lcom/android/internal/policy/impl/Andy_LockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateLayout(Lcom/android/internal/policy/impl/Andy_LockScreen$Status;)V

    .line 1038
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateStatusLines()V

    .line 1039
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->refreshTimeAndDateDisplay()V

    .line 857
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 11
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 719
    if-ne p2, v6, :cond_b

    .line 720
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 752
    :cond_a
    :goto_a
    return-void

    .line 721
    :cond_b
    if-ne p2, v5, :cond_a

    .line 723
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-nez v4, :cond_6b

    move v4, v6

    :goto_12
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    .line 724
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_71

    .line 725
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_6d

    move v3, v6

    .line 729
    .local v3, vibe:Z
    :goto_29
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_6f

    move v5, v6

    :goto_2e
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 736
    .end local v3       #vibe:Z,
    :goto_31
    invoke-direct {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->updateRightTabResources()V

    .line 738
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_77

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040122

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 742
    .local v0, message:Ljava/lang/String;
    :goto_44
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_84

    const v4, 0x10801aa

    move v2, v4

    .line 746
    .local v2, toastIcon:I
    :goto_4c
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mSilentMode:Z

    if-eqz v4, :cond_89

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    .line 749
    .local v1, toastColor:I
    :goto_60
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mScreenLocked:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0, v1, v2}, Lcom/android/internal/policy/impl/Andy_LockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;II)V

    .line 750
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_a

    .end local v0       #message:Ljava/lang/String;,
    .end local v1       #toastColor:I,
    .end local v2       #toastIcon:I,
    :cond_6b
    move v4, v7

    .line 723
    goto :goto_12

    :cond_6d
    move v3, v7

    .line 725
    goto :goto_29

    .restart local v3       #vibe:Z,
    :cond_6f
    move v5, v7

    .line 729
    goto :goto_2e

    .line 733
    .end local v3       #vibe:Z,
    :cond_71
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_31

    .line 738
    :cond_77
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040123

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_44

    .line 742
    .restart local v0       #message:Ljava/lang/String;,
    :cond_84
    const v4, 0x10801ab

    move v2, v4

    goto :goto_4c

    .line 746
    .restart local v2       #toastIcon:I,
    :cond_89
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move v1, v4

    goto :goto_60
.end method

.method public refreshMusicPlayerDisplay()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 697
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    if-nez v0, :cond_8

    .line 714
    :cond_7
    :goto_7
    return-void

    .line 701
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mWasMusicActive:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mIsMusicActive:Z

    if-eqz v0, :cond_3f

    .line 702
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0, v1}, Lcom/lge/internal/widget/Andy_SlidingPanel;->setVisibility(I)V

    .line 703
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7

    .line 704
    :cond_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 706
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0}, Lcom/lge/internal/widget/Andy_SlidingPanel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7

    .line 707
    :cond_39
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7

    .line 711
    :cond_3f
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMusicControlSlidingPanel:Lcom/lge/internal/widget/Andy_SlidingPanel;

    invoke-virtual {v0, v2}, Lcom/lge/internal/widget/Andy_SlidingPanel;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mDateStatusFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7
.end method

.method public unBindService()V
    .registers 4

    .prologue
    .line 500
    iget-object v1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mMediaPlayBackService:Lcom/android/music/IMediaPlaybackService;

    if-eqz v1, :cond_17

    .line 501
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 502
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.music"

    const-string v2, "com.android.music.MediaPlaybackService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 505
    .end local v0       #intent:Landroid/content/Intent;,
    :cond_17
    return-void
.end method

.method updateConfiguration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1042
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/Andy_LockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1043
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_15

    .line 1044
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 1052
    :cond_14
    :goto_14
    return-void

    .line 1045
    :cond_15
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_14

    .line 1046
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mKeyboardHidden:I

    .line 1047
    iget v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_34

    move v0, v4

    .line 1048
    .local v0, isKeyboardOpen:Z
    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    .line 1049
    iget-object v2, p0, Lcom/android/internal/policy/impl/Andy_LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_14

    .line 1047
    .end local v0       #isKeyboardOpen:Z,
    :cond_34
    const/4 v2, 0x0

    move v0, v2

    goto :goto_24
.end method
