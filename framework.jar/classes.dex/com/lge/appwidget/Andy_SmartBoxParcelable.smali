.class public Lcom/lge/appwidget/Andy_SmartBoxParcelable;
.super Ljava/lang/Object;
.source "Andy_SmartBoxParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_SmartBoxParcelable;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field public _id:I

.field public _photo:[B

.field public _title:Ljava/lang/String;

.field public _unread:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/lge/appwidget/Andy_SmartBoxParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_SmartBoxParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BI)V
    .registers 5
    .parameter "aId"
    .parameter "aTitle"
    .parameter "aPhoto"
    .parameter "aUnread"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_id:I

    .line 15
    iput-object p2, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_title:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_photo:[B

    .line 17
    iput p4, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_unread:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_id:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_title:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_photo:[B

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_unread:I

    .line 25
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoto()[B
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_photo:[B

    return-object v0
.end method

.method public getRowId()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getUnread()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_unread:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_photo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 35
    iget v0, p0, Lcom/lge/appwidget/Andy_SmartBoxParcelable;->_unread:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void
.end method
