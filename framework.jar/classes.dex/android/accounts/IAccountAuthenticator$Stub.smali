.class public abstract Landroid/accounts/IAccountAuthenticator$Stub;
.super Landroid/os/Binder;
.source "IAccountAuthenticator.java"


# interfaces
.implements Landroid/accounts/IAccountAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/IAccountAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountAuthenticator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.accounts.IAccountAuthenticator"

.field static final TRANSACTION_addAccount:I = 0x1

.field static final TRANSACTION_confirmCredentials:I = 0x2

.field static final TRANSACTION_editProperties:I = 0x6

.field static final TRANSACTION_getAccountRemovalAllowed:I = 0x8

.field static final TRANSACTION_getAuthToken:I = 0x3

.field static final TRANSACTION_getAuthTokenLabel:I = 0x4

.field static final TRANSACTION_hasFeatures:I = 0x7

.field static final TRANSACTION_updateCredentials:I = 0x5



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p0, p0, v0}, Landroid/accounts/IAccountAuthenticator$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;
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
    const-string v1, "android.accounts.IAccountAuthenticator"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/accounts/IAccountAuthenticator;

    if-eqz v1, :cond_14

    .line 32
    check-cast v0, Landroid/accounts/IAccountAuthenticator;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/accounts/IAccountAuthenticator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 13
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
    const/4 v6, 0x1

    const-string v7, "android.accounts.IAccountAuthenticator"

    .line 42
    sparse-switch p1, :sswitch_data_15a

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 46
    :sswitch_b
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    .line 47
    goto :goto_a

    .line 51
    :sswitch_12
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 55
    .local v1, _arg0:Landroid/accounts/IAccountAuthenticatorResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, _arg3:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    .line 62
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, _arg4:Landroid/os/Bundle;
    :goto_39
    move-object v0, p0

    .line 67
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/IAccountAuthenticator$Stub;->addAccount(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v6

    .line 68
    goto :goto_a

    .line 65
    .end local v5       #_arg4:Landroid/os/Bundle;,
    :cond_3f
    const/4 v5, 0x0

    .restart local v5       #_arg4:Landroid/os/Bundle;,
    goto :goto_39

    .line 72
    .end local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    .end local v2       #_arg1:Ljava/lang/String;,
    .end local v3       #_arg2:Ljava/lang/String;,
    .end local v4       #_arg3:[Ljava/lang/String;,
    .end local v5       #_arg4:Landroid/os/Bundle;,
    :sswitch_41
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 76
    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6f

    .line 77
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 83
    .local v2, _arg1:Landroid/accounts/Account;
    :goto_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_71

    .line 84
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 89
    .local v3, _arg2:Landroid/os/Bundle;
    :goto_6a
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator$Stub;->confirmCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)V

    move v0, v6

    .line 90
    goto :goto_a

    .line 80
    .end local v2       #_arg1:Landroid/accounts/Account;,
    .end local v3       #_arg2:Landroid/os/Bundle;,
    :cond_6f
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;,
    goto :goto_5c

    .line 87
    :cond_71
    const/4 v3, 0x0

    .restart local v3       #_arg2:Landroid/os/Bundle;,
    goto :goto_6a

    .line 94
    .end local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    .end local v2       #_arg1:Landroid/accounts/Account;,
    .end local v3       #_arg2:Landroid/os/Bundle;,
    :sswitch_73
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 98
    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a6

    .line 99
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 105
    .restart local v2       #_arg1:Landroid/accounts/Account;,
    :goto_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a8

    .line 108
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 113
    .local v4, _arg3:Landroid/os/Bundle;
    :goto_a0
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthToken(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v6

    .line 114
    goto/16 :goto_a

    .line 102
    .end local v2       #_arg1:Landroid/accounts/Account;,
    .end local v3       #_arg2:Ljava/lang/String;,
    .end local v4       #_arg3:Landroid/os/Bundle;,
    :cond_a6
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;,
    goto :goto_8e

    .line 111
    .restart local v3       #_arg2:Ljava/lang/String;,
    :cond_a8
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/os/Bundle;,
    goto :goto_a0

    .line 118
    .end local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    .end local v2       #_arg1:Landroid/accounts/Account;,
    .end local v3       #_arg2:Ljava/lang/String;,
    .end local v4       #_arg3:Landroid/os/Bundle;,
    :sswitch_aa
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 122
    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->getAuthTokenLabel(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    move v0, v6

    .line 124
    goto/16 :goto_a

    .line 128
    .end local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    .end local v2       #_arg1:Ljava/lang/String;,
    :sswitch_c1
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 132
    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f4

    .line 133
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 139
    .local v2, _arg1:Landroid/accounts/Account;
    :goto_dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3       #_arg2:Ljava/lang/String;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f6

    .line 142
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 147
    .restart local v4       #_arg3:Landroid/os/Bundle;,
    :goto_ee
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/accounts/IAccountAuthenticator$Stub;->updateCredentials(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    move v0, v6

    .line 148
    goto/16 :goto_a

    .line 136
    .end local v2       #_arg1:Landroid/accounts/Account;,
    .end local v3       #_arg2:Ljava/lang/String;,
    .end local v4       #_arg3:Landroid/os/Bundle;,
    :cond_f4
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;,
    goto :goto_dc

    .line 145
    .restart local v3       #_arg2:Ljava/lang/String;,
    :cond_f6
    const/4 v4, 0x0

    .restart local v4       #_arg3:Landroid/os/Bundle;,
    goto :goto_ee

    .line 152
    .end local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    .end local v2       #_arg1:Landroid/accounts/Account;,
    .end local v3       #_arg2:Ljava/lang/String;,
    .end local v4       #_arg3:Landroid/os/Bundle;,
    :sswitch_f8
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 156
    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->editProperties(Landroid/accounts/IAccountAuthenticatorResponse;Ljava/lang/String;)V

    move v0, v6

    .line 158
    goto/16 :goto_a

    .line 162
    .end local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    .end local v2       #_arg1:Ljava/lang/String;,
    :sswitch_10f
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 166
    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_134

    .line 167
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 173
    .local v2, _arg1:Landroid/accounts/Account;
    :goto_12a
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, _arg2:[Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticator$Stub;->hasFeatures(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    move v0, v6

    .line 175
    goto/16 :goto_a

    .line 170
    .end local v2       #_arg1:Landroid/accounts/Account;,
    .end local v3       #_arg2:[Ljava/lang/String;,
    :cond_134
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;,
    goto :goto_12a

    .line 179
    .end local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    .end local v2       #_arg1:Landroid/accounts/Account;,
    :sswitch_136
    const-string v0, "android.accounts.IAccountAuthenticator"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticatorResponse;

    move-result-object v1

    .line 183
    .restart local v1       #_arg0:Landroid/accounts/IAccountAuthenticatorResponse;,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_157

    .line 184
    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    .line 189
    .restart local v2       #_arg1:Landroid/accounts/Account;,
    :goto_151
    invoke-virtual {p0, v1, v2}, Landroid/accounts/IAccountAuthenticator$Stub;->getAccountRemovalAllowed(Landroid/accounts/IAccountAuthenticatorResponse;Landroid/accounts/Account;)V

    move v0, v6

    .line 190
    goto/16 :goto_a

    .line 187
    .end local v2       #_arg1:Landroid/accounts/Account;,
    :cond_157
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/accounts/Account;,
    goto :goto_151

    .line 42
    nop

    :sswitch_data_15a
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_41
        0x3 -> :sswitch_73
        0x4 -> :sswitch_aa
        0x5 -> :sswitch_c1
        0x6 -> :sswitch_f8
        0x7 -> :sswitch_10f
        0x8 -> :sswitch_136
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
