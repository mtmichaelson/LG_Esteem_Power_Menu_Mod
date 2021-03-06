.class public final Lcom/android/internal/telephony/CsimFileHandler;
.super Lcom/android/internal/telephony/IccFileHandler;
.source "CsimFileHandler.java"


# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIL_CsimFH"



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
    const-string v0, "RIL_CsimFH"

    const-string v1, "CsimFileHandler finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method protected getEFPath(I)Ljava/lang/String;
    .registers 4
    .parameter "efid"

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_12

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, path:Ljava/lang/String;
    if-nez v0, :cond_f

    .line 62
    const-string v1, "3F007F105F3A"

    .line 64
    .end local v0       #path:Ljava/lang/String;,
    :goto_b
    return-object v1

    .line 55
    :sswitch_c
    const-string v1, "3F007FFF"

    goto :goto_b

    .restart local v0       #path:Ljava/lang/String;,
    :cond_f
    move-object v1, v0

    .line 64
    goto :goto_b

    .line 43
    nop

    :sswitch_data_12
    .sparse-switch
        0x6f22 -> :sswitch_c
        0x6f32 -> :sswitch_c
        0x6f3b -> :sswitch_c
        0x6f3c -> :sswitch_c
        0x6f40 -> :sswitch_c
        0x6f41 -> :sswitch_c
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 68
    const-string v0, "RIL_CsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 72
    const-string v0, "RIL_CsimFH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method
