.class public Landroid/net/MobileDataStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "MobileDataStateTracker.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$1;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;,
        Landroid/net/MobileDataStateTracker$MobileInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"



# instance fields
.field private mApnType:Ljava/lang/String;

.field private mApnTypeToWatchFor:Ljava/lang/String;

.field private mEnabled:Z

.field private mIsDefaultOrHipri:Z

.field mMobileInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/Phone$IPVersion;",
            "Landroid/net/MobileDataStateTracker$MobileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field private mStateReceiver:Landroid/content/BroadcastReceiver;



# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "target"
    .parameter "netType"
    .parameter "tag"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 102
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-boolean v7, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    .line 105
    invoke-static {p3}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    .line 108
    if-eqz p3, :cond_2b

    if-ne p3, v9, :cond_2d

    .line 110
    :cond_2b
    iput-boolean v8, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    .line 113
    :cond_2d
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 114
    if-nez p3, :cond_88

    .line 115
    iput-boolean v8, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 122
    :goto_34
    if-nez p3, :cond_8b

    .line 123
    const-string v0, "mobile"

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    .line 140
    :cond_3a
    :goto_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instance created. netType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApnTypeToWatchFor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    .line 144
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    new-instance v2, Landroid/net/MobileDataStateTracker$MobileInfo;

    invoke-direct {v2, p0}, Landroid/net/MobileDataStateTracker$MobileInfo;-><init>(Landroid/net/MobileDataStateTracker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    new-instance v2, Landroid/net/MobileDataStateTracker$MobileInfo;

    invoke-direct {v2, p0}, Landroid/net/MobileDataStateTracker$MobileInfo;-><init>(Landroid/net/MobileDataStateTracker;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void

    .line 117
    :cond_88
    iput-boolean v7, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_34

    .line 124
    :cond_8b
    const/16 v0, 0xb

    if-ne p3, v0, :cond_94

    .line 125
    const-string v0, "admin"

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    goto :goto_3a

    .line 126
    :cond_94
    const/4 v0, 0x4

    if-ne p3, v0, :cond_9c

    .line 127
    const-string v0, "dun"

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    goto :goto_3a

    .line 128
    :cond_9c
    if-ne p3, v9, :cond_a3

    .line 129
    const-string v0, "hipri"

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    goto :goto_3a

    .line 130
    :cond_a3
    const/16 v0, 0xa

    if-ne p3, v0, :cond_ac

    .line 131
    const-string v0, "ims"

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    goto :goto_3a

    .line 132
    :cond_ac
    const/4 v0, 0x2

    if-ne p3, v0, :cond_b4

    .line 133
    const-string v0, "mms"

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    goto :goto_3a

    .line 134
    :cond_b4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_be

    .line 135
    const-string/jumbo v0, "supl"

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    goto/16 :goto_3a

    .line 136
    :cond_be
    const/16 v0, 0xc

    if-ne p3, v0, :cond_3a

    .line 137
    const-string v0, "mpcsapp"

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    goto/16 :goto_3a
.end method

.method static synthetic access$100(Landroid/net/MobileDataStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    return v0
.end method

.method static synthetic access$102(Landroid/net/MobileDataStateTracker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/net/MobileDataStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mIsDefaultOrHipri:Z

    return v0
.end method

.method static synthetic access$400(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->updateMobileInfoFromIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method private getIpVersionFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$IPVersion;
    .registers 4
    .parameter "intent"

    .prologue
    .line 190
    const-string v1, "ipVersion"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, str:Ljava/lang/String;
    const-class v1, Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/Phone$IPVersion;

    return-object p0
.end method

.method private getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 5
    .parameter "intent"

    .prologue
    .line 178
    const-string v2, "apnTypeState"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 180
    const-string v2, "apnType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, apnTypeList:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->isApnTypeIncluded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 183
    const-class v2, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v2, p0

    .line 186
    .end local v0       #apnTypeList:Ljava/lang/String;,
    :goto_1d
    return-object v2

    .restart local p0       
    :cond_1e
    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_1d
.end method

.method private getPhoneService(Z)V
    .registers 3
    .parameter "forceRefresh"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_13

    .line 424
    :cond_6
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 426
    :cond_13
    return-void
.end method

.method private isApnTypeIncluded(Ljava/lang/String;)Z
    .registers 7
    .parameter "typeList"

    .prologue
    const/4 v4, 0x0

    .line 196
    if-nez p1, :cond_5

    move v2, v4

    .line 206
    :goto_4
    return v2

    .line 199
    :cond_5
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, list:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 201
    aget-object v2, v1, v0

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mApnTypeToWatchFor:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    aget-object v2, v1, v0

    const-string v3, "*"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 203
    :cond_23
    const/4 v2, 0x1

    goto :goto_4

    .line 200
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_28
    move v2, v4

    .line 206
    goto :goto_4
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .registers 4
    .parameter "netType"

    .prologue
    const-string v1, "mpcsapp"

    .line 978
    packed-switch p0, :pswitch_data_42

    .line 1002
    :pswitch_5
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error mapping networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to apnType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v0, 0x0

    :goto_24
    return-object v0

    .line 984
    :pswitch_25
    const-string v0, "mpcsapp"

    move-object v0, v1

    goto :goto_24

    .line 986
    :pswitch_29
    const-string v0, "mpcsapp"

    move-object v0, v1

    goto :goto_24

    .line 988
    :pswitch_2d
    const-string v0, "mpcsapp"

    move-object v0, v1

    goto :goto_24

    .line 991
    :pswitch_31
    const-string v0, "internet"

    goto :goto_24

    .line 993
    :pswitch_34
    const-string v0, "ims"

    goto :goto_24

    .line 995
    :pswitch_37
    const-string v0, "admin"

    goto :goto_24

    .line 997
    :pswitch_3a
    const-string v0, "dun"

    goto :goto_24

    .line 999
    :pswitch_3d
    const-string v0, "mpcsapp"

    move-object v0, v1

    goto :goto_24

    .line 978
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_31
        :pswitch_5
        :pswitch_2d
        :pswitch_25
        :pswitch_3a
        :pswitch_29
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_34
        :pswitch_37
        :pswitch_3d
    .end packed-switch
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .registers 8
    .parameter "apnType"
    .parameter "enable"

    .prologue
    const-string v4, "MobileDataStateTracker"

    .line 949
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 954
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 955
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_43

    .line 956
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_15
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_5e

    const-string v3, "enable"

    :goto_26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v2, 0x3

    :goto_42
    return v2

    .line 962
    :cond_43
    if-eqz p2, :cond_4c

    .line 963
    :try_start_45
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_42

    .line 965
    :cond_4c
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_51} :catch_53

    move-result v2

    goto :goto_42

    .line 967
    :catch_53
    move-exception v2

    move-object v0, v2

    .line 968
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_5b

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 954
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 972
    .end local v0       #e:Landroid/os/RemoteException;,
    :cond_5e
    const-string v3, "disable"

    goto :goto_26
.end method

.method private updateMobileInfoFromIntent(Landroid/content/Intent;)Z
    .registers 8
    .parameter "intent"

    .prologue
    .line 371
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    .line 372
    .local v3, newState:Lcom/android/internal/telephony/Phone$DataState;
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->getIpVersionFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v1

    .line 374
    .local v1, ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dc state change intent received for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with state  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->logi(Ljava/lang/String;)V

    .line 377
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v4, v4, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v4, v3, :cond_4e

    .line 379
    const/4 v4, 0x0

    .line 419
    :goto_4d
    return v4

    .line 382
    :cond_4e
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/MobileDataStateTracker$MobileInfo;

    .line 383
    .local v2, newInfo:Landroid/net/MobileDataStateTracker$MobileInfo;
    iput-object v3, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    .line 384
    iget-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v5, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v4, v5, :cond_d6

    .line 385
    const-string v4, "apn"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mApnName:Ljava/lang/String;

    .line 386
    const-string v4, "iface"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mInterfaceName:Ljava/lang/String;

    .line 388
    :try_start_6e
    const-string v4, "ipaddress"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 390
    const-string v4, "igwaddress"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mGateway:Ljava/net/InetAddress;
    :try_end_86
    .catch Ljava/net/UnknownHostException; {:try_start_6e .. :try_end_86} :catch_af

    .line 417
    :cond_86
    :goto_86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updated mobile state info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 419
    const/4 v4, 0x1

    goto :goto_4d

    .line 392
    :catch_af
    move-exception v4

    move-object v0, v4

    .line 393
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "interface connected with invalid parameters : ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_86

    .line 397
    .end local v0       #e:Ljava/net/UnknownHostException;,
    :cond_d6
    iget-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v5, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v4, v5, :cond_86

    .line 398
    iget-object v4, v2, Landroid/net/MobileDataStateTracker$MobileInfo;->mInterfaceName:Ljava/lang/String;

    if-eqz v4, :cond_ed

    .line 399
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v4, v4, Landroid/net/MobileDataStateTracker$MobileInfo;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    .line 409
    :cond_ed
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v5, "internet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 410
    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->removeDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto :goto_86

    .line 412
    :cond_fb
    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->removePrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V

    goto :goto_86
.end method


# virtual methods
.method public addDefaultRoute()V
    .registers 4

    .prologue
    const-string v2, "MobileDataStateTracker"

    .line 773
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, v1, :cond_1e

    .line 775
    const-string v0, "MobileDataStateTracker"

    const-string v0, "[GW] addDefaultRoute IPv4 is called"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->addDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 778
    :cond_1e
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v0, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v0, v1, :cond_3a

    .line 780
    const-string v0, "MobileDataStateTracker"

    const-string v0, "[GW] addDefaultRoute IPv6 is called"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->addDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 784
    :cond_3a
    return-void
.end method

.method public addDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 14
    .parameter "ipv"

    .prologue
    .line 789
    invoke-virtual {p0, p1}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, interfaceName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/net/MobileDataStateTracker;->getGateway(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;

    move-result-object v3

    .line 791
    .local v3, gateway:Ljava/net/InetAddress;
    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v9, :cond_e9

    const/4 v9, 0x0

    move v6, v9

    .line 793
    .local v6, index:I
    :goto_e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 800
    .local v1, changed_gateway_string:Ljava/lang/String;
    if-eqz v7, :cond_39

    if-nez v3, :cond_39

    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v9, :cond_39

    .line 802
    const-string v5, "fe80::1234:1234:1234"

    .line 804
    .local v5, gateway_string_temp:Ljava/lang/String;
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[WOOK] IPv6 default gateway = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :try_start_35
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_38
    .catch Ljava/net/UnknownHostException; {:try_start_35 .. :try_end_38} :catch_ed

    move-result-object v3

    .line 817
    .end local v5       #gateway_string_temp:Ljava/lang/String;,
    :cond_39
    :goto_39
    if-eqz v7, :cond_71

    if-eqz v3, :cond_71

    .line 819
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Default Gateway From telephony "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mDefaultRouteSet "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    aget-boolean v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_71
    if-eqz v7, :cond_e8

    if-eqz v3, :cond_e8

    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    aget-boolean v9, v9, v6

    if-nez v9, :cond_e8

    .line 824
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addDefaultRoute ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "), GatewayAddr="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const/4 v9, 0x1

    if-ne v6, v9, :cond_108

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "localhost/::1"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_108

    .line 829
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW] IPv6 Default Gateway is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Ignore this!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_e8
    :goto_e8
    return-void

    .line 791
    .end local v1       #changed_gateway_string:Ljava/lang/String;,
    .end local v6       #index:I,
    :cond_e9
    const/4 v9, 0x1

    move v6, v9

    goto/16 :goto_e

    .line 809
    .restart local v1       #changed_gateway_string:Ljava/lang/String;,
    .restart local v5       #gateway_string_temp:Ljava/lang/String;,
    .restart local v6       #index:I,
    :catch_ed
    move-exception v2

    .line 810
    .local v2, e:Ljava/net/UnknownHostException;
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 835
    .end local v2       #e:Ljava/net/UnknownHostException;,
    .end local v5       #gateway_string_temp:Ljava/lang/String;,
    :cond_108
    const-string v9, "bond1"

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_148

    .line 837
    invoke-static {v7}, Landroid/net/NetworkUtils;->getDefaultRoute(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_148

    .line 839
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW] IPv4 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Gateway is already set to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Landroid/net/NetworkUtils;->getDefaultRoute(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Just return!!"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v6

    goto :goto_e8

    .line 852
    :cond_148
    if-nez v6, :cond_2c1

    .line 854
    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\."

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 856
    .local v4, gateway_string:[Ljava/lang/String;
    const/16 v8, 0xfe

    .line 858
    .local v8, temp_last_ip:I
    const/4 v9, 0x3

    aget-object v9, v4, v9

    if-eqz v9, :cond_231

    .line 860
    const/4 v9, 0x3

    aget-object v9, v4, v9

    const-string v10, "254"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_176

    const/4 v9, 0x3

    aget-object v9, v4, v9

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1ff

    .line 862
    :cond_176
    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 871
    :goto_17f
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW] Default Gateway String  change to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :try_start_197
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 874
    .local v0, changed_gateway:Ljava/net/InetAddress;
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW] Confirm add Default Route IP  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    const/4 v9, 0x0

    invoke-static {v7, v0, v9}, Landroid/net/NetworkUtils;->addRoute(Ljava/lang/String;Ljava/net/InetAddress;I)Z

    move-result v9

    if-eqz v9, :cond_23c

    .line 877
    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v6

    .line 878
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW] Succss to Add default route for IPv4 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catch Ljava/net/UnknownHostException; {:try_start_197 .. :try_end_1e1} :catch_1e3

    goto/16 :goto_e8

    .line 921
    .end local v0       #changed_gateway:Ljava/net/InetAddress;,
    :catch_1e3
    move-exception v9

    move-object v2, v9

    .line 922
    .restart local v2       #e:Ljava/net/UnknownHostException;,
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e8

    .line 865
    .end local v2       #e:Ljava/net/UnknownHostException;,
    :cond_1ff
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".254"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17f

    .line 869
    :cond_231
    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_17f

    .line 881
    .restart local v0       #changed_gateway:Ljava/net/InetAddress;,
    :cond_23c
    :try_start_23c
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW] Unable to add default route(1) for IPv4 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW]  Remove Default Gateway for interface  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-static {v7}, Landroid/net/NetworkUtils;->removeDefaultRoute(Ljava/lang/String;)I

    .line 886
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW]  One more try to  add Default Route IP  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const/4 v9, 0x0

    invoke-static {v7, v0, v9}, Landroid/net/NetworkUtils;->addRoute(Ljava/lang/String;Ljava/net/InetAddress;I)Z

    move-result v9

    if-eqz v9, :cond_e8

    .line 889
    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v6

    .line 890
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW] Succss to Add default route for IPv4 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2bf
    .catch Ljava/net/UnknownHostException; {:try_start_23c .. :try_end_2bf} :catch_1e3

    goto/16 :goto_e8

    .line 926
    .end local v0       #changed_gateway:Ljava/net/InetAddress;,
    .end local v4       #gateway_string:[Ljava/lang/String;,
    .end local v8       #temp_last_ip:I,
    :cond_2c1
    const/4 v9, 0x0

    invoke-static {v7, v3, v9}, Landroid/net/NetworkUtils;->addRoute(Ljava/lang/String;Ljava/net/InetAddress;I)Z

    move-result v9

    if-eqz v9, :cond_2f1

    .line 927
    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v6

    .line 928
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW] Succss to Add default route for IPv6 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e8

    .line 930
    :cond_2f1
    const-string v9, "MobileDataStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[GW] Unable to add default route IPv6 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " interface "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e8
