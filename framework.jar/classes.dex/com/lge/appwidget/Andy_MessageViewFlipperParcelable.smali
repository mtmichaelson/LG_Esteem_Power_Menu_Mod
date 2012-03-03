.class public Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;
.super Ljava/lang/Object;
.source "Andy_MessageViewFlipperParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CBS_MESSAGE_TYPE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;",
            ">;"
        }
    .end annotation
.end field

.field public static final MMS_MESSAGE_TYPE:I = 0x1

.field public static final SMS_MESSAGE_TYPE:I



# instance fields
.field public mAddress:Ljava/lang/String;

.field public mId:J

.field public mIsRead:I

.field public mMessage:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mThreadId:I

.field public mTimeStamp:Ljava/lang/String;

.field public mType:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    new-instance v0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .parameter "id"
    .parameter "type"
    .parameter "threadId"
    .parameter "name"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "isRead"
    .parameter "address"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mId:J

    .line 24
    iput p3, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mType:I

    .line 25
    iput p4, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mThreadId:I

    .line 26
    iput-object p5, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mName:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mMessage:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mTimeStamp:Ljava/lang/String;

    .line 29
    iput p8, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mIsRead:I

    .line 30
    iput-object p9, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mAddress:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mId:J

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mType:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mThreadId:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mMessage:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mTimeStamp:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mIsRead:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mAddress:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public isRead()Z
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mIsRead:I

    if-nez v0, :cond_6

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mTimeStamp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mIsRead:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageViewFlipperParcelable;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return-void
.end method
