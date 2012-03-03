.class public Lcom/broadcom/bt/service/framework/PowerManagementService;
.super Lcom/broadcom/bt/service/framework/IPowerManager$Stub;
.source "PowerManagementService.java"



# static fields
.field private static final BT_CTRL:I = 0x0

.field private static final BT_MASK:I = 0x1

.field private static final DBG:Z = true

.field private static final FM_CTRL:I = 0x1

.field private static final FM_MASK:I = 0x2

.field private static final GPS_CTRL:I = 0x2

.field private static final GPS_MASK:I = 0x4

.field private static final MESSAGE_BT_BOOTUP:I = 0x5

.field public static final SERVICE_NAME:Ljava/lang/String; = "bt_fm_radio"

.field private static final TAG:Ljava/lang/String; = "PowerManagmentService"



# instance fields
.field private final mContext:Landroid/content/Context;



# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 56
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManagementService;->classInitNative()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/PowerManagementService;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->initializeNativeDataNative()V

    .line 62
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native disableBtNative()I
.end method

.method private native disableFmNative()I
.end method

.method private native enableBtNative()I
.end method

.method private native enableFmNative()I
.end method

.method private native getCurrentStateNative()I
.end method

.method private native initializeNativeDataNative()V
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 124
    const-string v0, "PowerManagmentService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method


# virtual methods
.method public disableBt()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 93
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->disableBtNative()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_c

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    move v1, v3

    .line 97
    :goto_9
    return v1

    .line 93
    :cond_a
    const/4 v1, 0x1

    goto :goto_9

    .line 94
    :catch_c
    move-exception v0

    .line 95
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PowerManagmentService"

    const-string v2, "Unable to disable BT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 97
    goto :goto_9
.end method

.method public disableFm()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 75
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->disableFmNative()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_c

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    move v1, v3

    .line 79
    :goto_9
    return v1

    .line 75
    :cond_a
    const/4 v1, 0x1

    goto :goto_9

    .line 76
    :catch_c
    move-exception v0

    .line 77
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PowerManagmentService"

    const-string v2, "Unable to disable FM"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 79
    goto :goto_9
.end method

.method public enableBt()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 84
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->enableBtNative()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_c

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    move v1, v3

    .line 88
    :goto_9
    return v1

    .line 84
    :cond_a
    const/4 v1, 0x1

    goto :goto_9

    .line 85
    :catch_c
    move-exception v0

    .line 86
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PowerManagmentService"

    const-string v2, "Unable to enbale BT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 88
    goto :goto_9
.end method

.method public enableFm()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 66
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->enableFmNative()I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_c

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    move v1, v3

    .line 69
    :goto_9
    return v1

    .line 66
    :cond_a
    const/4 v1, 0x1

    goto :goto_9

    .line 67
    :catch_c
    move-exception v0

    .line 68
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "PowerManagmentService"

    const-string v2, "Unable to enable FM"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 69
    goto :goto_9
.end method

.method public isBtEnabled()Z
    .registers 5

    .prologue
    .line 113
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->getCurrentStateNative()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_a

    move-result v0

    .line 114
    .local v0, mCurrentState:I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_12

    .line 115
    const/4 v2, 0x1

    .line 119
    .end local v0       #mCurrentState:I,
    :goto_9
    return v2

    .line 116
    :catch_a
    move-exception v1

    .line 117
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "Unable to get current BT state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .end local v1       #t:Ljava/lang/Throwable;,
    :cond_12
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public isfmEnabled()Z
    .registers 5

    .prologue
    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->getCurrentStateNative()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_a

    move-result v0

    .line 103
    .local v0, mCurrentState:I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_13

    .line 104
    const/4 v2, 0x1

    .line 108
    .end local v0       #mCurrentState:I,
    :goto_9
    return v2

    .line 105
    :catch_a
    move-exception v1

    .line 106
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string/jumbo v3, "unable to get current FM state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v1       #t:Ljava/lang/Throwable;,
    :cond_13
    const/4 v2, 0x0

    goto :goto_9
.end method
