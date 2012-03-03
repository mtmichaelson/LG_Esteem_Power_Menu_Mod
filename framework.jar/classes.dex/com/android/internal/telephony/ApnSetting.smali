.class public Lcom/android/internal/telephony/ApnSetting;
.super Lcom/android/internal/telephony/DataProfile;
.source "ApnSetting.java"



# static fields
.field public static final IP_V4_ALLOC_DHCP:I = 0x1

.field public static final IP_V4_ALLOC_NAS:I = 0x0

.field public static final PDN_TYPE_IPV4:I = 0x0

.field public static final PDN_TYPE_IPV4_IPV6:I = 0x2

.field public static final PDN_TYPE_IPV6:I = 0x1



# instance fields
.field apn:Ljava/lang/String;

.field apnEnabled:Z

.field authType:I

.field bearer:I

.field carrier:Ljava/lang/String;

.field id:I

.field inactivityTime:I

.field ip_v4_alloc:I

.field mmsPort:Ljava/lang/String;

.field mmsProxy:Ljava/lang/String;

.field mmsc:Ljava/lang/String;

.field numeric:Ljava/lang/String;

.field password:Ljava/lang/String;

.field pdn_type:I

.field port:Ljava/lang/String;

.field proxy:Ljava/lang/String;

.field serviceTypes:[Lcom/android/internal/telephony/DataServiceType;

.field supportsIPv4:Z

.field supportsIPv6:Z

.field types:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field user:Ljava/lang/String;



# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->apnEnabled:Z

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    .line 76
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 15
    .parameter "id"
    .parameter "numeric"
    .parameter "carrier"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->apnEnabled:Z

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    .line 111
    iput-object p4, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 112
    iput p1, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    .line 113
    iput-object p2, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    .line 117
    iput-object p6, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 118
    iput-object p7, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    .line 119
    iput-object p8, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 120
    iput-object p9, p0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 121
    iput-object p10, p0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    .line 122
    iput-object p11, p0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    .line 123
    iput p12, p0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    .line 124
    iput-object p13, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 125
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;II)V
    .registers 19
    .parameter "id"
    .parameter "numeric"
    .parameter "carrier"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "pdn_type"
    .parameter "ip_v4_alloc"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 54
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    .line 55
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    .line 64
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/ApnSetting;->apnEnabled:Z

    .line 70
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    .line 89
    iput-object p4, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 90
    iput p1, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    .line 91
    iput-object p2, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    .line 92
    iput-object p3, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 94
    iput-object p5, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    .line 95
    iput-object p6, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 96
    iput-object p7, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    .line 97
    iput-object p8, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 98
    iput-object p9, p0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 99
    iput-object p10, p0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    .line 100
    iput-object p11, p0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    .line 101
    iput p12, p0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    .line 102
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 104
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ApnSetting;->pdn_type:I

    .line 105
    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ApnSetting;->ip_v4_alloc:I

    .line 106
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)V
    .registers 24
    .parameter "id"
    .parameter "numeric"
    .parameter "carrier"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "ipVersion"
    .parameter "inactivityTime"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 54
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    .line 55
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    .line 64
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->apnEnabled:Z

    .line 70
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    .line 136
    iput p1, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    .line 137
    iput-object p2, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    .line 138
    iput-object p3, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    .line 139
    iput-object p4, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 140
    iput-object p5, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    .line 141
    iput-object p6, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 142
    iput-object p7, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    .line 143
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p9

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    .line 145
    move-object/from16 v0, p10

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p11

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    .line 147
    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ApnSetting;->authType:I

    .line 148
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .line 150
    if-nez p14, :cond_46

    .line 151
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    .line 165
    :cond_40
    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ApnSetting;->inactivityTime:I

    .line 166
    return-void

    .line 153
    :cond_46
    const-string v7, ","

    move-object/from16 v0, p14

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, verList:[Ljava/lang/String;
    move-object v2, v5

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_52
    if-ge v3, v4, :cond_40

    aget-object v6, v2, v3

    .line 155
    .local v6, version:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 156
    const-string v7, "6"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 157
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    .line 159
    :cond_65
    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 160
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    .line 154
    :cond_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_52
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;II)V
    .registers 19
    .parameter "id"
    .parameter "numeric"
    .parameter "carrier"
    .parameter "apn"
    .parameter "proxy"
    .parameter "port"
    .parameter "mmsc"
    .parameter "mmsProxy"
    .parameter "mmsPort"
    .parameter "user"
    .parameter "password"
    .parameter "authType"
    .parameter "types"
    .parameter "ipVersion"
    .parameter "inactivityTime"
    .parameter "bearer"

    .prologue
    .line 177
    invoke-direct/range {p0 .. p15}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    move/from16 v0, p16

    move-object v1, p0

    iput v0, v1, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    .line 181
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .parameter "apn"
    .parameter "pdn_type"
    .parameter "ip_v4_alloc"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfile;-><init>()V

    .line 54
    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->apnEnabled:Z

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 81
    iput p2, p0, Lcom/android/internal/telephony/ApnSetting;->pdn_type:I

    .line 82
    iput p3, p0, Lcom/android/internal/telephony/ApnSetting;->ip_v4_alloc:I

    .line 83
    return-void
