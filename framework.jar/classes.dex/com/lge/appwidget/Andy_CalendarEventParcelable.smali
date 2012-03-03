.class public Lcom/lge/appwidget/Andy_CalendarEventParcelable;
.super Ljava/lang/Object;
.source "Andy_CalendarEventParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarEventParcelable;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field public mBegin:J

.field public mColor:I

.field public mEnd:J

.field public mEndDay:I

.field public mEndMinute:I

.field public mEventId:J

.field public mEventLocation:Ljava/lang/String;

.field public mIsAllDay:I

.field public mQueryJulianDay:I

.field public mStartDay:I

.field public mStartMinute:I

.field public mTitle:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_CalendarEventParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "queryJulianDay"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mQueryJulianDay:I

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventLocation:Ljava/lang/String;

    .line 23
    iput p1, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mQueryJulianDay:I

    .line 24
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IJJIILjava/lang/String;III)V
    .registers 16
    .parameter "eventId"
    .parameter "title"
    .parameter "isAllDay"
    .parameter "begin"
    .parameter "end"
    .parameter "startday"
    .parameter "endDay"
    .parameter "eventLocation"
    .parameter "startMinute"
    .parameter "endMinute"
    .parameter "color"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mQueryJulianDay:I

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventLocation:Ljava/lang/String;

    .line 29
    iput-wide p1, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventId:J

    .line 30
    iput-object p3, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mTitle:Ljava/lang/String;

    .line 31
    iput p4, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mIsAllDay:I

    .line 32
    iput-wide p5, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mBegin:J

    .line 33
    iput-wide p7, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEnd:J

    .line 34
    iput p9, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartDay:I

    .line 35
    iput p10, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEndDay:I

    .line 36
    iput-object p11, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventLocation:Ljava/lang/String;

    .line 37
    iput p12, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartMinute:I

    .line 38
    iput p13, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEndMinute:I

    .line 39
    iput p14, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mColor:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mQueryJulianDay:I

    .line 16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventLocation:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mQueryJulianDay:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventId:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mTitle:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mIsAllDay:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mBegin:J

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEnd:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartDay:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEndDay:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventLocation:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartMinute:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEndMinute:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mColor:I

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 65
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mQueryJulianDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mIsAllDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mBegin:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-wide v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEnd:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEndDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEventLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mStartMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mEndMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarEventParcelable;->mColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return-void
.end method
