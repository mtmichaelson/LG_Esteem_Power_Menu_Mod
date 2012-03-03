.class public Lcom/android/internal/telephony/DataConnection$ConnectionParams;
.super Ljava/lang/Object;
.source "DataConnection.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConnectionParams"
.end annotation


# instance fields
.field public dp:Lcom/android/internal/telephony/DataProfile;

.field public ipv:Lcom/android/internal/telephony/Phone$IPVersion;

.field public onCompletedMsg:Landroid/os/Message;

.field public pcscf:I

.field public radioTech:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

.field public tag:I



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$IPVersion;ILandroid/os/Message;)V
    .registers 6
    .parameter "radioTech"
    .parameter "dp"
    .parameter "ipv"
    .parameter "pcscf"
    .parameter "onCompletedMsg"

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->radioTech:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 176
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    .line 177
    iput-object p3, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 178
    iput p4, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->pcscf:I

    .line 179
    iput-object p5, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;Lcom/android/internal/telephony/DataProfile;Lcom/android/internal/telephony/Phone$IPVersion;Landroid/os/Message;)V
    .registers 6
    .parameter "radioTech"
    .parameter "dp"
    .parameter "ipv"
    .parameter "onCompletedMsg"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->radioTech:Lcom/android/internal/telephony/CommandsInterface$RadioTechnology;

    .line 156
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->dp:Lcom/android/internal/telephony/DataProfile;

    .line 157
    iput-object p3, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->ipv:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->pcscf:I

    .line 166
    iput-object p4, p0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .line 167
    return-void
.end method
