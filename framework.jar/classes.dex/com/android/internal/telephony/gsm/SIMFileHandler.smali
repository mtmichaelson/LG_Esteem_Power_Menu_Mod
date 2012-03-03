.class public final Lcom/android/internal/telephony/gsm/SIMFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "SIMFileHandler.java"


# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4
    .parameter "app"
    .parameter "aid"
    .parameter "ci"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler;-><init>(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 40
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 44
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 47
    const-string v0, "GSM"

    const-string v1, "SIMFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .registers 5
    .parameter "efid"

    .prologue
    const-string v2, "3F007F20"

    .line 60
    sparse-switch p1, :sswitch_data_20

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_12

    .line 96
    const-string v1, "GSM"

    const-string v2, "Error: EF Path being returned in null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object v1, v0

    .line 98
    .end local v0       #path:Ljava/lang/String;,
    :goto_13
    return-object v1

    .line 64
    :sswitch_14
    const-string v1, "3F007F10"

    goto :goto_13

    .line 83
    :sswitch_17
    const-string v1, "3F007F20"

    move-object v1, v2

    goto :goto_13

    .line 92
    :sswitch_1b
    const-string v1, "3F007F20"

    move-object v1, v2

    goto :goto_13

    .line 60
    nop

    :sswitch_data_20
    .sparse-switch
        0x6f11 -> :sswitch_1b
        0x6f13 -> :sswitch_1b
        0x6f14 -> :sswitch_1b
        0x6f15 -> :sswitch_1b
        0x6f16 -> :sswitch_1b
        0x6f17 -> :sswitch_1b
        0x6f18 -> :sswitch_1b
        0x6f38 -> :sswitch_17
        0x6f3b -> :sswitch_14
        0x6f3c -> :sswitch_14
        0x6f40 -> :sswitch_14
        0x6f46 -> :sswitch_17
        0x6f62 -> :sswitch_17
        0x6fad -> :sswitch_17
        0x6fc5 -> :sswitch_17
        0x6fc6 -> :sswitch_17
        0x6fc7 -> :sswitch_17
        0x6fc8 -> :sswitch_17
        0x6fc9 -> :sswitch_17
        0x6fca -> :sswitch_17
        0x6fcb -> :sswitch_17
        0x6fcd -> :sswitch_17
    .end sparse-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->handleMessage(Landroid/os/Message;)V

    .line 55
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 102
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 106
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SIMFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
