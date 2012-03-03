.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"


# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_addPackageToPreferred:I = 0x2b

.field static final TRANSACTION_addPermission:I = 0x11

.field static final TRANSACTION_addPermissionAsync:I = 0x46

.field static final TRANSACTION_addPreferredActivity:I = 0x2e

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x5

.field static final TRANSACTION_checkPermission:I = 0xf

.field static final TRANSACTION_checkSignatures:I = 0x14

.field static final TRANSACTION_checkUidPermission:I = 0x10

.field static final TRANSACTION_checkUidSignatures:I = 0x15

.field static final TRANSACTION_clearApplicationUserData:I = 0x39

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x30

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x4

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x38

.field static final TRANSACTION_deletePackage:I = 0x29

.field static final TRANSACTION_enterSafeMode:I = 0x3e

.field static final TRANSACTION_finishPackageInstall:I = 0x28

.field static final TRANSACTION_freeStorage:I = 0x37

.field static final TRANSACTION_freeStorageAndNotify:I = 0x36

.field static final TRANSACTION_getActivityInfo:I = 0xb

.field static final TRANSACTION_getAllPermissionGroups:I = 0x9

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x35

.field static final TRANSACTION_getApplicationInfo:I = 0xa

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x33

.field static final TRANSACTION_getInstallLocation:I = 0x48

.field static final TRANSACTION_getInstalledApplications:I = 0x20

.field static final TRANSACTION_getInstalledPackages:I = 0x1f

.field static final TRANSACTION_getInstallerPackageName:I = 0x2a

.field static final TRANSACTION_getInstrumentationInfo:I = 0x25

.field static final TRANSACTION_getNameForUid:I = 0x17

.field static final TRANSACTION_getPackageGids:I = 0x3

.field static final TRANSACTION_getPackageInfo:I = 0x1

.field static final TRANSACTION_getPackageSizeInfo:I = 0x3a

.field static final TRANSACTION_getPackageUid:I = 0x2

.field static final TRANSACTION_getPackagesForUid:I = 0x16

.field static final TRANSACTION_getPermissionGroupInfo:I = 0x8

.field static final TRANSACTION_getPermissionInfo:I = 0x6

.field static final TRANSACTION_getPersistentApplications:I = 0x21

.field static final TRANSACTION_getPreferredActivities:I = 0x31

.field static final TRANSACTION_getPreferredPackages:I = 0x2d

.field static final TRANSACTION_getProviderInfo:I = 0xe

.field static final TRANSACTION_getReceiverInfo:I = 0xc

.field static final TRANSACTION_getServiceInfo:I = 0xd

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x3c

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x3b

.field static final TRANSACTION_getUidForSharedUser:I = 0x18

.field static final TRANSACTION_hasSystemFeature:I = 0x3d

.field static final TRANSACTION_hasSystemUidErrors:I = 0x41

.field static final TRANSACTION_installPackage:I = 0x27

.field static final TRANSACTION_isProtectedBroadcast:I = 0x13

.field static final TRANSACTION_isSafeMode:I = 0x3f

.field static final TRANSACTION_movePackage:I = 0x45

.field static final TRANSACTION_nextPackageToClean:I = 0x44

.field static final TRANSACTION_performDexOpt:I = 0x42

.field static final TRANSACTION_queryContentProviders:I = 0x24

.field static final TRANSACTION_queryInstrumentation:I = 0x26

.field static final TRANSACTION_queryIntentActivities:I = 0x1a

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x1b

.field static final TRANSACTION_queryIntentReceivers:I = 0x1c

.field static final TRANSACTION_queryIntentServices:I = 0x1e

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x7

.field static final TRANSACTION_querySyncProviders:I = 0x23

.field static final TRANSACTION_removePackageFromPreferred:I = 0x2c

.field static final TRANSACTION_removePermission:I = 0x12

.field static final TRANSACTION_replacePreferredActivity:I = 0x2f

.field static final TRANSACTION_resolveContentProvider:I = 0x22

