.class public Lcom/lge/media/Andy_AudioSystem;
.super Landroid/media/AudioSystem;
.source "Andy_AudioSystem.java"



# static fields
.field public static final ROUTE_DUALMIC_HANDSET:I = 0x20

.field public static final ROUTE_DUALMIC_SPEAKER:I = 0x40

.field public static final ROUTE_FM_RADIO_HEADSET:I = 0x40

.field public static final ROUTE_FM_RADIO_OFF:I = 0x80

.field public static final ROUTE_FM_RADIO_SPEAKER:I = 0x100

.field public static final ROUTE_TTY_DEVICE_FULL:I = 0x80

.field public static final ROUTE_TTY_DEVICE_HCO:I = 0x100

.field public static final ROUTE_TTY_DEVICE_VCO:I = 0x200



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/media/AudioSystem;-><init>()V

    return-void
.end method

.method public static native setAmpGain(IIII)I
.end method

.method public static native setDtmfVolume(IIBII)I
.end method

.method public static native setFMRadioMultiSound()I
.end method

.method public static native setLoopbackMode(I)I
.end method

.method public static native setMicAmpGain(IIII)I
.end method

.method public static native setNextEcParam(IIII)I
.end method

.method public static native setPadValue(IIBII)I
.end method

.method public static native setPowerOff()I
.end method

.method public static native setRxVolume(IIBII)I
.end method

.method public static native setVoccalIIRParam(IIII)I
.end method

.method public static native setVoccalParam(IIII)I
.end method

.method public static native setVoiceClarity(I)I
.end method

.method public static native writeEFS()I
.end method

.method public static native writeMEM()I
.end method
