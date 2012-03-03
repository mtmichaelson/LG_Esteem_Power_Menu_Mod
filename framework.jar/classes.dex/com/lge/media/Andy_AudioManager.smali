.class public Lcom/lge/media/Andy_AudioManager;
.super Landroid/media/AudioManager;
.source "Andy_AudioManager.java"



# static fields
.field private static final ROUTE_DUALMIC_HANDSET:I = 0x20

.field private static final ROUTE_DUALMIC_SPEAKER:I = 0x40

.field private static final ROUTE_FM_RADIO_HEADSET:I = 0x40

.field private static final ROUTE_FM_RADIO_OFF:I = 0x80

.field private static final ROUTE_FM_RADIO_SPEAKER:I = 0x100

.field private static final ROUTE_TTY_DEVICE_FULL:I = 0x80

.field private static final ROUTE_TTY_DEVICE_HCO:I = 0x100

.field private static final ROUTE_TTY_DEVICE_VCO:I = 0x200

.field private static TAG:Ljava/lang/String;



# instance fields
.field private final mContext:Landroid/content/Context;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "LGE_AudioManager"

    sput-object v0, Lcom/lge/media/Andy_AudioManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    .line 64
    iput-object p1, p0, Lcom/lge/media/Andy_AudioManager;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public isFMRadioSpeakerOn()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v1}, Lcom/lge/media/Andy_AudioManager;->getRouting(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public isFMRadioWiredHeadsetOn()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, "AudioManager"

    .line 68
    const-string v2, "AudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFMRadioWiredHeadsetOn  return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/lge/media/Andy_AudioManager;->getRouting(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, v4}, Lcom/lge/media/Andy_AudioManager;->getRouting(I)I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_65

    move v0, v4

    .line 72
    .local v0, FmHeadsetOnly:Z
    :goto_2b
    invoke-virtual {p0, v4}, Lcom/lge/media/Andy_AudioManager;->getRouting(I)I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_67

    move v1, v4

    .line 74
    .local v1, FmHeadsetSpeaker:Z
    :goto_34
    const-string v2, "AudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmHeadsetOnly  return : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "AudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmHeadsetSpeaker\treturn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v0

    .end local v0       #FmHeadsetOnly:Z,
    .end local v1       #FmHeadsetSpeaker:Z,
    :cond_65
    move v0, v6

    .line 70
    goto :goto_2b

    .restart local v0       #FmHeadsetOnly:Z,
    :cond_67
    move v1, v6

    .line 72
    goto :goto_34
.end method

.method public setFMRadioBluetoothOn()V
    .registers 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/lge/media/Andy_AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/lge/media/Andy_AudioManager;->isFMRadioWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 99
    :cond_c
    const/4 v0, 0x0

    const/16 v1, 0x10

    const/16 v2, -0x11

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/media/Andy_AudioManager;->setRouting(III)V

    .line 102
    :cond_14
    return-void
.end method

.method public setFMRadioOff()V
    .registers 6

    .prologue
    const/16 v4, 0x8

    const/16 v3, -0x11

    const/4 v2, 0x0

    .line 117
    invoke-virtual {p0, v2}, Lcom/lge/media/Andy_AudioManager;->getRouting(I)I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1b

    invoke-virtual {p0, v2}, Lcom/lge/media/Andy_AudioManager;->getRouting(I)I

    move-result v0

    if-eq v0, v4, :cond_1b

    invoke-virtual {p0, v2}, Lcom/lge/media/Andy_AudioManager;->getRouting(I)I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2a

    .line 120
    :cond_1b
    sget-object v0, Lcom/lge/media/Andy_AudioManager;->TAG:Ljava/lang/String;

    const-string v1, "[Audiomanager]setFMRadioOff:isWiredHeadsetOn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/16 v0, 0x80

    invoke-virtual {p0, v2, v0, v3}, Lcom/lge/media/Andy_AudioManager;->setRouting(III)V

    .line 123
    invoke-virtual {p0, v2, v4, v3}, Lcom/lge/media/Andy_AudioManager;->setRouting(III)V

    .line 126
    :cond_2a
    return-void
.end method

.method public setFMRadioOn()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x11

    .line 105
    invoke-virtual {p0}, Lcom/lge/media/Andy_AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/lge/media/Andy_AudioManager;->isFMRadioWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 106
    :cond_f
    sget-object v0, Lcom/lge/media/Andy_AudioManager;->TAG:Ljava/lang/String;

    const-string v1, "[Audiomanager]setFMRadioOn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 v0, 0x40

    invoke-virtual {p0, v3, v0, v2}, Lcom/lge/media/Andy_AudioManager;->setRouting(III)V

    .line 114
    :cond_1b
    :goto_1b
    return-void

    .line 109
    :cond_1c
    invoke-virtual {p0}, Lcom/lge/media/Andy_AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcom/lge/media/Andy_AudioManager;->isFMRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 110
    :cond_28
    sget-object v0, Lcom/lge/media/Andy_AudioManager;->TAG:Ljava/lang/String;

    const-string v1, "[Audiomanager]setFMRadioOn - setRouting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v0, 0x100

    invoke-virtual {p0, v3, v0, v2}, Lcom/lge/media/Andy_AudioManager;->setRouting(III)V

    goto :goto_1b
.end method

.method public setFMRadioSpeakerOn()V
    .registers 4

    .prologue
    .line 85
    const/4 v0, 0x0

    const/16 v1, 0x100

    const/16 v2, -0x11

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/media/Andy_AudioManager;->setRouting(III)V

    .line 87
    return-void
.end method

.method public setFMRadioWiredHeadsetOn()V
    .registers 4

    .prologue
    .line 90
    const-string v0, "AudioManager"

    const-string/jumbo v1, "setFMRadioWiredHeadsetOn :ROUTE_FM_RADIO_HEADSET64"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x0

    const/16 v1, 0x40

    const/16 v2, -0x11

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/media/Andy_AudioManager;->setRouting(III)V

    .line 95
    return-void
.end method
