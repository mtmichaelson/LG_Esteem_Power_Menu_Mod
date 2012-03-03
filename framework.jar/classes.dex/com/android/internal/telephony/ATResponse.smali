.class public Lcom/android/internal/telephony/ATResponse;
.super Ljava/lang/Object;
.source "ATResponse.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/ATResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final CRLF:Ljava/lang/String; = "\n"

.field public static final OK:I = 0x1

.field public static final RESPONSE_ERROR:Ljava/lang/String; = "ERROR"

.field public static final RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final TAG:Ljava/lang/String; = "ATResponse"



# instance fields
.field mData:[Ljava/lang/String;

.field private mResponse:Ljava/lang/String;

.field mResult:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Lcom/android/internal/telephony/ATResponse$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/ATResponse$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/ATResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I[Ljava/lang/String;)V
    .registers 6
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    const-string v2, "ATResponse"

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ATResponse;->mResult:I

    .line 13
    iput-object v1, p0, Lcom/android/internal/telephony/ATResponse;->mData:[Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/android/internal/telephony/ATResponse;->mResponse:Ljava/lang/String;

    .line 57
    const-string v0, "ATResponse"

    const-string v0, " ATResponse(int result; String [] data) "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput p1, p0, Lcom/android/internal/telephony/ATResponse;->mResult:I

    .line 59
    iput-object p2, p0, Lcom/android/internal/telephony/ATResponse;->mData:[Ljava/lang/String;

    .line 60
    const-string v0, "ATResponse"

    const-string v0, " ATResponse(int result; String [] data) end"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v5, p0, Lcom/android/internal/telephony/ATResponse;->mResult:I

    .line 13
    iput-object v2, p0, Lcom/android/internal/telephony/ATResponse;->mData:[Ljava/lang/String;

    .line 14
    iput-object v2, p0, Lcom/android/internal/telephony/ATResponse;->mResponse:Ljava/lang/String;

    .line 65
    const-string v2, "ATResponse"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ATResponse() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/ATResponse;->mResponse:Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/android/internal/telephony/ATResponse;->mResponse:Ljava/lang/String;

    if-eqz v2, :cond_4d

    .line 68
    iget-object v2, p0, Lcom/android/internal/telephony/ATResponse;->mResponse:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, split_resp:[Ljava/lang/String;
    array-length v2, v1

    sub-int v0, v2, v6

    .line 70
    .local v0, size:I
    aget-object v2, v1, v0

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    move v2, v6

    :goto_40
    iput v2, p0, Lcom/android/internal/telephony/ATResponse;->mResult:I

    .line 71
    if-lez v0, :cond_4d

    .line 72
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/ATResponse;->mData:[Ljava/lang/String;

    .line 73
    iget-object v2, p0, Lcom/android/internal/telephony/ATResponse;->mData:[Ljava/lang/String;

    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .end local v0       #size:I,
    .end local v1       #split_resp:[Ljava/lang/String;,
    :cond_4d
    return-void

    .restart local v0       #size:I,
    .restart local v1       #split_resp:[Ljava/lang/String;,
    :cond_4e
    move v2, v5

    .line 70
    goto :goto_40
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/android/internal/telephony/ATResponse;
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    invoke-static {p0}, Lcom/android/internal/telephony/ATResponse;->createFromString(Ljava/lang/String;)Lcom/android/internal/telephony/ATResponse;

    move-result-object v0

    return-object v0
.end method

.method private static createFromString(Ljava/lang/String;)Lcom/android/internal/telephony/ATResponse;
    .registers 10
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "ATResponse"

    .line 38
    const-string v4, "ATResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " createFromString() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v2, 0x0

    .line 40
    .local v2, result:I
    const/4 v0, 0x0

    .line 41
    .local v0, final_resp:[Ljava/lang/String;
    if-eqz p0, :cond_7f

    .line 42
    const-string v4, "\n"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, split_resp:[Ljava/lang/String;
    array-length v4, v3

    sub-int/2addr v4, v6

    aget-object v4, v3, v4

    const-string v5, "OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 44
    const/4 v2, 0x1

    .line 46
    :cond_33
    array-length v4, v3

    sub-int/2addr v4, v6

    new-array v0, v4, [Ljava/lang/String;

    .line 47
    array-length v4, v3

    sub-int/2addr v4, v6

    invoke-static {v3, v8, v0, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    const-string v4, "ATResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFromParcel result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v1, 0x0

    .local v1, i:I
    :goto_55
    array-length v4, v0

    if-ge v1, v4, :cond_7f

    .line 50
    const-string v4, "ATResponse"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createFromParcel response line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 53
    .end local v1       #i:I,
    .end local v3       #split_resp:[Ljava/lang/String;,
    :cond_7f
    new-instance v4, Lcom/android/internal/telephony/ATResponse;

    invoke-direct {v4, v2, v0}, Lcom/android/internal/telephony/ATResponse;-><init>(I[Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getData()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponse;->mData:[Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/android/internal/telephony/ATResponse;->mResult:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 91
    const-string v0, "ATResponse"

    const-string v1, " writeToParcel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/ATResponse;->mResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return-void
.end method
