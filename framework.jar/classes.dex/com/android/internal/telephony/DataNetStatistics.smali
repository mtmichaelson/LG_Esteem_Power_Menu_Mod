.class Lcom/android/internal/telephony/DataNetStatistics;
.super Ljava/lang/Object;
.source "DataNetStatistics.java"


# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final NO_INTERFACE:I = 0xa

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0



# instance fields
.field private Admin_rxPkts:J

.field private Admin_txPkts:J

.field private IMS_rxPkts:J

.field private IMS_txPkts:J

.field private InterfaceName_Ipv4:Ljava/lang/String;

.field private InterfaceName_Ipv6:Ljava/lang/String;

.field private Internet_rxPkts:J

.field private Internet_txPkts:J

.field protected final LOG_TAG:Ljava/lang/String;

.field private VZW_rxPkts:J

.field private VZW_txPkts:J

.field private adminInterfaceNum_Ipv4:I

.field private adminInterfaceNum_Ipv6:I

.field dc:Lcom/android/internal/telephony/DataConnectionTracker;

.field private enablePoll:Z

.field private imsInterfaceNum_Ipv4:I

.field private imsInterfaceNum_Ipv6:I

.field private internetInterfaceNum_Ipv4:I

.field private internetInterfaceNum_Ipv6:I

.field private isAdminInterface:Z

.field private isImsInterface:Z

.field private isInternetInterface:Z

.field private isSinglepdnInterface:Z

.field private isVzwappInterface:Z

.field public mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field private mIsScreenOn:Z

.field private netStatPollPeriod:J

.field netstat:Landroid/os/INetStatService;

.field private rxPkts:J

.field private sentSinceLastRecv:J

.field private txPkts:J

.field private vzwappInterfaceNum_Ipv4:I

.field private vzwappInterfaceNum_Ipv6:I



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .registers 4
    .parameter "dataConnectionTracker"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataNetStatistics;->enablePoll:Z

    .line 46
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->mIsScreenOn:Z

    .line 68
    const-string v0, "DATA"

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->LOG_TAG:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataNetStatistics;->isImsInterface:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataNetStatistics;->isAdminInterface:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataNetStatistics;->isInternetInterface:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataNetStatistics;->isVzwappInterface:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataNetStatistics;->isSinglepdnInterface:Z

    .line 90
    iput-object p1, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 91
    const-string/jumbo v0, "netstat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetStatService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->netstat:Landroid/os/INetStatService;

    .line 92
    return-void
.end method

.method private getEachPdnTotalRxPkts(II)J
    .registers 10
    .parameter "apnInterfaceNumIpv4"
    .parameter "apnInterfaceNumIpv6"

    .prologue
    const/16 v6, 0xa

    .line 239
    const-wide/16 v0, 0x0

    .line 240
    .local v0, Ip4_RxPkts:J
    const-wide/16 v2, 0x0

    .line 241
    .local v2, Ip6_RxPkts:J
    if-eq p1, v6, :cond_e

    .line 243
    :try_start_8
    iget-object v5, p0, Lcom/android/internal/telephony/DataNetStatistics;->netstat:Landroid/os/INetStatService;

    invoke-interface {v5, p1}, Landroid/os/INetStatService;->getMobileRxPackets_bond(I)J
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_19

    move-result-wide v0

    .line 248
    :cond_e
    :goto_e
    if-eq p2, v6, :cond_16

    .line 250
    :try_start_10
    iget-object v5, p0, Lcom/android/internal/telephony/DataNetStatistics;->netstat:Landroid/os/INetStatService;

    invoke-interface {v5, p2}, Landroid/os/INetStatService;->getMobileRxPackets_bond(I)J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1e

    move-result-wide v2

    .line 255
    :cond_16
    :goto_16
    add-long v5, v0, v2

    return-wide v5

    .line 244
    :catch_19
    move-exception v5

    move-object v4, v5

    .line 245
    .local v4, e:Landroid/os/RemoteException;
    const-wide/16 v0, 0x0

    goto :goto_e

    .line 251
    .end local v4       #e:Landroid/os/RemoteException;,
    :catch_1e
    move-exception v5

    move-object v4, v5

    .line 252
    .restart local v4       #e:Landroid/os/RemoteException;,
    const-wide/16 v2, 0x0

    goto :goto_16
