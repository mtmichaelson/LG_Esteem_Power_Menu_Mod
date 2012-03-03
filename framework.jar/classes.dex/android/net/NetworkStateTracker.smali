.class public abstract Landroid/net/NetworkStateTracker;
.super Landroid/os/Handler;
.source "NetworkStateTracker.java"



# static fields
.field private static DBG:Z = false

.field public static final EVENT_CONFIGURATION_CHANGED:I = 0x4

.field public static final EVENT_NETWORK_SUBTYPE_CHANGED:I = 0x6

.field public static final EVENT_NOTIFICATION_CHANGED:I = 0x3

.field public static final EVENT_ROAMING_CHANGED:I = 0x5

.field public static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x2

.field public static final EVENT_STATE_CHANGED:I = 0x1

.field private static final MAX_NETWORK_STATE_TRACKER_EVENT:I = 0x64

.field private static final MIN_NETWORK_STATE_TRACKER_EVENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStateTracker"



# instance fields
.field protected mContext:Landroid/content/Context;

.field mDefaultRouteSet:[Z

.field protected mNetType:Ljava/lang/String;

.field protected mNetworkInfo:Landroid/net/NetworkInfo;

.field mPrivateDnsRouteSet:[Z

.field protected mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "target"
    .parameter "networkType"
    .parameter "subType"
    .parameter "typeName"
    .parameter "subtypeName"

    .prologue
    const/4 v1, 0x2

    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 159
    new-array v0, v1, [Z

    fill-array-data v0, :array_22

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    .line 222
    new-array v0, v1, [Z

    fill-array-data v0, :array_28

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    .line 89
    iput-object p1, p0, Landroid/net/NetworkStateTracker;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    .line 93
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 94
    return-void

    .line 159
    nop

    :array_22
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 222
    nop

    :array_28
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method protected static getNameServerList([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter "propertyNames"

    .prologue
    .line 140
    array-length v5, p0

    new-array v0, v5, [Ljava/lang/String;

    .line 143
    .local v0, dnsAddresses:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_5
    array-length v5, p0

    if-ge v1, v5, :cond_24

    .line 144
    aget-object v5, p0, v1

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, value:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    const-string v5, "0.0.0.0"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 148
    add-int/lit8 v3, v2, 0x1

    .end local v2       #j:I,
    .local v3, j:I
    aput-object v4, v0, v2

    move v2, v3

    .line 143
    .end local v3       #j:I,
    .restart local v2       #j:I,
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 151
    .end local v4       #value:Ljava/lang/String;,
    :cond_24
    return-object v0
.end method

.method private setBufferSize(Ljava/lang/String;)V
    .registers 9
    .parameter "bufferSizes"

    .prologue
    const-string v6, "NetworkStateTracker"

    .line 340
    :try_start_2
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, values:[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3f

    .line 343
    const-string v1, "/sys/kernel/ipv4/tcp_"

    .line 344
    .local v1, prefix:Ljava/lang/String;
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_min"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_def"

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v3, "/sys/kernel/ipv4/tcp_rmem_max"

    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_min"

    const/4 v4, 0x3

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_def"

    const/4 v4, 0x4

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v3, "/sys/kernel/ipv4/tcp_wmem_max"

    const/4 v4, 0x5

    aget-object v4, v2, v4

    invoke-direct {p0, v3, v4}, Landroid/net/NetworkStateTracker;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v1       #prefix:Ljava/lang/String;,
    .end local v2       #values:[Ljava/lang/String;,
    :goto_3e
    return-void

    .line 351
    .restart local v2       #values:[Ljava/lang/String;,
    :cond_3f
    const-string v3, "NetworkStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid buffersize string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_57} :catch_58

    goto :goto_3e

    .line 353
    .end local v2       #values:[Ljava/lang/String;,
    :catch_58
    move-exception v3

    move-object v0, v3

    .line 354
    .local v0, e:Ljava/io/IOException;
    const-string v3, "NetworkStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set tcp buffer sizes:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method private stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "filename"
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, out:Ljava/io/FileWriter;
    :try_start_5
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 370
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 372
    return-void

    .line 370
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method


# virtual methods
.method public addDefaultRoute()V
    .registers 2

    .prologue
    .line 237
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 238
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 239
    return-void
.end method

.method public addDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 12
    .parameter "ipv"

    .prologue
    const-string v9, "NetworkStateTracker"

    .line 243
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, interfaceName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getGateway(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;

    move-result-object v1

    .line 245
    .local v1, gateway:Ljava/net/InetAddress;
    sget-object v7, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v7, :cond_62

    const/4 v7, 0x0

    move v3, v7

    .line 246
    .local v3, index:I
    :goto_10
    if-nez v1, :cond_65

    const-string v7, "0"

    move-object v2, v7

    .line 248
    .local v2, gwString:Ljava/lang/String;
    :goto_15
    if-eqz v4, :cond_61

    .line 249
    const-string v7, "NetworkStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDefaultRoute ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), GatewayAddr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v6, 0x0

    .line 253
    .local v6, result:Z
    :try_start_54
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v5

    .line 254
    .local v5, nms:Landroid/os/INetworkManagementService;
    if-nez v5, :cond_6b

    .line 255
    const-string v7, "NetworkStateTracker"

    const-string v8, "could not acquire NetworkManagementService."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_61} :catch_80

    .line 272
    .end local v5       #nms:Landroid/os/INetworkManagementService;,
    .end local v6       #result:Z,
    :cond_61
    :goto_61
    return-void

    .line 245
    .end local v2       #gwString:Ljava/lang/String;,
    .end local v3       #index:I,
    :cond_62
    const/4 v7, 0x1

    move v3, v7

    goto :goto_10

    .line 246
    .restart local v3       #index:I,
    :cond_65
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    goto :goto_15

    .line 258
    .restart local v2       #gwString:Ljava/lang/String;,
    .restart local v5       #nms:Landroid/os/INetworkManagementService;,
    .restart local v6       #result:Z,
    :cond_6b
    if-nez v3, :cond_7b

    .line 259
    :try_start_6d
    invoke-interface {v5, v4, v2}, Landroid/os/INetworkManagementService;->replaceV4DefaultRoute(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_70} :catch_80

    move-result v6

    .line 268
    .end local v5       #nms:Landroid/os/INetworkManagementService;,
    :goto_71
    if-nez v6, :cond_61

    .line 269
    const-string v7, "NetworkStateTracker"

    const-string v7, "  Unable to add default route."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 261
    .restart local v5       #nms:Landroid/os/INetworkManagementService;,
    :cond_7b
    :try_start_7b
    invoke-interface {v5, v4, v2}, Landroid/os/INetworkManagementService;->replaceV6DefaultRoute(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_7e} :catch_80

    move-result v6

    goto :goto_71

    .line 264
    .end local v5       #nms:Landroid/os/INetworkManagementService;,
    :catch_80
    move-exception v7

    move-object v0, v7

    .line 265
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "NetworkStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  NetworkManagementService was unable to add default route. Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method public addPrivateDnsRoutes()V
    .registers 2

    .prologue
    .line 162
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 163
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->addPrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 164
    return-void
.end method

.method public addPrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 14
    .parameter "ipv"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, interfaceName:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v9, :cond_30

    const/4 v9, 0x0

    move v4, v9

    .line 170
    .local v4, index:I
    :goto_a
    if-eqz v6, :cond_2f

    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    aget-boolean v9, v9, v4

    if-nez v9, :cond_2f

    .line 171
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNameServers()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_18
    if-ge v3, v7, :cond_e5

    aget-object v0, v1, v3

    .line 172
    .local v0, addrString:Ljava/lang/String;
    if-eqz v0, :cond_65

    .line 174
    :try_start_1e
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 175
    .local v5, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v8

    .line 176
    .local v8, nms:Landroid/os/INetworkManagementService;
    if-nez v8, :cond_33

    .line 177
    const-string v9, "NetworkStateTracker"

    const-string v10, "could not acquire NetworkManagementService."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0       #addrString:Ljava/lang/String;,
    .end local v1       #arr$:[Ljava/lang/String;,
    .end local v3       #i$:I,
    .end local v5       #inetAddress:Ljava/net/InetAddress;,
    .end local v7       #len$:I,
    .end local v8       #nms:Landroid/os/INetworkManagementService;,
    :cond_2f
    :goto_2f
    return-void

    .line 168
    .end local v4       #index:I,
    :cond_30
    const/4 v9, 0x1

    move v4, v9

    goto :goto_a

    .line 180
    .restart local v0       #addrString:Ljava/lang/String;,
    .restart local v1       #arr$:[Ljava/lang/String;,
    .restart local v3       #i$:I,
    .restart local v4       #index:I,
    .restart local v5       #inetAddress:Ljava/net/InetAddress;,
    .restart local v7       #len$:I,
    .restart local v8       #nms:Landroid/os/INetworkManagementService;,
    :cond_33
    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v9, :cond_68

    instance-of v9, v5, Ljava/net/Inet4Address;

    if-eqz v9, :cond_68

    .line 181
    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding ipv4 dns "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " through "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v6, v9, v10}, Landroid/os/INetworkManagementService;->addDstRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    .end local v5       #inetAddress:Ljava/net/InetAddress;,
    .end local v8       #nms:Landroid/os/INetworkManagementService;,
    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 184
    .restart local v5       #inetAddress:Ljava/net/InetAddress;,
    .restart local v8       #nms:Landroid/os/INetworkManagementService;,
    :cond_68
    sget-object v9, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v9, :cond_65

    instance-of v9, v5, Ljava/net/Inet6Address;

    if-eqz v9, :cond_65

    .line 185
    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding ipv6 dns "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " through "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v6, v9, v10}, Landroid/os/INetworkManagementService;->addDstRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_9a
    .catch Ljava/net/UnknownHostException; {:try_start_1e .. :try_end_9a} :catch_9b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_9a} :catch_c0

    goto :goto_65

    .line 190
    .end local v5       #inetAddress:Ljava/net/InetAddress;,
    .end local v8       #nms:Landroid/os/INetworkManagementService;,
    :catch_9b
    move-exception v9

    move-object v2, v9

    .line 191
    .local v2, e:Ljava/net/UnknownHostException;
    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " DNS address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 192
    .end local v2       #e:Ljava/net/UnknownHostException;,
    :catch_c0
    move-exception v9

    move-object v2, v9

    .line 193
    .local v2, e:Landroid/os/RemoteException;
    const-string v9, "NetworkStateTracker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " DNS address "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 197
    .end local v0       #addrString:Ljava/lang/String;,
    .end local v2       #e:Landroid/os/RemoteException;,
    :cond_e5
    iget-object v9, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    const/4 v10, 0x1

    aput-boolean v10, v9, v4

    goto/16 :goto_2f
.end method

.method public abstract getGateway(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;
.end method

.method public abstract getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;
.end method

.method public abstract getIpAdress(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/net/InetAddress;
.end method

.method public getIpv4DefaultRouteSet()Z
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public getIpv6DefaultRouteSet()Z
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public abstract getNameServers()[Ljava/lang/String;
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method protected getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    .prologue
    .line 155
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 156
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    return-object v1
.end method

.method public abstract getTcpBufferSizesPropName()Ljava/lang/String;
.end method

.method public interpretScanResultsAvailable()V
    .registers 1

    .prologue
    .line 585
    return-void
.end method

.method public abstract isAvailable()Z
.end method

.method public isTeardownRequested()Z
    .registers 2

    .prologue
    .line 472
    iget-boolean v0, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public abstract reconnect()Z
.end method

.method public releaseWakeLock()V
    .registers 1

    .prologue
    .line 329
    return-void
.end method

.method public removeDefaultRoute()V
    .registers 2

    .prologue
    .line 277
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->removeDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 278
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->removeDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 279
    return-void
.end method

.method public removeDefaultRoute(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 8
    .parameter "ipv"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 283
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, interfaceName:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v2, :cond_4e

    move v0, v5

    .line 286
    .local v0, index:I
    :goto_b
    if-eqz v1, :cond_49

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v3, :cond_49

    .line 287
    sget-boolean v2, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v2, :cond_46

    .line 288
    const-string v2, "NetworkStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeDefaultRoute for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_46
    invoke-static {v1}, Landroid/net/NetworkUtils;->removeDefaultRoute(Ljava/lang/String;)I

    .line 293
    :cond_49
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mDefaultRouteSet:[Z

    aput-boolean v5, v2, v0

    .line 294
    return-void

    .end local v0       #index:I,
    :cond_4e
    move v0, v3

    .line 284
    goto :goto_b
.end method

.method public removePrivateDnsRoutes()V
    .registers 2

    .prologue
    .line 202
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 203
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p0, v0}, Landroid/net/NetworkStateTracker;->removePrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 204
    return-void
.end method

.method public removePrivateDnsRoutes(Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 8
    .parameter "ipv"

    .prologue
    const/4 v5, 0x0

    .line 210
    invoke-virtual {p0, p1}, Landroid/net/NetworkStateTracker;->getInterfaceName(Lcom/android/internal/telephony/Phone$IPVersion;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, interfaceName:Ljava/lang/String;
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v2, :cond_53

    move v0, v5

    .line 213
    .local v0, index:I
    :goto_a
    if-eqz v1, :cond_4e

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_4e

    .line 214
    const-string v2, "NetworkStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dns routes for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {v1}, Landroid/net/NetworkUtils;->removeHostRoutes(Ljava/lang/String;)I

    .line 218
    :cond_4e
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mPrivateDnsRouteSet:[Z

    aput-boolean v5, v2, v0

    .line 219
    return-void

    .line 211
    .end local v0       #index:I,
    :cond_53
    const/4 v2, 0x1

    move v0, v2

    goto :goto_a
.end method

.method public requestRouteToHost(Ljava/net/InetAddress;)Z
    .registers 3
    .parameter "hostAddress"

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public abstract resetTornDownbyConnMgr()V
.end method

.method protected sendScanResultsAvailable()V
    .registers 5

    .prologue
    .line 480
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 481
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 482
    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 381
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_f

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    .line 387
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_e
    return-void

    :cond_f
    move-object v0, p0

    move-object v1, p1

    move v2, v5

    move v3, v5

    move-object v5, v4

    .line 389
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "state"
    .parameter "isIpv4Connected"
    .parameter "isIpv6Connected"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 432
    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_38

    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] setDetailed state, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_38
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_6e

    const/4 v0, 0x1

    move v9, v0

    .line 436
    .local v9, wasConnecting:Z
    :goto_44
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    .line 442
    .local v7, lastReason:Ljava/lang/String;
    if-eqz v9, :cond_55

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_55

    if-nez p4, :cond_55

    if-eqz v7, :cond_55

    .line 444
    move-object p4, v7

    .line 447
    :cond_55
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 450
    .local v8, msg:Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 451
    return-void

    .line 435
    .end local v7       #lastReason:Ljava/lang/String;,
    .end local v8       #msg:Landroid/os/Message;,
    .end local v9       #wasConnecting:Z,
    :cond_6e
    const/4 v0, 0x0

    move v9, v0

    goto :goto_44
.end method

.method public setDetailedStateInSide(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "state"
    .parameter "isIpv4Connected"
    .parameter "isIpv6Connected"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 399
    sget-boolean v0, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v0, :cond_38

    const-string v0, "NetworkStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] setDetailed state Insidely!!!, old ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and new state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_38
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_62

    const/4 v0, 0x1

    move v8, v0

    .line 403
    .local v8, wasConnecting:Z
    :goto_44
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, lastReason:Ljava/lang/String;
    if-eqz v8, :cond_55

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_55

    if-nez p4, :cond_55

    if-eqz v7, :cond_55

    .line 411
    move-object p4, v7

    .line 414
    :cond_55
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/NetworkStateTracker;->mNetType:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void

    .line 402
    .end local v7       #lastReason:Ljava/lang/String;,
    .end local v8       #wasConnecting:Z,
    :cond_62
    const/4 v0, 0x0

    move v8, v0

    goto :goto_44
.end method

.method protected setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V
    .registers 8
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 455
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_10

    .line 461
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object v1, p1

    move v3, v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_f
    return-void

    .line 463
    :cond_10
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object v1, p1

    move v2, v5

    move v3, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public abstract setRadio(Z)Z
.end method

.method protected setRoamingStatus(Z)V
    .registers 6
    .parameter "isRoaming"

    .prologue
    .line 491
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eq p1, v1, :cond_19

    .line 492
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, p1}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 493
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 494
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 496
    .end local v0       #msg:Landroid/os/Message;,
    :cond_19
    return-void
.end method

.method protected setSubtype(ILjava/lang/String;)V
    .registers 9
    .parameter "subtype"
    .parameter "subtypeName"

    .prologue
    .line 499
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 500
    .local v1, oldSubtype:I
    if-eq p1, v1, :cond_22

    .line 501
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, p1, p2}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 502
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 503
    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 505
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 508
    .end local v0       #msg:Landroid/os/Message;,
    :cond_22
    return-void
.end method

.method public setTeardownRequested(Z)V
    .registers 2
    .parameter "isRequested"

    .prologue
    .line 468
    iput-boolean p1, p0, Landroid/net/NetworkStateTracker;->mTeardownRequested:Z

    .line 469
    return-void
.end method

.method public abstract startMonitoring()V
.end method

.method public abstract startUsingNetworkFeature(Ljava/lang/String;II)I
.end method

.method public abstract stopUsingNetworkFeature(Ljava/lang/String;II)I
.end method

.method public abstract teardown()Z
.end method

.method public updateNetworkSettings()V
    .registers 6

    .prologue
    const-string v4, "NetworkStateTracker"

    .line 303
    invoke-virtual {p0}, Landroid/net/NetworkStateTracker;->getTcpBufferSizesPropName()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, bufferSizes:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2f

    .line 307
    const-string v2, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in system properties. Using defaults"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string/jumbo v1, "net.tcp.buffersize.default"

    .line 311
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_64

    .line 316
    sget-boolean v2, Landroid/net/NetworkStateTracker;->DBG:Z

    if-eqz v2, :cond_61

    .line 317
    const-string v2, "NetworkStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting TCP values: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] which comes from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_61
    invoke-direct {p0, v0}, Landroid/net/NetworkStateTracker;->setBufferSize(Ljava/lang/String;)V

    .line 322
    :cond_64
    return-void
.end method