.field static final TRANSACTION_resolveIntent:I = 0x19

.field static final TRANSACTION_resolveService:I = 0x1d

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x34

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x32

.field static final TRANSACTION_setInstallLocation:I = 0x47

.field static final TRANSACTION_systemReady:I = 0x40

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x43



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_4

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_3
    return-object v1

    .line 32
    :cond_4
    const-string v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_14

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 31
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
    .line 44
    sparse-switch p1, :sswitch_data_c0a

    .line 1041
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 48
    :sswitch_8
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v5, 0x1

    goto :goto_7

    .line 53
    :sswitch_12
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 58
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 59
    .local v18, _result:Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v18, :cond_41

    .line 61
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    :goto_3f
    const/4 v5, 0x1

    goto :goto_7

    .line 65
    :cond_41
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 71
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/PackageInfo;,
    :sswitch_49
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 74
    .restart local v6       #_arg0:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;)I

    move-result v18

    .line 75
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v5, 0x1

    goto :goto_7

    .line 81
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v18       #_result:I,
    :sswitch_68
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .restart local v6       #_arg0:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v18

    .line 85
    .local v18, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 87
    const/4 v5, 0x1

    goto :goto_7

    .line 91
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v18       #_result:[I,
    :sswitch_87
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, _arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 95
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 97
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 101
    .end local v6       #_arg0:[Ljava/lang/String;,
    .end local v18       #_result:[Ljava/lang/String;,
    :sswitch_a7
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 104
    .restart local v6       #_arg0:[Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 105
    .restart local v18       #_result:[Ljava/lang/String;,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 111
    .end local v6       #_arg0:[Ljava/lang/String;,
    .end local v18       #_result:[Ljava/lang/String;,
    :sswitch_c7
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 116
    .restart local v7       #_arg1:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v18

    .line 117
    .local v18, _result:Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v18, :cond_f7

    .line 119
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    :goto_f4
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 123
    :cond_f7
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f4

    .line 129
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/PermissionInfo;,
    :sswitch_ff
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 133
    .restart local v6       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 134
    .restart local v7       #_arg1:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v23

    .line 135
    .local v23, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 137
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 141
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:I,
    .end local v23       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_124
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .restart local v6       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 146
    .restart local v7       #_arg1:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v18

    .line 147
    .local v18, _result:Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v18, :cond_154

    .line 149
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_151
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 153
    :cond_154
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_151

    .line 159
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/PermissionGroupInfo;,
    :sswitch_15c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 162
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v22

    .line 163
    .local v22, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 165
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 169
    .end local v6       #_arg0:I,
    .end local v22       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_17c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 174
    .restart local v7       #_arg1:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    .line 175
    .local v18, _result:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v18, :cond_1ac

    .line 177
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    :goto_1a9
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 181
    :cond_1ac
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a9

    .line 187
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/ApplicationInfo;,
    :sswitch_1b4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f1

    .line 190
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 196
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_1cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 197
    .restart local v7       #_arg1:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    .line 198
    .local v18, _result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v18, :cond_1f3

    .line 200
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_1ee
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 193
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/ActivityInfo;,
    :cond_1f1
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    goto :goto_1cd

    .line 204
    .restart local v7       #_arg1:I,
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;,
    :cond_1f3
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1ee

    .line 210
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/ActivityInfo;,
    :sswitch_1fb
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_238

    .line 213
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 219
    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    :goto_214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 220
    .restart local v7       #_arg1:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    .line 221
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v18, :cond_23a

    .line 223
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    :goto_235
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 216
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/ActivityInfo;,
    :cond_238
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    goto :goto_214

    .line 227
    .restart local v7       #_arg1:I,
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;,
    :cond_23a
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_235

    .line 233
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/ActivityInfo;,
    :sswitch_242
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27f

    .line 236
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 242
    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    :goto_25b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 243
    .restart local v7       #_arg1:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v18

    .line 244
    .local v18, _result:Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v18, :cond_281

    .line 246
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_27c
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 239
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/ServiceInfo;,
    :cond_27f
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    goto :goto_25b

    .line 250
    .restart local v7       #_arg1:I,
    .restart local v18       #_result:Landroid/content/pm/ServiceInfo;,
    :cond_281
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27c

    .line 256
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/ServiceInfo;,
    :sswitch_289
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c6

    .line 259
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 265
    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    :goto_2a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 266
    .restart local v7       #_arg1:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v18

    .line 267
    .local v18, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v18, :cond_2c8

    .line 269
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 275
    :goto_2c3
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 262
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/ProviderInfo;,
    :cond_2c6
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    goto :goto_2a2

    .line 273
    .restart local v7       #_arg1:I,
    .restart local v18       #_result:Landroid/content/pm/ProviderInfo;,
    :cond_2c8
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c3

    .line 279
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/ProviderInfo;,
    :sswitch_2d0
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 285
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 291
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:Ljava/lang/String;,
    .end local v18       #_result:I,
    :sswitch_2f5
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 295
    .restart local v6       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 296
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v18

    .line 297
    .restart local v18       #_result:I,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 303
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:I,
    :sswitch_31a
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_349

    .line 306
    sget-object v5, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 311
    .local v6, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_333
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v18

    .line 312
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    if-eqz v18, :cond_34b

    const/4 v5, 0x1

    :goto_340
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 309
    .end local v6       #_arg0:Landroid/content/pm/PermissionInfo;,
    .end local v18       #_result:Z,
    :cond_349
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/pm/PermissionInfo;,
    goto :goto_333

    .line 313
    .restart local v18       #_result:Z,
    :cond_34b
    const/4 v5, 0x0

    goto :goto_340

    .line 318
    .end local v6       #_arg0:Landroid/content/pm/PermissionInfo;,
    .end local v18       #_result:Z,
    :sswitch_34d
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 327
    .end local v6       #_arg0:Ljava/lang/String;,
    :sswitch_365
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 330
    .restart local v6       #_arg0:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v18

    .line 331
    .restart local v18       #_result:Z,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    if-eqz v18, :cond_387

    const/4 v5, 0x1

    :goto_37e
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 332
    :cond_387
    const/4 v5, 0x0

    goto :goto_37e

    .line 337
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v18       #_result:Z,
    :sswitch_389
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 341
    .restart local v6       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 343
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 349
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:Ljava/lang/String;,
    .end local v18       #_result:I,
    :sswitch_3ae
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 353
    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 354
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v18

    .line 355
    .restart local v18       #_result:I,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 361
    .end local v6       #_arg0:I,
    .end local v7       #_arg1:I,
    .end local v18       #_result:I,
    :sswitch_3d3
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 364
    .restart local v6       #_arg0:I,
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v18

    .line 365
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 367
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 371
    .end local v6       #_arg0:I,
    .end local v18       #_result:[Ljava/lang/String;,
    :sswitch_3f3
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 374
    .restart local v6       #_arg0:I,
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v18

    .line 375
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 377
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 381
    .end local v6       #_arg0:I,
    .end local v18       #_result:Ljava/lang/String;,
    :sswitch_413
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v18

    .line 385
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 391
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v18       #_result:I,
    :sswitch_433
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_475

    .line 394
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 400
    .local v6, _arg0:Landroid/content/Intent;
    :goto_44c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 402
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 403
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 404
    .local v18, _result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v18, :cond_477

    .line 406
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 412
    :goto_472
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 397
    .end local v6       #_arg0:Landroid/content/Intent;,
    .end local v7       #_arg1:Ljava/lang/String;,
    .end local v8       #_arg2:I,
    .end local v18       #_result:Landroid/content/pm/ResolveInfo;,
    :cond_475
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;,
    goto :goto_44c

    .line 410
    .restart local v7       #_arg1:Ljava/lang/String;,
    .restart local v8       #_arg2:I,
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;,
    :cond_477
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_472

    .line 416
    .end local v6       #_arg0:Landroid/content/Intent;,
    .end local v7       #_arg1:Ljava/lang/String;,
    .end local v8       #_arg2:I,
    .end local v18       #_result:Landroid/content/pm/ResolveInfo;,
    :sswitch_47f
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4b6

    .line 419
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 425
    .restart local v6       #_arg0:Landroid/content/Intent;,
    :goto_498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 427
    .restart local v7       #_arg1:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 428
    .restart local v8       #_arg2:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 429
    .local v25, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 431
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 422
    .end local v6       #_arg0:Landroid/content/Intent;,
    .end local v7       #_arg1:Ljava/lang/String;,
    .end local v8       #_arg2:I,
    .end local v25       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4b6
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;,
    goto :goto_498

    .line 435
    .end local v6       #_arg0:Landroid/content/Intent;,
    :sswitch_4b8
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50c

    .line 438
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 444
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_4d1
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/Intent;

    .line 446
    .local v7, _arg1:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, _arg2:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_50e

    .line 449
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 455
    .local v9, _arg3:Landroid/content/Intent;
    :goto_4f1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 457
    .local v10, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg5:I
    move-object/from16 v5, p0

    .line 458
    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 459
    .restart local v25       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 461
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 441
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:[Landroid/content/Intent;,
    .end local v8       #_arg2:[Ljava/lang/String;,
    .end local v9       #_arg3:Landroid/content/Intent;,
    .end local v10       #_arg4:Ljava/lang/String;,
    .end local v11       #_arg5:I,
    .end local v25       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_50c
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    goto :goto_4d1

    .line 452
    .restart local v7       #_arg1:[Landroid/content/Intent;,
    .restart local v8       #_arg2:[Ljava/lang/String;,
    :cond_50e
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/Intent;,
    goto :goto_4f1

    .line 465
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:[Landroid/content/Intent;,
    .end local v8       #_arg2:[Ljava/lang/String;,
    .end local v9       #_arg3:Landroid/content/Intent;,
    :sswitch_510
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_547

    .line 468
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 474
    .local v6, _arg0:Landroid/content/Intent;
    :goto_529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 476
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 477
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 478
    .restart local v25       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 480
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 471
    .end local v6       #_arg0:Landroid/content/Intent;,
    .end local v7       #_arg1:Ljava/lang/String;,
    .end local v8       #_arg2:I,
    .end local v25       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_547
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;,
    goto :goto_529

    .line 484
    .end local v6       #_arg0:Landroid/content/Intent;,
    :sswitch_549
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_58b

    .line 487
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 493
    .restart local v6       #_arg0:Landroid/content/Intent;,
    :goto_562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 495
    .restart local v7       #_arg1:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 496
    .restart local v8       #_arg2:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 497
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    if-eqz v18, :cond_58d

    .line 499
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 505
    :goto_588
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 490
    .end local v6       #_arg0:Landroid/content/Intent;,
    .end local v7       #_arg1:Ljava/lang/String;,
    .end local v8       #_arg2:I,
    .end local v18       #_result:Landroid/content/pm/ResolveInfo;,
    :cond_58b
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;,
    goto :goto_562

    .line 503
    .restart local v7       #_arg1:Ljava/lang/String;,
    .restart local v8       #_arg2:I,
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;,
    :cond_58d
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_588

    .line 509
    .end local v6       #_arg0:Landroid/content/Intent;,
    .end local v7       #_arg1:Ljava/lang/String;,
    .end local v8       #_arg2:I,
    .end local v18       #_result:Landroid/content/pm/ResolveInfo;,
    :sswitch_595
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5cc

    .line 512
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 518
    .restart local v6       #_arg0:Landroid/content/Intent;,
    :goto_5ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 520
    .restart local v7       #_arg1:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 521
    .restart local v8       #_arg2:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 522
    .restart local v25       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 524
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 515
    .end local v6       #_arg0:Landroid/content/Intent;,
    .end local v7       #_arg1:Ljava/lang/String;,
    .end local v8       #_arg2:I,
    .end local v25       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_5cc
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;,
    goto :goto_5ae

    .line 528
    .end local v6       #_arg0:Landroid/content/Intent;,
    :sswitch_5ce
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 531
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v21

    .line 532
    .local v21, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 534
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 538
    .end local v6       #_arg0:I,
    .end local v21       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_5ee
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 541
    .restart local v6       #_arg0:I,
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v19

    .line 542
    .local v19, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 544
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 548
    .end local v6       #_arg0:I,
    .end local v19       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_60e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 551
    .restart local v6       #_arg0:I,
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v19

    .line 552
    .restart local v19       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 554
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 558
    .end local v6       #_arg0:I,
    .end local v19       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_62e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 563
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v18

    .line 564
    .local v18, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    if-eqz v18, :cond_65e

    .line 566
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 572
    :goto_65b
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 570
    :cond_65e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_65b

    .line 576
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/ProviderInfo;,
    :sswitch_666
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 580
    .local v15, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 581
    .local v17, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 584
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 585
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 589
    .end local v15       #_arg0:Ljava/util/List;,, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17       #_arg1:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_696
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 593
    .restart local v6       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 595
    .restart local v7       #_arg1:I,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 596
    .restart local v8       #_arg2:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v24

    .line 597
    .local v24, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 599
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 603
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:I,
    .end local v8       #_arg2:I,
    .end local v24       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_6c0
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6fd

    .line 606
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 612
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_6d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 613
    .restart local v7       #_arg1:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v18

    .line 614
    .local v18, _result:Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    if-eqz v18, :cond_6ff

    .line 616
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 622
    :goto_6fa
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 609
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/InstrumentationInfo;,
    :cond_6fd
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    goto :goto_6d9

    .line 620
    .restart local v7       #_arg1:I,
    .restart local v18       #_result:Landroid/content/pm/InstrumentationInfo;,
    :cond_6ff
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6fa

    .line 626
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v18       #_result:Landroid/content/pm/InstrumentationInfo;,
    :sswitch_707
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 630
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 631
    .restart local v7       #_arg1:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 632
    .local v20, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 634
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 638
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:I,
    .end local v20       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_72c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_764

    .line 641
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 647
    .local v6, _arg0:Landroid/net/Uri;
    :goto_745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v7

    .line 649
    .local v7, _arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 651
    .restart local v8       #_arg2:I,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 652
    .local v9, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 644
    .end local v6       #_arg0:Landroid/net/Uri;,
    .end local v7       #_arg1:Landroid/content/pm/IPackageInstallObserver;,
    .end local v8       #_arg2:I,
    .end local v9       #_arg3:Ljava/lang/String;,
    :cond_764
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/net/Uri;,
    goto :goto_745

    .line 658
    .end local v6       #_arg0:Landroid/net/Uri;,
    :sswitch_766
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 661
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    .line 662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 667
    .end local v6       #_arg0:I,
    :sswitch_77e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 671
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v7

    .line 673
    .local v7, _arg1:Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 674
    .restart local v8       #_arg2:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 675
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 680
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:Landroid/content/pm/IPackageDeleteObserver;,
    .end local v8       #_arg2:I,
    :sswitch_7a4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 683
    .restart local v6       #_arg0:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 684
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 686
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 690
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v18       #_result:Ljava/lang/String;,
    :sswitch_7c4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 693
    .restart local v6       #_arg0:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 699
    .end local v6       #_arg0:Ljava/lang/String;,
    :sswitch_7dc
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 702
    .restart local v6       #_arg0:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 704
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 708
    .end local v6       #_arg0:Ljava/lang/String;,
    :sswitch_7f4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 711
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v21

    .line 712
    .restart local v21       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 714
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 718
    .end local v6       #_arg0:I,
    .end local v21       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_814
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_85c

    .line 721
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 727
    .local v6, _arg0:Landroid/content/IntentFilter;
    :goto_82d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 729
    .local v7, _arg1:I
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    .line 731
    .local v8, _arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_85e

    .line 732
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 737
    .local v9, _arg3:Landroid/content/ComponentName;
    :goto_84d
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 724
    .end local v6       #_arg0:Landroid/content/IntentFilter;,
    .end local v7       #_arg1:I,
    .end local v8       #_arg2:[Landroid/content/ComponentName;,
    .end local v9       #_arg3:Landroid/content/ComponentName;,
    :cond_85c
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/IntentFilter;,
    goto :goto_82d

    .line 735
    .restart local v7       #_arg1:I,
    .restart local v8       #_arg2:[Landroid/content/ComponentName;,
    :cond_85e
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/ComponentName;,
    goto :goto_84d

    .line 743
    .end local v6       #_arg0:Landroid/content/IntentFilter;,
    .end local v7       #_arg1:I,
    .end local v8       #_arg2:[Landroid/content/ComponentName;,
    .end local v9       #_arg3:Landroid/content/ComponentName;,
    :sswitch_860
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8a8

    .line 746
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 752
    .restart local v6       #_arg0:Landroid/content/IntentFilter;,
    :goto_879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 754
    .restart local v7       #_arg1:I,
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    .line 756
    .restart local v8       #_arg2:[Landroid/content/ComponentName;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8aa

    .line 757
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 762
    .restart local v9       #_arg3:Landroid/content/ComponentName;,
    :goto_899
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 749
    .end local v6       #_arg0:Landroid/content/IntentFilter;,
    .end local v7       #_arg1:I,
    .end local v8       #_arg2:[Landroid/content/ComponentName;,
    .end local v9       #_arg3:Landroid/content/ComponentName;,
    :cond_8a8
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/IntentFilter;,
    goto :goto_879

    .line 760
    .restart local v7       #_arg1:I,
    .restart local v8       #_arg2:[Landroid/content/ComponentName;,
    :cond_8aa
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/ComponentName;,
    goto :goto_899

    .line 768
    .end local v6       #_arg0:Landroid/content/IntentFilter;,
    .end local v7       #_arg1:I,
    .end local v8       #_arg2:[Landroid/content/ComponentName;,
    .end local v9       #_arg3:Landroid/content/ComponentName;,
    :sswitch_8ac
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 771
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 777
    .end local v6       #_arg0:Ljava/lang/String;,
    :sswitch_8c4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 781
    .local v14, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v16, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 784
    .local v8, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v16

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v18

    .line 785
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 788
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 789
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 793
    .end local v8       #_arg2:Ljava/lang/String;,
    .end local v14       #_arg0:Ljava/util/List;,, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v16       #_arg1:Ljava/util/List;,, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v18       #_result:I,
    :sswitch_8fe
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_92d

    .line 796
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 802
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 804
    .restart local v7       #_arg1:I,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 805
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 799
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v7       #_arg1:I,
    .end local v8       #_arg2:I,
    :cond_92d
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    goto :goto_917

    .line 811
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    :sswitch_92f
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_95c

    .line 814
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 819
    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    :goto_948
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v18

    .line 820
    .restart local v18       #_result:I,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 817
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    .end local v18       #_result:I,
    :cond_95c
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;,
    goto :goto_948

    .line 826
    .end local v6       #_arg0:Landroid/content/ComponentName;,
    :sswitch_95e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 830
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 832
    .restart local v7       #_arg1:I,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 833
    .restart local v8       #_arg2:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 834
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 839
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:I,
    .end local v8       #_arg2:I,
    :sswitch_980
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 842
    .restart local v6       #_arg0:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v18

    .line 843
    .restart local v18       #_result:I,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 849
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v18       #_result:I,
    :sswitch_9a0
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 853
    .local v12, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 854
    .local v7, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 855
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 856
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 860
    .end local v7       #_arg1:Landroid/content/pm/IPackageDataObserver;,
    .end local v12       #_arg0:J,
    :sswitch_9c1
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 864
    .restart local v12       #_arg0:J,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9eb

    .line 865
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 870
    .local v7, _arg1:Landroid/content/IntentSender;
    :goto_9de
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(JLandroid/content/IntentSender;)V

    .line 871
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 868
    .end local v7       #_arg1:Landroid/content/IntentSender;,
    :cond_9eb
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/content/IntentSender;,
    goto :goto_9de

    .line 876
    .end local v7       #_arg1:Landroid/content/IntentSender;,
    .end local v12       #_arg0:J,
    :sswitch_9ed
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 880
    .restart local v6       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 881
    .local v7, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 887
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:Landroid/content/pm/IPackageDataObserver;,
    :sswitch_a0e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 891
    .restart local v6       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 892
    .restart local v7       #_arg1:Landroid/content/pm/IPackageDataObserver;,
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 898
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:Landroid/content/pm/IPackageDataObserver;,
    :sswitch_a2f
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 902
    .restart local v6       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v7

    .line 903
    .local v7, _arg1:Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 909
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:Landroid/content/pm/IPackageStatsObserver;,
    :sswitch_a50
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v18

    .line 911
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 913
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 917
    .end local v18       #_result:[Ljava/lang/String;,
    :sswitch_a69
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v18

    .line 919
    .local v18, _result:[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 921
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 925
    .end local v18       #_result:[Landroid/content/pm/FeatureInfo;,
    :sswitch_a84
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 928
    .restart local v6       #_arg0:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 929
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    if-eqz v18, :cond_aa6

    const/4 v5, 0x1

    :goto_a9d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 930
    :cond_aa6
    const/4 v5, 0x0

    goto :goto_a9d

    .line 935
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v18       #_result:Z,
    :sswitch_aa8
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 937
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 942
    :sswitch_ab9
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v18

    .line 944
    .restart local v18       #_result:Z,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    if-eqz v18, :cond_ad4

    const/4 v5, 0x1

    :goto_acb
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 946
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 945
    :cond_ad4
    const/4 v5, 0x0

    goto :goto_acb

    .line 950
    .end local v18       #_result:Z,
    :sswitch_ad6
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 957
    :sswitch_ae7
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v18

    .line 959
    .restart local v18       #_result:Z,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    if-eqz v18, :cond_b02

    const/4 v5, 0x1

    :goto_af9
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 961
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 960
    :cond_b02
    const/4 v5, 0x0

    goto :goto_af9

    .line 965
    .end local v18       #_result:Z,
    :sswitch_b04
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 968
    .restart local v6       #_arg0:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->performDexOpt(Ljava/lang/String;)Z

    move-result v18

    .line 969
    .restart local v18       #_result:Z,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    if-eqz v18, :cond_b26

    const/4 v5, 0x1

    :goto_b1d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 970
    :cond_b26
    const/4 v5, 0x0

    goto :goto_b1d

    .line 975
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v18       #_result:Z,
    :sswitch_b28
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b4d

    const/4 v5, 0x1

    move v6, v5

    .line 979
    .local v6, _arg0:Z
    :goto_b38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b50

    const/4 v5, 0x1

    move v7, v5

    .line 980
    .local v7, _arg1:Z
    :goto_b40
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 977
    .end local v6       #_arg0:Z,
    .end local v7       #_arg1:Z,
    :cond_b4d
    const/4 v5, 0x0

    move v6, v5

    goto :goto_b38

    .line 979
    .restart local v6       #_arg0:Z,
    :cond_b50
    const/4 v5, 0x0

    move v7, v5

    goto :goto_b40

    .line 986
    .end local v6       #_arg0:Z,
    :sswitch_b53
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 989
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 990
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 992
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 996
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v18       #_result:Ljava/lang/String;,
    :sswitch_b73
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1000
    .restart local v6       #_arg0:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v7

    .line 1002
    .local v7, _arg1:Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1003
    .restart local v8       #_arg2:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    .line 1004
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1009
    .end local v6       #_arg0:Ljava/lang/String;,
    .end local v7       #_arg1:Landroid/content/pm/IPackageMoveObserver;,
    .end local v8       #_arg2:I,
    :sswitch_b99
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_bc8

    .line 1012
    sget-object v5, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 1017
    .local v6, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_bb2
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v18

    .line 1018
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    if-eqz v18, :cond_bca

    const/4 v5, 0x1

    :goto_bbf
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1015
    .end local v6       #_arg0:Landroid/content/pm/PermissionInfo;,
    .end local v18       #_result:Z,
    :cond_bc8
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/pm/PermissionInfo;,
    goto :goto_bb2

    .line 1019
    .restart local v18       #_result:Z,
    :cond_bca
    const/4 v5, 0x0

    goto :goto_bbf

    .line 1024
    .end local v6       #_arg0:Landroid/content/pm/PermissionInfo;,
    .end local v18       #_result:Z,
    :sswitch_bcc
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1027
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v18

    .line 1028
    .restart local v18       #_result:Z,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1029
    if-eqz v18, :cond_bee

    const/4 v5, 0x1

    :goto_be5
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1029
    :cond_bee
    const/4 v5, 0x0

    goto :goto_be5

    .line 1034
    .end local v6       #_arg0:I,
    .end local v18       #_result:Z,
    :sswitch_bf0
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v18

    .line 1036
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 44
    nop

    :sswitch_data_c0a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_49
        0x3 -> :sswitch_68
        0x4 -> :sswitch_87
        0x5 -> :sswitch_a7
        0x6 -> :sswitch_c7
        0x7 -> :sswitch_ff
        0x8 -> :sswitch_124
        0x9 -> :sswitch_15c
        0xa -> :sswitch_17c
        0xb -> :sswitch_1b4
        0xc -> :sswitch_1fb
        0xd -> :sswitch_242
        0xe -> :sswitch_289
        0xf -> :sswitch_2d0
        0x10 -> :sswitch_2f5
        0x11 -> :sswitch_31a
        0x12 -> :sswitch_34d
        0x13 -> :sswitch_365
        0x14 -> :sswitch_389
        0x15 -> :sswitch_3ae
        0x16 -> :sswitch_3d3
        0x17 -> :sswitch_3f3
        0x18 -> :sswitch_413
        0x19 -> :sswitch_433
        0x1a -> :sswitch_47f
        0x1b -> :sswitch_4b8
        0x1c -> :sswitch_510
        0x1d -> :sswitch_549
        0x1e -> :sswitch_595
        0x1f -> :sswitch_5ce
        0x20 -> :sswitch_5ee
        0x21 -> :sswitch_60e
        0x22 -> :sswitch_62e
        0x23 -> :sswitch_666
        0x24 -> :sswitch_696
        0x25 -> :sswitch_6c0
        0x26 -> :sswitch_707
        0x27 -> :sswitch_72c
        0x28 -> :sswitch_766
        0x29 -> :sswitch_77e
        0x2a -> :sswitch_7a4
        0x2b -> :sswitch_7c4
        0x2c -> :sswitch_7dc
        0x2d -> :sswitch_7f4
        0x2e -> :sswitch_814
        0x2f -> :sswitch_860
        0x30 -> :sswitch_8ac
        0x31 -> :sswitch_8c4
        0x32 -> :sswitch_8fe
        0x33 -> :sswitch_92f
        0x34 -> :sswitch_95e
        0x35 -> :sswitch_980
        0x36 -> :sswitch_9a0
        0x37 -> :sswitch_9c1
        0x38 -> :sswitch_9ed
        0x39 -> :sswitch_a0e
        0x3a -> :sswitch_a2f
        0x3b -> :sswitch_a50
        0x3c -> :sswitch_a69
        0x3d -> :sswitch_a84
        0x3e -> :sswitch_aa8
        0x3f -> :sswitch_ab9
        0x40 -> :sswitch_ad6
        0x41 -> :sswitch_ae7
        0x42 -> :sswitch_b04
        0x43 -> :sswitch_b28
        0x44 -> :sswitch_b53
        0x45 -> :sswitch_b73
        0x46 -> :sswitch_b99
        0x47 -> :sswitch_bcc
        0x48 -> :sswitch_bf0
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
