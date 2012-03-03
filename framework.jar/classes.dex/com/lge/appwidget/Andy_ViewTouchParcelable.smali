.class public Lcom/lge/appwidget/Andy_ViewTouchParcelable;
.super Ljava/lang/Object;
.source "Andy_ViewTouchParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_ViewTouchParcelable;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field public mAppWidgetKey:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/lge/appwidget/Andy_ViewTouchParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_ViewTouchParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_ViewTouchParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "appWidgetKey"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/lge/appwidget/Andy_ViewTouchParcelable;->mAppWidgetKey:I

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_ViewTouchParcelable;->mAppWidgetKey:I

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public getAppWidgetKey()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/lge/appwidget/Andy_ViewTouchParcelable;->mAppWidgetKey:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 27
    iget v0, p0, Lcom/lge/appwidget/Andy_ViewTouchParcelable;->mAppWidgetKey:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    return-void
.end method
