.class public Lcom/lge/config/Andy_CappuccinoConfig;
.super Ljava/lang/Object;
.source "Andy_CappuccinoConfig.java"



# static fields
.field public static final ERS:Z

.field public static final FLEX:Z

.field public static final LGDRM:Z

.field public static final LGPOWEROFF:Z

.field public static final LGRESOURCE:Z

.field public static final LGSETUPWIZARD:Z

.field public static final LOCKSCREEN_ANDY:Z

.field public static final LOCKSCREEN_IMAGE:Z

.field public static final LOCKSCREEN_SUI:Z

.field public static final NTP:Z

.field public static final PRELOAD_UNINSTALL:Z

.field public static final SO_INSTALL:Z

.field public static final SUI:Z



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "user.feature.ers"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->ERS:Z

    .line 31
    const-string/jumbo v0, "user.feature.flex"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->FLEX:Z

    .line 32
    const-string/jumbo v0, "user.feature.lgdrm"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->LGDRM:Z

    .line 33
    const-string/jumbo v0, "user.feature.lgresource"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->LGRESOURCE:Z

    .line 34
    const-string/jumbo v0, "user.feature.lgsetupwizard"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->LGSETUPWIZARD:Z

    .line 35
    const-string/jumbo v0, "user.feature.lgpoweroff"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->LGPOWEROFF:Z

    .line 36
    const-string/jumbo v0, "user.feature.lock_image"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->LOCKSCREEN_IMAGE:Z

    .line 37
    const-string/jumbo v0, "user.feature.lock_andy"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->LOCKSCREEN_ANDY:Z

    .line 38
    const-string/jumbo v0, "user.feature.lock_sui"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->LOCKSCREEN_SUI:Z

    .line 39
    const-string/jumbo v0, "user.feature.sui"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->SUI:Z

    .line 40
    const-string/jumbo v0, "user.feature.ntp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->NTP:Z

    .line 41
    const-string/jumbo v0, "user.feature.preload_so"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->SO_INSTALL:Z

    .line 42
    const-string/jumbo v0, "user.feature.preload_del"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lge/config/Andy_CappuccinoConfig;->PRELOAD_UNINSTALL:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
