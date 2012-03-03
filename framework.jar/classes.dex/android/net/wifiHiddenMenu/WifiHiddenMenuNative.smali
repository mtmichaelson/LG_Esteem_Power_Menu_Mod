.class public Landroid/net/wifiHiddenMenu/WifiHiddenMenuNative;
.super Ljava/lang/Object;
.source "WifiHiddenMenuNative.java"



# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native Channel(I)Z
.end method

.method public static native CloseDUT()Z
.end method

.method public static native FRError()I
.end method

.method public static native FRGood()I
.end method

.method public static native IsRunning()Z
.end method

.method public static native OpenDUT()Z
.end method

.method public static native RSSI()I
.end method

.method public static native RxStart()Z
.end method

.method public static native RxStop()Z
.end method

.method public static native SetPreamble(Ljava/lang/String;)Z
.end method

.method public static native TxBurstFrames(I)Z
.end method

.method public static native TxBurstInterval(I)Z
.end method

.method public static native TxDataRate(Ljava/lang/String;)Z
.end method

.method public static native TxDataRate11n(III)Z
.end method

.method public static native TxDestAddress(Ljava/lang/String;)Z
.end method

.method public static native TxGain(I)Z
.end method

.method public static native TxPayloadLength(I)Z
.end method

.method public static native TxStart()Z
.end method

.method public static native TxStop()Z
.end method
