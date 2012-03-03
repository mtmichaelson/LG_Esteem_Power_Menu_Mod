.class Lcom/lge/appwidget/Andy_ImageListView$ListType2$1;
.super Ljava/lang/Object;
.source "Andy_ImageListView.java"


# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ImageListView$ListType2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lge/appwidget/Andy_ImageListView$ListType2;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/appwidget/Andy_ImageListView$ListType2;



# direct methods
.method constructor <init>(Lcom/lge/appwidget/Andy_ImageListView$ListType2;)V
    .registers 2
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2$1;->this$1:Lcom/lge/appwidget/Andy_ImageListView$ListType2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lge/appwidget/Andy_ImageListView$ListType2;
    .registers 6
    .parameter "p"

    .prologue
    .line 222
    new-instance v0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;

    iget-object v1, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2$1;->this$1:Lcom/lge/appwidget/Andy_ImageListView$ListType2;

    iget-object v1, v1, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/appwidget/Andy_ImageListView$ListType2;-><init>(Lcom/lge/appwidget/Andy_ImageListView;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v0, lt:Lcom/lge/appwidget/Andy_ImageListView$ListType2;
    if-nez v0, :cond_1b

    .line 224
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to unparcel"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_1b
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_ImageListView$ListType2$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lge/appwidget/Andy_ImageListView$ListType2;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lge/appwidget/Andy_ImageListView$ListType2;
    .registers 3
    .parameter "size"

    .prologue
    .line 230
    new-array v0, p1, [Lcom/lge/appwidget/Andy_ImageListView$ListType2;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lcom/lge/appwidget/Andy_ImageListView$ListType2$1;->newArray(I)[Lcom/lge/appwidget/Andy_ImageListView$ListType2;

    move-result-object v0

    return-object v0
.end method