.end method

.method public getGateway(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;
    .registers 4
    .parameter "ipv"

    .prologue
    .line 739
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MobileDataStateTracker$MobileInfo;

    .line 740
    .local v0, info:Landroid/net/MobileDataStateTracker$MobileInfo;
    if-eqz v0, :cond_d

    .line 741
    iget-object v1, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mGateway:Ljava/net/InetAddress;

    .line 743
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
    .registers 4
    .parameter "ipv"

    .prologue
    .line 729
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MobileDataStateTracker$MobileInfo;

    .line 730
    .local v0, info:Landroid/net/MobileDataStateTracker$MobileInfo;
    if-eqz v0, :cond_d

    .line 731
    iget-object v1, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mInterfaceName:Ljava/lang/String;

    .line 733
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getIpAdress(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;
    .registers 4
    .parameter "ipv"

    .prologue
    .line 749
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MobileDataStateTracker$MobileInfo;

    .line 750
    .local v0, info:Landroid/net/MobileDataStateTracker$MobileInfo;
    if-eqz v0, :cond_d

    .line 751
    iget-object v1, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 753
    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getNameServers()[Ljava/lang/String;
    .registers 8

    .prologue
    const-string v6, ".dns2"

    const-string v5, ".dns1"

    const-string/jumbo v4, "net."

    .line 703
    const/16 v1, 0xc

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "net.eth0.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "net.eth0.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "net.eth0.dns3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "net.eth0.dns4"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "net.gprs.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "net.gprs.dns2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "net.ppp0.dns1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "net.ppp0.dns2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dns1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dns2"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dns1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dns2"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 719
    .local v0, dnsPropNames:[Ljava/lang/String;
    invoke-static {v0}, Landroid/net/MobileDataStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkSubtype()I
    .registers 2

    .prologue
    .line 458
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 466
    const-string/jumbo v0, "unknown"

    .line 467
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 469
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_4e

    .line 509
    :goto_11
    :pswitch_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 471
    :pswitch_26
    const-string v0, "gprs"

    .line 472
    goto :goto_11

    .line 474
    :pswitch_29
    const-string v0, "edge"

    .line 475
    goto :goto_11

    .line 477
    :pswitch_2c
    const-string/jumbo v0, "umts"

    .line 478
    goto :goto_11

    .line 480
    :pswitch_30
    const-string v0, "hsdpa"

    .line 481
    goto :goto_11

    .line 483
    :pswitch_33
    const-string v0, "hsupa"

    .line 484
    goto :goto_11

    .line 486
    :pswitch_36
    const-string v0, "hspa"

    .line 487
    goto :goto_11

    .line 489
    :pswitch_39
    const-string v0, "cdma"

    .line 490
    goto :goto_11

    .line 492
    :pswitch_3c
    const-string v0, "1xrtt"

    .line 493
    goto :goto_11

    .line 495
    :pswitch_3f
    const-string v0, "evdo"

    .line 496
    goto :goto_11

    .line 498
    :pswitch_42
    const-string v0, "evdo"

    .line 499
    goto :goto_11

    .line 501
    :pswitch_45
    const-string v0, "evdo_b"

    .line 502
    goto :goto_11

    .line 504
    :pswitch_48
    const-string v0, "ehrpd"

    .line 505
    goto :goto_11

    .line 507
    :pswitch_4b
    const-string v0, "lte"

    goto :goto_11

    .line 469
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_39
        :pswitch_3f
        :pswitch_42
        :pswitch_3c
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_11
        :pswitch_45
        :pswitch_4b
        :pswitch_48
    .end packed-switch
.end method

.method public isAvailable()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 432
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 438
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_5
    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    .line 439
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_e

    :cond_c
    move v2, v3

    .line 449
    :goto_d
    return v2

    .line 442
    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15

    move-result v2

    goto :goto_d

    .line 443
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 445
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_1d

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 438
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method logd(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 1018
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 1010
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void
.end method

.method logi(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 1028
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return-void
.end method

.method logv(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 1023
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    return-void
.end method

.method logw(Ljava/lang/String;)V
    .registers 5
    .parameter "string"

    .prologue
    .line 1014
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    return-void
.end method

.method public reconnect()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 534
    invoke-virtual {p0, v2}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 539
    iput-boolean v3, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 545
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MobileDataStateTracker$MobileInfo;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v1, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    .line 546
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/MobileDataStateTracker$MobileInfo;

    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v1, v0, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    .line 548
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v0

    packed-switch v0, :pswitch_data_aa

    .line 583
    const-string v0, "MobileDataStateTracker"

    const-string v1, "Error in reconnect - unexpected response."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iput-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    .line 587
    :cond_35
    :goto_35
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    :goto_37
    return v0

    .line 550
    :pswitch_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dct reports apn already active. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    goto :goto_35

    .line 555
    :pswitch_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dct reports apn request started "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    goto :goto_35

    .line 560
    :pswitch_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dct reports apn request failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v0, :cond_8a

    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v1, "internet"

    if-ne v0, v1, :cond_8a

    .line 570
    iput-boolean v3, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    move v0, v2

    .line 571
    goto :goto_37

    .line 577
    :cond_8a
    :pswitch_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dct reports apn type not available "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const-string v1, "default"

    if-eq v0, v1, :cond_35

    .line 579
    iput-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mEnabled:Z

    goto :goto_35

    .line 548
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_38
        :pswitch_4f
        :pswitch_8a
        :pswitch_66
    .end packed-switch
.end method

.method public requestRouteToHost(Ljava/net/InetAddress;)Z
    .registers 9
    .parameter "hostAddress"

    .prologue
    const-string v6, "MobileDataStateTracker"

    .line 668
    const/4 v1, 0x0

    .line 669
    .local v1, interfaceName:Ljava/lang/String;
    instance-of v4, p1, Ljava/net/Inet4Address;

    if-eqz v4, :cond_55

    .line 670
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v1

    .line 675
    :cond_d
    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested host route to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 678
    const/4 v3, 0x0

    .line 679
    .local v3, result:Z
    if-eqz v1, :cond_69

    .line 680
    invoke-virtual {p0}, Landroid/net/MobileDataStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 681
    .local v2, nms:Landroid/os/INetworkManagementService;
    if-nez v2, :cond_60

    .line 682
    const-string v4, "MobileDataStateTracker"

    const-string v4, "could not acquire NetworkManagementService."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v4, 0x0

    .line 692
    .end local v2       #nms:Landroid/os/INetworkManagementService;,
    :goto_54
    return v4

    .line 671
    .end local v3       #result:Z,
    :cond_55
    instance-of v4, p1, Ljava/net/Inet6Address;

    if-eqz v4, :cond_d

    .line 672
    sget-object v4, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v4}, Landroid/net/MobileDataStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    .line 686
    .restart local v2       #nms:Landroid/os/INetworkManagementService;,
    .restart local v3       #result:Z,
    :cond_60
    :try_start_60
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v1, v4, v5}, Landroid/os/INetworkManagementService;->addDstRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_68} :catch_6b

    move-result v3

    .end local v2       #nms:Landroid/os/INetworkManagementService;,
    :cond_69
    :goto_69
    move v4, v3

    .line 692
    goto :goto_54

    .line 687
    .restart local v2       #nms:Landroid/os/INetworkManagementService;,
    :catch_6b
    move-exception v4

    move-object v0, v4

    .line 688
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MobileDataStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobileDataStateTracker failed to request host route. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method

.method public resetTornDownbyConnMgr()V
    .registers 1

    .prologue
    .line 528
    return-void
.end method

.method public sendDataConnectionChangedIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string/jumbo v6, "reason"

    const-string/jumbo v5, "networkUnvailable"

    const-string v4, "ipVersion"

    const-string v3, "apnTypeState"

    const-string v2, "apnType"

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ims.dataconnection.notification"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, intentToIms:Landroid/content/Intent;
    const-string/jumbo v1, "networkUnvailable"

    const-string/jumbo v1, "networkUnvailable"

    const/4 v1, 0x0

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    const-string v1, "apnTypeState"

    const-string v1, "apnTypeState"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "apnType"

    const-string v1, "apnType"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "ipVersion"

    const-string v1, "ipVersion"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v1, "reason"

    const-string/jumbo v1, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public setRadio(Z)Z
    .registers 8
    .parameter "turnOn"

    .prologue
    const/4 v4, 0x0

    const-string v5, "MobileDataStateTracker"

    .line 596
    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 601
    const/4 v1, 0x0

    .local v1, retry:I
    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_15

    .line 602
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_34

    .line 603
    const-string v2, "MobileDataStateTracker"

    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_15
    const-string v2, "MobileDataStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set radio power to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_46

    const-string/jumbo v3, "on"

    :goto_27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 616
    :goto_33
    return v2

    .line 609
    :cond_34
    :try_start_34
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_39} :catch_3b

    move-result v2

    goto :goto_33

    .line 610
    :catch_3b
    move-exception v2

    move-object v0, v2

    .line 611
    .local v0, e:Landroid/os/RemoteException;
    if-nez v1, :cond_43

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 601
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 615
    .end local v0       #e:Landroid/os/RemoteException;,
    :cond_46
    const-string/jumbo v3, "off"

    goto :goto_27
.end method

.method public startMonitoring()V
    .registers 7

    .prologue
    const-string v5, "android.intent.action.ANY_DATA_STATE"

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    new-instance v3, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    iput-object v3, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 167
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 169
    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->getIpVersionFromIntent(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$IPVersion;

    move-result-object v2

    .line 170
    .local v2, ipv:Lcom/android/internal/telephony/Phone$IPVersion;
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v4

    iput-object v4, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    .line 173
    .end local v2       #ipv:Lcom/android/internal/telephony/Phone$IPVersion;,
    :cond_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initial state. v4="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v6="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v5, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MobileDataStateTracker$MobileInfo;

    iget-object v3, v3, Landroid/net/MobileDataStateTracker$MobileInfo;->mState:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->logv(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 641
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 657
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 523
    invoke-virtual {p0, v3}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 524
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    move v0, v3

    :goto_f
    return v0

    :cond_10
    move v0, v2

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 761
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Mobile data state: IPV4="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 763
    const-string v1, ", IPV6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileInfo:Ljava/util/HashMap;

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 765
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