.end method

.method private getEachPdnTotalTxPkts(II)J
    .registers 10
    .parameter "apnInterfaceNumIpv4"
    .parameter "apnInterfaceNumIpv6"

    .prologue
    const/16 v6, 0xa

    .line 220
    const-wide/16 v0, 0x0

    .line 221
    .local v0, Ip4_TxPkts:J
    const-wide/16 v2, 0x0

    .line 222
    .local v2, Ip6_TxPkts:J
    if-eq p1, v6, :cond_e

    .line 224
    :try_start_8
    iget-object v5, p0, Lcom/android/internal/telephony/DataNetStatistics;->netstat:Landroid/os/INetStatService;

    invoke-interface {v5, p1}, Landroid/os/INetStatService;->getMobileTxPackets_bond(I)J
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_19

    move-result-wide v0

    .line 229
    :cond_e
    :goto_e
    if-eq p2, v6, :cond_16

    .line 231
    :try_start_10
    iget-object v5, p0, Lcom/android/internal/telephony/DataNetStatistics;->netstat:Landroid/os/INetStatService;

    invoke-interface {v5, p2}, Landroid/os/INetStatService;->getMobileTxPackets_bond(I)J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_1e

    move-result-wide v2

    .line 236
    :cond_16
    :goto_16
    add-long v5, v0, v2

    return-wide v5

    .line 225
    :catch_19
    move-exception v5

    move-object v4, v5

    .line 226
    .local v4, e:Landroid/os/RemoteException;
    const-wide/16 v0, 0x0

    goto :goto_e

    .line 232
    .end local v4       #e:Landroid/os/RemoteException;,
    :catch_1e
    move-exception v5

    move-object v4, v5

    .line 233
    .restart local v4       #e:Landroid/os/RemoteException;,
    const-wide/16 v2, 0x0

    goto :goto_16
.end method

.method private interfacenameToBondNumber(Ljava/lang/String;)I
    .registers 5
    .parameter "interfacename"

    .prologue
    .line 100
    const-string v0, "bond0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    const/4 v0, 0x0

    .line 118
    :goto_9
    return v0

    .line 102
    :cond_a
    const-string v0, "bond1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 103
    const/4 v0, 0x1

    goto :goto_9

    .line 104
    :cond_14
    const-string v0, "bond2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 105
    const/4 v0, 0x2

    goto :goto_9

    .line 106
    :cond_1e
    const-string v0, "bond3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 107
    const/4 v0, 0x3

    goto :goto_9

    .line 108
    :cond_28
    const-string v0, "bond4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 109
    const/4 v0, 0x4

    goto :goto_9

    .line 110
    :cond_32
    const-string v0, "bond5"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 111
    const/4 v0, 0x5

    goto :goto_9

    .line 112
    :cond_3c
    const-string v0, "bond6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 113
    const/4 v0, 0x6

    goto :goto_9

    .line 114
    :cond_46
    const-string v0, "bond7"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 115
    const/4 v0, 0x7

    goto :goto_9

    .line 117
    :cond_50
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong interfacename "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v0, 0xa

    goto :goto_9
.end method

