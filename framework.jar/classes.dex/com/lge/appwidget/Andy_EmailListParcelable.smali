.class public Lcom/lge/appwidget/Andy_EmailListParcelable;
.super Ljava/lang/Object;
.source "Andy_EmailListParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_EmailListParcelable;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field public mAccountId:I

.field public mAccountName:Ljava/lang/String;

.field public mAccountType:I

.field public mEmailAddress:Ljava/lang/String;

.field public mIsAttach:J

.field public mIsRead:I

.field public mMessage:Ljava/lang/String;

.field public mMsgBoxIdx:I

.field public mMsgId:I

.field public mName:Ljava/lang/String;

.field public mPriority:I

.field public mSubject:Ljava/lang/String;

.field public mTime:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/lge/appwidget/Andy_EmailListParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_EmailListParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_EmailListParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJILjava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .parameter "msgId"
    .parameter "isRead"
    .parameter "name"
    .parameter "subject"
    .parameter "time"
    .parameter "message"
    .parameter "msgBoxId"
    .parameter "priority"
    .parameter "isAttach"
    .parameter "accountId"
    .parameter "accountName"
    .parameter "emailAddress"
    .parameter "acocuntType"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgId:I

    .line 26
    iput p2, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mIsRead:I

    .line 28
    iput-object p3, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mName:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mSubject:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mTime:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMessage:Ljava/lang/String;

    .line 32
    iput p7, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgBoxIdx:I

    .line 33
    iput p8, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mPriority:I

    .line 34
    iput-wide p9, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mIsAttach:J

    .line 35
    iput p11, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountId:I

    .line 36
    iput-object p12, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountName:Ljava/lang/String;

    .line 37
    iput-object p13, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mEmailAddress:Ljava/lang/String;

    .line 38
    iput p14, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountType:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgId:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mIsRead:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mSubject:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mTime:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMessage:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgBoxIdx:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mPriority:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mIsAttach:J

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountId:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mEmailAddress:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountType:I

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountId()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountId:I

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountType:I

    return v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAttach()J
    .registers 3

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mIsAttach:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgBoxIdx()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgBoxIdx:I

    return v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mPriority:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public isRead()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 119
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mIsRead:I

    if-ne v0, v1, :cond_7

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_6
    return v0

    :cond_7
    move v0, v1

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mIsRead:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mMsgBoxIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mIsAttach:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailListParcelable;->mAccountType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method
