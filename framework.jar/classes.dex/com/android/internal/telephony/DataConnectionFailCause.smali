.class public final enum Lcom/android/internal/telephony/DataConnectionFailCause;
.super Ljava/lang/Enum;
.source "DataConnectionFailCause.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionFailCause$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnectionFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum LTE_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum LTE_FORBIDDEN_PLMN:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum NONE:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause; = null

.field private static final PDP_FAIL_ACTIVATION_REJECT_GGSN:I = 0x1e

.field private static final PDP_FAIL_ACTIVATION_REJECT_UNSPECIFIED:I = 0x1f

.field private static final PDP_FAIL_ERROR_UNSPECIFIED:I = 0xffff

.field private static final PDP_FAIL_GPRS_REGISTRATION_FAIL:I = -0x2

.field private static final PDP_FAIL_INSUFFICIENT_RESOURCES:I = 0x1a

.field private static final PDP_FAIL_LTE_BLOCKED:I = 0xf2

.field private static final PDP_FAIL_LTE_FORBIDDEN_PLMN:I = 0xf0

.field private static final PDP_FAIL_MISSING_UNKOWN_APN:I = 0x1b

.field private static final PDP_FAIL_NETWORK_FAILURE:I = 0x26

.field private static final PDP_FAIL_NSAPI_IN_USE:I = 0x23

.field private static final PDP_FAIL_ONLY_IPV4_ALLOWED:I = 0x32

.field private static final PDP_FAIL_ONLY_IPV6_ALLOWED:I = 0x33

.field private static final PDP_FAIL_ONLY_SINGLE_BEARER_ALLOWED:I = 0x34

.field private static final PDP_FAIL_OPERATOR_BARRED:I = 0x8

.field private static final PDP_FAIL_PREF_RADIO_TECH_CHANGED:I = -0x4

.field private static final PDP_FAIL_PROTOCOL_ERRORS:I = 0x6f

.field private static final PDP_FAIL_RADIO_POWER_OFF:I = -0x5

.field private static final PDP_FAIL_RAT_SEARCHING:I = 0x41

.field private static final PDP_FAIL_REGISTRATION_FAIL:I = -0x1

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field private static final PDP_FAIL_SERVICE_OPTION_OUT_OF_ORDER:I = 0x22

.field private static final PDP_FAIL_SETUPDATACALL_WHILE_HO:I = 0x42

.field private static final PDP_FAIL_SIGNAL_LOST:I = -0x3

.field private static final PDP_FAIL_TETHERED_CALL_ON:I = -0x6

.field private static final PDP_FAIL_UNKNOWN_PDP_ADDRESS_TYPE:I = 0x1c

.field private static final PDP_FAIL_USER_AUTHENTICATION:I = 0x1d

.field private static final PDP_FAIL_USIM_BLOCKED:I = 0xf1

.field private static final PDP_FAIL_VOICE_CALL:I = 0x40

.field public static final enum PDP_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum PREF_RADIO_TECHNOLOGY_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum RAT_SEARCHING:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum SETUPDATACALL_WHILE_HO:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum SIGNAL_LOST:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum TETHERED_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum TETHERED_MODE_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum USIM_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

.field public static final enum VOICE_CALL:Lcom/android/internal/telephony/DataConnectionFailCause;



# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NONE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 24
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "OPERATOR_BARRED"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 25
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "INSUFFICIENT_RESOURCES"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 26
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "MISSING_UNKOWN_APN"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 27
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "UNKNOWN_PDP_ADDRESS"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 28
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "USER_AUTHENTICATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 29
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "ACTIVATION_REJECT_GGSN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 30
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "ACTIVATION_REJECT_UNSPECIFIED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 31
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "SERVICE_OPTION_NOT_SUPPORTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 32
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "SERVICE_OPTION_NOT_SUBSCRIBED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 33
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "SERVICE_OPTION_OUT_OF_ORDER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "NSAPI_IN_USE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 35
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "PROTOCOL_ERRORS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "REGISTRATION_FAIL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "GPRS_REGISTRATION_FAIL"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "RADIO_NOT_AVAILABLE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "RADIO_ERROR_RETRY"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "PREF_RADIO_TECHNOLOGY_CHANGED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PREF_RADIO_TECHNOLOGY_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 44
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "TETHERED_MODE_CALL_ON"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_MODE_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 45
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "IP_VERSION_NOT_SUPPORTED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 46
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "PDP_NOT_AVAILABLE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PDP_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 47
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "SIGNAL_LOST"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 48
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "PREF_RADIO_TECH_CHANGED"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 49
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "RADIO_POWER_OFF"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "TETHERED_CALL_ON"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 54
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "LTE_FORBIDDEN_PLMN"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->LTE_FORBIDDEN_PLMN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 55
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "USIM_BLOCKED"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USIM_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 56
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "LTE_BLOCKED"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->LTE_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 59
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "VOICE_CALL"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->VOICE_CALL:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 60
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "RAT_SEARCHING"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RAT_SEARCHING:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 61
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "NETWORK_FAILURE"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    const-string v1, "SETUPDATACALL_WHILE_HO"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnectionFailCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SETUPDATACALL_WHILE_HO:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 20
    const/16 v0, 0x21

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnectionFailCause;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->NONE:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->PREF_RADIO_TECHNOLOGY_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_MODE_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->PDP_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->LTE_FORBIDDEN_PLMN:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->USIM_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->LTE_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->VOICE_CALL:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->RAT_SEARCHING:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/android/internal/telephony/DataConnectionFailCause;->SETUPDATACALL_WHILE_HO:Lcom/android/internal/telephony/DataConnectionFailCause;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnectionFailCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public static getDataCallSetupFailCause(I)Lcom/android/internal/telephony/DataConnectionFailCause;
    .registers 2
    .parameter "rilCause"

    .prologue
    .line 125
    sparse-switch p0, :sswitch_data_58

    .line 231
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 233
    .local v0, cause:Lcom/android/internal/telephony/DataConnectionFailCause;
    :goto_5
    return-object v0

    .line 127
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 128
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 130
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_9
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 131
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 133
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_c
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 134
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 136
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_f
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 137
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 139
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_12
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 140
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 142
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_15
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 143
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 145
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_18
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 146
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 148
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_1b
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 149
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 151
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_1e
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 152
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 154
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_21
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 155
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 157
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_24
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 158
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 160
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_27
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 161
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 163
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_2a
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 164
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 166
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_2d
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 167
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 169
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_30
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 170
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 175
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_33
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NETWORK_FAILURE:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 176
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 179
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_36
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->IP_VERSION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 180
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 185
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_39
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->LTE_FORBIDDEN_PLMN:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 186
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 188
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_3c
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USIM_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 189
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 191
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_3f
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->LTE_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 192
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 198
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_42
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 199
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 201
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_45
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 202
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 204
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_48
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 205
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 207
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_4b
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->TETHERED_CALL_ON:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 208
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 213
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_4e
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->VOICE_CALL:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 214
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 217
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_51
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RAT_SEARCHING:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 218
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 223
    .end local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    :sswitch_54
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SETUPDATACALL_WHILE_HO:Lcom/android/internal/telephony/DataConnectionFailCause;

    .line 225
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnectionFailCause;,
    goto :goto_5

    .line 125
    nop

    :sswitch_data_58
    .sparse-switch
        -0x6 -> :sswitch_4b
        -0x5 -> :sswitch_48
        -0x4 -> :sswitch_45
        -0x3 -> :sswitch_42
        -0x2 -> :sswitch_30
        -0x1 -> :sswitch_2d
        0x8 -> :sswitch_6
        0x1a -> :sswitch_9
        0x1b -> :sswitch_c
        0x1c -> :sswitch_f
        0x1d -> :sswitch_12
        0x1e -> :sswitch_15
        0x1f -> :sswitch_18
        0x20 -> :sswitch_1e
        0x21 -> :sswitch_21
        0x22 -> :sswitch_1b
        0x23 -> :sswitch_24
        0x26 -> :sswitch_33
        0x32 -> :sswitch_36
        0x33 -> :sswitch_36
        0x40 -> :sswitch_4e
        0x41 -> :sswitch_51
        0x42 -> :sswitch_54
        0x6f -> :sswitch_27
        0xf0 -> :sswitch_39
        0xf1 -> :sswitch_3c
        0xf2 -> :sswitch_3f
        0xffff -> :sswitch_2a
    .end sparse-switch
.end method

.method public static getDataConnectionDisconnectCause(I)Lcom/android/internal/telephony/DataConnectionFailCause;
    .registers 2
    .parameter "rilCause"

    .prologue
    .line 237
    invoke-static {p0}, Lcom/android/internal/telephony/DataConnectionFailCause;->getDataCallSetupFailCause(I)Lcom/android/internal/telephony/DataConnectionFailCause;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionFailCause;
    .registers 2
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataConnectionFailCause;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnectionFailCause;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->$VALUES:[Lcom/android/internal/telephony/DataConnectionFailCause;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnectionFailCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnectionFailCause;

    return-object v0
.end method


# virtual methods
.method public canRetryAfterDcDisconnect()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionFailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 118
    :goto_8
    return v0

    .line 114
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause$1;->$SwitchMap$com$android$internal$telephony$DataConnectionFailCause:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionFailCause;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 118
    const/4 v0, 0x1

    goto :goto_8

    :pswitch_16
    move v0, v2

    .line 116
    goto :goto_8

    .line 114
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch
.end method

.method public isDataProfileFailure()Z
    .registers 2

    .prologue
    .line 74
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isEventLoggable()Z
    .registers 2

    .prologue
    .line 102
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_2c

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne p0, v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public isPdpAvailabilityFailure()Z
    .registers 2

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PDP_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPermanentFail()Z
    .registers 2

    .prologue
    .line 89
    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->MISSING_UNKOWN_APN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->LTE_FORBIDDEN_PLMN:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->USIM_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-eq p0, v0, :cond_38

    sget-object v0, Lcom/android/internal/telephony/DataConnectionFailCause;->LTE_BLOCKED:Lcom/android/internal/telephony/DataConnectionFailCause;

    if-ne p0, v0, :cond_3a

    :cond_38
    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method
