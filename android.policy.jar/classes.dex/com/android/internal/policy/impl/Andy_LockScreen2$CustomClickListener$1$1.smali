.class Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;
.super Ljava/lang/Object;
.source "Andy_LockScreen2.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;



# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;)V
    .registers 2
    .parameter

    .prologue
    .line 2280
    iput-object p1, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2282
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$500(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Lcom/android/music/IMediaPlaybackService;

    move-result-object v4

    if-eqz v4, :cond_18

    .line 2283
    const/4 v1, 0x0

    .line 2285
    .local v1, intent:Landroid/content/Intent;
    :try_start_d
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    invoke-static {v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->access$1600(Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;)I

    move-result v4

    packed-switch v4, :pswitch_data_b4

    .line 2316
    .end local v1       #intent:Landroid/content/Intent;,
    :cond_18
    :goto_18
    return-void

    .line 2287
    .restart local v1       #intent:Landroid/content/Intent;,
    :pswitch_19
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1702(Lcom/android/internal/policy/impl/Andy_LockScreen2;Z)Z

    .line 2288
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand.previous"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v1       #intent:Landroid/content/Intent;,
    .local v2, intent:Landroid/content/Intent;
    move-object v1, v2

    .line 2308
    .end local v2       #intent:Landroid/content/Intent;,
    .restart local v1       #intent:Landroid/content/Intent;,
    :goto_2b
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.music"

    const-string v6, "com.android.music.MediaPlaybackService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2309
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$2000(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2310
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_4a} :catch_4b

    goto :goto_18

    .line 2312
    .end local v3       #pendingIntent:Landroid/app/PendingIntent;,
    :catch_4b
    move-exception v4

    move-object v0, v4

    .line 2313
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Andy_LockScreen2"

    const-string v5, "== Runnable Run Exception =="

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 2291
    .end local v0       #e:Ljava/lang/Exception;,
    :pswitch_55
    :try_start_55
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1800(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 2292
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1900(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x2020137

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2293
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1802(Lcom/android/internal/policy/impl/Andy_LockScreen2;Z)Z

    .line 2298
    :goto_7b
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v1       #intent:Landroid/content/Intent;,
    .restart local v2       #intent:Landroid/content/Intent;,
    move-object v1, v2

    .line 2299
    .end local v2       #intent:Landroid/content/Intent;,
    .restart local v1       #intent:Landroid/content/Intent;,
    goto :goto_2b

    .line 2295
    :cond_84
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    invoke-static {v4}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1900(Lcom/android/internal/policy/impl/Andy_LockScreen2;)Landroid/widget/ImageButton;

    move-result-object v4

    const v5, 0x2020136

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2296
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1802(Lcom/android/internal/policy/impl/Andy_LockScreen2;Z)Z

    goto :goto_7b

    .line 2301
    :pswitch_9f
    iget-object v4, p0, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1$1;->this$2:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener$1;->this$1:Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;

    iget-object v4, v4, Lcom/android/internal/policy/impl/Andy_LockScreen2$CustomClickListener;->this$0:Lcom/android/internal/policy/impl/Andy_LockScreen2;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/policy/impl/Andy_LockScreen2;->access$1702(Lcom/android/internal/policy/impl/Andy_LockScreen2;Z)Z

    .line 2302
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.music.musicservicecommand.next"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_b0} :catch_4b

    .end local v1       #intent:Landroid/content/Intent;,
    .restart local v2       #intent:Landroid/content/Intent;,
    move-object v1, v2

    .line 2303
    .end local v2       #intent:Landroid/content/Intent;,
    .restart local v1       #intent:Landroid/content/Intent;,
    goto/16 :goto_2b

    .line 2285
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_19
        :pswitch_55
        :pswitch_9f
    .end packed-switch
.end method
