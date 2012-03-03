.class public Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;
.super Ljava/lang/Object;
.source "Andy_WhatsNewParcelable_Bryce.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field public mGroupView:Ljava/lang/String;

.field public mReadCount:I

.field public mSettingView:Ljava/lang/String;

.field public mUnreadCount:I

.field public manotherType:I

.field public mappType:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce$1;

    invoke-direct {v0}, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce$1;-><init>()V

    sput-object v0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mGroupView:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mSettingView:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mappType:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->manotherType:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mUnreadCount:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mReadCount:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 7
    .parameter "groupView"
    .parameter "settingView"
    .parameter "appType"
    .parameter "anotherType"
    .parameter "unreadCount"
    .parameter "readCount"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mGroupView:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mSettingView:Ljava/lang/String;

    .line 19
    iput p3, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mappType:I

    .line 20
    iput p4, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->manotherType:I

    .line 21
    iput p5, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mUnreadCount:I

    .line 22
    iput p6, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mReadCount:I

    .line 23
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public getAnotherType()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->manotherType:I

    return v0
.end method

.method public getAppType()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mappType:I

    return v0
.end method

.method public getGroupView()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mGroupView:Ljava/lang/String;

    return-object v0
.end method

.method public getReadCount()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mReadCount:I

    return v0
.end method

.method public getSettingView()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mSettingView:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadCount()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mUnreadCount:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mGroupView:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mSettingView:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mappType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->manotherType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mUnreadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lcom/lge/appwidget/Andy_WhatsNewParcelable_Bryce;->mReadCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    return-void
.end method
