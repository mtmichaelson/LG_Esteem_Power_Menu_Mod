.class public Lcom/android/internal/telephony/UiccRecords;
.super Landroid/os/Handler;
.source "UiccRecords.java"


# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# instance fields
.field private mDestroyed:Z

.field mIccFh:Lcom/android/internal/telephony/IccFileHandler;

.field mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field private mUnavailableRegistrants:Landroid/os/RegistrantList;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;)V
    .registers 3
    .parameter "uc"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccRecords;->mDestroyed:Z

    .line 32
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UiccRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/UiccRecords;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 36
    return-void
.end method


# virtual methods
.method declared-synchronized dispose()V
    .registers 2

    .prologue
    .line 39
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/UiccRecords;->mDestroyed:Z

    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/UiccRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 41
    monitor-exit p0

    return-void

    .line 39
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerForUnavailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/UiccRecords;->mDestroyed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-eqz v1, :cond_7

    .line 50
    :goto_5
    monitor-exit p0

    return-void

    .line 48
    :cond_7
    :try_start_7
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 49
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/UiccRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_5

    .line 44
    .end local v0       #r:Landroid/os/Registrant;,
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unregisterForUnavailable(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccRecords;->mUnavailableRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
