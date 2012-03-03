.class public final Landroid/bluetooth/BluetoothClass;
.super Ljava/lang/Object;
.source "BluetoothClass.java"


# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothClass$Device;,
        Landroid/bluetooth/BluetoothClass$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothClass;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR:I = -0x1000000

.field public static final PROFILE_A2DP:I = 0x1

.field public static final PROFILE_BPP:I = 0x3

.field public static final PROFILE_HEADSET:I = 0x0

.field public static final PROFILE_OPP:I = 0x2



# instance fields
.field private final mClass:I



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    new-instance v0, Landroid/bluetooth/BluetoothClass$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothClass$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "classInt"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    .line 64
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public doesClassMatch(I)Z
    .registers 5
    .parameter "profile"

    .prologue
    const/high16 v0, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 337
    if-ne p1, v1, :cond_19

    .line 338
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 406
    :goto_d
    return v0

    .line 344
    :cond_e
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    move v0, v2

    .line 351
    goto :goto_d

    :sswitch_17
    move v0, v1

    .line 349
    goto :goto_d

    .line 353
    :cond_19
    if-nez p1, :cond_2e

    .line 356
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 357
    goto :goto_d

    .line 360
    :cond_23
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_68

    move v0, v2

    .line 366
    goto :goto_d

    :sswitch_2c
    move v0, v1

    .line 364
    goto :goto_d

    .line 368
    :cond_2e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_46

    .line 369
    const/high16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    .line 370
    goto :goto_d

    .line 373
    :cond_3b
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    move v0, v2

    .line 389
    goto :goto_d

    :sswitch_44
    move v0, v1

    .line 387
    goto :goto_d

    .line 392
    :cond_46
    const/4 v0, 0x3

    if-ne p1, v0, :cond_54

    .line 398
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    packed-switch v0, :pswitch_data_ac

    move v0, v2

    .line 402
    goto :goto_d

    :pswitch_52
    move v0, v1

    .line 400
    goto :goto_d

    :cond_54
    move v0, v2

    .line 406
    goto :goto_d

    .line 344
    :sswitch_data_56
    .sparse-switch
        0x414 -> :sswitch_17
        0x418 -> :sswitch_17
        0x420 -> :sswitch_17
        0x428 -> :sswitch_17
    .end sparse-switch

    .line 360
    :sswitch_data_68
    .sparse-switch
        0x404 -> :sswitch_2c
        0x408 -> :sswitch_2c
        0x420 -> :sswitch_2c
    .end sparse-switch

    .line 373
    :sswitch_data_76
    .sparse-switch
        0x100 -> :sswitch_44
        0x104 -> :sswitch_44
        0x108 -> :sswitch_44
        0x10c -> :sswitch_44
        0x110 -> :sswitch_44
        0x114 -> :sswitch_44
        0x118 -> :sswitch_44
        0x200 -> :sswitch_44
        0x204 -> :sswitch_44
        0x208 -> :sswitch_44
        0x20c -> :sswitch_44
        0x210 -> :sswitch_44
        0x214 -> :sswitch_44
    .end sparse-switch

    .line 398
    :pswitch_data_ac
    .packed-switch 0x600
        :pswitch_52
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 68
    instance-of v0, p1, Landroid/bluetooth/BluetoothClass;

    if-eqz v0, :cond_11

    .line 69
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    check-cast p1, Landroid/bluetooth/BluetoothClass;

    .end local p1       
    iget v1, p1, Landroid/bluetooth/BluetoothClass;->mClass:I

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    .line 71
    :goto_e
    return v0

    :cond_f
    move v0, v2

    .line 69
    goto :goto_e

    .restart local p1       
    :cond_11
    move v0, v2

    .line 71
    goto :goto_e
.end method

.method public getDeviceClass()I
    .registers 2

    .prologue
    .line 313
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1ffc

    return v0
.end method

.method public getMajorDeviceClass()I
    .registers 2

    .prologue
    .line 300
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public hasService(I)Z
    .registers 4
    .parameter "service"

    .prologue
    .line 148
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    and-int/2addr v0, p1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 99
    iget v0, p0, Landroid/bluetooth/BluetoothClass;->mClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return-void
.end method
