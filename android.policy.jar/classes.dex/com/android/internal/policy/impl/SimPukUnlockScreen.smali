.class public Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimPukUnlockScreen.java"


# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "SimPukUnlockScreen"



# instance fields
.field attemptsRemaining:I

.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mEntryText:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPinCode:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mPukCode:Ljava/lang/String;

.field private mRetryText:Landroid/widget/TextView;

.field private mRetryTextString:Ljava/lang/String;

.field private mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 12
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 104
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_a8

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredPin:[I

    .line 105
    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 107
    iput-object v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 676
    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->attemptsRemaining:I

    .line 121
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 122
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 123
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    .line 125
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    .line 126
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 127
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 133
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9b

    .line 135
    const v1, 0x1090034

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 141
    :goto_34
    const v1, 0x10201d6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 144
    const v1, 0x10201d8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    .line 146
    const v1, 0x10201da

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    .line 147
    const v1, 0x10201db

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 148
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v1, 0x10201bc

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 152
    const v1, 0x10201c2

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 154
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 155
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 163
    return-void

    .line 137
    :cond_9b
    const v1, 0x1090035

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 138
    new-instance v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;

    invoke-direct {v1, p0, v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;)V

    goto :goto_34

    .line 104
    nop

    :array_a8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->showPukDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryTextString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryTextString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkPuk()V
    .registers 4

    .prologue
    .line 379
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "checkPuk() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimPukUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 391
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->start()V

    .line 505
    return-void
.end method

.method private getSimPukUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4b

    .line 345
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x10402b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 359
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getState()Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object v0
.end method

.method private reportDigit(I)V
    .registers 5
    .parameter "digit"

    .prologue
    .line 626
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_b

    .line 627
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 634
    :goto_11
    return-void

    .line 632
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_11
.end method

.method private setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 663
    return-void
.end method

.method private showPukDialog(Ljava/lang/String;)V
    .registers 7
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 365
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 370
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 371
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 374
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 375
    return-void
.end method

.method private updateView()V
    .registers 10

    .prologue
    const v6, 0x2080201

    const v5, 0x2080020

    const/4 v4, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 678
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_114

    .line 778
    :cond_16
    :goto_16
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    return-void

    .line 680
    :pswitch_1e
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x208001e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 687
    :try_start_26
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RemainingCount()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->attemptsRemaining:I

    .line 690
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->attemptsRemaining:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_60

    .line 691
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x2080205

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryTextString:Ljava/lang/String;
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_a1
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_49} :catch_72

    .line 707
    :goto_49
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryTextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    :goto_50
    const/16 v2, 0x8

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v2, v3, :cond_16

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-ne v2, v8, :cond_16

    .line 718
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_16

    .line 692
    :cond_60
    :try_start_60
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->attemptsRemaining:I

    if-nez v2, :cond_89

    .line 695
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x208020a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryTextString:Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_a1
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_71} :catch_72

    goto :goto_49

    .line 703
    :catch_72
    move-exception v2

    move-object v0, v2

    .line 705
    .local v0, ex:Landroid/os/RemoteException;
    :try_start_74
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x2080205

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryTextString:Ljava/lang/String;
    :try_end_81
    .catchall {:try_start_74 .. :try_end_81} :catchall_a1

    .line 707
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryTextString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_50

    .line 700
    .end local v0       #ex:Landroid/os/RemoteException;,
    :cond_89
    :try_start_89
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v3, 0x2080208

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->attemptsRemaining:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryTextString:Ljava/lang/String;
    :try_end_a0
    .catchall {:try_start_89 .. :try_end_a0} :catchall_a1
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_a0} :catch_72

    goto :goto_49

    .line 707
    :catchall_a1
    move-exception v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryTextString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    throw v2

    .line 724
    :pswitch_aa
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 727
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v4, v2, :cond_16

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-ne v2, v8, :cond_16

    .line 736
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_16

    .line 741
    :pswitch_cb
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x2080021

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 744
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v4, v2, :cond_16

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-ne v2, v8, :cond_16

    .line 753
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_16

    .line 759
    :pswitch_ef
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v3, 0x2080022

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, message:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->showPukDialog(Ljava/lang/String;)V

    .line 762
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 765
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 771
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v4, v2, :cond_16

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-ne v2, v8, :cond_16

    .line 773
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_16

    .line 678
    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_aa
        :pswitch_cb
        :pswitch_ef
    .end packed-switch
