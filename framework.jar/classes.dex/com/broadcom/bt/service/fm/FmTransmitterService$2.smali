.class synthetic Lcom/broadcom/bt/service/fm/FmTransmitterService$2;
.super Ljava/lang/Object;
.source "FmTransmitterService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmTransmitterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 302
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->values()[Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    :try_start_9
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ON:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_e6

    :goto_14
    :try_start_14
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_OFF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_e3

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPOWER:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_e0

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXFREQ:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_dd

    :goto_35
    :try_start_35
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPWR_LEVEL:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_da

    :goto_40
    :try_start_40
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_d7

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_d5

    :goto_56
    :try_start_56
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_REGION:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_d3

    :goto_62
    :try_start_62
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_BANDWIDTH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_d1

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_PREEMPHASIS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_cf

    :goto_7a
    :try_start_7a
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_cd

    :goto_86
    :try_start_86
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_92} :catch_cb

    :goto_92
    :try_start_92
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_INTF_NOTIF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_9e} :catch_c9

    :goto_9e
    :try_start_9e
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SEARCH_BEST_CHANS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_aa} :catch_c7

    :goto_aa
    :try_start_aa
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_START_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_c5

    :goto_b6
    :try_start_b6
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_STOP_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c3

    :goto_c2
    return-void

    :catch_c3
    move-exception v0

    goto :goto_c2

    :catch_c5
    move-exception v0

    goto :goto_b6

    :catch_c7
    move-exception v0

    goto :goto_aa

    :catch_c9
    move-exception v0

    goto :goto_9e

    :catch_cb
    move-exception v0

    goto :goto_92

    :catch_cd
    move-exception v0

    goto :goto_86

    :catch_cf
    move-exception v0

    goto :goto_7a

    :catch_d1
    move-exception v0

    goto :goto_6e

    :catch_d3
    move-exception v0

    goto :goto_62

    :catch_d5
    move-exception v0

    goto :goto_56

    :catch_d7
    move-exception v0

    goto/16 :goto_4b

    :catch_da
    move-exception v0

    goto/16 :goto_40

    :catch_dd
    move-exception v0

    goto/16 :goto_35

    :catch_e0
    move-exception v0

    goto/16 :goto_2a

    :catch_e3
    move-exception v0

    goto/16 :goto_1f

    :catch_e6
    move-exception v0

    goto/16 :goto_14
.end method
