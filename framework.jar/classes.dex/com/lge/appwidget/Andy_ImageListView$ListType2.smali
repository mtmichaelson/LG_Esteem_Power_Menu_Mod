.class public Lcom/lge/appwidget/Andy_ImageListView$ListType2;
.super Ljava/lang/Object;
.source "Andy_ImageListView.java"


# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/appwidget/Andy_ImageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListType2"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_ImageListView$ListType2;",
            ">;"
        }
    .end annotation
.end field

.field mstring1:Ljava/lang/String;

.field mstring2:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_ImageListView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_ImageListView;Landroid/os/Parcel;)V
    .registers 4
    .parameter
    .parameter "parcel"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Lcom/lge/appwidget/Andy_ImageListView$ListType2$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_ImageListView$ListType2$1;-><init>(Lcom/lge/appwidget/Andy_ImageListView$ListType2;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->mstring1:Ljava/lang/String;

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->mstring2:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/lge/appwidget/Andy_ImageListView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "string1"
    .parameter "string2"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Lcom/lge/appwidget/Andy_ImageListView$ListType2$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_ImageListView$ListType2$1;-><init>(Lcom/lge/appwidget/Andy_ImageListView$ListType2;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 206
    iput-object p2, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->mstring1:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->mstring2:Ljava/lang/String;

    .line 208
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->mstring1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType2;->mstring2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    return-void
.end method