.method private setInterfaceNumber(Ljava/lang/String;)Z
    .registers 9
    .parameter "apnType"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    const-string v6, "internet"

    const-string v5, "ims"

    const-string v2, "admin"

    .line 122
    const-string v0, "ims"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v1, "ims"

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v1, "ims"

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    if-nez v0, :cond_33

    move v0, v4

    .line 198
    :goto_32
    return v0

    .line 129
    :cond_33
    iput v3, p0, Lcom/android/internal/telephony/DataNetStatistics;->imsInterfaceNum_Ipv4:I

    .line 130
    iput v3, p0, Lcom/android/internal/telephony/DataNetStatistics;->imsInterfaceNum_Ipv6:I

    .line 131
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->interfacenameToBondNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->imsInterfaceNum_Ipv4:I

    .line 134
    :cond_43
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->interfacenameToBondNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->imsInterfaceNum_Ipv6:I

    .line 198
    :cond_4f
    :goto_4f
    const/4 v0, 0x1

    goto :goto_32

    .line 139
    :cond_51
    const-string v0, "admin"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v1, "admin"

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v1, "admin"

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    if-nez v0, :cond_7b

    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    if-nez v0, :cond_7b

    move v0, v4

    .line 144
    goto :goto_32

    .line 147
    :cond_7b
    iput v3, p0, Lcom/android/internal/telephony/DataNetStatistics;->adminInterfaceNum_Ipv4:I

    .line 148
    iput v3, p0, Lcom/android/internal/telephony/DataNetStatistics;->adminInterfaceNum_Ipv6:I

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->interfacenameToBondNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->adminInterfaceNum_Ipv4:I

    .line 152
    :cond_8b
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->interfacenameToBondNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->adminInterfaceNum_Ipv6:I

    goto :goto_4f

    .line 157
    :cond_98
    const-string v0, "internet"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v1, "internet"

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v1, "internet"

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    if-nez v0, :cond_c3

    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    if-nez v0, :cond_c3

    move v0, v4

    .line 162
    goto/16 :goto_32

    .line 165
    :cond_c3
    iput v3, p0, Lcom/android/internal/telephony/DataNetStatistics;->internetInterfaceNum_Ipv4:I

    .line 166
    iput v3, p0, Lcom/android/internal/telephony/DataNetStatistics;->internetInterfaceNum_Ipv6:I

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    if-eqz v0, :cond_d3

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->interfacenameToBondNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->internetInterfaceNum_Ipv4:I

    .line 170
    :cond_d3
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->interfacenameToBondNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->internetInterfaceNum_Ipv6:I

    goto/16 :goto_4f

    .line 175
    :cond_e1
    const-string v0, "mpcsapp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v1, "mpcsapp"

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v1, "mpcsapp"

    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getInterfaceName(Ljava/lang/String;Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    if-nez v0, :cond_10c

    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    if-nez v0, :cond_10c

    move v0, v4

    .line 180
    goto/16 :goto_32

    .line 183
    :cond_10c
    iput v3, p0, Lcom/android/internal/telephony/DataNetStatistics;->vzwappInterfaceNum_Ipv4:I

    .line 184
    iput v3, p0, Lcom/android/internal/telephony/DataNetStatistics;->vzwappInterfaceNum_Ipv6:I

    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    if-eqz v0, :cond_11c

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv4:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->interfacenameToBondNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->vzwappInterfaceNum_Ipv4:I

    .line 188
    :cond_11c
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->InterfaceName_Ipv6:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->interfacenameToBondNumber(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->vzwappInterfaceNum_Ipv6:I

    goto/16 :goto_4f

    .line 194
    :cond_12a
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong apnType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 195
    goto/16 :goto_32
.end method


# virtual methods
.method public declared-synchronized getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .registers 2

    .prologue
    .line 275
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEnablePoll()Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->enablePoll:Z

    return v0
.end method

.method public notifyScreenState(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataNetStatistics;->mIsScreenOn:Z

    .line 272
    return-void
.end method

.method public resetPollStats()V
    .registers 3

    .prologue
    const-wide/16 v0, -0x1

    .line 283
    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    .line 284
    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J

    .line 289
    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->IMS_txPkts:J

    .line 290
    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->IMS_rxPkts:J

    .line 291
    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->Admin_txPkts:J

    .line 292
    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->Admin_rxPkts:J

    .line 293
    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->Internet_txPkts:J

    .line 294
    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->Internet_rxPkts:J

    .line 295
    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->VZW_txPkts:J

    .line 296
    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->VZW_rxPkts:J

    .line 300
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    .line 301
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->netStatPollPeriod:J

    .line 302
    return-void
.end method

.method public run()V
    .registers 15

    .prologue
    .line 306
    const-wide/16 v4, -0x1

    .local v4, preTxPkts:J
    const-wide/16 v2, -0x1

    .line 310
    .local v2, preRxPkts:J
    iget-wide v4, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    .line 311
    iget-wide v2, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J

    .line 317
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->isSinglepdnInterface:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_88

    .line 319
    :try_start_d
    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->netstat:Landroid/os/INetStatService;

    invoke-interface {v10}, Landroid/os/INetStatService;->getTotalTxPackets()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    .line 320
    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->netstat:Landroid/os/INetStatService;

    invoke-interface {v10}, Landroid/os/INetStatService;->getTotalRxPackets()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1d} :catch_7d

    .line 355
    :goto_1d
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->enablePoll:Z

    if-eqz v10, :cond_59

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_2d

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_59

    .line 356
    :cond_2d
    iget-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    sub-long v8, v10, v4

    .line 357
    .local v8, sent:J
    iget-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J

    sub-long v6, v10, v2

    .line 359
    .local v6, received:J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_108

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_108

    .line 360
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    .line 361
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 379
    .local v1, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :goto_47
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    if-eq v10, v1, :cond_59

    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->mIsScreenOn:Z

    if-eqz v10, :cond_59

    .line 380
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataNetStatistics;->setActivity(Lcom/android/internal/telephony/DataConnectionTracker$Activity;)V

    .line 381
    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyDataActivity()V

    .line 385
    .end local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
    .end local v6       #received:J,
    .end local v8       #sent:J,
    :cond_59
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->mIsScreenOn:Z

    if-eqz v10, :cond_167

    .line 386
    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pdp_watchdog_poll_interval_ms"

    const/16 v12, 0x3e8

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->netStatPollPeriod:J

    .line 394
    :goto_71
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->enablePoll:Z

    if-eqz v10, :cond_7c

    .line 395
    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-wide v11, p0, Lcom/android/internal/telephony/DataNetStatistics;->netStatPollPeriod:J

    invoke-virtual {v10, p0, v11, v12}, Lcom/android/internal/telephony/DataConnectionTracker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    :cond_7c
    return-void

    .line 321
    :catch_7d
    move-exception v10

    move-object v0, v10

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    .line 323
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J

    goto :goto_1d

    .line 327
    .end local v0       #e:Landroid/os/RemoteException;,
    :cond_88
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->isImsInterface:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a1

    .line 328
    iget v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->imsInterfaceNum_Ipv4:I

    iget v11, p0, Lcom/android/internal/telephony/DataNetStatistics;->imsInterfaceNum_Ipv6:I

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->getEachPdnTotalTxPkts(II)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->IMS_txPkts:J

    .line 329
    iget v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->imsInterfaceNum_Ipv4:I

    iget v11, p0, Lcom/android/internal/telephony/DataNetStatistics;->imsInterfaceNum_Ipv6:I

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->getEachPdnTotalRxPkts(II)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->IMS_rxPkts:J

    .line 332
    :cond_a1
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->isAdminInterface:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_ba

    .line 333
    iget v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->adminInterfaceNum_Ipv4:I

    iget v11, p0, Lcom/android/internal/telephony/DataNetStatistics;->adminInterfaceNum_Ipv6:I

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->getEachPdnTotalTxPkts(II)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->Admin_txPkts:J

    .line 334
    iget v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->adminInterfaceNum_Ipv4:I

    iget v11, p0, Lcom/android/internal/telephony/DataNetStatistics;->adminInterfaceNum_Ipv6:I

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->getEachPdnTotalRxPkts(II)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->Admin_rxPkts:J

    .line 336
    :cond_ba
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->isInternetInterface:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d3

    .line 337
    iget v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->internetInterfaceNum_Ipv4:I

    iget v11, p0, Lcom/android/internal/telephony/DataNetStatistics;->internetInterfaceNum_Ipv6:I

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->getEachPdnTotalTxPkts(II)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->Internet_txPkts:J

    .line 338
    iget v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->internetInterfaceNum_Ipv4:I

    iget v11, p0, Lcom/android/internal/telephony/DataNetStatistics;->internetInterfaceNum_Ipv6:I

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->getEachPdnTotalRxPkts(II)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->Internet_rxPkts:J

    .line 341
    :cond_d3
    iget-boolean v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->isVzwappInterface:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_ec

    .line 342
    iget v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->vzwappInterfaceNum_Ipv4:I

    iget v11, p0, Lcom/android/internal/telephony/DataNetStatistics;->vzwappInterfaceNum_Ipv6:I

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->getEachPdnTotalTxPkts(II)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->VZW_txPkts:J

    .line 343
    iget v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->vzwappInterfaceNum_Ipv4:I

    iget v11, p0, Lcom/android/internal/telephony/DataNetStatistics;->vzwappInterfaceNum_Ipv6:I

    invoke-direct {p0, v10, v11}, Lcom/android/internal/telephony/DataNetStatistics;->getEachPdnTotalRxPkts(II)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->VZW_rxPkts:J

    .line 346
    :cond_ec
    iget-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->IMS_txPkts:J

    iget-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->Admin_txPkts:J

    add-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->Internet_txPkts:J

    add-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->VZW_txPkts:J

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->txPkts:J

    .line 347
    iget-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->IMS_rxPkts:J

    iget-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->Admin_rxPkts:J

    add-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->Internet_rxPkts:J

    add-long/2addr v10, v12

    iget-wide v12, p0, Lcom/android/internal/telephony/DataNetStatistics;->VZW_rxPkts:J

    add-long/2addr v10, v12

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->rxPkts:J

    goto/16 :goto_1d

    .line 362
    .restart local v6       #received:J,
    .restart local v8       #sent:J,
    :cond_108
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_11d

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_11d

    .line 364
    iget-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    .line 368
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
    goto/16 :goto_47

    .line 369
    .end local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
    :cond_11d
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_131

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_131

    .line 370
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    .line 371
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
    goto/16 :goto_47

    .line 372
    .end local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
    :cond_131
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_150

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-nez v10, :cond_150

    .line 373
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v10, v11, :cond_14c

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    move-object v1, v10

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
    :goto_14a
    goto/16 :goto_47

    .end local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
    :cond_14c
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v1, v10

    goto :goto_14a

    .line 375
    :cond_150
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->sentSinceLastRecv:J

    .line 376
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DORMANT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    if-ne v10, v11, :cond_163

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataNetStatistics;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v10

    move-object v1, v10

    .restart local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
    :goto_161
    goto/16 :goto_47

    .end local v1       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
    :cond_163
    sget-object v10, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v1, v10

    goto :goto_161

    .line 389
    .end local v6       #received:J,
    .end local v8       #sent:J,
    :cond_167
    iget-object v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->dc:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/DataConnectionTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "pdp_watchdog_long_poll_interval_ms"

    const v12, 0x927c0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/android/internal/telephony/DataNetStatistics;->netStatPollPeriod:J

    goto/16 :goto_71
.end method

.method public declared-synchronized setActivity(Lcom/android/internal/telephony/DataConnectionTracker$Activity;)V
    .registers 3
    .parameter "mActivity"

    .prologue
    .line 279
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/internal/telephony/DataNetStatistics;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 280
    monitor-exit p0

    return-void

    .line 279
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnablePoll(Z)V
    .registers 2
    .parameter "enablePoll"

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataNetStatistics;->enablePoll:Z

    .line 268
    return-void
.end method

.method public updatePdnInfoForSingiepdn(Z)V
    .registers 2
    .parameter "isSinglePdn"

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataNetStatistics;->isSinglepdnInterface:Z

    .line 205
    return-void
.end method

.method public updatePdnInterfaceInfo()V
    .registers 2

    .prologue
    .line 209
    const-string v0, "ims"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->setInterfaceNumber(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->isImsInterface:Z

    .line 210
    const-string v0, "admin"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->setInterfaceNumber(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->isAdminInterface:Z

    .line 211
    const-string v0, "internet"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->setInterfaceNumber(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->isInternetInterface:Z

    .line 212
    const-string v0, "mpcsapp"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataNetStatistics;->setInterfaceNumber(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataNetStatistics;->isVzwappInterface:Z

    .line 217
    return-void
.end method
