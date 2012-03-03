.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"


# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_getActiveAdmins:I = 0x10

.field static final TRANSACTION_getAllowDeviceCamera:I = 0x2c

.field static final TRANSACTION_getAllowDeviceWifi:I = 0x2e

.field static final TRANSACTION_getAllowSimplePassword:I = 0x1a

.field static final TRANSACTION_getAllowUnsignedApplications:I = 0x23

.field static final TRANSACTION_getAllowUnsignedInstallationPackages:I = 0x25

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x6

.field static final TRANSACTION_getFailPasswordCount:I = 0x28

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x8

.field static final TRANSACTION_getMaximumTimeToLock:I = 0xb

.field static final TRANSACTION_getMinimumPasswordComplexCharacters:I = 0x18

.field static final TRANSACTION_getPasswordExpiration:I = 0x1e

.field static final TRANSACTION_getPasswordHistory:I = 0x1c

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPasswordRecoveryEnabled:I = 0x20

.field static final TRANSACTION_getRemoveWarning:I = 0x12

.field static final TRANSACTION_getRequireDeviceEncryption:I = 0x2a

.field static final TRANSACTION_getSecurityLockOn:I = 0x27

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x5

.field static final TRANSACTION_isAdminActive:I = 0xf

.field static final TRANSACTION_lockNow:I = 0xc

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x11

.field static final TRANSACTION_removeActiveAdmin:I = 0x13

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x15

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x16

.field static final TRANSACTION_resetPassword:I = 0x9

.field static final TRANSACTION_setActiveAdmin:I = 0xe

.field static final TRANSACTION_setActivePasswordState:I = 0x14

.field static final TRANSACTION_setActivePasswordStateExtension:I = 0x21

.field static final TRANSACTION_setAllowDeviceCamera:I = 0x2b

.field static final TRANSACTION_setAllowDeviceWifi:I = 0x2d

.field static final TRANSACTION_setAllowSimplePassword:I = 0x19

.field static final TRANSACTION_setAllowUnsignedApplications:I = 0x22

.field static final TRANSACTION_setAllowUnsignedInstallationPackages:I = 0x24

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x7

.field static final TRANSACTION_setMaximumTimeToLock:I = 0xa

.field static final TRANSACTION_setMinimumPasswordComplexCharacters:I = 0x17

.field static final TRANSACTION_setPasswordExpiration:I = 0x1d

.field static final TRANSACTION_setPasswordHistory:I = 0x1b

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPasswordRecoveryEnabled:I = 0x1f

.field static final TRANSACTION_setRequireDeviceEncryption:I = 0x29

.field static final TRANSACTION_setSecurityLockOn:I = 0x26