.end method


# virtual methods
.method canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 7
    .parameter "type"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->serviceTypes:[Lcom/android/internal/telephony/DataServiceType;

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_f

    aget-object v3, v0, v1

    .line 243
    .local v3, t:Lcom/android/internal/telephony/DataServiceType;
    if-ne v3, p1, :cond_c

    .line 244
    const/4 v4, 0x1

    .line 246
    .end local v3       #t:Lcom/android/internal/telephony/DataServiceType;,
    :goto_b
    return v4

    .line 242
    .restart local v3       #t:Lcom/android/internal/telephony/DataServiceType;,
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 246
    .end local v3       #t:Lcom/android/internal/telephony/DataServiceType;,
    :cond_f
    const/4 v4, 0x0

    goto :goto_b
.end method

.method canHandleType(Ljava/lang/String;)Z
    .registers 7
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_1b

    aget-object v3, v0, v1

    .line 234
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 235
    :cond_16
    const/4 v4, 0x1

    .line 238
    .end local v3       #t:Ljava/lang/String;,
    :goto_17
    return v4

    .line 233
    .restart local v3       #t:Ljava/lang/String;,
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 238
    .end local v3       #t:Ljava/lang/String;,
    :cond_1b
    const/4 v4, 0x0

    goto :goto_17
.end method

.method canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .registers 3
    .parameter "ipv"

    .prologue
    .line 255
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_7

    .line 256
    iget-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    .line 264
    :goto_6
    return v0

    .line 257
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p1, v0, :cond_e

    .line 258
    iget-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    goto :goto_6

    .line 264
    :cond_e
    const/4 v0, 0x1

    goto :goto_6
.end method

.method getApnEnabled()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/internal/telephony/ApnSetting;->apnEnabled:Z

    return v0
.end method

.method getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;
    .registers 2

    .prologue
    .line 250
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    return-object v0
.end method

.method getInactivityTimer()I
    .registers 2

    .prologue
    .line 273
    iget v0, p0, Lcom/android/internal/telephony/ApnSetting;->inactivityTime:I

    return v0
.end method

.method toHash()Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    const-string v8, "]"

    const-string v7, ", "

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->mmsc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->mmsPort:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/ApnSetting;->authType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv4:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/ApnSetting;->supportsIPv6:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/ApnSetting;->types:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a4
    if-ge v1, v2, :cond_b4

    aget-object v4, v0, v1

    .line 210
    .local v4, t:Ljava/lang/String;
    const-string v5, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_a4

    .line 212
    .end local v4       #t:Ljava/lang/String;,
    :cond_b4
    const-string v5, "]"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v5, "]"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v5, p0, Lcom/android/internal/telephony/ApnSetting;->pdn_type:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/ApnSetting;->ip_v4_alloc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
