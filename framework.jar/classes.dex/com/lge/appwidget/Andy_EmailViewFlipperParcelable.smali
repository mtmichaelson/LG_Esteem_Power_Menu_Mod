.class public Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;
.super Ljava/lang/Object;
.source "Andy_EmailViewFlipperParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field public mAccountId:I

.field public mAccountName:Ljava/lang/String;

.field public mAccountType:I

.field public mEmailAddress:Ljava/lang/String;

.field public mIsPriority:I

.field public mIsattach:J

.field public mIsunread:I

.field public mMessage:Ljava/lang/String;

.field public mMsgBoxId:I

.field public mMsgIdx:I

.field public mName:Ljava/lang/String;

.field public mPhotoUri:Ljava/lang/String;

.field public mTimeStamp:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .parameter "idx"
    .parameter "name"
    .parameter "title"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isUnread"
    .parameter "isPriority"
    .parameter "isAttach"
    .parameter "photoUri"
    .parameter "msgId"
    .parameter "accountId"
    .parameter "accountName"
    .parameter "emailAddress"
    .parameter "accountType"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgIdx:I

    .line 26
    iput-object p2, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mTitle:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mTimeStamp:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMessage:Ljava/lang/String;

    .line 30
    iput p6, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsunread:I

    .line 31
    iput p7, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsPriority:I

    .line 32
    iput-wide p8, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsattach:J

    .line 33
    iput-object p10, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mPhotoUri:Ljava/lang/String;

    .line 34
    iput p11, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgBoxId:I

    .line 35
    iput p12, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountId:I

    .line 36
    iput-object p13, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountName:Ljava/lang/String;

    .line 37
    iput-object p14, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mEmailAddress:Ljava/lang/String;

    .line 38
    iput p15, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountType:I

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

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgIdx:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mName:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mTitle:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mTimeStamp:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMessage:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsunread:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsPriority:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsattach:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mPhotoUri:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgBoxId:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountId:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mEmailAddress:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountType:I

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
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountId:I

    return v0
.end method

.method public getAccountName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountType:I

    return v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIsattach()J
    .registers 3

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsattach:J

    return-wide v0
.end method

.method public getIsunread()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsunread:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgBoxId()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgBoxId:I

    return v0
.end method

.method public getMsgId()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgIdx:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mPhotoUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsPriority:I

    return v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 66
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsunread:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mIsattach:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mPhotoUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mMsgBoxId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/lge/appwidget/Andy_EmailViewFlipperParcelable;->mAccountType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method