.end method

.method private verifyNewPin(Ljava/lang/String;)Z
    .registers 3
    .parameter "pin1"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 671
    const/4 v0, 0x1

    .line 673
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimPukUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 199
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 200
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 651
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 652
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateConfiguration()V

    .line 653
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "v"

    .prologue
    const/16 v12, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "SimPukUnlockScreen"

    .line 240
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    .line 241
    .local v2, digits:Landroid/text/Editable;
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v6, :cond_56

    .line 242
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v4

    .line 243
    .local v4, len:I
    if-lez v4, :cond_21

    .line 244
    sub-int v6, v4, v9

    invoke-interface {v2, v6, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 245
    iget v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v6, v9

    iput v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 251
    :cond_21
    iget v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-ne v6, v9, :cond_32

    .line 254
    sget-object v6, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_192

    .line 272
    :cond_32
    :goto_32
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 341
    .end local v4       #len:I,
    :cond_37
    :goto_37
    return-void

    .line 256
    .restart local v4       #len:I,
    :pswitch_38
    iget v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v6, v12, :cond_32

    .line 257
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_32

    .line 261
    :pswitch_42
    iget v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v6, v10, :cond_32

    .line 262
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_32

    .line 266
    :pswitch_4c
    iget v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v6, v10, :cond_32

    .line 267
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_32

    .line 273
    .end local v4       #len:I,
    :cond_56
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_c8

    .line 279
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, number:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c1

    .line 282
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_97

    .line 284
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v7, 0x1388

    invoke-interface {v6, v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 285
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "tel"

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 287
    const/high16 v6, 0x1080

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 288
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    .line 290
    .end local v3       #intent:Landroid/content/Intent;,
    :cond_97
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "Emergency Calls Only"

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const-string v7, "OK"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 295
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 296
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_37

    .line 299
    .end local v1       #d:Landroid/app/AlertDialog;,
    :cond_c1
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v6}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto/16 :goto_37

    .line 301
    .end local v5       #number:Ljava/lang/String;,
    :cond_c8
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v6, :cond_37

    .line 302
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 303
    const-string v6, "SimPukUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onClick] mOkButton() is clicked. mEnteredDigits = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, code:Ljava/lang/String;
    sget-object v6, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_19c

    goto/16 :goto_37

    .line 307
    :pswitch_105
    iget v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v6, v12, :cond_37

    .line 309
    const-string v6, "SimPukUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onClick] puk code entered, request for new pin, mEnteredDigits = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    .line 311
    iput v8, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 312
    sget-object v6, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 313
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_37

    .line 317
    :pswitch_131
    iget v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v6, v10, :cond_37

    .line 319
    const-string v6, "SimPukUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onClick] new pin code entered, verify pin, mEnteredDigits = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    .line 321
    iput v8, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 322
    sget-object v6, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 323
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_37

    .line 327
    :pswitch_15d
    iget v6, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v6, v10, :cond_37

    .line 329
    const-string v6, "SimPukUnlockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onClick] new pin code re-entered, mEnteredDigits = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->verifyNewPin(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_186

    .line 332
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto/16 :goto_37

    .line 334
    :cond_186
    sget-object v6, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 335
    iput v8, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 336
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_37

    .line 254
    :pswitch_data_192
    .packed-switch 0x1
        :pswitch_38
        :pswitch_42
        :pswitch_4c
    .end packed-switch

    .line 305
    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_105
        :pswitch_131
        :pswitch_15d
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 658
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateConfiguration()V

    .line 660
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "SimPukUnlockScreen"

    .line 508
    if-ne p1, v6, :cond_12

    .line 511
    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 513
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    move v2, v5

    .line 622
    :goto_11
    return v2

    .line 517
    :cond_12
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v2}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v1

    .line 518
    .local v1, match:C
    if-eqz v1, :cond_52

    .line 519
    const/16 v2, 0x30

    sub-int v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    .line 524
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-ne v2, v5, :cond_32

    .line 527
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_12a

    :cond_32
    :goto_32
    move v2, v5

    .line 545
    goto :goto_11

    .line 529
    :pswitch_34
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v2, v8, :cond_32

    .line 530
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_32

    .line 534
    :pswitch_3e
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v2, v6, :cond_32

    .line 535
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_32

    .line 539
    :pswitch_48
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v2, v6, :cond_32

    .line 540
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_32

    .line 547
    :cond_52
    const/16 v2, 0x43

    if-ne p1, v2, :cond_95

    .line 548
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lez v2, :cond_75

    .line 549
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 550
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 555
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-ne v2, v5, :cond_75

    .line 558
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_134

    :cond_75
    :goto_75
    move v2, v5

    .line 577
    goto :goto_11

    .line 560
    :pswitch_77
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v8, :cond_75

    .line 561
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_75

    .line 565
    :pswitch_81
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v6, :cond_75

    .line 566
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_75

    .line 570
    :pswitch_8b
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v6, :cond_75

    .line 571
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_75

    .line 580
    :cond_95
    const/16 v2, 0x42

    if-ne p1, v2, :cond_126

    .line 581
    const-string v2, "SimPukUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onKeyDown] KeyEvent.KEYCODE_ENTER. mEnteredDigits = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, code:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_13e

    :goto_ca
    move v2, v5

    .line 619
    goto/16 :goto_11

    .line 585
    :pswitch_cd
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v8, :cond_d4

    move v2, v4

    .line 586
    goto/16 :goto_11

    .line 587
    :cond_d4
    const-string v2, "SimPukUnlockScreen"

    const-string v2, "[onKeyDown] puk code entered, request for new pin"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    .line 589
    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 590
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 591
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto :goto_ca

    .line 595
    :pswitch_e8
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v6, :cond_ef

    move v2, v4

    .line 596
    goto/16 :goto_11

    .line 597
    :cond_ef
    const-string v2, "SimPukUnlockScreen"

    const-string v2, "[onKeyDown] new pin code entered, verify pin"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    .line 599
    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 600
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 601
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto :goto_ca

    .line 605
    :pswitch_103
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v2, v6, :cond_10a

    move v2, v4

    .line 606
    goto/16 :goto_11

    .line 607
    :cond_10a
    const-string v2, "SimPukUnlockScreen"

    const-string v2, "[onKeyDown] new pin code re-entered"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->verifyNewPin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11b

    .line 610
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto :goto_ca

    .line 612
    :cond_11b
    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 613
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 614
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto :goto_ca

    .end local v0       #code:Ljava/lang/String;,
    :cond_126
    move v2, v4

    .line 622
    goto/16 :goto_11

    .line 527
    nop

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_34
        :pswitch_3e
        :pswitch_48
    .end packed-switch

    .line 558
    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_77
        :pswitch_81
        :pswitch_8b
    .end packed-switch

    .line 583
    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_cd
        :pswitch_e8
        :pswitch_103
    .end packed-switch
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 173
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "newState"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 904
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 908
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 912
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEntryText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 189
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    .line 191
    return-void
.end method

.method public onRingerModeChanged(I)V
    .registers 2
    .parameter "state"

    .prologue
    .line 916
    return-void
.end method

.method public onTimeChanged()V
    .registers 1

    .prologue
    .line 920
    return-void
.end method

.method public onWirelessChargingStateChanged(Z)V
    .registers 2
    .parameter "pluggedIn"

    .prologue
    .line 925
    return-void
.end method

.method updateConfiguration()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 637
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 638
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_15

    .line 639
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 647
    :cond_14
    :goto_14
    return-void

    .line 640
    :cond_15
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_14

    .line 641
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 642
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v4, :cond_34

    move v0, v4

    .line 643
    .local v0, isKeyboardOpen:Z
    :goto_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    .line 644
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_14

    .line 642
    .end local v0       #isKeyboardOpen:Z,
    :cond_34
    const/4 v2, 0x0

    move v0, v2

    goto :goto_24
.end method
