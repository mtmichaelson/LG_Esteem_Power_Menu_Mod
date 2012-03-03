.class final Lcom/android/internal/telephony/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"



# static fields
.field static final SMS_STATUS_REPORT_00:I = 0x0

.field static final SMS_STATUS_REPORT_40:I = 0x40

.field private static final TAG:Ljava/lang/String; = "GSM"



# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 6
    .parameter "phone"
    .parameter "cm"

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 81
    const-string v0, "GSM"

    const-string v1, "Register for EVENT_NEW_SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewSMS(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 84
    return-void
.end method

.method private extractEmailAddressFromMessageBody(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 15
    .parameter "originatingAddress"
    .parameter "messageBody"

    .prologue
    .line 762
    const-string v10, "( /)|( )"

    const/4 v11, 0x2

    invoke-virtual {p2, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 763
    .local v6, parts:[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_d

    const/4 v10, 0x0

    .line 810
    :goto_c
    return-object v10

    .line 764
    :cond_d
    const/4 v10, 0x0

    aget-object v1, v6, v10

    .line 765
    .local v1, emailFrom:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v0, v6, v10

    .line 767
    .local v0, emailBody:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_27

    const-string v10, "6245"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_27

    .line 768
    const/4 v2, 0x1

    .line 777
    .local v2, isEmail:Z
    :goto_23
    if-nez v2, :cond_2c

    .line 778
    const/4 v10, 0x0

    goto :goto_c

    .line 770
    .end local v2       #isEmail:Z,
    :cond_27
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    .restart local v2       #isEmail:Z,
    goto :goto_23

    .line 781
    :cond_2c
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5d

    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_5d

    .line 782
    const-string v10, ")"

    invoke-virtual {p2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 783
    .local v3, parenthesis:I
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5d

    const/4 v10, -0x1

    if-eq v3, v10, :cond_5d

    .line 784
    const/4 v10, 0x0

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 785
    add-int/lit8 v10, v3, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 789
    .end local v3       #parenthesis:I,
    :cond_5d
    const-string v10, "( /)|( )"

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, parts2:[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x1

    if-le v10, v11, :cond_96

    .line 791
    const/4 v10, 0x0

    aget-object v9, v7, v10

    .line 792
    .local v9, tempFrom:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v8, v7, v10

    .line 794
    .local v8, tempBody:Ljava/lang/String;
    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 795
    .local v5, parenthesisStart:I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_96

    .line 796
    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 798
    .local v4, parenthesisEnd:I
    const/4 v10, -0x1

    if-eq v4, v10, :cond_96

    if-le v4, v5, :cond_96

    .line 799
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 800
    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_94

    invoke-static {v9}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_96

    .line 801
    :cond_94
    move-object v1, v9

    .line 802
    move-object v0, v8

    .line 808
    .end local v4       #parenthesisEnd:I,
    .end local v5       #parenthesisStart:I,
    .end local v8       #tempBody:Ljava/lang/String;,
    .end local v9       #tempFrom:Ljava/lang/String;,
    :cond_96
    const/4 v10, 0x0

    aput-object v1, v6, v10

    .line 809
    const/4 v10, 0x1

    aput-object v0, v6, v10

    move-object v10, v6

    .line 810
    goto/16 :goto_c
.end method

.method private resultToCause(I)I
    .registers 3
    .parameter "rc"

    .prologue
    .line 566
    packed-switch p1, :pswitch_data_c

    .line 575
    :pswitch_3
    const/16 v0, 0xff

    :goto_5
    return v0

    .line 570
    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    .line 572
    :pswitch_8
    const/16 v0, 0xd3

    goto :goto_5

    .line 566
    nop

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 30
    .parameter "destinationAddress"
    .parameter "scAddress"
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
    .line 436
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    sget-object v5, Lcom/android/internal/telephony/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v22

    .line 438
    .local v22, ss:I
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_47

    if-eqz v22, :cond_47

    .line 439
    const/4 v15, 0x0

    .local v15, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, count:I
    :goto_17
    if-ge v15, v12, :cond_10f

    .line 440
    const/16 v20, 0x0

    .line 441
    .local v20, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_2c

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v15, :cond_2c

    .line 442
    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20       #sentIntent:Landroid/app/PendingIntent;,
    check-cast v20, Landroid/app/PendingIntent;

    .line 444
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;,
    :cond_2c
    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v20

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v23

    .line 446
    .local v23, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 439
    add-int/lit8 v15, v15, 0x1

    goto :goto_17

    .line 451
    .end local v12       #count:I,
    .end local v15       #i:I,
    .end local v20       #sentIntent:Landroid/app/PendingIntent;,
    .end local v23       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_47
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    .line 452
    .local v19, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 453
    .local v17, msgCount:I
    const/4 v10, 0x0

    .line 454
    .local v10, encoding:I
    sput v17, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRemainingMessages:I

    .line 456
    const/4 v15, 0x0

    .restart local v15       #i:I,
    :goto_58
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_79

    .line 457
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v14

    .line 458
    .local v14, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v5, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_76

    if-eqz v10, :cond_74

    const/4 v5, 0x1

    if-ne v10, v5, :cond_76

    .line 461
    :cond_74
    iget v10, v14, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 456
    :cond_76
    add-int/lit8 v15, v15, 0x1

    goto :goto_58

    .line 465
    .end local v14       #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;,
    :cond_79
    const/4 v15, 0x0

    :goto_7a
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_10f

    .line 466
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 467
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v19

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 468
    add-int/lit8 v5, v15, 0x1

    iput v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 469
    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 470
    const/4 v5, 0x0

    iput-boolean v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 471
    new-instance v21, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 472
    .local v21, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v11

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 474
    const/16 v20, 0x0

    .line 475
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;,
    if-eqz p4, :cond_b2

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v15, :cond_b2

    .line 476
    move-object/from16 v0, p4

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20       #sentIntent:Landroid/app/PendingIntent;,
    check-cast v20, Landroid/app/PendingIntent;

    .line 479
    .restart local v20       #sentIntent:Landroid/app/PendingIntent;,
    :cond_b2
    const/4 v13, 0x0

    .line 480
    .local v13, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_c4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v15, :cond_c4

    .line 481
    move-object/from16 v0, p5

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13       #deliveryIntent:Landroid/app/PendingIntent;,
    check-cast v13, Landroid/app/PendingIntent;

    .line 484
    .restart local v13       #deliveryIntent:Landroid/app/PendingIntent;,
    :cond_c4
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v13, :cond_10c

    const/4 v5, 0x1

    move v8, v5

    :goto_d1
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v18

    .line 488
    .local v18, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v16

    .line 490
    .local v16, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object v3, v13

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v23

    .line 492
    .restart local v23       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 465
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7a

    .line 484
    .end local v16       #map:Ljava/util/HashMap;,
    .end local v18       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
    .end local v23       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_10c
    const/4 v5, 0x0

    move v8, v5

    goto :goto_d1

    .line 494
    .end local v10       #encoding:I,
    .end local v11       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
    .end local v13       #deliveryIntent:Landroid/app/PendingIntent;,
    .end local v17       #msgCount:I,
    .end local v19       #refNumber:I,
    .end local v20       #sentIntent:Landroid/app/PendingIntent;,
    .end local v21       #smsHeader:Lcom/android/internal/telephony/SmsHeader;,
    :cond_10f
    return-void
.end method

.method private updateMessagefromSim(Lcom/android/internal/telephony/gsm/SmsMessage;Z)V
    .registers 18
    .parameter "sms"
    .parameter "sent"

    .prologue
    .line 630
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, body:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatusOnIcc()I

    move-result v13

    .line 632
    .local v13, statusOnSim:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 633
    .local v9, currentDate:J
    const/4 v12, 0x0

    .line 634
    .local v12, smsUri:Landroid/net/Uri;
    const/4 v1, 0x0

    .line 635
    .local v1, address:Ljava/lang/String;
    const/4 v8, 0x0

    .line 636
    .local v8, boxId:I
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 638
    .local v14, values:Landroid/content/ContentValues;
    sparse-switch v13, :sswitch_data_160

    .line 685
    const/4 v8, 0x2

    .line 686
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRecipientAddress()Ljava/lang/String;

    move-result-object v1

    .line 689
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_41

    const-string v0, "6245"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 690
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->extractEmailAddressFromMessageBody(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 691
    .local v11, parts:[Ljava/lang/String;
    if-eqz v11, :cond_41

    .line 692
    const/4 v0, 0x0

    aget-object v1, v11, v0

    .line 693
    const/4 v0, 0x1

    aget-object v2, v11, v0

    .line 697
    .end local v11       #parts:[Ljava/lang/String;,
    :cond_41
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v12

    .line 700
    :goto_50
    const/4 v0, 0x3

    if-ne v13, v0, :cond_148

    .line 701
    const-string/jumbo v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1       #address:Ljava/lang/String;,
    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 702
    const-string/jumbo v0, "seen"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    :goto_69
    const-string/jumbo v0, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    const-string v0, "index_on_icc"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getIndexOnIcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v14, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 710
    .end local v2       #body:Ljava/lang/String;,
    return-void

    .line 641
    .restart local v1       #address:Ljava/lang/String;,
    .restart local v2       #body:Ljava/lang/String;,
    :sswitch_8c
    const/4 v8, 0x1

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    .line 645
    if-eqz v1, :cond_ae

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_ae

    const-string v0, "6245"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 646
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->extractEmailAddressFromMessageBody(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 647
    .restart local v11       #parts:[Ljava/lang/String;,
    if-eqz v11, :cond_ae

    .line 648
    const/4 v0, 0x0

    aget-object v1, v11, v0

    .line 649
    const/4 v0, 0x1

    aget-object v2, v11, v0

    .line 653
    .end local v11       #parts:[Ljava/lang/String;,
    :cond_ae
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v12

    .line 654
    const-string/jumbo v0, "service_center"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string/jumbo v0, "protocol"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_ee

    .line 657
    const-string/jumbo v0, "subject"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_ee
    const-string/jumbo v0, "reply_path_present"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->isReplyPathPresent()Z

    move-result v3

    if-eqz v3, :cond_101

    const/4 v3, 0x1

    :goto_f8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_50

    :cond_101
    const/4 v3, 0x0

    goto :goto_f8

    .line 663
    :sswitch_103
    if-eqz p2, :cond_143

    .line 664
    const/4 v8, 0x5

    .line 668
    :goto_106
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRecipientAddress()Ljava/lang/String;

    move-result-object v1

    .line 671
    if-eqz v1, :cond_127

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_127

    const-string v0, "6245"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 672
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->extractEmailAddressFromMessageBody(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 673
    .restart local v11       #parts:[Ljava/lang/String;,
    if-eqz v11, :cond_127

    .line 674
    const/4 v0, 0x0

    aget-object v1, v11, v0

    .line 675
    const/4 v0, 0x1

    aget-object v2, v11, v0

    .line 679
    .end local v11       #parts:[Ljava/lang/String;,
    :cond_127
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatusReportReq()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_145

    const/4 v0, 0x1

    move v5, v0

    .line 680
    .local v5, srr:Z
    :goto_130
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v6, -0x1

    invoke-static/range {v0 .. v7}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v12

    .line 681
    goto/16 :goto_50

    .line 666
    .end local v5       #srr:Z,
    :cond_143
    const/4 v8, 0x4

    goto :goto_106

    .line 679
    :cond_145
    const/4 v0, 0x0

    move v5, v0

    goto :goto_130

    .line 704
    :cond_148
    const-string/jumbo v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1       #address:Ljava/lang/String;,
    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    const-string/jumbo v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_69

    .line 638
    :sswitch_data_160
    .sparse-switch
        0x1 -> :sswitch_8c
        0x3 -> :sswitch_8c
        0x7 -> :sswitch_103
    .end sparse-switch
.end method


# virtual methods
.method protected SendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 27
    .parameter "destinationAddress"
    .parameter "scAddress"
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
    .line 366
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 368
    .local v16, refNumber:I
    const/4 v13, 0x0

    .local v13, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, msgCount:I
    :goto_e
    if-ge v13, v15, :cond_9c

    .line 369
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 370
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 371
    add-int/lit8 v5, v13, 0x1

    iput v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 372
    iput v15, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 379
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 380
    new-instance v18, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 381
    .local v18, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v11

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 383
    const/16 v17, 0x0

    .line 384
    .local v17, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_40

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v13, :cond_40

    .line 385
    move-object/from16 v0, p4

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17       #sentIntent:Landroid/app/PendingIntent;,
    check-cast v17, Landroid/app/PendingIntent;

    .line 388
    .restart local v17       #sentIntent:Landroid/app/PendingIntent;,
    :cond_40
    const/4 v12, 0x0

    .line 389
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_52

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v13, :cond_52

    .line 390
    move-object/from16 v0, p5

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12       #deliveryIntent:Landroid/app/PendingIntent;,
    check-cast v12, Landroid/app/PendingIntent;

    .line 393
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;,
    :cond_52
    move-object/from16 v0, p3

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v12, :cond_9a

    const/4 v6, 0x1

    :goto_5e
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v7

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object v2, v5

    move v3, v6

    move-object v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v9

    .line 396
    .local v9, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p6

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v14

    .line 398
    .local v14, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v17

    move-object v3, v12

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v19

    .line 400
    .local v19, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 368
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_e

    .line 393
    .end local v9       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
    .end local v14       #map:Ljava/util/HashMap;,
    .end local v19       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_9a
    const/4 v6, 0x0

    goto :goto_5e

    .line 402
    .end local v11       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
    .end local v12       #deliveryIntent:Landroid/app/PendingIntent;,
    .end local v17       #sentIntent:Landroid/app/PendingIntent;,
    .end local v18       #smsHeader:Lcom/android/internal/telephony/SmsHeader;,
    :cond_9c
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
    .line 339
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 340
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

    .line 342
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
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

    .line 344
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 346
    const-string p1, "6245"

    .line 350
    .end local v7       #msgText:Ljava/lang/StringBuilder;,
    :cond_3f
    if-eqz p5, :cond_59

    const/4 v0, 0x1

    :goto_42
    invoke-static {p2, p1, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v4

    .local v4, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    .line 353
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 354
    .local v6, map:Ljava/util/HashMap;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v6, p4, p5, v0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v8

    .line 356
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 357
    return-void

    .line 350
    .end local v4       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
    .end local v6       #map:Ljava/util/HashMap;,
    .end local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_59
    const/4 v0, 0x0

    goto :goto_42
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 6
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_d

    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 563
    :cond_d
    return-void
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .registers 14
    .parameter "smsb"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v11, "GSM"

    .line 147
    if-nez p1, :cond_8

    .line 148
    const/4 v7, 0x2

    .line 225
    :goto_7
    return v7

    .line 150
    :cond_8
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v4, v0

    .line 151
    .local v4, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v1, 0x0

    .line 153
    .local v1, handled:Z
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 156
    const-string v7, "GSM"

    const-string v7, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    .line 157
    goto :goto_7

    .line 161
    :cond_1c
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 162
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/GsmSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 163
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    .line 165
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_4c

    move v8, v9

    :goto_3d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_48
    :goto_48
    if-eqz v1, :cond_79

    move v7, v9

    .line 176
    goto :goto_7

    :cond_4c
    move v8, v10

    .line 165
    goto :goto_3d

    .line 167
    :cond_4e
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 168
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/GsmSMSDispatcher;->updateMessageWaitingIndicator(I)V

    .line 169
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v1

    .line 171
    const-string v7, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_77

    move v8, v9

    :goto_6b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :cond_77
    move v8, v10

    goto :goto_6b

    .line 179
    :cond_79
    sget-boolean v7, Lcom/android/internal/telephony/GsmSMSDispatcher;->mStorageAvailable:Z

    if-nez v7, :cond_87

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v7

    sget-object v8, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v7, v8, :cond_87

    .line 182
    const/4 v7, 0x3

    goto :goto_7

    .line 185
    :cond_87
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    .line 187
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v5, :cond_91

    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v7, :cond_c9

    .line 189
    :cond_91
    new-array v3, v9, [[B

    .line 190
    .local v3, pdus:[[B
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v7

    aput-object v7, v3, v10

    .line 197
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v6

    .line 198
    .local v6, smscAdd:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, originAdd:Ljava/lang/String;
    if-eqz v5, :cond_c5

    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v7, :cond_c5

    .line 204
    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v8, 0xb84

    if-ne v7, v8, :cond_bb

    .line 210
    iget-object v7, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v8

    invoke-virtual {v7, v8, v6, v2}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_7

    .line 216
    :cond_bb
    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v3, v7}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 222
    :goto_c2
    const/4 v7, -0x1

    goto/16 :goto_7

    .line 220
    :cond_c5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_c2

    .line 225
    .end local v2       #originAdd:Ljava/lang/String;,
    .end local v3       #pdus:[[B,
    .end local v6       #smscAdd:Ljava/lang/String;,
    :cond_c9
    iget-object v7, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v4, v7, v8}, Lcom/android/internal/telephony/GsmSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v7

    goto/16 :goto_7
.end method

.method public dispose()V
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewSMS(Landroid/os/Handler;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSmsStatus(Landroid/os/Handler;)V

    .line 91
    return-void
.end method

.method protected getEncoding()I
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method protected handleSimSmses(Ljava/util/ArrayList;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const-string v9, "GSM"

    .line 717
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->initSimMessages()V

    .line 718
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 719
    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_a
    if-ge v4, v1, :cond_63

    .line 720
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 721
    .local v0, ba:[B
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    if-eqz v6, :cond_57

    .line 722
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSimSmses status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    new-instance v2, Lcom/android/internal/telephony/SmsRawData;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v2, v6}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    .line 724
    .local v2, data:Lcom/android/internal/telephony/SmsRawData;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v5

    .line 725
    .local v5, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v5, :cond_57

    .line 726
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/GsmSMSDispatcher;->updateMessagefromSim(Lcom/android/internal/telephony/gsm/SmsMessage;Z)V
    :try_end_57
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_57} :catch_5a

    .line 719
    .end local v2       #data:Lcom/android/internal/telephony/SmsRawData;,
    .end local v5       #sms:Lcom/android/internal/telephony/gsm/SmsMessage;,
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 729
    .end local v0       #ba:[B,
    .end local v1       #count:I,
    .end local v4       #i:I,
    :catch_5a
    move-exception v6

    move-object v3, v6

    .line 730
    .local v3, e:Landroid/database/SQLException;
    const-string v6, "GSM"

    const-string v6, "Can\'t store current SMS in SIM to SQLite DB"

    invoke-static {v9, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    .end local v3       #e:Landroid/database/SQLException;,
    :cond_63
    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .registers 14
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 101
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 102
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 104
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_4f

    .line 105
    iget v4, v6, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 109
    .local v4, messageRef:I
    iget v7, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 111
    .local v7, status:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_16
    if-ge v2, v0, :cond_4f

    .line 112
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 113
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_5c

    .line 117
    if-eqz v7, :cond_2a

    const/16 v9, 0x40

    if-lt v7, v9, :cond_54

    .line 119
    :cond_2a
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    :goto_2f
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 127
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 129
    const-string v9, "encoding"

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getEncoding()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    :try_start_49
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_4f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_49 .. :try_end_4f} :catch_5f

    .line 139
    .end local v0       #count:I,
    .end local v1       #fillIn:Landroid/content/Intent;,
    .end local v2       #i:I,
    .end local v3       #intent:Landroid/app/PendingIntent;,
    .end local v4       #messageRef:I,
    .end local v7       #status:I,
    .end local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_4f
    :goto_4f
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 140
    return-void

    .line 122
    .restart local v0       #count:I,
    .restart local v2       #i:I,
    .restart local v4       #messageRef:I,
    .restart local v7       #status:I,
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_54
    const-string v9, "GSM"

    const-string v10, " handleStatusReport - not remove "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 111
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 132
    .restart local v1       #fillIn:Landroid/content/Intent;,
    .restart local v3       #intent:Landroid/app/PendingIntent;,
    :catch_5f
    move-exception v9

    goto :goto_4f
.end method

.method public initSimMessages()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 626
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 627
    return-void
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
    .line 237
    if-eqz p6, :cond_1a

    const/4 v0, 0x1

    :goto_3
    invoke-static {p2, p1, p3, p4, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v5

    .local v5, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 240
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 241
    .local v6, map:Ljava/util/HashMap;
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v6, p5, p6, v0}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v7

    .line 243
    .local v7, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 244
    return-void

    .line 237
    .end local v5       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
    .end local v6       #map:Ljava/util/HashMap;,
    .end local v7       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_1a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 9
    .parameter "tracker"

    .prologue
    .line 537
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 539
    .local v6, map:Ljava/util/HashMap;
    const-string v0, "destination"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 540
    .local v1, destinationAddress:Ljava/lang/String;
    const-string/jumbo v0, "scaddress"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 542
    .local v2, scAddress:Ljava/lang/String;
    const-string/jumbo v0, "parts"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 543
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "sentIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 544
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 549
    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    if-nez v3, :cond_30

    .line 555
    :goto_2f
    return-void

    :cond_30
    move-object v0, p0

    .line 550
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2f
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 28
    .parameter "destinationAddress"
    .parameter "scAddress"
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
    .line 278
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    .line 279
    .local v18, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 280
    .local v16, msgCount:I
    const/4 v10, 0x0

    .line 281
    .local v10, encoding:I
    sput v16, Lcom/android/internal/telephony/GsmSMSDispatcher;->mRemainingMessages:I

    .line 283
    const/4 v14, 0x0

    .local v14, i:I
    :goto_11
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_32

    .line 284
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v13

    .line 285
    .local v13, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v5, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_2f

    if-eqz v10, :cond_2d

    const/4 v5, 0x1

    if-ne v10, v5, :cond_2f

    .line 288
    :cond_2d
    iget v10, v13, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 283
    :cond_2f
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    .line 292
    .end local v13       #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;,
    :cond_32
    const/4 v14, 0x0

    :goto_33
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_c7

    .line 293
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 294
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v18

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 295
    add-int/lit8 v5, v14, 0x1

    iput v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 296
    move/from16 v0, v16

    move-object v1, v11

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 303
    const/4 v5, 0x1

    iput-boolean v5, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 304
    new-instance v20, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 305
    .local v20, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v11

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 307
    const/16 v19, 0x0

    .line 308
    .local v19, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6b

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v14, :cond_6b

    .line 309
    move-object/from16 v0, p4

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19       #sentIntent:Landroid/app/PendingIntent;,
    check-cast v19, Landroid/app/PendingIntent;

    .line 312
    .restart local v19       #sentIntent:Landroid/app/PendingIntent;,
    :cond_6b
    const/4 v12, 0x0

    .line 313
    .local v12, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_7d

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v14, :cond_7d

    .line 314
    move-object/from16 v0, p5

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12       #deliveryIntent:Landroid/app/PendingIntent;,
    check-cast v12, Landroid/app/PendingIntent;

    .line 317
    .restart local v12       #deliveryIntent:Landroid/app/PendingIntent;,
    :cond_7d
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v12, :cond_c4

    const/4 v5, 0x1

    move v8, v5

    :goto_8a
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 321
    .local v17, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v5

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v15

    .line 323
    .local v15, map:Ljava/util/HashMap;
    sget-object v5, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v19

    move-object v3, v12

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v21

    .line 325
    .local v21, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 292
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_33

    .line 317
    .end local v15       #map:Ljava/util/HashMap;,
    .end local v17       #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
    .end local v21       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_c4
    const/4 v5, 0x0

    move v8, v5

    goto :goto_8a

    .line 327
    .end local v11       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;,
    .end local v12       #deliveryIntent:Landroid/app/PendingIntent;,
    .end local v19       #sentIntent:Landroid/app/PendingIntent;,
    .end local v20       #smsHeader:Lcom/android/internal/telephony/SmsHeader;,
    :cond_c7
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 10
    .parameter "tracker"

    .prologue
    const-string v7, "[SMSoIMS]"

    .line 498
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 500
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 501
    .local v4, smsc:[B
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 503
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 505
    .local v3, reply:Landroid/os/Message;
    iget v5, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-gtz v5, :cond_2d

    invoke-static {}, Lcom/android/internal/telephony/GsmSMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_58

    .line 510
    :cond_2d
    const-string v5, "[SMSoIMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendGsmSms : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 525
    :goto_57
    return-void

    .line 519
    :cond_58
    const-string v5, "[SMSoIMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendImsGsmSms : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_57
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 13
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 252
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 253
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

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
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

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 259
    const-string p1, "6245"

    .line 264
    .end local v1       #msgText:Ljava/lang/StringBuilder;,
    :cond_3f
    if-eqz p5, :cond_54

    const/4 v4, 0x1

    :goto_42
    invoke-static {p2, p1, p3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v2

    .line 267
    .local v2, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 268
    .local v0, map:Ljava/util/HashMap;
    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_3GPP:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {p0, v0, p4, p5, v4}, Lcom/android/internal/telephony/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v3

    .line 270
    .local v3, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/GsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 271
    return-void

    .line 264
    .end local v0       #map:Ljava/util/HashMap;,
    .end local v2       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
    .end local v3       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;,
    :cond_54
    const/4 v4, 0x0

    goto :goto_42
.end method

.method protected updateIccAvailability()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const-string v4, "GSM"

    .line 580
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getCurrentApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 583
    .local v0, newApplication:Lcom/android/internal/telephony/UiccCardApplication;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eq v1, v0, :cond_41

    .line 584
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_27

    .line 585
    const-string v1, "GSM"

    const-string v1, "Removing stale 3gpp Application."

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v1, :cond_25

    .line 587
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccApplicationRecords;->unregisterForNewSms(Landroid/os/Handler;)V

    .line 588
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 590
    :cond_25
    iput-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 592
    :cond_27
    if-eqz v0, :cond_41

    .line 593
    const-string v1, "GSM"

    const-string v1, "New 3gpp application found"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 595
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getApplicationRecords()Lcom/android/internal/telephony/UiccApplicationRecords;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    .line 596
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/16 v2, 0x11

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccApplicationRecords;->registerForNewSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 599
    :cond_41
    return-void
.end method

.method updateMessageWaitingIndicator(I)V
    .registers 5
    .parameter "mwi"

    .prologue
    .line 604
    if-gez p1, :cond_1b

    .line 605
    const/4 p1, -0x1

    .line 612
    :cond_3
    :goto_3
    sget-object v1, Lcom/android/internal/telephony/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 614
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    if-eqz v1, :cond_22

    .line 615
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/GsmSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 616
    .local v0, onComplete:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRecords:Lcom/android/internal/telephony/UiccApplicationRecords;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/internal/telephony/UiccApplicationRecords;->setVoiceMessageWaiting(IILandroid/os/Message;)V

    .line 620
    .end local v0       #onComplete:Landroid/os/Message;,
    :goto_1a
    return-void

    .line 606
    :cond_1b
    const/16 v1, 0xff

    if-le p1, v1, :cond_3

    .line 609
    const/16 p1, 0xff

    goto :goto_3

    .line 618
    :cond_22
    const-string v1, "GSM"

    const-string v2, "SIM Records not found, MWI not updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
