.class final Landroid/net/InterfaceConfiguration$1;
.super Ljava/lang/Object;
.source "InterfaceConfiguration.java"


# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/InterfaceConfiguration;
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
        "Landroid/net/InterfaceConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/InterfaceConfiguration;
    .registers 4
    .parameter "in"

    .prologue
    .line 89
    new-instance v0, Landroid/net/InterfaceConfiguration;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 90
    .local v0, info:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/InterfaceConfiguration;->hwAddr:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/InterfaceConfiguration;->ipAddr:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/InterfaceConfiguration;->netmask:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 94
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/InterfaceConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/InterfaceConfiguration;
    .registers 3
    .parameter "size"

    .prologue
    .line 98
    new-array v0, p1, [Landroid/net/InterfaceConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/net/InterfaceConfiguration$1;->newArray(I)[Landroid/net/InterfaceConfiguration;

    move-result-object v0

    return-object v0
.end method
