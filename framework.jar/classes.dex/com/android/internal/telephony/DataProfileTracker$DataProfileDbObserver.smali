.class Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;
.super Landroid/database/ContentObserver;
.source "DataProfileTracker.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataProfileTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataProfileDbObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataProfileTracker;



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/DataProfileTracker;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "h"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;->this$0:Lcom/android/internal/telephony/DataProfileTracker;

    .line 163
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 164
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;->this$0:Lcom/android/internal/telephony/DataProfileTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;->this$0:Lcom/android/internal/telephony/DataProfileTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 169
    return-void
.end method
