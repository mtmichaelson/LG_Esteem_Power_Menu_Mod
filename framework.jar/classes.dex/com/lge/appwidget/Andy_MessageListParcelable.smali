.class public Lcom/lge/appwidget/Andy_MessageListParcelable;
.super Ljava/lang/Object;
.source "Andy_MessageListParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CBS_MESSAGE_TYPE:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_MessageListParcelable;",
            ">;"
        }
    .end annotation
.end field

.field public static final MMS_MESSAGE_TYPE:I = 0x1

.field public static final SMS_MESSAGE_TYPE:I



# instance fields
.field public mId:J

.field public mIsRead:I

.field public mMessage:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mThreadId:J

.field public mTime:Ljava/lang/String;

.field public mType:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/lge/appwidget/Andy_MessageListParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_MessageListParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_MessageListParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "id"
    .parameter "type"
    .parameter "threadId"
    .parameter "isRead"
    .parameter "name"
    .parameter "time"
    .parameter "message"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mId:J

    .line 24
    iput p3, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mType:I

    .line 25
    iput-wide p4, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mThreadId:J

    .line 26
    iput p6, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mIsRead:I

    .line 27
    iput-object p7, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mName:Ljava/lang/String;

    .line 28
    iput-object p8, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mTime:Ljava/lang/String;

    .line 29
    iput-object p9, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mMessage:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mId:J

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mType:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mThreadId:J

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mIsRead:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mTime:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mMessage:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mId:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .registers 3

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mThreadId:J

    return-wide v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mType:I

    return v0
.end method

.method public isRead()Z
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mIsRead:I

    if-nez v0, :cond_6

    .line 91
    const/4 v0, 0x0

    .line 94
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
    .line 50
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mThreadId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mIsRead:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageListParcelable;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
