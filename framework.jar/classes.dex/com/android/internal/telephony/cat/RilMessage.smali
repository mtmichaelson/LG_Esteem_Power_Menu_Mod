.class Lcom/android/internal/telephony/cat/RilMessage;
.super Ljava/lang/Object;
.source "CatService.java"



# instance fields
.field mData:Ljava/lang/Object;

.field mId:I

.field mResCode:Lcom/android/internal/telephony/cat/ResultCode;



# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "msgId"
    .parameter "rawData"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 102
    iput-object p2, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/RilMessage;)V
    .registers 3
    .parameter "other"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iget v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    iput v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    .line 107
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .line 108
    iget-object v0, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 109
    return-void
.end method
