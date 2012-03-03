.class public Landroid/server/BluetoothService$BondState;
.super Ljava/lang/Object;
.source "BluetoothService.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BondState"
.end annotation


# static fields
.field private static final AUTO_PAIRING_BLACKLIST:Ljava/lang/String; = "/etc/bluetooth/auto_pairing.conf"

.field private static final DYNAMIC_AUTO_PAIRING_BLACKLIST:Ljava/lang/String; = "/data/misc/bluetooth/dynamic_auto_pairing.conf"



# instance fields
.field private mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingExactNameWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingOutgoingBonding:Ljava/lang/String;

.field private final mPinAttempt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/server/BluetoothService;



# direct methods
.method public constructor <init>(Landroid/server/BluetoothService;)V
    .registers 3
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    .line 1076
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$BondState;->mPinAttempt:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$2900(Landroid/server/BluetoothService$BondState;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1074
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$BondState;->setPendingOutgoingBonding(Ljava/lang/String;)V

    return-void
.end method

.method private copyAutoPairingData()V
    .registers 12

    .prologue
    const-string v9, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    .line 1277
    const/4 v2, 0x0

    .line 1278
    .local v2, file:Ljava/io/File;
    const/4 v4, 0x0

    .line 1279
    .local v4, in:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 1281
    .local v7, out:Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_9b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_5c

    .line 1282
    .end local v2       #file:Ljava/io/File;,
    .local v3, file:Ljava/io/File;
    :try_start_c
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_80
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_f} :catch_9e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_8c

    move-result v9

    if-eqz v9, :cond_1a

    .line 1298
    if-eqz v4, :cond_15

    :try_start_14
    throw v4

    .line 1299
    :cond_15
    if-eqz v7, :cond_18

    throw v7
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_7c

    :cond_18
    :goto_18
    move-object v2, v3

    .line 1302
    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    :cond_19
    :goto_19
    return-void

    .line 1284
    .end local v2       #file:Ljava/io/File;,
    .restart local v3       #file:Ljava/io/File;,
    :cond_1a
    :try_start_1a
    new-instance v5, Ljava/io/FileInputStream;

    const-string v9, "/etc/bluetooth/auto_pairing.conf"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_80
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_21} :catch_9e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_8c

    .line 1285
    .end local v4       #in:Ljava/io/FileInputStream;,
    .local v5, in:Ljava/io/FileInputStream;
    :try_start_21
    new-instance v8, Ljava/io/FileOutputStream;

    const-string v9, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_83
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_28} :catch_a2
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_90

    .line 1287
    .end local v7       #out:Ljava/io/FileOutputStream;,
    .local v8, out:Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_2a
    new-array v0, v9, [B

    .line 1289
    .local v0, buf:[B
    :goto_2c
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, len:I
    if-lez v6, :cond_4e

    .line 1290
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_36
    .catchall {:try_start_2a .. :try_end_36} :catchall_87
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_36} :catch_37
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_36} :catch_95

    goto :goto_2c

    .line 1292
    .end local v0       #buf:[B,
    .end local v6       #len:I,
    :catch_37
    move-exception v9

    move-object v1, v9

    move-object v7, v8

    .end local v8       #out:Ljava/io/FileOutputStream;,
    .restart local v7       #out:Ljava/io/FileOutputStream;,
    move-object v4, v5

    .end local v5       #in:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/FileInputStream;,
    move-object v2, v3

    .line 1293
    .end local v3       #file:Ljava/io/File;,
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v2       #file:Ljava/io/File;,
    :goto_3c
    :try_start_3c
    const-string v9, "FileNotFoundException: in copyAutoPairingData"

    invoke-static {v9}, Landroid/server/BluetoothService;->access$2600(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_6e

    .line 1298
    if-eqz v4, :cond_46

    :try_start_43
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1299
    :cond_46
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4b} :catch_4c

    goto :goto_19

    .line 1300
    .end local v1       #e:Ljava/io/FileNotFoundException;,
    :catch_4c
    move-exception v9

    goto :goto_19

    .line 1298
    .end local v2       #file:Ljava/io/File;,
    .end local v4       #in:Ljava/io/FileInputStream;,
    .end local v7       #out:Ljava/io/FileOutputStream;,
    .restart local v0       #buf:[B,
    .restart local v3       #file:Ljava/io/File;,
    .restart local v5       #in:Ljava/io/FileInputStream;,
    .restart local v6       #len:I,
    .restart local v8       #out:Ljava/io/FileOutputStream;,
    :cond_4e
    if-eqz v5, :cond_53

    :try_start_50
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 1299
    :cond_53
    if-eqz v8, :cond_58

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_58} :catch_7a

    :cond_58
    :goto_58
    move-object v7, v8

    .end local v8       #out:Ljava/io/FileOutputStream;,
    .restart local v7       #out:Ljava/io/FileOutputStream;,
    move-object v4, v5

    .end local v5       #in:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/FileInputStream;,
    move-object v2, v3

    .line 1301
    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    goto :goto_19

    .line 1294
    .end local v0       #buf:[B,
    .end local v6       #len:I,
    :catch_5c
    move-exception v9

    move-object v1, v9

    .line 1295
    .local v1, e:Ljava/io/IOException;
    :goto_5e
    :try_start_5e
    const-string v9, "IOException: in copyAutoPairingData"

    invoke-static {v9}, Landroid/server/BluetoothService;->access$2600(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_6e

    .line 1298
    if-eqz v4, :cond_68

    :try_start_65
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1299
    :cond_68
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6d} :catch_4c

    goto :goto_19

    .line 1297
    .end local v1       #e:Ljava/io/IOException;,
    :catchall_6e
    move-exception v9

    .line 1298
    :goto_6f
    if-eqz v4, :cond_74

    :try_start_71
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 1299
    :cond_74
    if-eqz v7, :cond_79

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_7e

    .line 1297
    :cond_79
    :goto_79
    throw v9

    .line 1300
    .end local v2       #file:Ljava/io/File;,
    .end local v4       #in:Ljava/io/FileInputStream;,
    .end local v7       #out:Ljava/io/FileOutputStream;,
    .restart local v0       #buf:[B,
    .restart local v3       #file:Ljava/io/File;,
    .restart local v5       #in:Ljava/io/FileInputStream;,
    .restart local v6       #len:I,
    .restart local v8       #out:Ljava/io/FileOutputStream;,
    :catch_7a
    move-exception v9

    goto :goto_58

    .end local v0       #buf:[B,
    .end local v5       #in:Ljava/io/FileInputStream;,
    .end local v6       #len:I,
    .end local v8       #out:Ljava/io/FileOutputStream;,
    .restart local v4       #in:Ljava/io/FileInputStream;,
    .restart local v7       #out:Ljava/io/FileOutputStream;,
    :catch_7c
    move-exception v9

    goto :goto_18

    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    :catch_7e
    move-exception v10

    goto :goto_79

    .line 1297
    .end local v2       #file:Ljava/io/File;,
    .restart local v3       #file:Ljava/io/File;,
    :catchall_80
    move-exception v9

    move-object v2, v3

    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    goto :goto_6f

    .end local v2       #file:Ljava/io/File;,
    .end local v4       #in:Ljava/io/FileInputStream;,
    .restart local v3       #file:Ljava/io/File;,
    .restart local v5       #in:Ljava/io/FileInputStream;,
    :catchall_83
    move-exception v9

    move-object v4, v5

    .end local v5       #in:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/FileInputStream;,
    move-object v2, v3

    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    goto :goto_6f

    .end local v2       #file:Ljava/io/File;,
    .end local v4       #in:Ljava/io/FileInputStream;,
    .end local v7       #out:Ljava/io/FileOutputStream;,
    .restart local v3       #file:Ljava/io/File;,
    .restart local v5       #in:Ljava/io/FileInputStream;,
    .restart local v8       #out:Ljava/io/FileOutputStream;,
    :catchall_87
    move-exception v9

    move-object v7, v8

    .end local v8       #out:Ljava/io/FileOutputStream;,
    .restart local v7       #out:Ljava/io/FileOutputStream;,
    move-object v4, v5

    .end local v5       #in:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/FileInputStream;,
    move-object v2, v3

    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    goto :goto_6f

    .line 1294
    .end local v2       #file:Ljava/io/File;,
    .restart local v3       #file:Ljava/io/File;,
    :catch_8c
    move-exception v9

    move-object v1, v9

    move-object v2, v3

    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    goto :goto_5e

    .end local v2       #file:Ljava/io/File;,
    .end local v4       #in:Ljava/io/FileInputStream;,
    .restart local v3       #file:Ljava/io/File;,
    .restart local v5       #in:Ljava/io/FileInputStream;,
    :catch_90
    move-exception v9

    move-object v1, v9

    move-object v4, v5

    .end local v5       #in:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/FileInputStream;,
    move-object v2, v3

    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    goto :goto_5e

    .end local v2       #file:Ljava/io/File;,
    .end local v4       #in:Ljava/io/FileInputStream;,
    .end local v7       #out:Ljava/io/FileOutputStream;,
    .restart local v3       #file:Ljava/io/File;,
    .restart local v5       #in:Ljava/io/FileInputStream;,
    .restart local v8       #out:Ljava/io/FileOutputStream;,
    :catch_95
    move-exception v9

    move-object v1, v9

    move-object v7, v8

    .end local v8       #out:Ljava/io/FileOutputStream;,
    .restart local v7       #out:Ljava/io/FileOutputStream;,
    move-object v4, v5

    .end local v5       #in:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/FileInputStream;,
    move-object v2, v3

    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    goto :goto_5e

    .line 1292
    :catch_9b
    move-exception v9

    move-object v1, v9

    goto :goto_3c

    .end local v2       #file:Ljava/io/File;,
    .restart local v3       #file:Ljava/io/File;,
    :catch_9e
    move-exception v9

    move-object v1, v9

    move-object v2, v3

    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    goto :goto_3c

    .end local v2       #file:Ljava/io/File;,
    .end local v4       #in:Ljava/io/FileInputStream;,
    .restart local v3       #file:Ljava/io/File;,
    .restart local v5       #in:Ljava/io/FileInputStream;,
    :catch_a2
    move-exception v9

    move-object v1, v9

    move-object v4, v5

    .end local v5       #in:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/FileInputStream;,
    move-object v2, v3

    .end local v3       #file:Ljava/io/File;,
    .restart local v2       #file:Ljava/io/File;,
    goto :goto_3c
