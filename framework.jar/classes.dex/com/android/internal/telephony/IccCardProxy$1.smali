.class synthetic Lcom/android/internal/telephony/IccCardProxy$1;
.super Ljava/lang/Object;
.source "IccCardProxy.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$UiccConstants$CardState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 666
    invoke-static {}, Lcom/android/internal/telephony/UiccConstants$CardState;->values()[Lcom/android/internal/telephony/UiccConstants$CardState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$CardState:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$CardState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->ABSENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$CardState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_20c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$CardState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->ERROR:Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$CardState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_209

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$CardState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$CardState;->PRESENT:Lcom/android/internal/telephony/UiccConstants$CardState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$CardState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_206

    .line 695
    :goto_2a
    invoke-static {}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->values()[Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    :try_start_33
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_203

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_200

    :goto_49
    :try_start_49
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_1fd

    :goto_54
    :try_start_54
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_1fa

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_1f7

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_1f4

    :goto_75
    :try_start_75
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_1f1

    :goto_80
    :try_start_80
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_1ee

    :goto_8c
    :try_start_8c
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_1eb

    :goto_98
    :try_start_98
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a4} :catch_1e8

    :goto_a4
    :try_start_a4
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_b0} :catch_1e5

    :goto_b0
    :try_start_b0
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_bc} :catch_1e2

    :goto_bc
    :try_start_bc
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c8} :catch_1df

    :goto_c8
    :try_start_c8
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d4} :catch_1dc

    :goto_d4
    :try_start_d4
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_e0} :catch_1d9

    :goto_e0
    :try_start_e0
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_1d6

    :goto_ec
    :try_start_ec
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ec .. :try_end_f8} :catch_1d3

    :goto_f8
    :try_start_f8
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_104} :catch_1d0

    :goto_104
    :try_start_104
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_110
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_110} :catch_1cd

    :goto_110
    :try_start_110
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_110 .. :try_end_11c} :catch_1ca

    :goto_11c
    :try_start_11c
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_128
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11c .. :try_end_128} :catch_1c7

    :goto_128
    :try_start_128
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_134
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_134} :catch_1c4

    :goto_134
    :try_start_134
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_140
    .catch Ljava/lang/NoSuchFieldError; {:try_start_134 .. :try_end_140} :catch_1c1

    :goto_140
    :try_start_140
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_14c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_140 .. :try_end_14c} :catch_1bf

    :goto_14c
    :try_start_14c
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$PersoSubState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/UiccConstants$PersoSubState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$PersoSubState;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_158
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14c .. :try_end_158} :catch_1bd

    .line 578
    :goto_158
    invoke-static {}, Lcom/android/internal/telephony/UiccConstants$AppState;->values()[Lcom/android/internal/telephony/UiccConstants$AppState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    :try_start_161
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_16c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_161 .. :try_end_16c} :catch_1bb

    :goto_16c
    :try_start_16c
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_177
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16c .. :try_end_177} :catch_1b9

    :goto_177
    :try_start_177
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_177 .. :try_end_182} :catch_1b7

    :goto_182
    :try_start_182
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_ILLEGAL:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18d} :catch_1b5

    :goto_18d
    :try_start_18d
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18d .. :try_end_198} :catch_1b3

    :goto_198
    :try_start_198
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a3} :catch_1b1

    :goto_1a3
    :try_start_1a3
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$UiccConstants$AppState:[I

    sget-object v1, Lcom/android/internal/telephony/UiccConstants$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/UiccConstants$AppState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccConstants$AppState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a3 .. :try_end_1ae} :catch_1af

    :goto_1ae
    return-void

    :catch_1af
    move-exception v0

    goto :goto_1ae

    :catch_1b1
    move-exception v0

    goto :goto_1a3

    :catch_1b3
    move-exception v0

    goto :goto_198

    :catch_1b5
    move-exception v0

    goto :goto_18d

    :catch_1b7
    move-exception v0

    goto :goto_182

    :catch_1b9
    move-exception v0

    goto :goto_177

    :catch_1bb
    move-exception v0

    goto :goto_16c

    .line 695
    :catch_1bd
    move-exception v0

    goto :goto_158

    :catch_1bf
    move-exception v0

    goto :goto_14c

    :catch_1c1
    move-exception v0

    goto/16 :goto_140

    :catch_1c4
    move-exception v0

    goto/16 :goto_134

    :catch_1c7
    move-exception v0

    goto/16 :goto_128

    :catch_1ca
    move-exception v0

    goto/16 :goto_11c

    :catch_1cd
    move-exception v0

    goto/16 :goto_110

    :catch_1d0
    move-exception v0

    goto/16 :goto_104

    :catch_1d3
    move-exception v0

    goto/16 :goto_f8

    :catch_1d6
    move-exception v0

    goto/16 :goto_ec

    :catch_1d9
    move-exception v0

    goto/16 :goto_e0

    :catch_1dc
    move-exception v0

    goto/16 :goto_d4

    :catch_1df
    move-exception v0

    goto/16 :goto_c8

    :catch_1e2
    move-exception v0

    goto/16 :goto_bc

    :catch_1e5
    move-exception v0

    goto/16 :goto_b0

    :catch_1e8
    move-exception v0

    goto/16 :goto_a4

    :catch_1eb
    move-exception v0

    goto/16 :goto_98

    :catch_1ee
    move-exception v0

    goto/16 :goto_8c

    :catch_1f1
    move-exception v0

    goto/16 :goto_80

    :catch_1f4
    move-exception v0

    goto/16 :goto_75

    :catch_1f7
    move-exception v0

    goto/16 :goto_6a

    :catch_1fa
    move-exception v0

    goto/16 :goto_5f

    :catch_1fd
    move-exception v0

    goto/16 :goto_54

    :catch_200
    move-exception v0

    goto/16 :goto_49

    :catch_203
    move-exception v0

    goto/16 :goto_3e

    .line 666
    :catch_206
    move-exception v0

    goto/16 :goto_2a

    :catch_209
    move-exception v0

    goto/16 :goto_1f

    :catch_20c
    move-exception v0

    goto/16 :goto_14
.end method
