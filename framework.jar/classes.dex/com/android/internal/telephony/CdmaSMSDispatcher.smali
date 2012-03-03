.class final Lcom/android/internal/telephony/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"



# static fields
.field private static final TAG:Ljava/lang/String; = "CDMA"

.field private static msgref:I = 0x0

.field private static final prefixVZW:Ljava/lang/String; = "//VZW"



# instance fields
.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B

.field private pduDecoder:Lcom/android/internal/telephony/Andy_WspTypeDecoder;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->msgref:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 6
    .parameter "phone"
    .parameter "cm"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 114
    const-string v0, "CDMA"

    const-string v1, "Register for EVENT_NEW_SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewCdmaSMS(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    return-void
.end method

.method private static decode_Base64([B)[B
    .registers 3
    .parameter "data"

    .prologue
    .line 415
    const/16 v1, 0xdc

    new-array v0, v1, [B

    .line 416
    .local v0, b64:[B
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    .line 417
    return-object v0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .registers 9
    .parameter "sms"

    .prologue
    .line 137
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_7
    if-ge v2, v0, :cond_3c

    .line 138
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 139
    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    if-ne v5, v6, :cond_3d

    .line 141
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 142
    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 143
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 145
    const-string v5, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getEncoding()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    :try_start_36
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_36 .. :try_end_3c} :catch_40

    .line 152
    .end local v1       #fillIn:Landroid/content/Intent;,
    .end local v3       #intent:Landroid/app/PendingIntent;,
    .end local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_3c
    :goto_3c
    return-void

    .line 137
    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 148
    .restart local v1       #fillIn:Landroid/content/Intent;,
    .restart local v3       #intent:Landroid/app/PendingIntent;,
    :catch_40
    move-exception v5

    goto :goto_3c
.end method

.method protected static mmsTestBedGetMsgId([B)[B
    .registers 12
    .parameter "pdu"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    .line 388
    array-length v7, p0

    const/4 v8, 0x4

    sub-int/2addr v7, v8

    new-array v2, v7, [B

    .line 389
    .local v2, mms_userdata:[B
    array-length v7, v2

    new-array v5, v7, [B

    .line 390
    .local v5, new_userdata:[B
    const/16 v7, 0x14

    new-array v3, v7, [C

    .line 393
    .local v3, msgid:[C
    array-length v7, p0

    sub-int/2addr v7, v10

    invoke-static {p0, v10, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    array-length v1, v2

    .line 396
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    if-ge v0, v1, :cond_3c

    .line 397
    aget-byte v7, v2, v0

    const/16 v8, 0x2f

    if-eq v7, v8, :cond_25

    .line 398
    aget-byte v7, v2, v0

    int-to-char v7, v7

    aput-char v7, v3, v0

    .line 396
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 400
    :cond_25
    aput-char v9, v3, v0

    .line 403
    invoke-static {v3, v9, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, tmp:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/internal/telephony/CdmaSMSDispatcher;->msgref:I

    .line 406
    array-length v7, v5

    sub-int v4, v7, v0

    .line 407
    .local v4, new_len:I
    add-int/lit8 v7, v0, 0x1

    const/4 v8, 0x1

    sub-int v8, v4, v8

    invoke-static {v2, v7, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    .end local v4       #new_len:I,
    .end local v6       #tmp:Ljava/lang/String;,
    :cond_3c
    invoke-static {v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->decode_Base64([B)[B

    move-result-object v7

    return-object v7
.end method

.method private mmsTestBedPushCheck([B)Z
    .registers 6
    .parameter "user_data"

    .prologue
    const/4 v3, 0x0

    .line 380
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 382
    .local v1, pData:Ljava/lang/String;
    const-string v2, "//LG/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 384
    .local v0, index:I
    if-nez v0, :cond_10

    const/4 v2, 0x1

    :goto_f
    return v2

    :cond_10
    move v2, v3

    goto :goto_f
.end method

.method private resultToCause(I)I
    .registers 3
    .parameter "rc"

    .prologue
    .line 871
    packed-switch p1, :pswitch_data_10

    .line 887
    :pswitch_3
    const/16 v0, 0x60

    :goto_5
    return v0

    .line 875
    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    .line 877
    :pswitch_8
    const/16 v0, 0x23

    goto :goto_5

    .line 879
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_5

    .line 883
    :pswitch_d
    const/16 v0, 0x25

    goto :goto_5

    .line 871
    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_8
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method protected SendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 28
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "cbAddress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 737
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 739
    .local v16, refNumber:I
    const/4 v13, 0x0

    .local v13, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, msgCount:I
    :goto_e
    if-ge v13, v15, :cond_b2

    .line 740
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 741
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 742
    add-int/lit8 v5, v13, 0x1

    iput v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 743
    iput v15, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 744
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 745
    new-instance v18, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 746
    .local v18, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v11

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 748
    const/16 v17, 0x0

    .line 749
    .local v17, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_40

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v13, :cond_40

    .line 750
    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17       #sentIntent:Landroid/app/PendingIntent;,
    check-cast v17, Landroid/app/PendingIntent;

    .line 753
    .restart local v17       #sentIntent:Landroid/app/PendingIntent;,
    :cond_40
    const/4 v12, 0x0

    .line 754
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_52

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v13, :cond_52

    .line 755
    move-object/from16 v0, p5

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12       #deliveryIntent:Landroid/app/PendingIntent;,
    check-cast v12, Landroid/app/PendingIntent;

    .line 758
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;,
    :cond_52
    new-instance v20, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 759
    .local v20, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 760
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 764
    sget v5, Lcom/android/internal/telephony/SMSDispatcher;->mSubmitPriority:I

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSmsPriority(I)V

    .line 771
    if-eqz v12, :cond_b0

    const/4 v5, 0x1

    sub-int v5, v15, v5

    if-ne v13, v5, :cond_b0

    const/4 v5, 0x1

    :goto_78
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move v2, v5

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v9

    .line 774
    .local v9, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p6

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v14

    .line 776
    .local v14, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v17

    move-object v3, v12

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v19

    .line 778
    .local v19, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 739
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_e

    .line 771
    .end local v9       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;,
    .end local v14       #map:Ljava/util/HashMap;,
    .end local v19       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_b0
    const/4 v5, 0x0

    goto :goto_78

    .line 780
    .end local v11       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
    .end local v12       #deliveryIntent:Landroid/app/PendingIntent;,
    .end local v17       #sentIntent:Landroid/app/PendingIntent;,
    .end local v18       #smsHeader:Lcom/android/internal/telephony/SmsHeader;,
    .end local v20       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;,
    :cond_b2
    return-void
.end method

.method protected SendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 16
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "cbAddress"

    .prologue
    .line 698
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 699
    const-string v0, "[SMStoEmail]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destAddr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 702
    .local v7, msgText:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 705
    const-string p1, "6245"

    .line 711
    .end local v7       #msgText:Ljava/lang/StringBuilder;,
    :cond_3f
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->mSubmitPriority:I

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSmsPriority(I)V

    .line 714
    if-eqz p5, :cond_64

    const/4 v0, 0x1

    move v3, v0

    :goto_48
    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v4

    .local v4, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    .line 717
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 718
    .local v6, map:Ljava/util/HashMap;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v6, p4, p5, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v8

    .line 720
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 721
    return-void

    .line 714
    .end local v4       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;,
    .end local v6       #map:Ljava/util/HashMap;,
    .end local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_64
    const/4 v0, 0x0

    move v3, v0

    goto :goto_48
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 8
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 854
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, inEcm:Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 868
    :cond_12
    :goto_12
    return-void

    .line 859
    :cond_13
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_12

    .line 860
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .line 861
    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    .line 863
    if-nez v0, :cond_26

    .line 864
    iget-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    .line 866
    :cond_26
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_12
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .registers 17
    .parameter "smsb"

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    const/16 v12, 0x1002

    const/4 v10, 0x1

    const-string v11, "CDMA"

    .line 157
    const-string v8, "CDMA"

    const-string v8, "ENTER::dispatchMessage"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isInvalidSimCardForSms()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isEnabledNetworkLock()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 165
    const-string v8, "CDMA"

    const-string v8, "SMS MT Fail: Invalid SIM Card."

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v8, 0x5

    .line 372
    :goto_22
    return v8

    .line 171
    :cond_23
    if-nez p1, :cond_2e

    .line 172
    const-string v8, "CDMA"

    const-string v8, "dispatchMessage: message is null"

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v8, 0x2

    goto :goto_22

    .line 176
    :cond_2e
    const-string/jumbo v8, "ril.cdma.inecmmode"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, inEcm:Ljava/lang/String;
    const-string/jumbo v8, "true"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 178
    const-string v8, "CDMA"

    const-string v8, "In Emergency Call Mode."

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v13

    .line 179
    goto :goto_22

    .line 183
    :cond_49
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    move-object v4, v0

    .line 187
    .local v4, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v6

    .line 208
    .local v6, teleService:I
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    .line 209
    iget-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    if-eqz v8, :cond_73

    iget-object v8, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iget-object v9, p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_73

    const/16 v8, 0x1004

    if-eq v8, v6, :cond_73

    .line 216
    const-string v8, "CDMA"

    const-string v8, "FINGER_PRINT_It is the same as the last message."

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v10

    .line 217
    goto :goto_22

    .line 220
    :cond_73
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    .line 242
    const/4 v1, 0x0

    .line 246
    .local v1, handled:Z
    if-ne v12, v6, :cond_98

    .line 247
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mmsTestBedPushCheck([B)Z

    move-result v8

    if-ne v8, v10, :cond_98

    .line 248
    const/16 v6, 0x1004

    .line 249
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mmsTestBedGetMsgId([B)[B

    move-result-object v8

    sget v9, Lcom/android/internal/telephony/CdmaSMSDispatcher;->msgref:I

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v8

    goto :goto_22

    .line 257
    :cond_98
    const/16 v8, 0x1003

    if-eq v8, v6, :cond_a0

    const/high16 v8, 0x4

    if-ne v8, v6, :cond_cf

    .line 264
    :cond_a0
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->isMwiUrgentMessage()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicatorPriority(Z)V

    .line 269
    const-string/jumbo v8, "persist.radio.cdg2_flag"

    invoke-static {v8, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c7

    .line 270
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v7

    .line 271
    .local v7, voicemailCount:I
    if-gez v7, :cond_c0

    .line 272
    const/4 v7, -0x1

    .line 278
    :cond_b7
    :goto_b7
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 285
    .end local v7       #voicemailCount:I,
    :goto_ba
    const/4 v1, 0x1

    .line 298
    :cond_bb
    :goto_bb
    if-eqz v1, :cond_ef

    move v8, v10

    .line 299
    goto/16 :goto_22

    .line 273
    .restart local v7       #voicemailCount:I,
    :cond_c0
    const/16 v8, 0x63

    if-le v7, v8, :cond_b7

    .line 276
    const/16 v7, 0x63

    goto :goto_b7

    .line 280
    .end local v7       #voicemailCount:I,
    :cond_c7
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    goto :goto_ba

    .line 286
    :cond_cf
    if-eq v12, v6, :cond_d5

    const/16 v8, 0x1005

    if-ne v8, v6, :cond_e0

    :cond_d5
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v8

    if-eqz v8, :cond_e0

    .line 289
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    .line 290
    const/4 v1, 0x1

    goto :goto_bb

    .line 291
    :cond_e0
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v8

    if-nez v8, :cond_bb

    .line 293
    const-string v8, "CDMA"

    const-string v8, "Received SMS without user data"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x1

    goto :goto_bb

    .line 302
    :cond_ef
    sget-boolean v8, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mStorageAvailable:Z

    if-nez v8, :cond_fe

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v8

    sget-object v9, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v8, v9, :cond_fe

    .line 306
    const/4 v8, 0x3

    goto/16 :goto_22

    .line 309
    :cond_fe
    const/16 v8, 0x1004

    if-ne v8, v6, :cond_112

    .line 310
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v8

    goto/16 :goto_22

    .line 317
    :cond_112
    if-eq v12, v6, :cond_121

    const/16 v8, 0x1005

    if-eq v8, v6, :cond_121

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v8

    if-eq v10, v8, :cond_121

    .line 320
    const/4 v8, 0x4

    goto/16 :goto_22

    .line 334
    :cond_121
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 339
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->parseDirectedSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v8

    if-ne v10, v8, :cond_12e

    move v8, v10

    .line 340
    goto/16 :goto_22

    .line 352
    :cond_12e
    if-eqz v5, :cond_134

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v8, :cond_164

    .line 354
    :cond_134
    new-array v3, v10, [[B

    .line 355
    .local v3, pdus:[[B
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v8

    aput-object v8, v3, v14

    .line 357
    if-eqz v5, :cond_160

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v8, :cond_160

    .line 358
    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v8, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v9, 0xb84

    if-ne v8, v9, :cond_156

    .line 360
    iget-object v8, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v8

    goto/16 :goto_22

    .line 363
    :cond_156
    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v8, v8, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v3, v8}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    :goto_15d
    move v8, v13

    .line 369
    goto/16 :goto_22

    .line 367
    :cond_160
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_15d

    .line 372
    .end local v3       #pdus:[[B,
    :cond_164
    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v9, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v4, v8, v9}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v8

    goto/16 :goto_22
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 121
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewCdmaSMS(Landroid/os/Handler;)V

    .line 122
    return-void
.end method

.method protected getEncoding()I
    .registers 2

    .prologue
    .line 423
    const/4 v0, 0x2

    return v0
.end method

.method protected handleSimSmses(Ljava/util/ArrayList;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1025
    .local p1, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const-string v0, "CDMA"

    const-string v1, "handleSimSmses is a special GSM function, should never be called in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .registers 4
    .parameter "ar"

    .prologue
    .line 133
    const-string v0, "CDMA"

    const-string v1, "handleStatusReport is a special GSM function, should never be called in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method protected parseDirectedSMS(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .registers 22
    .parameter "sms"

    .prologue
    .line 926
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v12, applications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Sms;->APPDIRECT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "application"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 931
    .local v14, c:Landroid/database/Cursor;
    :goto_1f
    :try_start_1f
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 932
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2e

    goto :goto_1f

    .line 935
    :catchall_2e
    move-exception v3

    if-eqz v14, :cond_34

    .line 936
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 935
    :cond_34
    throw v3

    :cond_35
    if-eqz v14, :cond_3a

    .line 936
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 940
    :cond_3a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_93

    .line 941
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 942
    .local v18, sDirectedSMSApp:[Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 949
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    const-string v4, "//VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 950
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    .line 951
    .local v9, appDirectedSMS:Ljava/lang/String;
    const-string v3, "directedAppSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appDirectedSMS : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const-string v3, "//VZW"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 957
    .local v19, tempSMS:Ljava/lang/String;
    const-string v3, ":"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_95

    .line 958
    const/4 v3, 0x0

    .line 974
    .end local v9       #appDirectedSMS:Ljava/lang/String;,
    .end local v18       #sDirectedSMSApp:[Ljava/lang/String;,
    .end local v19       #tempSMS:Ljava/lang/String;,
    :goto_92
    return v3

    .line 945
    :cond_93
    const/4 v3, 0x0

    goto :goto_92

    .line 961
    .restart local v9       #appDirectedSMS:Ljava/lang/String;,
    .restart local v18       #sDirectedSMSApp:[Ljava/lang/String;,
    .restart local v19       #tempSMS:Ljava/lang/String;,
    :cond_95
    const/4 v3, 0x0

    const-string v4, ":"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 962
    .local v11, applicationPrefix:Ljava/lang/String;
    const-string v3, "directedAppSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applicationPrefix : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    move-object/from16 v13, v18

    .local v13, arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_c6
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_f8

    aget-object v10, v13, v15

    .line 965
    .local v10, appList:Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f5

    .line 966
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, v19

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 967
    .local v17, parameters:Ljava/lang/String;
    const-string v3, "directedAppSMS"

    const-string v4, "dispatchDirectedSms!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchDirectedSms(Ljava/lang/String;)V

    .line 969
    const/4 v3, 0x1

    goto :goto_92

    .line 964
    .end local v17       #parameters:Ljava/lang/String;,
    :cond_f5
    add-int/lit8 v15, v15, 0x1

    goto :goto_c6

    .line 974
    .end local v9       #appDirectedSMS:Ljava/lang/String;,
    .end local v10       #appList:Ljava/lang/String;,
    .end local v11       #applicationPrefix:Ljava/lang/String;,
    .end local v13       #arr$:[Ljava/lang/String;,
    .end local v15       #i$:I,
    .end local v16       #len$:I,
    .end local v19       #tempSMS:Ljava/lang/String;,
    :cond_f8
    const/4 v3, 0x0

    goto :goto_92
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .registers 35
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    .line 439
    const/16 v18, 0x0

    .line 442
    .local v18, index:I
    const/16 v26, 0x0

    .line 443
    .local v26, sourcePort:I
    const/4 v14, 0x0

    .line 445
    .local v14, destinationPort:I
    const-string v4, "CDMA"

    const-string v5, "ENTER::processCdmaWapPdu"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    add-int/lit8 v19, v18, 0x1

    .end local v18       #index:I,
    .local v19, index:I
    aget-byte v20, p1, v18

    .line 448
    .local v20, msgType:I
    if-eqz v20, :cond_1d

    .line 449
    const-string v4, "CDMA"

    const-string v5, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v4, 0x1

    move/from16 v18, v19

    .line 562
    .end local v19       #index:I,
    .restart local v18       #index:I,
    :cond_1c
    :goto_1c
    return v4

    .line 452
    .end local v18       #index:I,
    .restart local v19       #index:I,
    :cond_1d
    add-int/lit8 v18, v19, 0x1

    .end local v19       #index:I,
    .restart local v18       #index:I,
    aget-byte v27, p1, v19

    .line 453
    .local v27, totalSegments:I
    add-int/lit8 v19, v18, 0x1

    .end local v18       #index:I,
    .restart local v19       #index:I,
    aget-byte v24, p1, v18

    .line 456
    .local v24, segment:I
    if-nez v24, :cond_243

    .line 458
    add-int/lit8 v18, v19, 0x1

    .end local v19       #index:I,
    .restart local v18       #index:I,
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v26, v4, 0x8

    .line 459
    add-int/lit8 v19, v18, 0x1

    .end local v18       #index:I,
    .restart local v19       #index:I,
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int v26, v26, v4

    .line 460
    add-int/lit8 v18, v19, 0x1

    .end local v19       #index:I,
    .restart local v18       #index:I,
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v14, v4, 0x8

    .line 461
    add-int/lit8 v19, v18, 0x1

    .end local v18       #index:I,
    .restart local v19       #index:I,
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v14, v4

    move/from16 v18, v19

    .line 465
    .end local v19       #index:I,
    .restart local v18       #index:I,
    :goto_48
    new-instance v29, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "reference_number ="

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .local v29, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v4, 0x0

    aput-object p3, v30, v4

    .line 475
    .local v30, whereArgs:[Ljava/lang/String;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WAP PDU. Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", originator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", src-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dst-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", segment# = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v23, 0x0

    check-cast v23, [[B

    .line 480
    .local v23, pdus:[[B
    const/4 v10, 0x0

    .line 485
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/CdmaSMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 489
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 490
    .local v11, cursorCount:I
    const/4 v4, 0x1

    sub-int v4, v27, v4

    if-eq v11, v4, :cond_174

    .line 492
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 493
    .local v28, values:Landroid/content/ContentValues;
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 494
    const-string/jumbo v4, "pdu"

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int v5, v5, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v4, "address"

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string/jumbo v4, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    const-string v4, "count"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    const-string/jumbo v4, "sequence"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    const-string v4, "destination_port"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_16c
    .catchall {:try_start_ce .. :try_end_16c} :catchall_207
    .catch Landroid/database/SQLException; {:try_start_ce .. :try_end_16c} :catch_1f4

    .line 503
    const/4 v4, 0x1

    .line 535
    if-eqz v10, :cond_1c

    .end local v11       #cursorCount:I,
    .end local v28       #values:Landroid/content/ContentValues;,
    :goto_16f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1c

    .line 507
    .restart local v11       #cursorCount:I,
    :cond_174
    :try_start_174
    const-string/jumbo v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 508
    .local v22, pduColumn:I
    const-string/jumbo v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 510
    .local v25, sequenceColumn:I
    move/from16 v0, v27

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    .line 511
    const/16 v17, 0x0

    .local v17, i:I
    :goto_18a
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_1b7

    .line 512
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 513
    move-object v0, v10

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .line 515
    .local v12, cursorSequence:I
    if-nez v12, :cond_1a7

    .line 516
    const-string v4, "destination_port"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 517
    .local v15, destinationPortColumn:I
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v14, v4

    .line 519
    .end local v15       #destinationPortColumn:I,
    :cond_1a7
    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v23, v12

    .line 511
    add-int/lit8 v17, v17, 0x1

    goto :goto_18a

    .line 528
    .end local v12       #cursorSequence:I,
    :cond_1b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c9
    .catchall {:try_start_174 .. :try_end_1c9} :catchall_207
    .catch Landroid/database/SQLException; {:try_start_174 .. :try_end_1c9} :catch_1f4

    .line 535
    if-eqz v10, :cond_1ce

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 539
    :cond_1ce
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 540
    .local v21, output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_1d5
    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_21d

    .line 542
    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_20e

    .line 544
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    sub-int v4, v4, v18

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 540
    :goto_1f1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1d5

    .line 531
    .end local v11       #cursorCount:I,
    .end local v17       #i:I,
    .end local v21       #output:Ljava/io/ByteArrayOutputStream;,
    .end local v22       #pduColumn:I,
    .end local v25       #sequenceColumn:I,
    :catch_1f4
    move-exception v4

    move-object/from16 v16, v4

    .line 532
    .local v16, e:Landroid/database/SQLException;
    :try_start_1f7
    const-string v4, "CDMA"

    const-string v5, "Can\'t access multipart SMS database"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_202
    .catchall {:try_start_1f7 .. :try_end_202} :catchall_207

    .line 533
    const/4 v4, 0x2

    .line 535
    if-eqz v10, :cond_1c

    goto/16 :goto_16f

    .end local v16       #e:Landroid/database/SQLException;,
    :catchall_207
    move-exception v4

    if-eqz v10, :cond_20d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_20d
    throw v4

    .line 546
    .restart local v11       #cursorCount:I,
    .restart local v17       #i:I,
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;,
    .restart local v22       #pduColumn:I,
    .restart local v25       #sequenceColumn:I,
    :cond_20e
    aget-object v4, v23, v17

    const/4 v5, 0x0

    aget-object v6, v23, v17

    array-length v6, v6

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1f1

    .line 550
    :cond_21d
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .line 552
    .local v13, datagram:[B
    packed-switch v14, :pswitch_data_248

    .line 558
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    .line 559
    const/4 v4, 0x0

    aput-object v13, v23, v4

    .line 561
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 562
    const/4 v4, -0x1

    goto/16 :goto_1c

    .line 555
    :pswitch_238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v4

    goto/16 :goto_1c

    .end local v10       #cursor:Landroid/database/Cursor;,
    .end local v11       #cursorCount:I,
    .end local v13       #datagram:[B,
    .end local v17       #i:I,
    .end local v18       #index:I,
    .end local v21       #output:Ljava/io/ByteArrayOutputStream;,
    .end local v22       #pduColumn:I,
    .end local v23       #pdus:[[B,
    .end local v25       #sequenceColumn:I,
    .end local v29       #where:Ljava/lang/StringBuilder;,
    .end local v30       #whereArgs:[Ljava/lang/String;,
    .restart local v19       #index:I,
    :cond_243
    move/from16 v18, v19

    .end local v19       #index:I,
    .restart local v18       #index:I,
    goto/16 :goto_48

    .line 552
    nop

    :pswitch_data_248
    .packed-switch 0xb84
        :pswitch_238
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 15
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 570
    if-eqz p6, :cond_1a

    const/4 v0, 0x1

    :goto_3
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 573
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 574
    .local v6, map:Ljava/util/HashMap;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 576
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 577
    return-void

    .line 570
    .end local v5       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;,
    .end local v6       #map:Ljava/util/HashMap;,
    .end local v7       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_1a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 4
    .parameter "tracker"

    .prologue
    .line 847
    const-string v0, "CDMA"

    const-string v1, "TODO: CdmaSMSDispatcher.sendMultipartSms not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 25
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move v12, v0

    .line 624
    .local v12, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 625
    .local v11, msgCount:I
    const/4 v8, 0x0

    .line 627
    .local v8, encoding:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_f
    if-ge v9, v11, :cond_3b

    .line 628
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    .line 629
    .local v7, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object v0, v7

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v18, v0

    move v0, v8

    move/from16 v1, v18

    if-eq v0, v1, :cond_38

    if-eqz v8, :cond_36

    const/16 v18, 0x1

    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_38

    .line 632
    :cond_36
    iget v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 627
    :cond_38
    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    .line 636
    .end local v7       #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;,
    :cond_3b
    const/4 v9, 0x0

    :goto_3c
    if-ge v9, v11, :cond_10a

    .line 637
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 638
    .local v5, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v12, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 639
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 640
    iput v11, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 641
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object v1, v5

    iput-boolean v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 642
    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 643
    .local v14, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v5, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 645
    const/4 v13, 0x0

    .line 646
    .local v13, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_71

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_71

    .line 647
    move-object/from16 v0, p4

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13       #sentIntent:Landroid/app/PendingIntent;,
    check-cast v13, Landroid/app/PendingIntent;

    .line 650
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;,
    :cond_71
    const/4 v6, 0x0

    .line 651
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_86

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    move v1, v9

    if-le v0, v1, :cond_86

    .line 652
    move-object/from16 v0, p5

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6       #deliveryIntent:Landroid/app/PendingIntent;,
    check-cast v6, Landroid/app/PendingIntent;

    .line 655
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;,
    :cond_86
    new-instance v17, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 656
    .local v17, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 657
    move-object v0, v14

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 658
    const/16 v18, 0x1

    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_fe

    .line 659
    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 663
    :goto_ad
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 668
    sget v18, Lcom/android/internal/telephony/SMSDispatcher;->mSubmitPriority:I

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSmsPriority(I)V

    .line 676
    if-eqz v6, :cond_107

    const/16 v18, 0x1

    sub-int v18, v11, v18

    move v0, v9

    move/from16 v1, v18

    if-ne v0, v1, :cond_107

    const/16 v18, 0x1

    :goto_c7
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v15

    .line 679
    .local v15, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 681
    .local v10, map:Ljava/util/HashMap;
    sget-object v18, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 683
    .local v16, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 636
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3c

    .line 661
    .end local v10       #map:Ljava/util/HashMap;,
    .end local v15       #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;,
    .end local v16       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_fe
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_ad

    .line 676
    :cond_107
    const/16 v18, 0x0

    goto :goto_c7

    .line 685
    .end local v6       #deliveryIntent:Landroid/app/PendingIntent;,
    .end local v13       #sentIntent:Landroid/app/PendingIntent;,
    .end local v14       #smsHeader:Lcom/android/internal/telephony/SmsHeader;,
    .end local v17       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;,
    :cond_10a
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 10
    .parameter "tracker"

    .prologue
    const-string v7, "[SMSoIMS]"

    .line 818
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 820
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 821
    .local v4, smsc:[B
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 823
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 825
    .local v3, reply:Landroid/os/Message;
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-gtz v5, :cond_2d

    invoke-static {}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_50

    .line 830
    :cond_2d
    const-string v5, "[SMSoIMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendCdmaSms : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 843
    :goto_4f
    return-void

    .line 838
    :cond_50
    const-string v5, "[SMSoIMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendImsCdmaSms : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendImsCdmaSms([BLandroid/os/Message;)V

    goto :goto_4f
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 5
    .parameter "tracker"

    .prologue
    const-string v2, "CDMA"

    .line 785
    const-string/jumbo v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 786
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_16

    .line 788
    :try_start_10
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_16
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_10 .. :try_end_16} :catch_42

    .line 792
    :cond_16
    :goto_16
    const-string v0, "CDMA"

    const-string v0, "Block SMS in Emergency Callback mode"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :goto_1d
    return-void

    .line 798
    :cond_1e
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isInvalidSimCardForSms()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isEnabledNetworkLock()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 802
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_34

    .line 804
    :try_start_2e
    iget-object v0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_34
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2e .. :try_end_34} :catch_40

    .line 808
    :cond_34
    :goto_34
    const-string v0, "CDMA"

    const-string v0, "Block SMS in Invalid SIM Card"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 813
    :cond_3c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1d

    .line 805
    :catch_40
    move-exception v0

    goto :goto_34

    .line 789
    :catch_42
    move-exception v0

    goto :goto_16
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 13
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 585
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 586
    const-string v4, "[SMStoEmail]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "destAddr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    .local v1, msgText:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 592
    const-string p1, "6245"

    .line 598
    .end local v1       #msgText:Ljava/lang/StringBuilder;,
    :cond_3f
    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->mSubmitPriority:I

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->setSmsPriority(I)V

    .line 602
    if-eqz p5, :cond_5a

    const/4 v4, 0x1

    :goto_47
    const/4 v5, 0x0

    invoke-static {p2, p1, p3, v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    .line 605
    .local v2, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 606
    .local v0, map:Ljava/util/HashMap;
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP2:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v0, p4, p5, v4}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v3

    .line 608
    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 609
    return-void

    .line 602
    .end local v0       #map:Ljava/util/HashMap;,
    .end local v2       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;,
    .end local v3       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_5a
    const/4 v4, 0x0

    goto :goto_47
.end method

.method protected updateIccAvailability()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-string v3, "CDMA"

    .line 895
    const-string/jumbo v1, "persist.radio.sms_usim_storage"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 896
    const-string v1, "CDMA"

    const-string v1, "CdmaSMSDispatcher.updateIccAvailability not supported"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_14
    :goto_14
    return-void

    .line 902
    :cond_15
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 905
    .local v0, newApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_14

    .line 906
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_34

    .line 907
    const-string v1, "CDMA"

    const-string v1, "Removing stale 3gpp2 Application."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v1, :cond_32

    .line 909
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 911
    :cond_32
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 913
    :cond_34
    if-eqz v0, :cond_14

    .line 914
    const-string v1, "CDMA"

    const-string v1, "New 3gpp2 application found"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 916
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    goto :goto_14
.end method

.method updateMessageWaitingIndicator(I)V
    .registers 3
    .parameter "mwi"

    .prologue
    .line 990
    if-gez p1, :cond_e

    .line 991
    const/4 p1, -0x1

    .line 998
    :cond_3
    :goto_3
    sget-object v0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->storeVoiceMailCount()V

    .line 1001
    return-void

    .line 992
    :cond_e
    const/16 v0, 0x63

    if-le p1, v0, :cond_3

    .line 995
    const/16 p1, 0x63

    goto :goto_3
.end method

.method updateMessageWaitingIndicator(Z)V
    .registers 3
    .parameter "mwi"

    .prologue
    .line 981
    if-eqz p1, :cond_7

    const/4 v0, -0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CdmaSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 982
    return-void

    .line 981
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method updateMessageWaitingIndicatorPriority(Z)V
    .registers 7
    .parameter "urgent"

    .prologue
    .line 1007
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateMessageWaitingIndicatorPriority : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    sget-object v2, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageUrgent(Z)V

    .line 1012
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1013
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1014
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object p0, Lcom/android/internal/telephony/CdmaSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v2, "vm_priority_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1015
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1016
    return-void
.end method
