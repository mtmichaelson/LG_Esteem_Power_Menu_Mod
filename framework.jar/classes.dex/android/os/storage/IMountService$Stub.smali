.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"


# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getBackupSecureContainerList:I = 0x1a

.field static final TRANSACTION_getInternalVolumeState:I = 0x1d

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isExt2BadRemoval:I = 0x1f

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isScanning:I = 0x1b

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_setIsScanning:I = 0x1c

.field static final TRANSACTION_setPercent:I = 0x1e

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterListener:I = 0x2



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 780
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 781
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 769
    if-nez p0, :cond_4

    .line 770
    const/4 v1, 0x0

    .line 776
    :goto_3
    return-object v1

    .line 772
    :cond_4
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 773
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_14

    .line 774
    check-cast v0, Landroid/os/storage/IMountService;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 776
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/os/storage/IMountService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 785
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 36
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
    .line 791
    sparse-switch p1, :sswitch_data_42c

    .line 1093
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_7
    return v5

    .line 793
    :sswitch_8
    const-string v5, "IMountService"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 794
    const/4 v5, 0x1

    goto :goto_7

    .line 797
    :sswitch_12
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v18

    .line 800
    .local v18, listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    const/4 v5, 0x1

    goto :goto_7

    .line 805
    .end local v18       #listener:Landroid/os/storage/IMountServiceListener;,
    :sswitch_2e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v18

    .line 808
    .restart local v18       #listener:Landroid/os/storage/IMountServiceListener;,
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    const/4 v5, 0x1

    goto :goto_7

    .line 813
    .end local v18       #listener:Landroid/os/storage/IMountServiceListener;,
    :sswitch_4a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v27

    .line 815
    .local v27, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    if-eqz v27, :cond_64

    const/4 v5, 0x1

    :goto_5c
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    const/4 v5, 0x1

    goto :goto_7

    .line 816
    :cond_64
    const/4 v5, 0x0

    goto :goto_5c

    .line 820
    .end local v27       #result:Z,
    :sswitch_66
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_81

    const/4 v5, 0x1

    move v14, v5

    .line 823
    .local v14, enable:Z
    :goto_76
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    const/4 v5, 0x1

    goto :goto_7

    .line 822
    .end local v14       #enable:Z,
    :cond_81
    const/4 v5, 0x0

    move v14, v5

    goto :goto_76

    .line 828
    :sswitch_84
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v27

    .line 830
    .restart local v27       #result:Z,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    if-eqz v27, :cond_9f

    const/4 v5, 0x1

    :goto_96
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 831
    :cond_9f
    const/4 v5, 0x0

    goto :goto_96

    .line 835
    .end local v27       #result:Z,
    :sswitch_a1
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 838
    .local v19, mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v28

    .line 839
    .local v28, resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 844
    .end local v19       #mountPoint:Ljava/lang/String;,
    .end local v28       #resultCode:I,
    :sswitch_c2
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 848
    .restart local v19       #mountPoint:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e6

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 849
    .local v16, force:Z
    :goto_d7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;Z)V

    .line 850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 848
    .end local v16       #force:Z,
    :cond_e6
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_d7

    .line 854
    .end local v19       #mountPoint:Ljava/lang/String;,
    :sswitch_ea
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 857
    .restart local v19       #mountPoint:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v27

    .line 858
    .local v27, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 863
    .end local v19       #mountPoint:Ljava/lang/String;,
    .end local v27       #result:I,
    :sswitch_10b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 865
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 866
    .local v25, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v26

    .line 867
    .local v26, pids:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 869
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 872
    .end local v25       #path:Ljava/lang/String;,
    .end local v26       #pids:[I,
    :sswitch_12c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 875
    .restart local v19       #mountPoint:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 876
    .local v29, state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    move-object/from16 v0, p3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 881
    .end local v19       #mountPoint:Ljava/lang/String;,
    .end local v29       #state:Ljava/lang/String;,
    :sswitch_14d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 885
    .local v6, id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 887
    .local v7, sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 889
    .local v8, fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 891
    .local v9, key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, ownerUid:I
    move-object/from16 v5, p0

    .line 892
    invoke-virtual/range {v5 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v28

    .line 893
    .restart local v28       #resultCode:I,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 898
    .end local v6       #id:Ljava/lang/String;,
    .end local v7       #sizeMb:I,
    .end local v8       #fstype:Ljava/lang/String;,
    .end local v9       #key:Ljava/lang/String;,
    .end local v10       #ownerUid:I,
    .end local v28       #resultCode:I,
    :sswitch_17c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 901
    .restart local v6       #id:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v28

    .line 902
    .restart local v28       #resultCode:I,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 907
    .end local v6       #id:Ljava/lang/String;,
    .end local v28       #resultCode:I,
    :sswitch_19c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 911
    .restart local v6       #id:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c7

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 912
    .restart local v16       #force:Z,
    :goto_1b1
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v28

    .line 913
    .restart local v28       #resultCode:I,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 911
    .end local v16       #force:Z,
    .end local v28       #resultCode:I,
    :cond_1c7
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_1b1

    .line 918
    .end local v6       #id:Ljava/lang/String;,
    :sswitch_1cb
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 922
    .restart local v6       #id:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 924
    .restart local v9       #key:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 925
    .restart local v10       #ownerUid:I,
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v9

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v28

    .line 926
    .restart local v28       #resultCode:I,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 931
    .end local v6       #id:Ljava/lang/String;,
    .end local v9       #key:Ljava/lang/String;,
    .end local v10       #ownerUid:I,
    .end local v28       #resultCode:I,
    :sswitch_1f5
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 935
    .restart local v6       #id:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_220

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 936
    .restart local v16       #force:Z,
    :goto_20a
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v28

    .line 937
    .restart local v28       #resultCode:I,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 935
    .end local v16       #force:Z,
    .end local v28       #resultCode:I,
    :cond_220
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_20a

    .line 942
    .end local v6       #id:Ljava/lang/String;,
    :sswitch_224
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 945
    .restart local v6       #id:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v30

    .line 946
    .local v30, status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    if-eqz v30, :cond_246

    const/4 v5, 0x1

    :goto_23d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 947
    :cond_246
    const/4 v5, 0x0

    goto :goto_23d

    .line 951
    .end local v6       #id:Ljava/lang/String;,
    .end local v30       #status:Z,
    :sswitch_248
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 955
    .local v24, oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 956
    .local v21, newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v28

    .line 957
    .restart local v28       #resultCode:I,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 962
    .end local v21       #newId:Ljava/lang/String;,
    .end local v24       #oldId:Ljava/lang/String;,
    .end local v28       #resultCode:I,
    :sswitch_26f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 965
    .restart local v6       #id:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 966
    .restart local v25       #path:Ljava/lang/String;,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 968
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 971
    .end local v6       #id:Ljava/lang/String;,
    .end local v25       #path:Ljava/lang/String;,
    :sswitch_28f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v17

    .line 973
    .local v17, ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 975
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 978
    .end local v17       #ids:[Ljava/lang/String;,
    :sswitch_2a8
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v23

    .line 982
    .local v23, observer:Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 987
    .end local v23       #observer:Landroid/os/storage/IMountShutdownObserver;,
    :sswitch_2c5
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 989
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 993
    :sswitch_2d6
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 997
    .local v15, filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 999
    .restart local v9       #key:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v23

    .line 1001
    .local v23, observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1002
    .local v22, nonce:I
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v9

    move-object/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1003
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1007
    .end local v9       #key:Ljava/lang/String;,
    .end local v15       #filename:Ljava/lang/String;,
    .end local v22       #nonce:I,
    .end local v23       #observer:Landroid/os/storage/IObbActionListener;,
    :sswitch_303
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1011
    .restart local v15       #filename:Ljava/lang/String;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_336

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 1013
    .restart local v16       #force:Z,
    :goto_318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v23

    .line 1015
    .restart local v23       #observer:Landroid/os/storage/IObbActionListener;,
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1016
    .restart local v22       #nonce:I,
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v23

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1017
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1018
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1011
    .end local v16       #force:Z,
    .end local v22       #nonce:I,
    .end local v23       #observer:Landroid/os/storage/IObbActionListener;,
    :cond_336
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_318

    .line 1021
    .end local v15       #filename:Ljava/lang/String;,
    :sswitch_33a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1024
    .restart local v15       #filename:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v30

    .line 1025
    .restart local v30       #status:Z,
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    if-eqz v30, :cond_35c

    const/4 v5, 0x1

    :goto_353
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1026
    :cond_35c
    const/4 v5, 0x0

    goto :goto_353

    .line 1030
    .end local v15       #filename:Ljava/lang/String;,
    .end local v30       #status:Z,
    :sswitch_35e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1033
    .restart local v15       #filename:Ljava/lang/String;,
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1034
    .local v20, mountedPath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1036
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1040
    .end local v15       #filename:Ljava/lang/String;,
    .end local v20       #mountedPath:Ljava/lang/String;,
    :sswitch_37e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getBackupSecureContainerList()[Ljava/lang/String;

    move-result-object v13

    .line 1042
    .local v13, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    move-object/from16 v0, p3

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1044
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1048
    .end local v13       #_result:[Ljava/lang/String;,
    :sswitch_396
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isScanning()Z

    move-result v13

    .line 1050
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    if-eqz v13, :cond_3b1

    const/4 v5, 0x1

    :goto_3a8
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1051
    :cond_3b1
    const/4 v5, 0x0

    goto :goto_3a8

    .line 1056
    .end local v13       #_result:Z,
    :sswitch_3b3
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d4

    const/4 v5, 0x1

    move v11, v5

    .line 1060
    .local v11, _arg0:Z
    :goto_3c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1061
    .local v12, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setIsScanning(ZLjava/lang/String;)V

    .line 1062
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1058
    .end local v11       #_arg0:Z,
    .end local v12       #_arg1:Ljava/lang/String;,
    :cond_3d4
    const/4 v5, 0x0

    move v11, v5

    goto :goto_3c3

    .line 1067
    :sswitch_3d7
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1069
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1070
    .local v11, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getInternalVolumeState(Ljava/lang/String;)I

    move-result v13

    .line 1071
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    move-object/from16 v0, p3

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1077
    .end local v11       #_arg0:Ljava/lang/String;,
    .end local v13       #_result:I,
    :sswitch_3f6
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1079
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1080
    .local v11, _arg0:I
    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setPercent(I)V

    .line 1081
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1082
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1086
    .end local v11       #_arg0:I,
    :sswitch_40e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isExt2BadRemoval()Z

    move-result v13

    .line 1088
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    if-eqz v13, :cond_429

    const/4 v5, 0x1

    :goto_420
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1090
    const/4 v5, 0x1

    goto/16 :goto_7

    .line 1089
    :cond_429
    const/4 v5, 0x0

    goto :goto_420

    .line 791
    nop

    :sswitch_data_42c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_4a
        0x4 -> :sswitch_66
        0x5 -> :sswitch_84
        0x6 -> :sswitch_a1
        0x7 -> :sswitch_c2
        0x8 -> :sswitch_ea
        0x9 -> :sswitch_10b
        0xa -> :sswitch_12c
        0xb -> :sswitch_14d
        0xc -> :sswitch_17c
        0xd -> :sswitch_19c
        0xe -> :sswitch_1cb
        0xf -> :sswitch_1f5
        0x10 -> :sswitch_224
        0x11 -> :sswitch_248
        0x12 -> :sswitch_26f
        0x13 -> :sswitch_28f
        0x14 -> :sswitch_2a8
        0x15 -> :sswitch_2c5
        0x16 -> :sswitch_2d6
        0x17 -> :sswitch_303
        0x18 -> :sswitch_33a
        0x19 -> :sswitch_35e
        0x1a -> :sswitch_37e
        0x1b -> :sswitch_396
        0x1c -> :sswitch_3b3
        0x1d -> :sswitch_3d7
        0x1e -> :sswitch_3f6
        0x1f -> :sswitch_40e
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
