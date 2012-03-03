.class public Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;
.super Ljava/lang/Object;
.source "Andy_PhotoViewFlipperParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field public mBucketId:Ljava/lang/String;

.field public mPhotoIndex:I

.field public mWidgetId:I

.field public mWidgetSize:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetId:I

    .line 11
    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetSize:I

    .line 12
    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mPhotoIndex:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mBucketId:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetId:I

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetSize:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mPhotoIndex:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .parameter "bucketId"
    .parameter "widgetId"
    .parameter "widgetSize"
    .parameter "photoIndex"

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetId:I

    .line 11
    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetSize:I

    .line 12
    iput v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mPhotoIndex:I

    .line 16
    iput-object p1, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mBucketId:Ljava/lang/String;

    .line 17
    iput p2, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetId:I

    .line 18
    iput p3, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetSize:I

    .line 19
    iput p4, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mPhotoIndex:I

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getBucketId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoIndex()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mPhotoIndex:I

    return v0
.end method

.method public getWidgetId()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetId:I

    return v0
.end method

.method public getWidgetSize()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetSize:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mBucketId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mWidgetSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;->mPhotoIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method