.end method

.method private declared-synchronized setPendingOutgoingBonding(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 1099
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/server/BluetoothService$BondState;->mPendingOutgoingBonding:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 1100
    monitor-exit p0

    return-void

    .line 1099
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAutoPairingData(Ljava/lang/String;)V
    .registers 9
    .parameter "address"

    .prologue
    .line 1361
    const/4 v1, 0x0

    .line 1363
    .local v1, out:Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_e} :catch_36
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_5a

    .line 1364
    .end local v1       #out:Ljava/io/BufferedWriter;,
    .local v2, out:Ljava/io/BufferedWriter;
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1365
    .local v3, str:Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_20

    .line 1366
    const-string v4, "DynamicAddressBlacklist="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    :cond_20
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_87
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_2f} :catch_8e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2f} :catch_8a

    .line 1376
    if-eqz v2, :cond_34

    .line 1378
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_85

    :cond_34
    :goto_34
    move-object v1, v2

    .line 1384
    .end local v2       #out:Ljava/io/BufferedWriter;,
    .end local v3       #str:Ljava/lang/StringBuilder;,
    .restart local v1       #out:Ljava/io/BufferedWriter;,
    :cond_35
    :goto_35
    return-void

    .line 1371
    :catch_36
    move-exception v4

    move-object v0, v4

    .line 1372
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_38
    :try_start_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException: updateAutoPairingData"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothService;->access$2600(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_7c

    .line 1376
    if-eqz v1, :cond_35

    .line 1378
    :try_start_54
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    goto :goto_35

    .line 1379
    .end local v0       #e:Ljava/io/FileNotFoundException;,
    :catch_58
    move-exception v4

    goto :goto_35

    .line 1373
    :catch_5a
    move-exception v4

    move-object v0, v4

    .line 1374
    .local v0, e:Ljava/io/IOException;
    :goto_5c
    :try_start_5c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: updateAutoPairingData"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothService;->access$2600(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_5c .. :try_end_76} :catchall_7c

    .line 1376
    if-eqz v1, :cond_35

    .line 1378
    :try_start_78
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_58

    goto :goto_35

    .line 1376
    .end local v0       #e:Ljava/io/IOException;,
    :catchall_7c
    move-exception v4

    :goto_7d
    if-eqz v1, :cond_82

    .line 1378
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 1376
    :cond_82
    :goto_82
    throw v4

    .line 1379
    :catch_83
    move-exception v5

    goto :goto_82

    .end local v1       #out:Ljava/io/BufferedWriter;,
    .restart local v2       #out:Ljava/io/BufferedWriter;,
    .restart local v3       #str:Ljava/lang/StringBuilder;,
    :catch_85
    move-exception v4

    goto :goto_34

    .line 1376
    .end local v3       #str:Ljava/lang/StringBuilder;,
    :catchall_87
    move-exception v4

    move-object v1, v2

    .end local v2       #out:Ljava/io/BufferedWriter;,
    .restart local v1       #out:Ljava/io/BufferedWriter;,
    goto :goto_7d

    .line 1373
    .end local v1       #out:Ljava/io/BufferedWriter;,
    .restart local v2       #out:Ljava/io/BufferedWriter;,
    :catch_8a
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2       #out:Ljava/io/BufferedWriter;,
    .restart local v1       #out:Ljava/io/BufferedWriter;,
    goto :goto_5c

    .line 1371
    .end local v1       #out:Ljava/io/BufferedWriter;,
    .restart local v2       #out:Ljava/io/BufferedWriter;,
    :catch_8e
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2       #out:Ljava/io/BufferedWriter;,
    .restart local v1       #out:Ljava/io/BufferedWriter;,
    goto :goto_38
