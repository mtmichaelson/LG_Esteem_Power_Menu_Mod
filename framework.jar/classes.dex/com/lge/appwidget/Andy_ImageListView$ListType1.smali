.class public Lcom/lge/appwidget/Andy_ImageListView$ListType1;
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
    name = "ListType1"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_ImageListView$ListType1;",
            ">;"
        }
    .end annotation
.end field

.field mstring1:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/appwidget/Andy_ImageListView;



# direct methods
.method public constructor <init>(Lcom/lge/appwidget/Andy_ImageListView;Landroid/os/Parcel;)V
    .registers 4
    .parameter
    .parameter "parcel"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType1;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Lcom/lge/appwidget/Andy_ImageListView$ListType1$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_ImageListView$ListType1$1;-><init>(Lcom/lge/appwidget/Andy_ImageListView$ListType1;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType1;->mstring1:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/lge/appwidget/Andy_ImageListView;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "string1"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType1;->this$0:Lcom/lge/appwidget/Andy_ImageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Lcom/lge/appwidget/Andy_ImageListView$ListType1$1;

    invoke-direct {v0, p0}, Lcom/lge/appwidget/Andy_ImageListView$ListType1$1;-><init>(Lcom/lge/appwidget/Andy_ImageListView$ListType1;)V

    iput-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 170
    iput-object p2, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType1;->mstring1:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/appwidget/Andy_ImageListView$ListType1;->mstring1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    return-void
.end method
