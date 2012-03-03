.class public Lcom/android/internal/telephony/UiccCardApplication;
.super Ljava/lang/Object;
.source "UiccCardApplication.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCardApplication$2;
    }
.end annotation


# static fields
.field private static final EVENT_CHANGE_FACILITY_FDN_DONE:I = 0x6

.field private static final EVENT_CHANGE_FACILITY_LOCK_DONE:I = 0x2

.field private static final EVENT_CHANGE_PIN1_DONE:I = 0x3

.field private static final EVENT_CHANGE_PIN2_DONE:I = 0x4

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x1e

.field private static final EVENT_INFO_PHONEBOOK_DONE:I = 0xc

.field private static final EVENT_PIN1PUK1_DONE:I = 0x1

.field private static final EVENT_PIN2PUK2_DONE:I = 0x7

.field private static final EVENT_QUERY_FACILITY_FDN_DONE:I = 0x5

.field private static final EVENT_READ_PHONEBOOK_DONE:I = 0xa

.field private static final EVENT_WRITE_PHONEBOOK_DONE:I = 0xb



# instance fields
.field private mAid:Ljava/lang/String;

.field private mAppLabel:Ljava/lang/String;

.field private mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

.field private mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field protected mDbg:Z

.field private mDesiredFdnEnabled:Z

.field private mDestroyed:Z

.field protected mHandler:Landroid/os/Handler;

.field private mIccFdnAvailable:Z

.field private mIccFdnEnabled:Z

.field private mIccFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mIsPuk:Z

.field private mLockedRegistrants:Landroid/os/RegistrantList;

.field private mLogTag:Ljava/lang/String;

.field private mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

.field private mPersoSubstateRegistrants:Landroid/os/RegistrantList;

.field private mPin1RemainingCount:I

.field private mPin1Replaced:Z

.field private mPin1RetryCount:I

.field private mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

.field private mPin2RemainingCount:I

.field private mPin2RetryCount:I

.field private mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

.field private mPuk1RemainingCount:I

.field private mPuk2RemainingCount:I

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field private mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

.field private mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field private mUnavailableRegistrants:Landroid/os/RegistrantList;

.field public passedAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

.field private pbInfo:Lcom/android/internal/telephony/IccPhonebookInfo;

.field private pbRead:Lcom/android/internal/telephony/IccPhonebook;

