.class public abstract Landroid/content/IContentService$Stub;
.super Landroid/os/Binder;
.source "IContentService.java"


# interfaces
.implements Landroid/content/IContentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IContentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.IContentService"

.field static final TRANSACTION_addPeriodicSync:I = 0x9

.field static final TRANSACTION_addStatusChangeListener:I = 0x14

.field static final TRANSACTION_cancelSync:I = 0x5

.field static final TRANSACTION_getCurrentSync:I = 0x10

.field static final TRANSACTION_getIsSyncable:I = 0xb

.field static final TRANSACTION_getMasterSyncAutomatically:I = 0xe

.field static final TRANSACTION_getPeriodicSyncs:I = 0x8

.field static final TRANSACTION_getSyncAdapterTypes:I = 0x11

.field static final TRANSACTION_getSyncAutomatically:I = 0x6

.field static final TRANSACTION_getSyncStatus:I = 0x12

.field static final TRANSACTION_isSyncActive:I = 0xf

.field static final TRANSACTION_isSyncPending:I = 0x13

.field static final TRANSACTION_notifyChange:I = 0x3

.field static final TRANSACTION_registerContentObserver:I = 0x1

.field static final TRANSACTION_removePeriodicSync:I = 0xa

.field static final TRANSACTION_removeStatusChangeListener:I = 0x15

.field static final TRANSACTION_requestSync:I = 0x4

.field static final TRANSACTION_setIsSyncable:I = 0xc

.field static final TRANSACTION_setMasterSyncAutomatically:I = 0xd

.field static final TRANSACTION_setSyncAutomatically:I = 0x7

