.class final Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable$1;
.super Ljava/lang/Object;
.source "Andy_PhotoViewFlipperParcelable.java"


# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;
    .registers 3
    .parameter "in"

    .prologue
    .line 49
    new-instance v0, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    invoke-direct {v0, p1}, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;
    .registers 3
    .parameter "size"

    .prologue
    .line 54
    new-array v0, p1, [Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable$1;->newArray(I)[Lcom/lge/appwidget/Andy_PhotoViewFlipperParcelable;

    move-result-object v0

    return-object v0
.end method