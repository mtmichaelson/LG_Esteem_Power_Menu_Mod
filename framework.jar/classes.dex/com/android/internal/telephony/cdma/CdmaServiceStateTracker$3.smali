.class Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;
.super Ljava/lang/Object;
.source "CdmaServiceStateTracker.java"


# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->PlayVZWERISound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 11
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1993
    if-eqz p1, :cond_27

    .line 1995
    :try_start_4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1996
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 1997
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-boolean v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isEriRingtoneStart:Z

    if-ne v2, v6, :cond_27

    .line 1998
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.finishEriSound"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1999
    .local v1, finishEriSound:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->phone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2000
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isEriRingtoneStart:Z
    :try_end_27
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_27} :catch_5d

    .line 2006
    .end local v1       #finishEriSound:Landroid/content/Intent;,
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$302(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 2007
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$200(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)I

    move-result v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2008
    const-string v2, "[chiyoung]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOnErrorListener, volume is restored. restoreVolume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->access$100(Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    return v6

    .line 2002
    :catch_5d
    move-exception v2

    move-object v0, v2

    .line 2003
    .local v0, ex:Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker$3;->this$0:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer IllegalStateException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_27
.end method