.field static final TRANSACTION_unregisterContentObserver:I = 0x2



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.content.IContentService"

    invoke-virtual {p0, p0, v0}, Landroid/content/IContentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;
    .registers 3
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_3
    return-object v1

    .line 29
    :cond_4
    const-string v1, "android.content.IContentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/IContentService;

    if-eqz v1, :cond_14

    .line 31
    check-cast v0, Landroid/content/IContentService;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/content/IContentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/IContentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
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
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "android.content.IContentService"

    .line 41
    sparse-switch p1, :sswitch_data_322

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_b
    return v0

    .line 45
    :sswitch_c
    const-string v0, "android.content.IContentService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 46
    goto :goto_b

    .line 50
    :sswitch_13
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 53
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 59
    .local v1, _arg0:Landroid/net/Uri;
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    move v2, v8

    .line 61
    .local v2, _arg1:Z
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v3

    .line 62
    .local v3, _arg2:Landroid/database/IContentObserver;
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 64
    goto :goto_b

    .line 56
    .end local v1       #_arg0:Landroid/net/Uri;,
    .end local v2       #_arg1:Z,
    .end local v3       #_arg2:Landroid/database/IContentObserver;,
    :cond_3d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/Uri;,
    goto :goto_26

    :cond_3f
    move v2, v10

    .line 59
    goto :goto_2d

    .line 68
    .end local v1       #_arg0:Landroid/net/Uri;,
    :sswitch_41
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v1

    .line 71
    .local v1, _arg0:Landroid/database/IContentObserver;
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->unregisterContentObserver(Landroid/database/IContentObserver;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 73
    goto :goto_b

    .line 77
    .end local v1       #_arg0:Landroid/database/IContentObserver;,
    :sswitch_56
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_87

    .line 80
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 86
    .local v1, _arg0:Landroid/net/Uri;
    :goto_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/database/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/database/IContentObserver;

    move-result-object v2

    .line 88
    .local v2, _arg1:Landroid/database/IContentObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_89

    move v3, v8

    .line 90
    .local v3, _arg2:Z
    :goto_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8b

    move v4, v8

    .line 91
    .local v4, _arg3:Z
    :goto_7f
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/IContentService$Stub;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 93
    goto :goto_b

    .line 83
    .end local v1       #_arg0:Landroid/net/Uri;,
    .end local v2       #_arg1:Landroid/database/IContentObserver;,
    .end local v3       #_arg2:Z,
    .end local v4       #_arg3:Z,
    :cond_87
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/Uri;,
    goto :goto_69

    .restart local v2       #_arg1:Landroid/database/IContentObserver;,
    :cond_89
    move v3, v10

    .line 88
    goto :goto_78

    .restart local v3       #_arg2:Z,
    :cond_8b
    move v4, v10

    .line 90
    goto :goto_7f

    .line 97
    .end local v1       #_arg0:Landroid/net/Uri;,
    .end local v2       #_arg1:Landroid/database/IContentObserver;,
    .end local v3       #_arg2:Z,
    :sswitch_8d
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bb

    .line 100
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 106
    .local v1, _arg0:Landroid/accounts/Account;
    :goto_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bd

    .line 109
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 114
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_b2
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 116
    goto/16 :goto_b

    .line 103
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Landroid/os/Bundle;,
    :cond_bb
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_a0

    .line 112
    .restart local v2       #_arg1:Ljava/lang/String;,
    :cond_bd
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;,
    goto :goto_b2

    .line 120
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Landroid/os/Bundle;,
    :sswitch_bf
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_df

    .line 123
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 129
    .restart local v1       #_arg0:Landroid/accounts/Account;,
    :goto_d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 132
    goto/16 :goto_b

    .line 126
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    :cond_df
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_d2

    .line 136
    .end local v1       #_arg0:Landroid/accounts/Account;,
    :sswitch_e1
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_108

    .line 139
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 145
    .restart local v1       #_arg0:Landroid/accounts/Account;,
    :goto_f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 147
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v6, :cond_10a

    move v0, v8

    :goto_102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 149
    goto/16 :goto_b

    .line 142
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Z,
    :cond_108
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_f4

    .restart local v2       #_arg1:Ljava/lang/String;,
    .restart local v6       #_result:Z,
    :cond_10a
    move v0, v10

    .line 148
    goto :goto_102

    .line 153
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Z,
    :sswitch_10c
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_133

    .line 156
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 162
    .restart local v1       #_arg0:Landroid/accounts/Account;,
    :goto_11f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_135

    move v3, v8

    .line 165
    .local v3, _arg2:Z
    :goto_12a
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 167
    goto/16 :goto_b

    .line 159
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Z,
    :cond_133
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_11f

    .restart local v2       #_arg1:Ljava/lang/String;,
    :cond_135
    move v3, v10

    .line 164
    goto :goto_12a

    .line 171
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    :sswitch_137
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15b

    .line 174
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 180
    .restart local v1       #_arg0:Landroid/accounts/Account;,
    :goto_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 181
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 182
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/PeriodicSync;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    move v0, v8

    .line 184
    goto/16 :goto_b

    .line 177
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v7       #_result:Ljava/util/List;,, "Ljava/util/List<Landroid/content/PeriodicSync;>;"
    :cond_15b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_14a

    .line 188
    .end local v1       #_arg0:Landroid/accounts/Account;,
    :sswitch_15d
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_190

    .line 191
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 197
    .restart local v1       #_arg0:Landroid/accounts/Account;,
    :goto_170
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_192

    .line 200
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 206
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_182
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, _arg3:J
    move-object v0, p0

    .line 207
    invoke-virtual/range {v0 .. v5}, Landroid/content/IContentService$Stub;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 209
    goto/16 :goto_b

    .line 194
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Landroid/os/Bundle;,
    .end local v4       #_arg3:J,
    :cond_190
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_170

    .line 203
    .restart local v2       #_arg1:Ljava/lang/String;,
    :cond_192
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;,
    goto :goto_182

    .line 213
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Landroid/os/Bundle;,
    :sswitch_194
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c2

    .line 216
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 222
    .restart local v1       #_arg0:Landroid/accounts/Account;,
    :goto_1a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 224
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c4

    .line 225
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 230
    .restart local v3       #_arg2:Landroid/os/Bundle;,
    :goto_1b9
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 232
    goto/16 :goto_b

    .line 219
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Landroid/os/Bundle;,
    :cond_1c2
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_1a7

    .line 228
    .restart local v2       #_arg1:Ljava/lang/String;,
    :cond_1c4
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;,
    goto :goto_1b9

    .line 236
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Landroid/os/Bundle;,
    :sswitch_1c6
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ea

    .line 239
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 245
    .restart local v1       #_arg0:Landroid/accounts/Account;,
    :goto_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 246
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v6

    .line 247
    .local v6, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 249
    goto/16 :goto_b

    .line 242
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:I,
    :cond_1ea
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_1d9

    .line 253
    .end local v1       #_arg0:Landroid/accounts/Account;,
    :sswitch_1ec
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_210

    .line 256
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 262
    .restart local v1       #_arg0:Landroid/accounts/Account;,
    :goto_1ff
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .local v3, _arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/IContentService$Stub;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 267
    goto/16 :goto_b

    .line 259
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:I,
    :cond_210
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_1ff

    .line 271
    .end local v1       #_arg0:Landroid/accounts/Account;,
    :sswitch_212
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_227

    move v1, v8

    .line 274
    .local v1, _arg0:Z
    :goto_21e
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->setMasterSyncAutomatically(Z)V

    .line 275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 276
    goto/16 :goto_b

    .end local v1       #_arg0:Z,
    :cond_227
    move v1, v10

    .line 273
    goto :goto_21e

    .line 280
    :sswitch_229
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getMasterSyncAutomatically()Z

    move-result v6

    .line 282
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    if-eqz v6, :cond_23e

    move v0, v8

    :goto_238
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 284
    goto/16 :goto_b

    :cond_23e
    move v0, v10

    .line 283
    goto :goto_238

    .line 288
    .end local v6       #_result:Z,
    :sswitch_240
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_267

    .line 291
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 297
    .local v1, _arg0:Landroid/accounts/Account;
    :goto_253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 299
    .restart local v6       #_result:Z,
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    if-eqz v6, :cond_269

    move v0, v8

    :goto_261
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 301
    goto/16 :goto_b

    .line 294
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Z,
    :cond_267
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_253

    .restart local v2       #_arg1:Ljava/lang/String;,
    .restart local v6       #_result:Z,
    :cond_269
    move v0, v10

    .line 300
    goto :goto_261

    .line 305
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Z,
    :sswitch_26b
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getCurrentSync()Landroid/content/SyncInfo;

    move-result-object v6

    .line 307
    .local v6, _result:Landroid/content/SyncInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v6, :cond_282

    .line 309
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    invoke-virtual {v6, p3, v8}, Landroid/content/SyncInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_27f
    move v0, v8

    .line 315
    goto/16 :goto_b

    .line 313
    :cond_282
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27f

    .line 319
    .end local v6       #_result:Landroid/content/SyncInfo;,
    :sswitch_286
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Landroid/content/IContentService$Stub;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v6

    .line 321
    .local v6, _result:[Landroid/content/SyncAdapterType;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v6, v8}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    move v0, v8

    .line 323
    goto/16 :goto_b

    .line 327
    .end local v6       #_result:[Landroid/content/SyncAdapterType;,
    :sswitch_298
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c1

    .line 330
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 336
    .restart local v1       #_arg0:Landroid/accounts/Account;,
    :goto_2ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 337
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v6

    .line 338
    .local v6, _result:Landroid/content/SyncStatusInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    if-eqz v6, :cond_2c3

    .line 340
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    invoke-virtual {v6, p3, v8}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2be
    move v0, v8

    .line 346
    goto/16 :goto_b

    .line 333
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Landroid/content/SyncStatusInfo;,
    :cond_2c1
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_2ab

    .line 344
    .restart local v2       #_arg1:Ljava/lang/String;,
    .restart local v6       #_result:Landroid/content/SyncStatusInfo;,
    :cond_2c3
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2be

    .line 350
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Landroid/content/SyncStatusInfo;,
    :sswitch_2c7
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2ee

    .line 353
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 359
    .restart local v1       #_arg0:Landroid/accounts/Account;,
    :goto_2da
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 360
    .restart local v2       #_arg1:Ljava/lang/String;,
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    .line 361
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v6, :cond_2f0

    move v0, v8

    :goto_2e8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 363
    goto/16 :goto_b

    .line 356
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Z,
    :cond_2ee
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/accounts/Account;,
    goto :goto_2da

    .restart local v2       #_arg1:Ljava/lang/String;,
    .restart local v6       #_result:Z,
    :cond_2f0
    move v0, v10

    .line 362
    goto :goto_2e8

    .line 367
    .end local v1       #_arg0:Landroid/accounts/Account;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v6       #_result:Z,
    :sswitch_2f2
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 371
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v2

    .line 372
    .local v2, _arg1:Landroid/content/ISyncStatusObserver;
    invoke-virtual {p0, v1, v2}, Landroid/content/IContentService$Stub;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 374
    goto/16 :goto_b

    .line 378
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:Landroid/content/ISyncStatusObserver;,
    :sswitch_30c
    const-string v0, "android.content.IContentService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ISyncStatusObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncStatusObserver;

    move-result-object v1

    .line 381
    .local v1, _arg0:Landroid/content/ISyncStatusObserver;
    invoke-virtual {p0, v1}, Landroid/content/IContentService$Stub;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 383
    goto/16 :goto_b

    .line 41
    :sswitch_data_322
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_41
        0x3 -> :sswitch_56
        0x4 -> :sswitch_8d
        0x5 -> :sswitch_bf
        0x6 -> :sswitch_e1
        0x7 -> :sswitch_10c
        0x8 -> :sswitch_137
        0x9 -> :sswitch_15d
        0xa -> :sswitch_194
        0xb -> :sswitch_1c6
        0xc -> :sswitch_1ec
        0xd -> :sswitch_212
        0xe -> :sswitch_229
        0xf -> :sswitch_240
        0x10 -> :sswitch_26b
        0x11 -> :sswitch_286
        0x12 -> :sswitch_298
        0x13 -> :sswitch_2c7
        0x14 -> :sswitch_2f2
        0x15 -> :sswitch_30c
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
