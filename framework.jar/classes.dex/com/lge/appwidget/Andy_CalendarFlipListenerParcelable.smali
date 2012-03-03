.class public Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;
.super Ljava/lang/Object;
.source "Andy_CalendarFlipListenerParcelable.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field public mAppWidgetId:I

.field public mViewId:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "appWidgetId"
    .parameter "viewId"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;->mAppWidgetId:I

    .line 14
    iput p2, p0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;->mViewId:I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;->mAppWidgetId:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;->mViewId:I

    .line 21
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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;->mAppWidgetId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget v0, p0, Lcom/lge/appwidget/Andy_CalendarFlipListenerParcelable;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    return-void
.end method