.field static final TRANSACTION_wipeData:I = 0xd



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_3
    return-object v1

    .line 30
    :cond_4
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.app.admin.IDevicePolicyManager"

    .line 42
    sparse-switch p1, :sswitch_data_5c6

    .line 672
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_b
    return v6

    .line 46
    :sswitch_c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 47
    goto :goto_b

    .line 51
    :sswitch_13
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32

    .line 54
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 60
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 63
    goto :goto_b

    .line 57
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:I,
    :cond_32
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_26

    .line 67
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_34
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53

    .line 70
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 75
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_47
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v3

    .line 76
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 78
    goto :goto_b

    .line 73
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:I,
    :cond_53
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_47

    .line 82
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_55
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_74

    .line 85
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 91
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1       #_arg1:I,
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 94
    goto :goto_b

    .line 88
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:I,
    :cond_74
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_68

    .line 98
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_76
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_96

    .line 101
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 106
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_89
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 107
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 109
    goto/16 :goto_b

    .line 104
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:I,
    :cond_96
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_89

    .line 113
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_98
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v3

    .line 115
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v3, :cond_ad

    move v6, v7

    :goto_a7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 117
    goto/16 :goto_b

    :cond_ad
    move v6, v9

    .line 116
    goto :goto_a7

    .line 121
    .end local v3       #_result:Z,
    :sswitch_af
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts()I

    move-result v3

    .line 123
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 125
    goto/16 :goto_b

    .line 129
    .end local v3       #_result:I,
    :sswitch_c1
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e1

    .line 132
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 138
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1       #_arg1:I,
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 141
    goto/16 :goto_b

    .line 135
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:I,
    :cond_e1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_d4

    .line 145
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_e3
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_103

    .line 148
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 153
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_f6
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v3

    .line 154
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 156
    goto/16 :goto_b

    .line 151
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:I,
    :cond_103
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_f6

    .line 160
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_105
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1       #_arg1:I,
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v3

    .line 166
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v3, :cond_122

    move v6, v7

    :goto_11c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 168
    goto/16 :goto_b

    :cond_122
    move v6, v9

    .line 167
    goto :goto_11c

    .line 172
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v1       #_arg1:I,
    .end local v3       #_result:Z,
    :sswitch_124
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_144

    .line 175
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 181
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_137
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 182
    .local v1, _arg1:J
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 184
    goto/16 :goto_b

    .line 178
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:J,
    :cond_144
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_137

    .line 188
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_146
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_166

    .line 191
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 196
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_159
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 197
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v6, v7

    .line 199
    goto/16 :goto_b

    .line 194
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:J,
    :cond_166
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_159

    .line 203
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_168
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 206
    goto/16 :goto_b

    .line 210
    :sswitch_176
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 215
    goto/16 :goto_b

    .line 219
    .end local v0       #_arg0:I,
    :sswitch_188
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a4

    .line 222
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 227
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_19b
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 229
    goto/16 :goto_b

    .line 225
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :cond_1a4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_19b

    .line 233
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_1a6
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c9

    .line 236
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 241
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_1b9
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v3

    .line 242
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    if-eqz v3, :cond_1cb

    move v6, v7

    :goto_1c3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 244
    goto/16 :goto_b

    .line 239
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :cond_1c9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_1b9

    .restart local v3       #_result:Z,
    :cond_1cb
    move v6, v9

    .line 243
    goto :goto_1c3

    .line 248
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :sswitch_1cd
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v5

    .line 250
    .local v5, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v6, v7

    .line 252
    goto/16 :goto_b

    .line 256
    .end local v5       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_1df
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    .line 260
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v3, :cond_1f8

    move v6, v7

    :goto_1f2
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 262
    goto/16 :goto_b

    :cond_1f8
    move v6, v9

    .line 261
    goto :goto_1f2

    .line 266
    .end local v0       #_arg0:Ljava/lang/String;,
    .end local v3       #_result:Z,
    :sswitch_1fa
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_224

    .line 269
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 275
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_20d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_226

    .line 276
    sget-object v6, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 281
    .local v1, _arg1:Landroid/os/RemoteCallback;
    :goto_21b
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 283
    goto/16 :goto_b

    .line 272
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Landroid/os/RemoteCallback;,
    :cond_224
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_20d

    .line 279
    :cond_226
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/RemoteCallback;,
    goto :goto_21b

    .line 287
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Landroid/os/RemoteCallback;,
    :sswitch_228
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_244

    .line 290
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 295
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_23b
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 297
    goto/16 :goto_b

    .line 293
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :cond_244
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_23b

    .line 301
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_246
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 306
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(II)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 308
    goto/16 :goto_b

    .line 312
    .end local v0       #_arg0:I,
    .end local v1       #_arg1:I,
    :sswitch_25c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt()V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 315
    goto/16 :goto_b

    .line 319
    :sswitch_26a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt()V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 322
    goto/16 :goto_b

    .line 326
    :sswitch_278
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_298

    .line 329
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 335
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_28b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 336
    .restart local v1       #_arg1:I,
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinimumPasswordComplexCharacters(Landroid/content/ComponentName;I)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 338
    goto/16 :goto_b

    .line 332
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:I,
    :cond_298
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_28b

    .line 342
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_29a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2ba

    .line 345
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 350
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_2ad
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinimumPasswordComplexCharacters(Landroid/content/ComponentName;)I

    move-result v3

    .line 351
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 353
    goto/16 :goto_b

    .line 348
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:I,
    :cond_2ba
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_2ad

    .line 357
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_2bc
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2df

    .line 360
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 366
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_2cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e1

    move v1, v7

    .line 367
    .local v1, _arg1:Z
    :goto_2d6
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowSimplePassword(Landroid/content/ComponentName;Z)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 369
    goto/16 :goto_b

    .line 363
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Z,
    :cond_2df
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_2cf

    :cond_2e1
    move v1, v9

    .line 366
    goto :goto_2d6

    .line 373
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_2e3
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_306

    .line 376
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 381
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_2f6
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowSimplePassword(Landroid/content/ComponentName;)Z

    move-result v3

    .line 382
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    if-eqz v3, :cond_308

    move v6, v7

    :goto_300
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 384
    goto/16 :goto_b

    .line 379
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :cond_306
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_2f6

    .restart local v3       #_result:Z,
    :cond_308
    move v6, v9

    .line 383
    goto :goto_300

    .line 388
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :sswitch_30a
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_32a

    .line 391
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 397
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_31d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 398
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 399
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 400
    goto/16 :goto_b

    .line 394
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:I,
    :cond_32a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_31d

    .line 404
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_32c
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34c

    .line 407
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 412
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_33f
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v3

    .line 413
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 415
    goto/16 :goto_b

    .line 410
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:I,
    :cond_34c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_33f

    .line 419
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_34e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36e

    .line 422
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 428
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    .restart local v1       #_arg1:I,
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpiration(Landroid/content/ComponentName;I)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 431
    goto/16 :goto_b

    .line 425
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:I,
    :cond_36e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_361

    .line 435
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_370
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_390

    .line 438
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 443
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_383
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;)I

    move-result v3

    .line 444
    .restart local v3       #_result:I,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 446
    goto/16 :goto_b

    .line 441
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:I,
    :cond_390
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_383

    .line 450
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_392
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b9

    .line 453
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 459
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_3a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3bb

    move v1, v7

    .line 460
    .local v1, _arg1:Z
    :goto_3ac
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)Ljava/lang/String;

    move-result-object v3

    .line 461
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 463
    goto/16 :goto_b

    .line 456
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Z,
    .end local v3       #_result:Ljava/lang/String;,
    :cond_3b9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_3a5

    :cond_3bb
    move v1, v9

    .line 459
    goto :goto_3ac

    .line 467
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_3bd
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e0

    .line 470
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 475
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_3d0
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 476
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v3, :cond_3e2

    move v6, v7

    :goto_3da
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 478
    goto/16 :goto_b

    .line 473
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :cond_3e0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_3d0

    .restart local v3       #_result:Z,
    :cond_3e2
    move v6, v9

    .line 477
    goto :goto_3da

    .line 482
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :sswitch_3e4
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 486
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3fd

    move v1, v7

    .line 487
    .restart local v1       #_arg1:Z,
    :goto_3f4
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordStateExtension(IZ)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 489
    goto/16 :goto_b

    .end local v1       #_arg1:Z,
    :cond_3fd
    move v1, v9

    .line 486
    goto :goto_3f4

    .line 493
    .end local v0       #_arg0:I,
    :sswitch_3ff
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_422

    .line 496
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 502
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_424

    move v1, v7

    .line 503
    .restart local v1       #_arg1:Z,
    :goto_419
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowUnsignedApplications(Landroid/content/ComponentName;Z)V

    .line 504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 505
    goto/16 :goto_b

    .line 499
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Z,
    :cond_422
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_412

    :cond_424
    move v1, v9

    .line 502
    goto :goto_419

    .line 509
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_426
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_449

    .line 512
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 517
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_439
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowUnsignedApplications(Landroid/content/ComponentName;)Z

    move-result v3

    .line 518
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    if-eqz v3, :cond_44b

    move v6, v7

    :goto_443
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 520
    goto/16 :goto_b

    .line 515
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :cond_449
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_439

    .restart local v3       #_result:Z,
    :cond_44b
    move v6, v9

    .line 519
    goto :goto_443

    .line 524
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :sswitch_44d
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_470

    .line 527
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 533
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_472

    move v1, v7

    .line 534
    .restart local v1       #_arg1:Z,
    :goto_467
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowUnsignedInstallationPackages(Landroid/content/ComponentName;Z)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 536
    goto/16 :goto_b

    .line 530
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Z,
    :cond_470
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_460

    :cond_472
    move v1, v9

    .line 533
    goto :goto_467

    .line 540
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_474
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_497

    .line 543
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 548
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_487
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowUnsignedInstallationPackages(Landroid/content/ComponentName;)Z

    move-result v3

    .line 549
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 550
    if-eqz v3, :cond_499

    move v6, v7

    :goto_491
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 551
    goto/16 :goto_b

    .line 546
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :cond_497
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_487

    .restart local v3       #_result:Z,
    :cond_499
    move v6, v9

    .line 550
    goto :goto_491

    .line 555
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :sswitch_49b
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b0

    move v0, v7

    .line 558
    .local v0, _arg0:Z
    :goto_4a7
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLockOn(Z)V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 560
    goto/16 :goto_b

    .end local v0       #_arg0:Z,
    :cond_4b0
    move v0, v9

    .line 557
    goto :goto_4a7

    .line 564
    :sswitch_4b2
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSecurityLockOn()Z

    move-result v3

    .line 566
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    if-eqz v3, :cond_4c7

    move v6, v7

    :goto_4c1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 568
    goto/16 :goto_b

    :cond_4c7
    move v6, v9

    .line 567
    goto :goto_4c1

    .line 572
    .end local v3       #_result:Z,
    :sswitch_4c9
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getFailPasswordCount()I

    move-result v3

    .line 574
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 576
    goto/16 :goto_b

    .line 580
    .end local v3       #_result:I,
    :sswitch_4db
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4fe

    .line 583
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 589
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_4ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_500

    move v1, v7

    .line 590
    .restart local v1       #_arg1:Z,
    :goto_4f5
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 592
    goto/16 :goto_b

    .line 586
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Z,
    :cond_4fe
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_4ee

    :cond_500
    move v1, v9

    .line 589
    goto :goto_4f5

    .line 596
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_502
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_525

    .line 599
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 604
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_515
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireDeviceEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    .line 605
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    if-eqz v3, :cond_527

    move v6, v7

    :goto_51f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 607
    goto/16 :goto_b

    .line 602
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :cond_525
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_515

    .restart local v3       #_result:Z,
    :cond_527
    move v6, v9

    .line 606
    goto :goto_51f

    .line 611
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :sswitch_529
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54c

    .line 614
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 620
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_53c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54e

    move v1, v7

    .line 621
    .restart local v1       #_arg1:Z,
    :goto_543
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowDeviceCamera(Landroid/content/ComponentName;Z)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 623
    goto/16 :goto_b

    .line 617
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Z,
    :cond_54c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_53c

    :cond_54e
    move v1, v9

    .line 620
    goto :goto_543

    .line 627
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_550
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_573

    .line 630
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 635
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_563
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowDeviceCamera(Landroid/content/ComponentName;)Z

    move-result v3

    .line 636
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    if-eqz v3, :cond_575

    move v6, v7

    :goto_56d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 638
    goto/16 :goto_b

    .line 633
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :cond_573
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_563

    .restart local v3       #_result:Z,
    :cond_575
    move v6, v9

    .line 637
    goto :goto_56d

    .line 642
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :sswitch_577
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59a

    .line 645
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 651
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_58a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_59c

    move v1, v7

    .line 652
    .restart local v1       #_arg1:Z,
    :goto_591
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowDeviceWifi(Landroid/content/ComponentName;Z)V

    .line 653
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 654
    goto/16 :goto_b

    .line 648
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v1       #_arg1:Z,
    :cond_59a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_58a

    :cond_59c
    move v1, v9

    .line 651
    goto :goto_591

    .line 658
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    :sswitch_59e
    const-string v6, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c1

    .line 661
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 666
    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    :goto_5b1
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowDeviceWifi(Landroid/content/ComponentName;)Z

    move-result v3

    .line 667
    .restart local v3       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 668
    if-eqz v3, :cond_5c3

    move v6, v7

    :goto_5bb
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 669
    goto/16 :goto_b

    .line 664
    .end local v0       #_arg0:Landroid/content/ComponentName;,
    .end local v3       #_result:Z,
    :cond_5c1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;,
    goto :goto_5b1

    .restart local v3       #_result:Z,
    :cond_5c3
    move v6, v9

    .line 668
    goto :goto_5bb

    .line 42
    nop

    :sswitch_data_5c6
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_34
        0x3 -> :sswitch_55
        0x4 -> :sswitch_76
        0x5 -> :sswitch_98
        0x6 -> :sswitch_af
        0x7 -> :sswitch_c1
        0x8 -> :sswitch_e3
        0x9 -> :sswitch_105
        0xa -> :sswitch_124
        0xb -> :sswitch_146
        0xc -> :sswitch_168
        0xd -> :sswitch_176
        0xe -> :sswitch_188
        0xf -> :sswitch_1a6
        0x10 -> :sswitch_1cd
        0x11 -> :sswitch_1df
        0x12 -> :sswitch_1fa
        0x13 -> :sswitch_228
        0x14 -> :sswitch_246
        0x15 -> :sswitch_25c
        0x16 -> :sswitch_26a
        0x17 -> :sswitch_278
        0x18 -> :sswitch_29a
        0x19 -> :sswitch_2bc
        0x1a -> :sswitch_2e3
        0x1b -> :sswitch_30a
        0x1c -> :sswitch_32c
        0x1d -> :sswitch_34e
        0x1e -> :sswitch_370
        0x1f -> :sswitch_392
        0x20 -> :sswitch_3bd
        0x21 -> :sswitch_3e4
        0x22 -> :sswitch_3ff
        0x23 -> :sswitch_426
        0x24 -> :sswitch_44d
        0x25 -> :sswitch_474
        0x26 -> :sswitch_49b
        0x27 -> :sswitch_4b2
        0x28 -> :sswitch_4c9
        0x29 -> :sswitch_4db
        0x2a -> :sswitch_502
        0x2b -> :sswitch_529
        0x2c -> :sswitch_550
        0x2d -> :sswitch_577
        0x2e -> :sswitch_59e
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
