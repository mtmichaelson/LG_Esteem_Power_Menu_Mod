.class public Lcom/android/internal/telephony/lte/LtePlmnInfo;
.super Ljava/lang/Object;
.source "LtePlmnInfo.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/lte/LtePlmnInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final GMSS_PRIORITY_ETC:I = 0x3

.field public static final GMSS_PRIORITY_HPLMN:I = 0x0

.field public static final GMSS_PRIORITY_NOT_USED:I = -0x1

.field public static final GMSS_PRIORITY_OPLMN:I = 0x2

.field public static final GMSS_PRIORITY_UPLMN:I = 0x1

.field public static final STATUS_AVAILABLE:I = 0x0

.field public static final STATUS_CURRENT:I = 0x1

.field public static final STATUS_EQUIV_TO_REGISTERED:I = 0x3

.field public static final STATUS_FORBIDDEN:I = 0x4

.field public static final STATUS_REGISTERED:I = 0x2

.field public static final STATUS_UNDEFINED:I = -0x1



# instance fields
.field public gmss_priority:I

.field public plmn_id:I

.field public status:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    new-instance v0, Lcom/android/internal/telephony/lte/LtePlmnInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/lte/LtePlmnInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/lte/LtePlmnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lte/LtePlmnInfo;->plmn_id:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lte/LtePlmnInfo;->gmss_priority:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/lte/LtePlmnInfo;->status:I

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/lte/LtePlmnInfo$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/lte/LtePlmnInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/internal/telephony/lte/LtePlmnInfo;->plmn_id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/lte/LtePlmnInfo;->gmss_priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lcom/android/internal/telephony/lte/LtePlmnInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
