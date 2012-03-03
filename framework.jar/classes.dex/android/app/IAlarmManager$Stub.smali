.class public abstract Landroid/app/IAlarmManager$Stub;
.super Landroid/os/Binder;
.source "IAlarmManager.java"


# interfaces
.implements Landroid/app/IAlarmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IAlarmManager"

.field static final TRANSACTION_remove:I = 0x6

.field static final TRANSACTION_set:I = 0x1

.field static final TRANSACTION_setInexactRepeating:I = 0x3

.field static final TRANSACTION_setRepeating:I = 0x2

.field static final TRANSACTION_setTime:I = 0x4

.field static final TRANSACTION_setTimeZone:I = 0x5



# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IAlarmManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_3
    return-object v1

    .line 31
    :cond_4
    const-string v1, "android.app.IAlarmManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IAlarmManager;

    if-eqz v1, :cond_14

    .line 33
    check-cast v0, Landroid/app/IAlarmManager;

    .end local v0       #iin:Landroid/os/IInterface;,
    move-object v1, v0

    goto :goto_3

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;,
    :cond_14
    new-instance v1, Landroid/app/IAlarmManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IAlarmManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
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
    const/4 v9, 0x1

    const-string v10, "android.app.IAlarmManager"

    .line 43
    sparse-switch p1, :sswitch_data_ce

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_a
    return v0

    .line 47
    :sswitch_b
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 48
    goto :goto_a

    .line 52
    :sswitch_12
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 58
    .local v2, _arg1:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    .line 59
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 64
    .local v4, _arg2:Landroid/app/PendingIntent;
    :goto_2d
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/app/IAlarmManager$Stub;->set(IJLandroid/app/PendingIntent;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 66
    goto :goto_a

    .line 62
    .end local v4       #_arg2:Landroid/app/PendingIntent;,
    :cond_35
    const/4 v4, 0x0

    .restart local v4       #_arg2:Landroid/app/PendingIntent;,
    goto :goto_2d

    .line 70
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:J,
    .end local v4       #_arg2:Landroid/app/PendingIntent;,
    :sswitch_37
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 76
    .restart local v2       #_arg1:J,
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 78
    .local v4, _arg2:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5f

    .line 79
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .local v6, _arg3:Landroid/app/PendingIntent;
    :goto_56
    move-object v0, p0

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroid/app/IAlarmManager$Stub;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 86
    goto :goto_a

    .line 82
    .end local v6       #_arg3:Landroid/app/PendingIntent;,
    :cond_5f
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;,
    goto :goto_56

    .line 90
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:J,
    .end local v4       #_arg2:J,
    .end local v6       #_arg3:Landroid/app/PendingIntent;,
    :sswitch_61
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .restart local v1       #_arg0:I,
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 96
    .restart local v2       #_arg1:J,
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 98
    .restart local v4       #_arg2:J,
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_89

    .line 99
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .restart local v6       #_arg3:Landroid/app/PendingIntent;,
    :goto_80
    move-object v0, p0

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroid/app/IAlarmManager$Stub;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 106
    goto :goto_a

    .line 102
    .end local v6       #_arg3:Landroid/app/PendingIntent;,
    :cond_89
    const/4 v6, 0x0

    .restart local v6       #_arg3:Landroid/app/PendingIntent;,
    goto :goto_80

    .line 110
    .end local v1       #_arg0:I,
    .end local v2       #_arg1:J,
    .end local v4       #_arg2:J,
    .end local v6       #_arg3:Landroid/app/PendingIntent;,
    :sswitch_8b
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 113
    .local v7, _arg0:J
    invoke-virtual {p0, v7, v8}, Landroid/app/IAlarmManager$Stub;->setTime(J)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 115
    goto/16 :goto_a

    .line 119
    .end local v7       #_arg0:J,
    :sswitch_9d
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->setTimeZone(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 124
    goto/16 :goto_a

    .line 128
    .end local v1       #_arg0:Ljava/lang/String;,
    :sswitch_af
    const-string v0, "android.app.IAlarmManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cb

    .line 131
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 136
    .local v1, _arg0:Landroid/app/PendingIntent;
    :goto_c2
    invoke-virtual {p0, v1}, Landroid/app/IAlarmManager$Stub;->remove(Landroid/app/PendingIntent;)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 138
    goto/16 :goto_a

    .line 134
    .end local v1       #_arg0:Landroid/app/PendingIntent;,
    :cond_cb
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/app/PendingIntent;,
    goto :goto_c2

    .line 43
    nop

    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_37
        0x3 -> :sswitch_61
        0x4 -> :sswitch_8b
        0x5 -> :sswitch_9d
        0x6 -> :sswitch_af
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
