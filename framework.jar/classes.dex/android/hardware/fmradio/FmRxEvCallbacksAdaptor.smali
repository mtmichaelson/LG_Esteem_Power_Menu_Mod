.class public Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;
.super Ljava/lang/Object;
.source "FmRxEvCallbacksAdaptor.java"


# interfaces
.implements Landroid/hardware/fmradio/FmRxEvCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FmRxEvDisableReceiver()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public FmRxEvEnableReceiver()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public FmRxEvRadioTuneStatus(I)V
    .registers 2
    .parameter "freq"

    .prologue
    .line 40
    return-void
.end method

.method public FmRxEvRdsAfInfo()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public FmRxEvRdsGroupData()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public FmRxEvRdsLockStatus(Z)V
    .registers 2
    .parameter "rdsAvail"

    .prologue
    .line 41
    return-void
.end method

.method public FmRxEvRdsPsInfo()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method

.method public FmRxEvRdsRtInfo()V
    .registers 1

    .prologue
    .line 49
    return-void
.end method

.method public FmRxEvSearchComplete(I)V
    .registers 2
    .parameter "freq"

    .prologue
    .line 45
    return-void
.end method

.method public FmRxEvSearchInProgress()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method

.method public FmRxEvSearchListComplete()V
    .registers 1

    .prologue
    .line 46
    return-void
.end method

.method public FmRxEvServiceAvailable(Z)V
    .registers 2
    .parameter "service"

    .prologue
    .line 43
    return-void
.end method

.method public FmRxEvStereoStatus(Z)V
    .registers 2
    .parameter "stereo"

    .prologue
    .line 42
    return-void
.end method
