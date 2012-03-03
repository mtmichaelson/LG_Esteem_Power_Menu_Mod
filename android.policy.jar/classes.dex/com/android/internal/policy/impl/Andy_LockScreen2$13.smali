.class synthetic Lcom/android/internal/policy/impl/Andy_LockScreen2$13;
.super Ljava/lang/Object;
.source "Andy_LockScreen2.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$IccCard$State:[I



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1613
    invoke-static {}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->values()[Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    :try_start_9
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Normal:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_116

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->NetworkLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_113

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissing:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_110

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_10d

    :goto_35
    :try_start_35
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_10a

    :goto_40
    :try_start_40
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimPukLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_107

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->SimPermLocked:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_104

    :goto_56
    :try_start_56
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->NONMPCSSIM:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_101

    :goto_62
    :try_start_62
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->CARDERROR:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_fe

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$policy$impl$Andy_LockScreen2$Status:[I

    sget-object v1, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->Airplane:Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/Andy_LockScreen2$Status;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_fb

    .line 1532
    :goto_7a
    invoke-static {}, Lcom/android/internal/telephony/IccCard$State;->values()[Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    :try_start_83
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8e} :catch_f9

    :goto_8e
    :try_start_8e
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_99} :catch_f7

    :goto_99
    :try_start_99
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a4} :catch_f5

    :goto_a4
    :try_start_a4
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_af} :catch_f3

    :goto_af
    :try_start_af
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_ba} :catch_f1

    :goto_ba
    :try_start_ba
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_c5} :catch_ef

    :goto_c5
    :try_start_c5
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_d0} :catch_ed

    :goto_d0
    :try_start_d0
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_dc} :catch_eb

    :goto_dc
    :try_start_dc
    sget-object v0, Lcom/android/internal/policy/impl/Andy_LockScreen2$13;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_e8} :catch_e9

    :goto_e8
    return-void

    :catch_e9
    move-exception v0

    goto :goto_e8

    :catch_eb
    move-exception v0

    goto :goto_dc

    :catch_ed
    move-exception v0

    goto :goto_d0

    :catch_ef
    move-exception v0

    goto :goto_c5

    :catch_f1
    move-exception v0

    goto :goto_ba

    :catch_f3
    move-exception v0

    goto :goto_af

    :catch_f5
    move-exception v0

    goto :goto_a4

    :catch_f7
    move-exception v0

    goto :goto_99

    :catch_f9
    move-exception v0

    goto :goto_8e

    .line 1613
    :catch_fb
    move-exception v0

    goto/16 :goto_7a

    :catch_fe
    move-exception v0

    goto/16 :goto_6e

    :catch_101
    move-exception v0

    goto/16 :goto_62

    :catch_104
    move-exception v0

    goto/16 :goto_56

    :catch_107
    move-exception v0

    goto/16 :goto_4b

    :catch_10a
    move-exception v0

    goto/16 :goto_40

    :catch_10d
    move-exception v0

    goto/16 :goto_35

    :catch_110
    move-exception v0

    goto/16 :goto_2a

    :catch_113
    move-exception v0

    goto/16 :goto_1f

    :catch_116
    move-exception v0

    goto/16 :goto_14
.end method
