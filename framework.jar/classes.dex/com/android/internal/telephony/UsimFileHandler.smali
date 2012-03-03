.class public final Lcom/android/internal/telephony/UsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "UsimFileHandler.java"


# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_UsimFH"



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 3

    .prologue
    .line 39
    const-string v0, "RIL_UsimFH"

    const-string v1, "UsimFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .registers 5
    .parameter "efid"

    .prologue
    const-string v2, "3F007F105F3A"

    .line 43
    sparse-switch p1, :sswitch_data_18

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_16

    .line 81
    const-string v1, "3F007F105F3A"

    move-object v1, v2

    .line 83
    .end local v0       #path:Ljava/lang/String;,
    :goto_e
    return-object v1

    .line 70
    :sswitch_f
    const-string v1, "3F007FFF"

    goto :goto_e

    .line 74
    :sswitch_12
    const-string v1, "3F007F105F3A"

    move-object v1, v2

    goto :goto_e

    .restart local v0       #path:Ljava/lang/String;,
    :cond_16
    move-object v1, v0

    .line 83
    goto :goto_e

    .line 43
    :sswitch_data_18
    .sparse-switch
        0x4f30 -> :sswitch_12
        0x6f11 -> :sswitch_f
        0x6f13 -> :sswitch_f
        0x6f14 -> :sswitch_f
        0x6f16 -> :sswitch_f
        0x6f17 -> :sswitch_f
        0x6f18 -> :sswitch_f
        0x6f38 -> :sswitch_f
        0x6f3b -> :sswitch_f
        0x6f3c -> :sswitch_f
        0x6f40 -> :sswitch_f
        0x6f46 -> :sswitch_f
        0x6f62 -> :sswitch_f
        0x6fad -> :sswitch_f
        0x6fc5 -> :sswitch_f
        0x6fc6 -> :sswitch_f
        0x6fc7 -> :sswitch_f
        0x6fc8 -> :sswitch_f
        0x6fc9 -> :sswitch_f
        0x6fca -> :sswitch_f
        0x6fcb -> :sswitch_f
        0x6fcd -> :sswitch_f
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 87
    const-string v0, "RIL_UsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 91
    const-string v0, "RIL_UsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method