.field private pbWrite:Lcom/android/internal/telephony/IccPhonebookResult;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 11
    .parameter "uiccCard"
    .parameter "as"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "RIL_UiccCardApplication"

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    .line 74
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 75
    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    .line 76
    iput v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    .line 77
    iput v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    .line 82
    iput v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RemainingCount:I

    .line 83
    iput v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk1RemainingCount:I

    .line 84
    iput v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RemainingCount:I

    .line 85
    iput v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk2RemainingCount:I

    .line 87
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    .line 91
    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->pbInfo:Lcom/android/internal/telephony/IccPhonebookInfo;

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->pbWrite:Lcom/android/internal/telephony/IccPhonebookResult;

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->pbRead:Lcom/android/internal/telephony/IccPhonebook;

    .line 101
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    .line 106
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 107
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    .line 108
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    .line 109
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    .line 872
    new-instance v0, Lcom/android/internal/telephony/UiccCardApplication$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UiccCardApplication$1;-><init>(Lcom/android/internal/telephony/UiccCardApplication;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating UiccApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 121
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 122
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 123
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 124
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 125
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 126
    iget v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    if-eqz v0, :cond_b7

    move v0, v4

    :goto_7b
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    .line 127
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 128
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 132
    iget v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_pin1:I

    iput v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RemainingCount:I

    .line 133
    iget v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_puk1:I

    iput v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk1RemainingCount:I

    .line 134
    iget v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_pin2:I

    iput v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RemainingCount:I

    .line 135
    iget v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_puk2:I

    iput v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk2RemainingCount:I

    .line 141
    iput-object p4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 142
    iput-object p5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 144
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->createUiccFileHandler(Lcom/android/internal/telephony/UiccConstants$AppType;)Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 145
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/android/internal/telephony/UiccCardApplication;->createUiccApplicationRecords(Lcom/android/internal/telephony/UiccConstants$AppType;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_b6

    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdnAvailable()V

    .line 149
    :cond_b6
    return-void

    :cond_b7
    move v0, v3

    .line 126
    goto :goto_7b
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/CommandsInterface;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/UiccCardApplication;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RemainingCount:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/UiccCardApplication;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk2RemainingCount:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/IccPhonebookInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->pbInfo:Lcom/android/internal/telephony/IccPhonebookInfo;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccPhonebookInfo;)Lcom/android/internal/telephony/IccPhonebookInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->pbInfo:Lcom/android/internal/telephony/IccPhonebookInfo;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/IccPhonebookResult;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->pbWrite:Lcom/android/internal/telephony/IccPhonebookResult;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccPhonebookResult;)Lcom/android/internal/telephony/IccPhonebookResult;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->pbWrite:Lcom/android/internal/telephony/IccPhonebookResult;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/IccPhonebook;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->pbRead:Lcom/android/internal/telephony/IccPhonebook;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/IccPhonebook;)Lcom/android/internal/telephony/IccPhonebook;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->pbRead:Lcom/android/internal/telephony/IccPhonebook;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->onQueryFdnAvailable(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/UiccCardApplication;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/UiccCardApplication;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/UiccCardApplication;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RemainingCount:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/UiccCardApplication;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk1RemainingCount:I

    return p1
.end method

.method private createUiccApplicationRecords(Lcom/android/internal/telephony/UiccConstants$AppType;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccApplicationRecords;
    .registers 6
    .parameter "type"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 212
    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/android/internal/telephony/UiccConstants$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-ne p1, v0, :cond_e

    .line 213
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SIMRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 219
    :goto_d
    return-object v0

    .line 218
    :cond_e
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->passedAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 219
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_d
.end method

.method private createUiccFileHandler(Lcom/android/internal/telephony/UiccConstants$AppType;)Lcom/android/internal/telephony/IccFileHandler;
    .registers 5
    .parameter "type"

    .prologue
    .line 226
    sget-object v0, Lcom/android/internal/telephony/UiccCardApplication$2;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/UiccConstants$AppType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 236
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 228
    :pswitch_d
    new-instance v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_c

    .line 230
    :pswitch_17
    new-instance v0, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_c

    .line 232
    :pswitch_21
    new-instance v0, Lcom/android/internal/telephony/UsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/UsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_c

    .line 234
    :pswitch_2b
    new-instance v0, Lcom/android/internal/telephony/CsimFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/CsimFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_c

    .line 226
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_d
        :pswitch_17
        :pswitch_21
        :pswitch_2b
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccCard] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    return-void
.end method

.method private declared-synchronized notifyAllRegistrants()V
    .registers 2

    .prologue
    .line 286
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyUnavailableRegistrants()V

    .line 287
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants()V

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants()V

    .line 289
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 290
    monitor-exit p0

    return-void

    .line 286
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyLockedRegistrants()V
    .registers 2

    .prologue
    .line 379
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants(Landroid/os/Registrant;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 380
    monitor-exit p0

    return-void

    .line 379
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyLockedRegistrants(Landroid/os/Registrant;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 317
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    if-eqz v0, :cond_7

    .line 352
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 321
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-eq v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_4c

    .line 323
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_2a

    .line 324
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Sanity check failed! APPSTATE is locked while PIN1 is not!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_5

    .line 317
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 328
    :cond_2a
    if-nez p1, :cond_39

    .line 329
    :try_start_2c
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying registrants: LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_5

    .line 332
    :cond_39
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying 1 registrant: LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 339
    :cond_4c
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_5

    .line 340
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_5

    .line 341
    if-nez p1, :cond_67

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying registrants: Permanent LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_5

    .line 345
    :cond_67
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying 1 registrant: Permanent LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_79
    .catchall {:try_start_2c .. :try_end_79} :catchall_27

    goto :goto_5
.end method

.method private declared-synchronized notifyPersoSubstateRegistrants()V
    .registers 2

    .prologue
    .line 355
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants(Landroid/os/Registrant;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 356
    monitor-exit p0

    return-void

    .line 355
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyPersoSubstateRegistrants(Landroid/os/Registrant;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 363
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    .line 376
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 367
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_5

    .line 368
    if-nez p1, :cond_1f

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying registrants: PERSO_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    goto :goto_5

    .line 363
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 372
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying 1 registrant: PERSO_LOCKED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_1c

    goto :goto_5
.end method

.method private declared-synchronized notifyReadyRegistrants()V
    .registers 2

    .prologue
    .line 407
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants(Landroid/os/Registrant;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 408
    monitor-exit p0

    return-void

    .line 407
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyReadyRegistrants(Landroid/os/Registrant;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 387
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    if-eqz v0, :cond_7

    .line 404
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 390
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v0, v1, :cond_5

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_2a

    .line 392
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Sanity check failed! APPSTATE is ready while PIN1 is not verified!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_5

    .line 387
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    .line 396
    :cond_2a
    if-nez p1, :cond_39

    .line 397
    :try_start_2c
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying registrants: READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_5

    .line 400
    :cond_39
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v1, "Notifying 1 registrant: READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_4b
    .catchall {:try_start_2c .. :try_end_4b} :catchall_27

    goto :goto_5
.end method

.method private declared-synchronized notifyUnavailableRegistrants()V
    .registers 2

    .prologue
    .line 308
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyUnavailableRegistrants(Landroid/os/Registrant;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 309
    monitor-exit p0

    return-void

    .line 308
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyUnavailableRegistrants(Landroid/os/Registrant;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v0, :cond_c

    .line 298
    if-nez p1, :cond_e

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1a

    .line 305
    :cond_c
    :goto_c
    monitor-exit p0

    return-void

    .line 301
    :cond_e
    :try_start_e
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1a

    goto :goto_c

    .line 297
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onQueryFdnAvailable(Landroid/os/AsyncResult;)V
    .registers 8
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 791
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_23

    .line 792
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in querying facility lock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 813
    :cond_22
    :goto_22
    return-void

    .line 796
    :cond_23
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    .line 797
    .local v1, ints:[I
    array-length v2, v1

    if-eqz v2, :cond_6c

    .line 799
    aget v2, v1, v4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_60

    .line 800
    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 801
    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    .line 806
    :goto_37
    iget-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v2, :cond_22

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query facility FDN : FDN service available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    goto :goto_22

    .line 803
    :cond_60
    aget v2, v1, v4

    if-ne v2, v5, :cond_6a

    move v2, v5

    :goto_65
    iput-boolean v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    .line 804
    iput-boolean v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    goto :goto_37

    :cond_6a
    move v2, v4

    .line 803
    goto :goto_65

    .line 811
    :cond_6c
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v3, "Bogus facility lock response"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method private parsePinPukErrorResult(Landroid/os/AsyncResult;Z)V
    .registers 9
    .parameter "ar"
    .parameter "isPin1"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 819
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v1, v0

    .line 820
    .local v1, intArray:[I
    array-length v2, v1

    .line 821
    .local v2, length:I
    iput v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    .line 822
    iput v4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    .line 823
    if-lez v2, :cond_1f

    .line 824
    if-eqz p2, :cond_25

    .line 825
    aget v3, v1, v5

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    .line 829
    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    if-eqz v3, :cond_20

    .line 830
    iget v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk1RemainingCount:I

    .line 856
    :cond_1f
    :goto_1f
    return-void

    .line 832
    :cond_20
    iget v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RemainingCount:I

    goto :goto_1f

    .line 836
    :cond_25
    aget v3, v1, v5

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    .line 840
    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    if-eqz v3, :cond_32

    .line 841
    iget v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk2RemainingCount:I

    goto :goto_1f

    .line 843
    :cond_32
    iget v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RemainingCount:I

    goto :goto_1f
.end method

.method private queryFdnAvailable()V
    .registers 8

    .prologue
    .line 772
    const/4 v4, 0x7

    .line 778
    .local v4, serviceClassX:I
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    const-string v2, "FD"

    const-string v3, ""

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 784
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 861
    if-nez p1, :cond_3

    .line 868
    :goto_2
    return-void

    .line 865
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 867
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method


# virtual methods
.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin2 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 711
    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 717
    return-void
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Pin1 old: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 686
    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->changeIccPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 692
    return-void
.end method

.method declared-synchronized dispose()V
    .registers 2

    .prologue
    .line 204
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccApplicationRecords;->dispose()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    .line 208
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyUnavailableRegistrants()V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    .line 209
    monitor-exit p0

    return-void

    .line 204
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 4

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Finalized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1e
    return-void
.end method

.method public getAid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;
    .registers 2

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCard()Lcom/android/internal/telephony/UiccCard;
    .registers 2

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIccFdnAvailable()Z
    .registers 2

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnAvailable:Z

    return v0
.end method

.method public getIccFdnEnabled()Z
    .registers 2

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFdnEnabled:Z

    return v0
.end method

.method public declared-synchronized getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .registers 2

    .prologue
    .line 249
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .registers 3

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getIccPin1RemainingCount()I
    .registers 2

    .prologue
    .line 588
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RemainingCount:I

    return v0
.end method

.method public getIccPin1RetryCount()I
    .registers 2

    .prologue
    .line 571
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RetryCount:I

    return v0
.end method

.method public getIccPin2Blocked()Z
    .registers 3

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getIccPin2RemainingCount()I
    .registers 2

    .prologue
    .line 600
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RemainingCount:I

    return v0
.end method

.method public getIccPin2RetryCount()I
    .registers 2

    .prologue
    .line 578
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RetryCount:I

    return v0
.end method

.method public getIccPuk1RemainingCount()I
    .registers 2

    .prologue
    .line 594
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk1RemainingCount:I

    return v0
.end method

.method public getIccPuk2Blocked()Z
    .registers 3

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/UiccConstants$PinState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getIccPuk2RemainingCount()I
    .registers 2

    .prologue
    .line 606
    iget v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk2RemainingCount:I

    return v0
.end method

.method public getPersonalizationState()Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    return-object v0
.end method

.method public getPin1State()Lcom/android/internal/telephony/UiccConstants$PinState;
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    if-eqz v0, :cond_b

    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getUniversalPinState()Lcom/android/internal/telephony/UiccConstants$PinState;

    move-result-object v0

    .line 269
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    goto :goto_a
.end method

.method public getPin2State()Lcom/android/internal/telephony/UiccConstants$PinState;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/UiccConstants$AppState;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    return-object v0
.end method

.method public getType()Lcom/android/internal/telephony/UiccConstants$AppType;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    return-object v0
.end method

.method public queryPhonebookInfo(ILandroid/os/Message;)V
    .registers 7
    .parameter "devicetype"
    .parameter "onComplete"

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryPhonebookInfo devicetype : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 743
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryPhonebookInfoEx(Ljava/lang/String;ILandroid/os/Message;)V

    .line 745
    return-void
.end method

.method public readIccPhonebook(IIILandroid/os/Message;)V
    .registers 11
    .parameter "index"
    .parameter "devicetype"
    .parameter "category"
    .parameter "onComplete"

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readIccPhonebook index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " devicetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 725
    :cond_2f
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->readPhonebookEntriesEx(Ljava/lang/String;IIILandroid/os/Message;)V

    .line 727
    return-void
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 458
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 460
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 461
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants(Landroid/os/Registrant;)V

    .line 462
    return-void
.end method

.method public registerForPersoSubstate(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 444
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 446
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 447
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants(Landroid/os/Registrant;)V

    .line 448
    return-void
.end method

.method public declared-synchronized registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 411
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v1, :cond_7

    .line 419
    :goto_5
    monitor-exit p0

    return-void

    .line 415
    :cond_7
    :try_start_7
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 416
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 418
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants(Landroid/os/Registrant;)V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 411
    .end local v0       #r:Landroid/os/Registrant;,
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForUnavailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 425
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v1, :cond_7

    .line 431
    :goto_5
    monitor-exit p0

    return-void

    .line 429
    :cond_7
    :try_start_7
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 430
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    .line 425
    .end local v0       #r:Landroid/os/Registrant;,
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 653
    iput-boolean p1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDesiredFdnEnabled:Z

    .line 654
    const/16 v5, 0xf

    .line 661
    .local v5, serviceClassX:I
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    .line 664
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    const-string v2, "FD"

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 667
    return-void
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .registers 11
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 625
    const/4 v5, 0x7

    .line 631
    .local v5, serviceClassX:I
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    const-string v2, "SC"

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 637
    return-void
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 494
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 498
    return-void
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 520
    return-void
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x1

    .line 504
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 509
    return-void
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 8
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mIsPuk:Z

    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 531
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 466
    return-void
.end method

.method public unregisterForPersoSubstate(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubstateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 452
    return-void
.end method

.method public declared-synchronized unregisterForReady(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 421
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 422
    monitor-exit p0

    return-void

    .line 421
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterForUnavailable(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 433
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 434
    monitor-exit p0

    return-void

    .line 433
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method update(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 11
    .parameter "as"
    .parameter "ur"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 152
    iget-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z

    if-eqz v3, :cond_c

    .line 153
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    const-string v4, "Application updated after destroyed! Fix me!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_b
    :goto_b
    return-void

    .line 156
    :cond_c
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " update. New "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mContext:Landroid/content/Context;

    .line 158
    iput-object p4, p0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 159
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 160
    .local v1, tempAppType:Lcom/android/internal/telephony/UiccConstants$AppType;
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 161
    .local v0, tempAppState:Lcom/android/internal/telephony/UiccConstants$AppState;
    iget-object v2, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 162
    .local v2, tempPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppType:Lcom/android/internal/telephony/UiccConstants$AppType;

    .line 163
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppState:Lcom/android/internal/telephony/UiccConstants$AppState;

    .line 164
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPersoSubState:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    .line 165
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->aid:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    .line 166
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_label:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mAppLabel:Ljava/lang/String;

    .line 167
    iget v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1_replaced:I

    if-eqz v3, :cond_bc

    const/4 v3, 0x1

    :goto_4d
    iput-boolean v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1Replaced:Z

    .line 168
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin1:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1State:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 169
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->pin2:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2State:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 173
    iget v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_pin1:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin1RemainingCount:I

    .line 174
    iget v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_puk1:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk1RemainingCount:I

    .line 175
    iget v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_pin2:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPin2RemainingCount:I

    .line 176
    iget v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->remaining_count_puk2:I

    iput v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mPuk2RemainingCount:I

    .line 182
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    if-eq v3, v1, :cond_78

    .line 183
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccApplicationRecords;->dispose()V

    .line 184
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_type:Lcom/android/internal/telephony/UiccConstants$AppType;

    invoke-direct {p0, v3, p2, p3, p4}, Lcom/android/internal/telephony/UiccCardApplication;->createUiccApplicationRecords(Lcom/android/internal/telephony/UiccConstants$AppType;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mUiccApplicationRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 187
    :cond_78
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->perso_substate:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    if-eq v3, v2, :cond_7f

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyPersoSubstateRegistrants()V

    .line 191
    :cond_7f
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-eq v3, v0, :cond_b

    .line 192
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " changed state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;->app_state:Lcom/android/internal/telephony/UiccConstants$AppState;

    sget-object v4, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    if-ne v3, v4, :cond_b4

    .line 196
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->queryFdnAvailable()V

    .line 198
    :cond_b4
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyLockedRegistrants()V

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/UiccCardApplication;->notifyReadyRegistrants()V

    goto/16 :goto_b

    .line 167
    :cond_bc
    const/4 v3, 0x0

    goto :goto_4d
.end method

.method public writeIccPhonebook(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 36
    .parameter "category"
    .parameter "devicetype"
    .parameter "index"
    .parameter "type"
    .parameter "plan"
    .parameter "number"
    .parameter "name"
    .parameter "tonnpi"
    .parameter "other_name"
    .parameter "grp_id"
    .parameter "additional_number"
    .parameter "additional_number_a"
    .parameter "additional_number_b"
    .parameter "email"
    .parameter "onComplete"

    .prologue
    .line 734
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/UiccCardApplication;->mDbg:Z

    move v3, v0

    if-eqz v3, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeIccPhonebook category : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " devicetype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/UiccCardApplication;->log(Ljava/lang/String;)V

    .line 735
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardApplication;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardApplication;->mAid:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/UiccCardApplication;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0xb

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, p15

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    invoke-interface/range {v3 .. v19}, Lcom/android/internal/telephony/CommandsInterface;->writePhonebookEntriesEx(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 738
    return-void
.end method
