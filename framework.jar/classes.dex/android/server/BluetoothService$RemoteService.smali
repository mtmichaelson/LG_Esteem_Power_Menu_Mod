.class Landroid/server/BluetoothService$RemoteService;
.super Ljava/lang/Object;
.source "BluetoothService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteService"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public timestamp:J

.field public uuid:Landroid/os/ParcelUuid;



# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .registers 5
    .parameter "address"
    .parameter "uuid"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    .line 220
    iput-object p2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/server/BluetoothService$RemoteService;->timestamp:J

    .line 224
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 227
    instance-of v2, p1, Landroid/server/BluetoothService$RemoteService;

    if-eqz v2, :cond_21

    .line 228
    move-object v0, p1

    check-cast v0, Landroid/server/BluetoothService$RemoteService;

    move-object v1, v0

    .line 229
    .local v1, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    iget-object v3, v1, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    iget-object v3, v1, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    .line 231
    .end local v1       #service:Landroid/server/BluetoothService$RemoteService;,
    :goto_1e
    return v2

    .restart local v1       #service:Landroid/server/BluetoothService$RemoteService;,
    :cond_1f
    move v2, v4

    .line 229
    goto :goto_1e

    .end local v1       #service:Landroid/server/BluetoothService$RemoteService;,
    :cond_21
    move v2, v4

    .line 231
    goto :goto_1e
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 236
    const/4 v0, 0x1

    .line 237
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    if-nez v1, :cond_15

    move v1, v3

    :goto_9
    add-int/lit8 v0, v1, 0x1f

    .line 238
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    if-nez v2, :cond_1c

    move v2, v3

    :goto_12
    add-int v0, v1, v2

    .line 239
    return v0

    .line 237
    :cond_15
    iget-object v1, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    .line 238
    :cond_1c
    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->hashCode()I

    move-result v2

    goto :goto_12
.end method
