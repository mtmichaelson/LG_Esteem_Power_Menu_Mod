.class Lcom/android/server/sip/SipService$MyEvent;
.super Ljava/lang/Object;
.source "SipService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyEvent"
.end annotation


# instance fields
.field mCallback:Ljava/lang/Runnable;

.field mLastTriggerTime:J

.field mMaxPeriod:I

.field mPeriod:I

.field mTriggerTime:J



# direct methods
.method constructor <init>(ILjava/lang/Runnable;J)V
    .registers 5
    .parameter "period"
    .parameter "callback"
    .parameter "now"

    .prologue
    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1390
    iput p1, p0, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    iput p1, p0, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    .line 1391
    iput-object p2, p0, Lcom/android/server/sip/SipService$MyEvent;->mCallback:Ljava/lang/Runnable;

    .line 1392
    iput-wide p3, p0, Lcom/android/server/sip/SipService$MyEvent;->mLastTriggerTime:J

    .line 1393
    return-void
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "o"

    .prologue
    .line 1404
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1405
    .local v1, s:Ljava/lang/String;
    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1406
    .local v0, index:I
    if-lez v0, :cond_12

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1407
    :cond_12
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, ":"

    .line 1397
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1398
    .local v0, s:Ljava/lang/String;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$MyEvent;->mCallback:Ljava/lang/Runnable;

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService$MyEvent;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
