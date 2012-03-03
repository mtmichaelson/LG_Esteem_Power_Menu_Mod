.class public Lcom/android/internal/telephony/ImsDataConnectionNotifier;
.super Ljava/lang/Object;
.source "ImsDataConnectionNotifier.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;
    }
.end annotation


# static fields
.field private static final IMS_DATA_CONNECTION_CONNECTED:I = 0x0

.field private static final IMS_DATA_CONNECTION_DISCONNECTED:I = 0x1

.field private static final IMS_DATA_CONNECTION_DISCONNECT_REQUESTED_BY_NET:I = 0x3

.field private static final IMS_DATA_CONNECTION_FAILED:I = 0x2

.field private static final IMS_PDN_CLOSE_REQUESTED_BY_NET:I = 0x4

.field private static final IMS_RADIO_ACCESS_TECH_EHRPD:I = 0x1

.field private static final IMS_RADIO_ACCESS_TECH_LTE:I = 0x2

.field private static final IMS_RADIO_ACCESS_TECH_NOT_AVAILABLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ImsDataConnectionNotifier"

.field private static mInstance:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

.field private static mIsIpv4Connected:Z

.field private static mIsIpv4ResultReceived:Z

.field private static mIsIpv6Connected:Z

.field private static mIsIpv6ResultReceived:Z



# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataStateReceiver:Landroid/content/BroadcastReceiver;

.field private mImsDataConnectionChanedRegistrants:Landroid/os/RegistrantList;

.field private mImsRadioTechChanedRegistrants:Landroid/os/RegistrantList;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 57
    sput-boolean v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv4Connected:Z

    .line 58
    sput-boolean v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv6Connected:Z

    .line 61
    sput-boolean v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv4ResultReceived:Z

    .line 62
    sput-boolean v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv6ResultReceived:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsDataConnectionChanedRegistrants:Landroid/os/RegistrantList;

    .line 81
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsRadioTechChanedRegistrants:Landroid/os/RegistrantList;

    .line 311
    new-instance v1, Lcom/android/internal/telephony/ImsDataConnectionNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ImsDataConnectionNotifier$1;-><init>(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mContext:Landroid/content/Context;

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.IMS_DETACH_REQ_FROM_LTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.IMS_PDNCLOSE_REQ_FROM_LTE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.IMS_PDN_IPV6_NOTSUPPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/ImsDataConnectionNotifier$ImsDataStateReceiver;-><init>(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Lcom/android/internal/telephony/ImsDataConnectionNotifier$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mDataStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->getDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$IPVersion;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->getIpVersionFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv4Connected:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv4Connected:Z

    return p0
.end method

.method static synthetic access$400()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv4ResultReceived:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv4ResultReceived:Z

    return p0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv6Connected:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv6Connected:Z

    return p0
.end method

.method static synthetic access$600()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv6ResultReceived:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv6ResultReceived:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/ImsDataConnectionNotifier;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->sendDataConnectionMessageToIms(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)Landroid/os/RegistrantList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsDataConnectionChanedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/ImsDataConnectionNotifier;)Landroid/os/RegistrantList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsRadioTechChanedRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method private getDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 5
    .parameter "intent"

    .prologue
    .line 123
    const-string v2, "apnTypeState"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 127
    const-string v2, "apnType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, apnTypeList:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->isImsPdnApnTypeIncluded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 132
    const-class v2, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v2, p0

    .line 136
    .end local v0       #apnTypeList:Ljava/lang/String;,
    :goto_1d
    return-object v2

    .restart local p0       
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/ImsDataConnectionNotifier;
    .registers 2
    .parameter "context"

    .prologue
    .line 114
    sget-object v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mInstance:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    if-nez v0, :cond_e

    .line 115
    new-instance v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ImsDataConnectionNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mInstance:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    .line 119
    :goto_b
    sget-object v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mInstance:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    return-object v0

    .line 117
    :cond_e
    sget-object v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mInstance:Lcom/android/internal/telephony/ImsDataConnectionNotifier;

    iput-object p0, v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mContext:Landroid/content/Context;

    goto :goto_b
.end method

.method private getIpVersionFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$IPVersion;
    .registers 4
    .parameter "intent"

    .prologue
    .line 156
    const-string v1, "ipVersion"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 158
    const-class v1, Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/Phone$IPVersion;

    move-object v1, p0

    .line 160
    :goto_11
    return-object v1

    .restart local p0       
    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isImsPdnApnTypeIncluded(Ljava/lang/String;)Z
    .registers 7
    .parameter "typeList"

    .prologue
    const/4 v4, 0x0

    .line 142
    if-nez p1, :cond_5

    move v2, v4

    .line 151
    :goto_4
    return v2

    .line 145
    :cond_5
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 147
    aget-object v2, v1, v0

    const-string v3, "ims"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 148
    const/4 v2, 0x1

    goto :goto_4

    .line 146
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    move v2, v4

    .line 151
    goto :goto_4
.end method

.method private sendDataConnectionMessageToIms(Z)V
    .registers 6
    .parameter "isConnected"

    .prologue
    const/4 v3, 0x0

    const-string v1, "ImsDataConnectionNotifier"

    .line 169
    if-eqz p1, :cond_1c

    .line 170
    const-string v0, "ImsDataConnectionNotifier"

    const-string v0, "ABOUT to notify Data Connection has been CONNECTED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsDataConnectionChanedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 180
    :cond_1b
    :goto_1b
    return-void

    .line 174
    :cond_1c
    sget-boolean v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv4Connected:Z

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mIsIpv6Connected:Z

    if-nez v0, :cond_1b

    .line 175
    :cond_24
    const-string v0, "ImsDataConnectionNotifier"

    const-string v0, "ABOUT to notify Data Connection has been DISCONNECTED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsDataConnectionChanedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1b
.end method


# virtual methods
.method public registerForImsDataConnectionChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 344
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 345
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsDataConnectionChanedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 346
    :try_start_8
    iget-object v2, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsDataConnectionChanedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 347
    monitor-exit v1

    .line 348
    return-void

    .line 347
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public registerForImsRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 356
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 357
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsRadioTechChanedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v1

    .line 358
    :try_start_8
    iget-object v2, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsRadioTechChanedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 359
    monitor-exit v1

    .line 360
    return-void

    .line 359
    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw v2
.end method

.method public unregisterForImsDataConnectionChanged(Landroid/os/Handler;)V
    .registers 4
    .parameter "h"

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsDataConnectionChanedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsDataConnectionChanedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 352
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public unregisterForImsRadioTechChanged(Landroid/os/Handler;)V
    .registers 4
    .parameter "h"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsRadioTechChanedRegistrants:Landroid/os/RegistrantList;

    monitor-enter v0

    .line 363
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/ImsDataConnectionNotifier;->mImsRadioTechChanedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 364
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
