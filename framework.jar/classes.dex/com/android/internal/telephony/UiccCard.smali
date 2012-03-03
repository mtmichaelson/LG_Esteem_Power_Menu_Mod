.class public Lcom/android/internal/telephony/UiccCard;
.super Landroid/os/Handler;
.source "UiccCard.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UiccCard$1;
    }
.end annotation


# instance fields
.field private mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

.field private mCatService:Lcom/android/internal/telephony/cat/CatService;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mErrorRegistrants:Landroid/os/RegistrantList;

.field private mLogTag:Ljava/lang/String;

.field private mSubscription3gpp2AppIndex:[I

.field private mSubscription3gppAppIndex:[I

.field private mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

.field private mUnavailableRegistrants:Landroid/os/RegistrantList;

.field private mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccManager;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 14
    .parameter "uiccManager"
    .parameter "ics"
    .parameter "c"
    .parameter "ci"

    .prologue
    const/4 v8, 0x0

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    const-string v0, "RIL_UiccCard"

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    .line 46
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 48
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mErrorRegistrants:Landroid/os/RegistrantList;

    .line 50
    iput-boolean v8, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 58
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 59
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->universal_pin_state:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 60
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gppAppIndex:[I

    .line 61
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gpp2AppIndex:[I

    .line 62
    new-instance v0, Lcom/android/internal/telephony/UiccRecords;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UiccRecords;-><init>(Lcom/android/internal/telephony/UiccCard;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    .line 63
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/UiccCardApplication;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .line 64
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    .line 65
    iput-object p4, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v6, 0x0

    .local v6, i:I
    :goto_64
    iget-object v0, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v0, v0

    if-ge v6, v0, :cond_87

    .line 69
    iget-object v7, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v0, Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v1, p2, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v1, v6

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/UiccCardApplication;-><init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v7, v6

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "[UICC_JAY] new UiccCardApplication 1 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_64

    .line 73
    :cond_87
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v0, v0

    if-lez v0, :cond_ad

    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, v8

    if-eqz v0, :cond_ad

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/UiccApplicationRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 77
    :cond_ad
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method private notifyCardStatesRegistrants()V
    .registers 3

    .prologue
    .line 238
    sget-object v0, Lcom/android/internal/telephony/UiccCard$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$CardState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$CardState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 246
    :goto_d
    return-void

    .line 240
    :pswitch_e
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_d

    .line 243
    :pswitch_14
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mErrorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_d

    .line 238
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .registers 6

    .prologue
    .line 112
    monitor-enter p0

    const/4 v4, 0x1

    :try_start_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    .line 114
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccRecords;->dispose()V

    .line 115
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    .line 116
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    if-eqz v4, :cond_15

    .line 117
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    .line 119
    :cond_15
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCatService:Lcom/android/internal/telephony/cat/CatService;

    .line 120
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .local v1, arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1c
    if-ge v2, v3, :cond_28

    aget-object v0, v1, v2

    .line 121
    .local v0, app:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_25

    .line 122
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->dispose()V

    .line 120
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 125
    .end local v0       #app:Lcom/android/internal/telephony/UiccCardApplication;,
    :cond_28
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .line 126
    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_32

    .line 127
    monitor-exit p0

    return-void

    .line 112
    .end local v1       #arr$:[Lcom/android/internal/telephony/UiccCardApplication;,
    .end local v2       #i$:I,
    .end local v3       #len$:I,
    :catchall_32
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "UiccCard finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    return-object v0
.end method

.method public getNumApplications()I
    .registers 6

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, count:I
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .local v1, arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_5
    if-ge v3, v4, :cond_10

    aget-object v0, v1, v3

    .line 144
    .local v0, a:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_d

    .line 145
    add-int/lit8 v2, v2, 0x1

    .line 143
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 148
    .end local v0       #a:Lcom/android/internal/telephony/UiccCardApplication;,
    :cond_10
    return v2
.end method

.method public declared-synchronized getRecords()Lcom/android/internal/telephony/UiccRecords;
    .registers 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSubscription3gpp2AppIndex()[I
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gpp2AppIndex:[I

    return-object v0
.end method

.method public getSubscription3gppAppIndex()[I
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gppAppIndex:[I

    return-object v0
.end method

.method public declared-synchronized getUiccCardApplication(I)Lcom/android/internal/telephony/UiccCardApplication;
    .registers 4
    .parameter "appIndex"

    .prologue
    const/4 v1, 0x0

    .line 152
    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_15

    if-eqz v0, :cond_9

    move-object v0, v1

    .line 159
    :goto_7
    monitor-exit p0

    return-object v0

    .line 156
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v0, v0

    if-ge p1, v0, :cond_13

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, p1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_15

    goto :goto_7

    :cond_13
    move-object v0, v1

    .line 159
    goto :goto_7

    .line 152
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUiccManager()Lcom/android/internal/telephony/UiccManager;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    return-object v0
.end method

.method public getUniversalPinState()Lcom/android/internal/telephony/UiccConstants$PinState;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    return-object v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/UiccConstants$AppType;)Z
    .registers 7
    .parameter "type"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    .local v1, arr$:[Lcom/android/internal/telephony/UiccCardApplication;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_15

    aget-object v0, v1, v2

    .line 229
    .local v0, a:Lcom/android/internal/telephony/UiccCardApplication;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/UiccConstants$AppType;

    move-result-object v4

    if-ne v4, p1, :cond_12

    .line 230
    const/4 v4, 0x1

    .line 233
    .end local v0       #a:Lcom/android/internal/telephony/UiccCardApplication;,
    :goto_11
    return v4

    .line 228
    .restart local v0       #a:Lcom/android/internal/telephony/UiccCardApplication;,
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 233
    .end local v0       #a:Lcom/android/internal/telephony/UiccCardApplication;,
    :cond_15
    const/4 v4, 0x0

    goto :goto_11
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 194
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 196
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_15

    .line 199
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 201
    :cond_15
    return-void
.end method

.method public registerForError(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 213
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 215
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mErrorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    if-ne v1, v2, :cond_15

    .line 218
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 220
    :cond_15
    return-void
.end method

.method public declared-synchronized registerForUnavailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v1, :cond_7

    .line 181
    :goto_5
    monitor-exit p0

    return-void

    .line 179
    :cond_7
    :try_start_7
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 180
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    .line 175
    .end local v0       #r:Landroid/os/Registrant;,
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 205
    return-void
.end method

.method public unregisterForError(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mErrorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 224
    return-void
.end method

.method public declared-synchronized unregisterForUnavailable(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public update(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 12
    .parameter "ics"
    .parameter "c"
    .parameter "ci"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z

    if-eqz v0, :cond_c

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "Updated after destroyed! Fix me!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_b
    return-void

    .line 85
    :cond_c
    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->card_state:Lcom/android/internal/telephony/UiccConstants$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mCardState:Lcom/android/internal/telephony/UiccConstants$CardState;

    .line 86
    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->universal_pin_state:Lcom/android/internal/telephony/UiccConstants$PinState;

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUniversalPinState:Lcom/android/internal/telephony/UiccConstants$PinState;

    .line 87
    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp_app_index:[I

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gppAppIndex:[I

    .line 88
    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->subscription_3gpp2_app_index:[I

    iput-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mSubscription3gpp2AppIndex:[I

    .line 89
    iput-object p2, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    .line 90
    iput-object p3, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 92
    const/4 v6, 0x0

    .local v6, i:I
    :goto_21
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    array-length v0, v0

    if-ge v6, v0, :cond_b

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, v6

    if-nez v0, :cond_4f

    .line 95
    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v0, v0

    if-ge v6, v0, :cond_4c

    .line 96
    iget-object v7, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v0, Lcom/android/internal/telephony/UiccCardApplication;

    iget-object v1, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v2, v1, v6

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/UiccCardApplication;-><init>(Lcom/android/internal/telephony/UiccCard;Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    aput-object v0, v7, v6

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mLogTag:Ljava/lang/String;

    const-string v1, "[UICC_JAY] new UiccCardApplication 2 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_4c
    :goto_4c
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 100
    :cond_4f
    iget-object v0, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    array-length v0, v0

    if-lt v6, v0, :cond_61

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->dispose()V

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v1, 0x0

    aput-object v1, v0, v6

    goto :goto_4c

    .line 106
    :cond_61
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard;->mUiccApplications:[Lcom/android/internal/telephony/UiccCardApplication;

    aget-object v0, v0, v6

    iget-object v1, p1, Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus;->applications:[Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/android/internal/telephony/UiccCard;->mUiccRecords:Lcom/android/internal/telephony/UiccRecords;

    iget-object v3, p0, Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/UiccCard;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->update(Lcom/android/internal/telephony/UiccCardStatusResponse$CardStatus$AppStatus;Lcom/android/internal/telephony/UiccRecords;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_4c
.end method
