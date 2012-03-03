.class synthetic Lcom/android/internal/policy/impl/LockScreen$4;
.super Ljava/lang/Object;
.source "LockScreen.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$IccCard$State:[I



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 593
    invoke-static {}, Lcom/android/internal/policy/impl/LockScreen$Status;->values()[Lcom/android/internal/policy/impl/LockScreen$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->Normal:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_205

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_202

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1ff

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1fc

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_1f9

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_1f6

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimIOError:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_1f3

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->NetworkSubsetLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_1f0

    :goto_62
    :try_start_62
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->CorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_1ed

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->ServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_1ea

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->SimSimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_1e7

    :goto_86
    :try_start_86
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimNetwork1Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_1e4

    :goto_92
    :try_start_92
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimNetwork2Locked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_1e1

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimHrpdLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_1de

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimCorporateLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_1db

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimServiceProviderLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_1d8

    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$policy$impl$LockScreen$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$Status;->RuimRuimLocked:Lcom/android/internal/policy/impl/LockScreen$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockScreen$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c2 .. :try_end_ce} :catch_1d5

    .line 543
    :goto_ce
    invoke-static {}, Lcom/android/internal/telephony/IccCard$State;->values()[Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    :try_start_d7
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_e2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d7 .. :try_end_e2} :catch_1d2

    :goto_e2
    :try_start_e2
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ed} :catch_1cf

    :goto_ed
    :try_start_ed
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f8} :catch_1cc

    :goto_f8
    :try_start_f8
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_103
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f8 .. :try_end_103} :catch_1c9

    :goto_103
    :try_start_103
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_103 .. :try_end_10e} :catch_1c6

    :goto_10e
    :try_start_10e
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10e .. :try_end_119} :catch_1c3

    :goto_119
    :try_start_119
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_124
    .catch Ljava/lang/NoSuchFieldError; {:try_start_119 .. :try_end_124} :catch_1c0

    :goto_124
    :try_start_124
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_130
    .catch Ljava/lang/NoSuchFieldError; {:try_start_124 .. :try_end_130} :catch_1bd

    :goto_130
    :try_start_130
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_13c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_130 .. :try_end_13c} :catch_1bb

    :goto_13c
    :try_start_13c
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_148
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13c .. :try_end_148} :catch_1b9

    :goto_148
    :try_start_148
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_154
    .catch Ljava/lang/NoSuchFieldError; {:try_start_148 .. :try_end_154} :catch_1b7

    :goto_154
    :try_start_154
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_160
    .catch Ljava/lang/NoSuchFieldError; {:try_start_154 .. :try_end_160} :catch_1b5

    :goto_160
    :try_start_160
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK1_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_16c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_160 .. :try_end_16c} :catch_1b3

    :goto_16c
    :try_start_16c
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_NETWORK2_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16c .. :try_end_178} :catch_1b1

    :goto_178
    :try_start_178
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_HRPD_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_184
    .catch Ljava/lang/NoSuchFieldError; {:try_start_178 .. :try_end_184} :catch_1af

    :goto_184
    :try_start_184
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_CORPORATE_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_190
    .catch Ljava/lang/NoSuchFieldError; {:try_start_184 .. :try_end_190} :catch_1ad

    :goto_190
    :try_start_190
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_19c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_190 .. :try_end_19c} :catch_1ab

    :goto_19c
    :try_start_19c
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$4;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->RUIM_RUIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19c .. :try_end_1a8} :catch_1a9

    :goto_1a8
    return-void

    :catch_1a9
    move-exception v0

    goto :goto_1a8

    :catch_1ab
    move-exception v0

    goto :goto_19c

    :catch_1ad
    move-exception v0

    goto :goto_190

    :catch_1af
    move-exception v0

    goto :goto_184

    :catch_1b1
    move-exception v0

    goto :goto_178

    :catch_1b3
    move-exception v0

    goto :goto_16c

    :catch_1b5
    move-exception v0

    goto :goto_160

    :catch_1b7
    move-exception v0

    goto :goto_154

    :catch_1b9
    move-exception v0

    goto :goto_148

    :catch_1bb
    move-exception v0

    goto :goto_13c

    :catch_1bd
    move-exception v0

    goto/16 :goto_130

    :catch_1c0
    move-exception v0

    goto/16 :goto_124

    :catch_1c3
    move-exception v0

    goto/16 :goto_119

    :catch_1c6
    move-exception v0

    goto/16 :goto_10e

    :catch_1c9
    move-exception v0

    goto/16 :goto_103

    :catch_1cc
    move-exception v0

    goto/16 :goto_f8

    :catch_1cf
    move-exception v0

    goto/16 :goto_ed

    :catch_1d2
    move-exception v0

    goto/16 :goto_e2

    .line 593
    :catch_1d5
    move-exception v0

    goto/16 :goto_ce

    :catch_1d8
    move-exception v0

    goto/16 :goto_c2

    :catch_1db
    move-exception v0

    goto/16 :goto_b6

    :catch_1de
    move-exception v0

    goto/16 :goto_aa

    :catch_1e1
    move-exception v0

    goto/16 :goto_9e

    :catch_1e4
    move-exception v0

    goto/16 :goto_92

    :catch_1e7
    move-exception v0

    goto/16 :goto_86

    :catch_1ea
    move-exception v0

    goto/16 :goto_7a

    :catch_1ed
    move-exception v0

    goto/16 :goto_6e

    :catch_1f0
    move-exception v0

    goto/16 :goto_62

    :catch_1f3
    move-exception v0

    goto/16 :goto_56

    :catch_1f6
    move-exception v0

    goto/16 :goto_4b

    :catch_1f9
    move-exception v0

    goto/16 :goto_40

    :catch_1fc
    move-exception v0

    goto/16 :goto_35

    :catch_1ff
    move-exception v0

    goto/16 :goto_2a

    :catch_202
    move-exception v0

    goto/16 :goto_1f

    :catch_205
    move-exception v0

    goto/16 :goto_14
.end method