.end method


# virtual methods
.method public declared-synchronized addAutoPairingFailure(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 1235
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    .line 1239
    :cond_c
    invoke-direct {p0, p1}, Landroid/server/BluetoothService$BondState;->updateAutoPairingData(Ljava/lang/String;)V

    .line 1240
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1241
    monitor-exit p0

    return-void

    .line 1235
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized attempt(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 1266
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1268
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_18

    .line 1269
    const/4 v1, 0x1

    .line 1273
    .local v1, newAttempt:I
    :goto_c
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->mPinAttempt:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1f

    .line 1274
    monitor-exit p0

    return-void

    .line 1271
    .end local v1       #newAttempt:I,
    :cond_18
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1f

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .restart local v1       #newAttempt:I,
    goto :goto_c

    .line 1266
    .end local v0       #attempt:Ljava/lang/Integer;,
    .end local v1       #newAttempt:I,
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clearPinAttempts(Ljava/lang/String;)V
    .registers 3
    .parameter "address"

    .prologue
    .line 1248
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1249
    monitor-exit p0

    return-void

    .line 1248
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAttempt(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 1258
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService$BondState;->mPinAttempt:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 1259
    .local v0, attempt:Ljava/lang/Integer;
    if-nez v0, :cond_e

    .line 1260
    const/4 v1, 0x0

    .line 1262
    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    move-result v1

    goto :goto_c

    .line 1258
    .end local v0       #attempt:Ljava/lang/Integer;,
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBondState(Ljava/lang/String;)I
    .registers 4
    .parameter "address"

    .prologue
    .line 1217
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_14

    .line 1218
    .local v0, state:Ljava/lang/Integer;
    if-nez v0, :cond_f

    .line 1219
    const/16 v1, 0xa

    .line 1221
    :goto_d
    monitor-exit p0

    return v1

    :cond_f
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14

    move-result v1

    goto :goto_d

    .line 1217
    .end local v0       #state:Ljava/lang/Integer;,
    :catchall_14
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPendingOutgoingBonding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1103
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mPendingOutgoingBonding:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAutoPairingFailed(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1252
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 1254
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result v0

    goto :goto_6

    .line 1252
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAutoPairingAttemptsInProgress(Ljava/lang/String;)Z
    .registers 3
    .parameter "address"

    .prologue
    .line 1244
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService$BondState;->getAttempt(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_c

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAutoPairingBlacklisted(Ljava/lang/String;)Z
    .registers 8
    .parameter "address"

    .prologue
    const/4 v5, 0x1

    .line 1171
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_1f

    .line 1172
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1173
    .local v0, blacklistAddress:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    .line 1196
    .end local v0       #blacklistAddress:Ljava/lang/String;,
    .end local v2       #i$:Ljava/util/Iterator;,
    :goto_1e
    return v4

    .line 1177
    :cond_1f
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_3d

    .line 1178
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;,
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1179
    .restart local v0       #blacklistAddress:Ljava/lang/String;,
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move v4, v5

    goto :goto_1e

    .line 1182
    .end local v0       #blacklistAddress:Ljava/lang/String;,
    .end local v2       #i$:Ljava/util/Iterator;,
    :cond_3d
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v4, p1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1183
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_81

    .line 1184
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_63

    .line 1185
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;,
    :cond_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1186
    .local v1, blacklistName:Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    move v4, v5

    goto :goto_1e

    .line 1190
    .end local v1       #blacklistName:Ljava/lang/String;,
    .end local v2       #i$:Ljava/util/Iterator;,
    :cond_63
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;

    if-eqz v4, :cond_81

    .line 1191
    iget-object v4, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;,
    :cond_6d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1192
    .restart local v1       #blacklistName:Ljava/lang/String;,
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6d

    move v4, v5

    goto :goto_1e

    .line 1196
    .end local v1       #blacklistName:Ljava/lang/String;,
    .end local v2       #i$:Ljava/util/Iterator;,
    :cond_81
    const/4 v4, 0x0

    goto :goto_1e
.end method

.method public isAutoPairingWhitelisted(Ljava/lang/String;)Z
    .registers 6
    .parameter "address"

    .prologue
    .line 1202
    iget-object v3, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v3, p1}, Landroid/server/BluetoothService;->getRemoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1203
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 1204
    iget-object v3, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingExactNameWhitelist:Ljava/util/ArrayList;

    if-eqz v3, :cond_26

    .line 1206
    iget-object v3, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingExactNameWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1207
    .local v2, whitelistName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    .line 1211
    .end local v0       #i$:Ljava/util/Iterator;,
    .end local v2       #whitelistName:Ljava/lang/String;,
    :goto_25
    return v3

    :cond_26
    const/4 v3, 0x0

    goto :goto_25
.end method

.method declared-synchronized listInState(I)[Ljava/lang/String;
    .registers 6
    .parameter "state"

    .prologue
    .line 1225
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1226
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1227
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 1228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_16

    .line 1225
    .end local v0       #e:Ljava/util/Map$Entry;,, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1       #i$:Ljava/util/Iterator;,
    .end local v2       #result:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_36
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1231
    .restart local v1       #i$:Ljava/util/Iterator;,
    .restart local v2       #result:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_39
    :try_start_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_36

    monitor-exit p0

    return-object v3
.end method

.method public declared-synchronized loadBondState()V
    .registers 10

    .prologue
    .line 1107
    monitor-enter p0

    :try_start_1
    iget-object v6, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-static {v6}, Landroid/server/BluetoothService;->access$2500(Landroid/server/BluetoothService;)I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_61

    move-result v6

    const/16 v7, 0xb

    if-eq v6, v7, :cond_d

    .line 1124
    :cond_b
    monitor-exit p0

    return-void

    .line 1110
    :cond_d
    const/4 v1, 0x0

    .line 1111
    .local v1, bonds:[Ljava/lang/String;
    :try_start_e
    iget-object v6, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    const-string v7, "Devices"

    invoke-virtual {v6, v7}, Landroid/server/BluetoothService;->getPropertyInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1112
    .local v5, val:Ljava/lang/String;
    if-eqz v5, :cond_1e

    .line 1113
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1115
    :cond_1e
    if-eqz v1, :cond_b

    .line 1118
    iget-object v6, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bonded devices"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/server/BluetoothService;->access$2600(Ljava/lang/String;)V

    .line 1120
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_45
    if-ge v3, v4, :cond_b

    aget-object v2, v0, v3

    .line 1121
    .local v2, device:Ljava/lang/String;
    iget-object v6, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-virtual {v7, v2}, Landroid/server/BluetoothService;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_e .. :try_end_5e} :catchall_61

    .line 1120
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 1107
    .end local v0       #arr$:[Ljava/lang/String;,
    .end local v1       #bonds:[Ljava/lang/String;,
    .end local v2       #device:Ljava/lang/String;,
    .end local v3       #i$:I,
    .end local v4       #len$:I,
    .end local v5       #val:Ljava/lang/String;,
    :catchall_61
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public readAutoPairingData()V
    .registers 11

    .prologue
    .line 1305
    iget-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    .line 1356
    :cond_4
    :goto_4
    return-void

    .line 1306
    :cond_5
    invoke-direct {p0}, Landroid/server/BluetoothService$BondState;->copyAutoPairingData()V

    .line 1307
    const/4 v2, 0x0

    .line 1309
    .local v2, fstream:Ljava/io/FileInputStream;
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/data/misc/bluetooth/dynamic_auto_pairing.conf"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12b
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_10} :catch_131
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_12d

    .line 1310
    .end local v2       #fstream:Ljava/io/FileInputStream;,
    .local v3, fstream:Ljava/io/FileInputStream;
    :try_start_10
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1311
    .local v4, in:Ljava/io/DataInputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1313
    .local v1, file:Ljava/io/BufferedReader;
    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_11f

    .line 1314
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1315
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1f

    const-string v8, "//"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 1316
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1317
    .local v7, value:[Ljava/lang/String;
    if-eqz v7, :cond_1f

    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1f

    .line 1318
    const/4 v8, 0x1

    aget-object v8, v7, v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1319
    .local v6, val:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "AddressBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 1320
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingAddressBlacklist:Ljava/util/ArrayList;
    :try_end_62
    .catchall {:try_start_10 .. :try_end_62} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_62} :catch_63
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_62} :catch_a2

    goto :goto_1f

    .line 1343
    .end local v1       #file:Ljava/io/BufferedReader;,
    .end local v4       #in:Ljava/io/DataInputStream;,
    .end local v5       #line:Ljava/lang/String;,
    .end local v6       #val:[Ljava/lang/String;,
    .end local v7       #value:[Ljava/lang/String;,
    :catch_63
    move-exception v8

    move-object v0, v8

    move-object v2, v3

    .line 1344
    .end local v3       #fstream:Ljava/io/FileInputStream;,
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;,
    :goto_66
    :try_start_66
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException: readAutoPairingData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/server/BluetoothService;->access$2600(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_12b

    .line 1348
    if-eqz v2, :cond_4

    .line 1350
    :try_start_82
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_87

    goto/16 :goto_4

    .line 1351
    .end local v0       #e:Ljava/io/FileNotFoundException;,
    :catch_87
    move-exception v8

    goto/16 :goto_4

    .line 1322
    .end local v2       #fstream:Ljava/io/FileInputStream;,
    .restart local v1       #file:Ljava/io/BufferedReader;,
    .restart local v3       #fstream:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/DataInputStream;,
    .restart local v5       #line:Ljava/lang/String;,
    .restart local v6       #val:[Ljava/lang/String;,
    .restart local v7       #value:[Ljava/lang/String;,
    :cond_8a
    const/4 v8, 0x0

    :try_start_8b
    aget-object v8, v7, v8

    const-string v9, "ExactNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 1323
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingExactNameBlacklist:Ljava/util/ArrayList;
    :try_end_a0
    .catchall {:try_start_8b .. :try_end_a0} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_a0} :catch_63
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_a0} :catch_a2

    goto/16 :goto_1f

    .line 1345
    .end local v1       #file:Ljava/io/BufferedReader;,
    .end local v4       #in:Ljava/io/DataInputStream;,
    .end local v5       #line:Ljava/lang/String;,
    .end local v6       #val:[Ljava/lang/String;,
    .end local v7       #value:[Ljava/lang/String;,
    :catch_a2
    move-exception v8

    move-object v0, v8

    move-object v2, v3

    .line 1346
    .end local v3       #fstream:Ljava/io/FileInputStream;,
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #fstream:Ljava/io/FileInputStream;,
    :goto_a5
    :try_start_a5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException: readAutoPairingData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/server/BluetoothService;->access$2600(Ljava/lang/String;)V
    :try_end_bf
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_12b

    .line 1348
    if-eqz v2, :cond_4

    .line 1350
    :try_start_c1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_87

    goto/16 :goto_4

    .line 1325
    .end local v0       #e:Ljava/io/IOException;,
    .end local v2       #fstream:Ljava/io/FileInputStream;,
    .restart local v1       #file:Ljava/io/BufferedReader;,
    .restart local v3       #fstream:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/DataInputStream;,
    .restart local v5       #line:Ljava/lang/String;,
    .restart local v6       #val:[Ljava/lang/String;,
    .restart local v7       #value:[Ljava/lang/String;,
    :cond_c6
    const/4 v8, 0x0

    :try_start_c7
    aget-object v8, v7, v8

    const-string v9, "PartialNameBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e6

    .line 1326
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingPartialNameBlacklist:Ljava/util/ArrayList;
    :try_end_dc
    .catchall {:try_start_c7 .. :try_end_dc} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_c7 .. :try_end_dc} :catch_63
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_dc} :catch_a2

    goto/16 :goto_1f

    .line 1348
    .end local v1       #file:Ljava/io/BufferedReader;,
    .end local v4       #in:Ljava/io/DataInputStream;,
    .end local v5       #line:Ljava/lang/String;,
    .end local v6       #val:[Ljava/lang/String;,
    .end local v7       #value:[Ljava/lang/String;,
    :catchall_de
    move-exception v8

    move-object v2, v3

    .end local v3       #fstream:Ljava/io/FileInputStream;,
    .restart local v2       #fstream:Ljava/io/FileInputStream;,
    :goto_e0
    if-eqz v2, :cond_e5

    .line 1350
    :try_start_e2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_127

    .line 1348
    :cond_e5
    :goto_e5
    throw v8

    .line 1328
    .end local v2       #fstream:Ljava/io/FileInputStream;,
    .restart local v1       #file:Ljava/io/BufferedReader;,
    .restart local v3       #fstream:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/DataInputStream;,
    .restart local v5       #line:Ljava/lang/String;,
    .restart local v6       #val:[Ljava/lang/String;,
    .restart local v7       #value:[Ljava/lang/String;,
    :cond_e6
    const/4 v8, 0x0

    :try_start_e7
    aget-object v8, v7, v8

    const-string v9, "DynamicAddressBlacklist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fe

    .line 1329
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingDynamicAddressBlacklist:Ljava/util/ArrayList;

    goto/16 :goto_1f

    .line 1333
    :cond_fe
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string v9, "ExactNameWhitelist"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_116

    .line 1334
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Landroid/server/BluetoothService$BondState;->mAutoPairingExactNameWhitelist:Ljava/util/ArrayList;

    goto/16 :goto_1f

    .line 1339
    :cond_116
    const-string v8, "BluetoothService"

    const-string v9, "Error parsing Auto pairing blacklist file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_e7 .. :try_end_11d} :catchall_de
    .catch Ljava/io/FileNotFoundException; {:try_start_e7 .. :try_end_11d} :catch_63
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_11d} :catch_a2

    goto/16 :goto_1f

    .line 1348
    .end local v6       #val:[Ljava/lang/String;,
    .end local v7       #value:[Ljava/lang/String;,
    :cond_11f
    if-eqz v3, :cond_124

    .line 1350
    :try_start_121
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_129

    :cond_124
    :goto_124
    move-object v2, v3

    .line 1355
    .end local v3       #fstream:Ljava/io/FileInputStream;,
    .restart local v2       #fstream:Ljava/io/FileInputStream;,
    goto/16 :goto_4

    .line 1351
    .end local v1       #file:Ljava/io/BufferedReader;,
    .end local v4       #in:Ljava/io/DataInputStream;,
    .end local v5       #line:Ljava/lang/String;,
    :catch_127
    move-exception v9

    goto :goto_e5

    .end local v2       #fstream:Ljava/io/FileInputStream;,
    .restart local v1       #file:Ljava/io/BufferedReader;,
    .restart local v3       #fstream:Ljava/io/FileInputStream;,
    .restart local v4       #in:Ljava/io/DataInputStream;,
    .restart local v5       #line:Ljava/lang/String;,
    :catch_129
    move-exception v8

    goto :goto_124

    .line 1348
    .end local v1       #file:Ljava/io/BufferedReader;,
    .end local v3       #fstream:Ljava/io/FileInputStream;,
    .end local v4       #in:Ljava/io/DataInputStream;,
    .end local v5       #line:Ljava/lang/String;,
    .restart local v2       #fstream:Ljava/io/FileInputStream;,
    :catchall_12b
    move-exception v8

    goto :goto_e0

    .line 1345
    :catch_12d
    move-exception v8

    move-object v0, v8

    goto/16 :goto_a5

    .line 1343
    :catch_131
    move-exception v8

    move-object v0, v8

    goto/16 :goto_66
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;I)V
    .registers 4
    .parameter "address"
    .parameter "state"

    .prologue
    .line 1127
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Landroid/server/BluetoothService$BondState;->setBondState(Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1128
    monitor-exit p0

    return-void

    .line 1127
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBondState(Ljava/lang/String;II)V
    .registers 8
    .parameter "address"
    .parameter "state"
    .parameter "reason"

    .prologue
    .line 1132
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothService$BondState;->getBondState(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_9c

    move-result v1

    .line 1133
    .local v1, oldState:I
    if-ne v1, p2, :cond_9

    .line 1168
    :goto_7
    monitor-exit p0

    return-void

    .line 1139
    :cond_9
    const/16 v2, 0xb

    if-ne v1, v2, :cond_18

    .line 1140
    :try_start_d
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->mPendingOutgoingBonding:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1141
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/BluetoothService$BondState;->mPendingOutgoingBonding:Ljava/lang/String;

    .line 1145
    :cond_18
    const/16 v2, 0xc

    if-ne p2, v2, :cond_21

    .line 1146
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-static {v2, p1}, Landroid/server/BluetoothService;->access$2700(Landroid/server/BluetoothService;Ljava/lang/String;)Landroid/bluetooth/BluetoothDeviceProfileState;

    .line 1149
    :cond_21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bond state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/server/BluetoothService;->access$2600(Ljava/lang/String;)V

    .line 1151
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    iget-object v3, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-static {v3}, Landroid/server/BluetoothService;->access$2800(Landroid/server/BluetoothService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1153
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1154
    const-string v2, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1155
    const/16 v2, 0xa

    if-ne p2, v2, :cond_9f

    .line 1156
    if-gtz p3, :cond_85

    .line 1157
    const-string v2, "BluetoothService"

    const-string/jumbo v3, "setBondState() called to unbond device, but reason code is invalid. Overriding reason code with BOND_RESULT_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/16 p3, 0x9

    .line 1161
    :cond_85
    const-string v2, "android.bluetooth.device.extra.REASON"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1162
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    :goto_8f
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->this$0:Landroid/server/BluetoothService;

    invoke-static {v2}, Landroid/server/BluetoothService;->access$400(Landroid/server/BluetoothService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_d .. :try_end_9a} :catchall_9c

    goto/16 :goto_7

    .line 1132
    .end local v0       #intent:Landroid/content/Intent;,
    .end local v1       #oldState:I,
    :catchall_9c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1164
    .restart local v0       #intent:Landroid/content/Intent;,
    .restart local v1       #oldState:I,
    :cond_9f
    :try_start_9f
    iget-object v2, p0, Landroid/server/BluetoothService$BondState;->mState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a8
    .catchall {:try_start_9f .. :try_end_a8} :catchall_9c

    goto :goto_8f
.end method
