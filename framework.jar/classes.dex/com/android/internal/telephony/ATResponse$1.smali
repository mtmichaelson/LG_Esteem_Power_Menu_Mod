.class final Lcom/android/internal/telephony/ATResponse$1;
.super Ljava/lang/Object;
.source "ATResponse.java"


# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ATResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/internal/telephony/ATResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/ATResponse;
    .registers 5
    .parameter "source"

    .prologue
    .line 26
    const-string v1, "ATResponse"

    const-string v2, " createFromParcel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, response:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/ATResponse;->access$000(Ljava/lang/String;)Lcom/android/internal/telephony/ATResponse;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ATResponse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/ATResponse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/ATResponse;
    .registers 4
    .parameter "size"

    .prologue
    .line 32
    const-string v0, "ATResponse"

    const-string v1, " newArray"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-array v0, p1, [Lcom/android/internal/telephony/ATResponse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ATResponse$1;->newArray(I)[Lcom/android/internal/telephony/ATResponse;

    move-result-object v0

    return-object v0
.end method
