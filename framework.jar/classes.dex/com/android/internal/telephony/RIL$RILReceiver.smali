.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"


# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 550
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/16 v13, 0x8

    const-string v12, "RILJ"

    .line 554
    const/4 v5, 0x0

    .line 557
    .local v5, retryCount:I
    :goto_5
    const/4 v6, 0x0

    .line 561
    .local v6, s:Landroid/net/LocalSocket;
    :try_start_6
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_65
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_a1

    .line 562
    .end local v6       #s:Landroid/net/LocalSocket;,
    .local v7, s:Landroid/net/LocalSocket;
    :try_start_b
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v9, "rild"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 564
    .local v2, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v7, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_f9
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_18} :catch_5a

    .line 597
    const/4 v5, 0x0

    .line 599
    :try_start_19
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v7, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 600
    const-string v9, "RILJ"

    const-string v10, "Connected to \'rild\' socket"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_24} :catch_5a

    .line 602
    const/4 v3, 0x0

    .line 604
    .local v3, length:I
    :try_start_25
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 609
    .local v1, is:Ljava/io/InputStream;
    :goto_2d
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    invoke-static {v1, v9}, Lcom/android/internal/telephony/RIL;->access$300(Ljava/io/InputStream;[B)I
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_bc
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_32} :catch_c7

    move-result v3

    .line 611
    if-gez v3, :cond_a4

    .line 633
    .end local v1       #is:Ljava/io/InputStream;,
    :goto_35
    :try_start_35
    const-string v9, "RILJ"

    const-string v10, "Disconnected from \'rild\' socket"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_43} :catch_5a

    .line 639
    :try_start_43
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4a} :catch_f6
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4a} :catch_5a

    .line 643
    :goto_4a
    :try_start_4a
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 644
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 647
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_59} :catch_5a

    goto :goto_5

    .line 648
    .end local v2       #l:Landroid/net/LocalSocketAddress;,
    .end local v3       #length:I,
    :catch_5a
    move-exception v9

    move-object v8, v9

    move-object v6, v7

    .line 649
    .end local v7       #s:Landroid/net/LocalSocket;,
    .restart local v6       #s:Landroid/net/LocalSocket;,
    .local v8, tr:Ljava/lang/Throwable;
    :goto_5d
    const-string v9, "RILJ"

    const-string v9, "Uncaught exception"

    invoke-static {v12, v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 651
    return-void

    .line 565
    .end local v8       #tr:Ljava/lang/Throwable;,
    :catch_65
    move-exception v9

    move-object v0, v9

    .line 567
    .local v0, ex:Ljava/io/IOException;
    :goto_67
    if-eqz v6, :cond_6c

    .line 568
    :try_start_69
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_f1
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_a1

    .line 577
    :cond_6c
    :goto_6c
    if-ne v5, v13, :cond_95

    .line 578
    :try_start_6e
    const-string v9, "RILJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times, continuing to retry silently"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_8c} :catch_a1

    .line 589
    :cond_8c
    :goto_8c
    const-wide/16 v9, 0xfa0

    :try_start_8e
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_8e .. :try_end_91} :catch_f4
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_91} :catch_a1

    .line 593
    :goto_91
    add-int/lit8 v5, v5, 0x1

    .line 594
    goto/16 :goto_5

    .line 582
    :cond_95
    if-lez v5, :cond_8c

    if-ge v5, v13, :cond_8c

    .line 583
    :try_start_99
    const-string v9, "RILJ"

    const-string v10, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_a0} :catch_a1

    goto :goto_8c

    .line 648
    .end local v0       #ex:Ljava/io/IOException;,
    :catch_a1
    move-exception v9

    move-object v8, v9

    goto :goto_5d

    .line 616
    .end local v6       #s:Landroid/net/LocalSocket;,
    .restart local v1       #is:Ljava/io/InputStream;,
    .restart local v2       #l:Landroid/net/LocalSocketAddress;,
    .restart local v3       #length:I,
    .restart local v7       #s:Landroid/net/LocalSocket;,
    :cond_a4
    :try_start_a4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 617
    .local v4, p:Landroid/os/Parcel;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 618
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 622
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-static {v9, v4}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 623
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ba} :catch_bc
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_ba} :catch_c7

    goto/16 :goto_2d

    .line 625
    .end local v1       #is:Ljava/io/InputStream;,
    .end local v4       #p:Landroid/os/Parcel;,
    :catch_bc
    move-exception v9

    move-object v0, v9

    .line 626
    .restart local v0       #ex:Ljava/io/IOException;,
    :try_start_be
    const-string v9, "RILJ"

    const-string v10, "\'rild\' socket closed"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 628
    .end local v0       #ex:Ljava/io/IOException;,
    :catch_c7
    move-exception v9

    move-object v8, v9

    .line 629
    .restart local v8       #tr:Ljava/lang/Throwable;,
    const-string v9, "RILJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uncaught exception read length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_ef} :catch_5a

    goto/16 :goto_35

    .line 570
    .end local v2       #l:Landroid/net/LocalSocketAddress;,
    .end local v3       #length:I,
    .end local v7       #s:Landroid/net/LocalSocket;,
    .end local v8       #tr:Ljava/lang/Throwable;,
    .restart local v0       #ex:Ljava/io/IOException;,
    .restart local v6       #s:Landroid/net/LocalSocket;,
    :catch_f1
    move-exception v9

    goto/16 :goto_6c

    .line 590
    :catch_f4
    move-exception v9

    goto :goto_91

    .line 640
    .end local v0       #ex:Ljava/io/IOException;,
    .end local v6       #s:Landroid/net/LocalSocket;,
    .restart local v2       #l:Landroid/net/LocalSocketAddress;,
    .restart local v3       #length:I,
    .restart local v7       #s:Landroid/net/LocalSocket;,
    :catch_f6
    move-exception v9

    goto/16 :goto_4a

    .line 565
    .end local v2       #l:Landroid/net/LocalSocketAddress;,
    .end local v3       #length:I,
    :catch_f9
    move-exception v9

    move-object v0, v9

    move-object v6, v7

    .end local v7       #s:Landroid/net/LocalSocket;,
    .restart local v6       #s:Landroid/net/LocalSocket;,
    goto/16 :goto_67
.end method
