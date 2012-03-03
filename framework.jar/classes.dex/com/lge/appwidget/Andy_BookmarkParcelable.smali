.class public Lcom/lge/appwidget/Andy_BookmarkParcelable;
.super Ljava/lang/Object;
.source "Andy_BookmarkParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_BookmarkParcelable;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field public mThumbnail:[B

.field public mTitle:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/lge/appwidget/Andy_BookmarkParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_BookmarkParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mUrl:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mTitle:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mThumbnail:[B

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .parameter "url"
    .parameter "title"
    .parameter "thumb"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mUrl:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mTitle:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mThumbnail:[B

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getThumbnail()[B
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mThumbnail:[B

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/lge/appwidget/Andy_BookmarkParcelable;->mThumbnail:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 32
    return-void
.end method
