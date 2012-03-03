.class public Lcom/lge/appwidget/Andy_MessageBitmapParcelable;
.super Ljava/lang/Object;
.source "Andy_MessageBitmapParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_MessageBitmapParcelable;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field public mAddress:Ljava/lang/String;

.field public mBitmap:Landroid/graphics/Bitmap;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lcom/lge/appwidget/Andy_MessageBitmapParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_MessageBitmapParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;->mAddress:Ljava/lang/String;

    .line 21
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;->mBitmap:Landroid/graphics/Bitmap;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "address"
    .parameter "bitmap"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;->mAddress:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;->mBitmap:Landroid/graphics/Bitmap;

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/lge/appwidget/Andy_MessageBitmapParcelable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    return-void
.end method
