.class Lcom/android/internal/telephony/cat/LaunchBrowserParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"



# instance fields
.field confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

.field url:Ljava/lang/String;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/cat/LaunchBrowserMode;)V
    .registers 5
    .parameter "cmdDet"
    .parameter "confirmMsg"
    .parameter "url"
    .parameter "mode"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 66
    iput-object p2, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 67
    iput-object p4, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    .line 68
    iput-object p3, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->url:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .registers 3
    .parameter "icon"

    .prologue
    .line 72
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v0, :cond_c

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
