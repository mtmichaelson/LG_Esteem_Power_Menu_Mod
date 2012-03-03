.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$1;,
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
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



# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;



# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 38
    const-class v1, Lcom/google/android/mms/pdu/PduComposer;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    if-nez v1, :cond_2b

    const/4 v1, 0x1

    :goto_9
    sput-boolean v1, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    .line 124
    const/4 v1, 0x0

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 127
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2d

    .line 131
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 38
    .end local v0       #i:I,
    :cond_2b
    const/4 v1, 0x0

    goto :goto_9

    .line 133
    .restart local v0       #i:I,
    :cond_2d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .registers 6
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 99
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 104
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 109
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 119
    iput-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 142
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 144
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 145
    new-instance v0, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 146
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 147
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 148
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 6
    .parameter "address"

    .prologue
    .line 462
    const/4 v2, 0x0

    .line 465
    .local v2, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 466
    .local v0, addressType:I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 467
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1b

    .line 469
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_19
    :goto_19
    move-object v3, v2

    .line 481
    .end local v0       #addressType:I,
    :goto_1a
    return-object v3

    .line 470
    .restart local v0       #addressType:I,
    :cond_1b
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2c

    .line 472
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_19

    .line 477
    .end local v0       #addressType:I,
    :catch_28
    move-exception v3

    move-object v1, v3

    .line 478
    .local v1, e:Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1a

    .line 473
    .end local v1       #e:Ljava/lang/NullPointerException;,
    .restart local v0       #addressType:I,
    :cond_2c
    const/4 v3, 0x4

    if-ne v3, v0, :cond_19

    .line 475
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_38} :catch_28

    goto :goto_19
.end method

.method private appendHeader(I)I
    .registers 27
    .parameter "field"

    .prologue
    .line 488
    packed-switch p1, :pswitch_data_290

    .line 659
    :pswitch_3
    const/16 v23, 0x3

    .line 662
    :goto_5
    return v23

    .line 490
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v22

    .line 493
    .local v22, version:I
    if-nez v22, :cond_25

    .line 494
    const/16 v23, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 662
    .end local v22       #version:I,
    :cond_22
    :goto_22
    const/16 v23, 0x0

    goto :goto_5

    .line 496
    .restart local v22       #version:I,
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_22

    .line 503
    .end local v22       #version:I,
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v21

    .line 504
    .local v21, textString:[B
    if-nez v21, :cond_40

    .line 505
    const/16 v23, 0x2

    goto :goto_5

    .line 508
    :cond_40
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_22

    .line 515
    .end local v21       #textString:[B,
    :pswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 517
    .local v5, addr:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_5e

    .line 518
    const/16 v23, 0x2

    goto :goto_5

    .line 522
    :cond_5e
    const/16 v17, 0x0

    .local v17, i:I
    :goto_60
    move-object v0, v5

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_22

    .line 523
    aget-object v23, v5, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .line 524
    .local v20, temp:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v20, :cond_79

    .line 525
    const/16 v23, 0x1

    goto :goto_5

    .line 528
    :cond_79
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 529
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 522
    add-int/lit8 v17, v17, 0x1

    goto :goto_60

    .line 538
    .end local v5       #addr:[Lcom/google/android/mms/pdu/EncodedStringValue;,
    .end local v17       #i:I,
    .end local v20       #temp:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :pswitch_86
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, MDN:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "1"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, VZW_MDN:Ljava/lang/String;
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v9, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 544
    .local v9, encodedNumbers:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v23, "/TYPE=PLMN"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    .line 545
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 546
    invoke-static {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v15

    .line 549
    .local v15, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_d9

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_d9

    new-instance v23, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>([B)V

    const-string v24, "insert-address-token"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_ed

    .line 554
    :cond_d9
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 556
    const/16 v23, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_22

    .line 558
    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 562
    .local v16, fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v23, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 564
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .line 565
    .restart local v20       #temp:Lcom/google/android/mms/pdu/EncodedStringValue;,
    if-nez v20, :cond_116

    .line 566
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 569
    :cond_116
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 571
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v14

    .line 572
    .local v14, flen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 573
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_22

    .line 584
    .end local v3       #MDN:Ljava/lang/String;,
    .end local v4       #VZW_MDN:Ljava/lang/String;,
    .end local v9       #encodedNumbers:Lcom/google/android/mms/pdu/EncodedStringValue;,
    .end local v14       #flen:I,
    .end local v15       #from:Lcom/google/android/mms/pdu/EncodedStringValue;,
    .end local v16       #fstart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
    .end local v20       #temp:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :pswitch_140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v19

    .line 585
    .local v19, octet:I
    if-nez v19, :cond_154

    .line 586
    const/16 v23, 0x2

    goto/16 :goto_5

    .line 589
    :cond_154
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 590
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 594
    .end local v19       #octet:I,
    :pswitch_160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v6

    .line 595
    .local v6, date:J
    const-wide/16 v23, -0x1

    cmp-long v23, v23, v6

    if-nez v23, :cond_178

    .line 596
    const/16 v23, 0x2

    goto/16 :goto_5

    .line 599
    :cond_178
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 600
    move-object/from16 v0, p0

    move-wide v1, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_22

    .line 604
    .end local v6       #date:J,
    :pswitch_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 606
    .local v8, enString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v8, :cond_197

    .line 607
    const/16 v23, 0x2

    goto/16 :goto_5

    .line 610
    :cond_197
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 611
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_22

    .line 615
    .end local v8       #enString:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :pswitch_1a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 616
    .local v18, messageClass:[B
    if-nez v18, :cond_1b6

    .line 617
    const/16 v23, 0x2

    goto/16 :goto_5

    .line 620
    :cond_1b6
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 621
    const-string v23, "advertisement"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-eqz v23, :cond_1d4

    .line 623
    const/16 v23, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 624
    :cond_1d4
    const-string v23, "auto"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-eqz v23, :cond_1ef

    .line 626
    const/16 v23, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 627
    :cond_1ef
    const-string/jumbo v23, "personal"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-eqz v23, :cond_20b

    .line 629
    const/16 v23, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 630
    :cond_20b
    const-string v23, "informational"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-eqz v23, :cond_226

    .line 632
    const/16 v23, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 634
    :cond_226
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_22

    .line 639
    .end local v18       #messageClass:[B,
    :pswitch_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v10

    .line 640
    .local v10, expiry:J
    const-wide/16 v23, -0x1

    cmp-long v23, v23, v10

    if-nez v23, :cond_247

    .line 641
    const/16 v23, 0x2

    goto/16 :goto_5

    .line 644
    :cond_247
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v13

    .line 649
    .local v13, expiryStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    const/16 v23, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 650
    move-object/from16 v0, p0

    move-wide v1, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 652
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v12

    .line 653
    .local v12, expiryLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 654
    move v0, v12

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_22

    .line 488
    nop

    :pswitch_data_290
    .packed-switch 0x81
        :pswitch_4b
        :pswitch_4b
        :pswitch_3
        :pswitch_3
        :pswitch_160
        :pswitch_140
        :pswitch_3
        :pswitch_22f
        :pswitch_86
        :pswitch_1a2
        :pswitch_2d
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_140
        :pswitch_140
        :pswitch_140
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_140
        :pswitch_183
        :pswitch_4b
        :pswitch_2d
        :pswitch_3
        :pswitch_3
        :pswitch_140
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .registers 3
    .parameter "address"

    .prologue
    const/4 v1, 0x5

    .line 1202
    if-nez p0, :cond_5

    move v0, v1

    .line 1220
    :goto_4
    return v0

    .line 1206
    :cond_5
    const-string v0, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1208
    const/4 v0, 0x3

    goto :goto_4

    .line 1209
    :cond_f
    const-string v0, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1211
    const/4 v0, 0x1

    goto :goto_4

    .line 1212
    :cond_19
    const-string v0, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1214
    const/4 v0, 0x2

    goto :goto_4

    .line 1215
    :cond_23
    const-string v0, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1217
    const/4 v0, 0x4

    goto :goto_4

    :cond_2d
    move v0, v1

    .line 1220
    goto :goto_4
.end method

.method private makeAckInd()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 749
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_f

    .line 750
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 751
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 755
    :cond_f
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 756
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 759
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v2

    .line 771
    :goto_22
    return v0

    .line 764
    :cond_23
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    .line 765
    goto :goto_22

    .line 769
    :cond_2d
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 771
    goto :goto_22
.end method

.method private makeMessageBody()I
    .registers 34

    .prologue
    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v17

    .line 873
    .local v17, ctStart:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    move-object/from16 v30, v0

    const/16 v31, 0x84

    invoke-virtual/range {v30 .. v31}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v8

    .line 875
    .local v8, contType:[B
    if-nez v8, :cond_24

    .line 876
    const/16 v30, 0x1

    .line 1061
    :cond_23
    :goto_23
    return v30

    .line 879
    :cond_24
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v8}, Ljava/lang/String;-><init>([B)V

    .line 882
    .local v11, contentType:Ljava/lang/String;
    sget-object v30, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v30

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 883
    .local v13, contentTypeIdentifier:Ljava/lang/Integer;
    if-nez v13, :cond_39

    .line 885
    const/16 v30, 0x1

    goto :goto_23

    .line 888
    :cond_39
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    move-object v4, v0

    check-cast v4, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 892
    .local v5, body:Lcom/google/android/mms/pdu/PduBody;
    if-eqz v5, :cond_57

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v30

    if-nez v30, :cond_75

    .line 894
    :cond_57
    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 897
    const/16 v30, 0x0

    goto :goto_23

    .line 902
    :cond_75
    const/16 v30, 0x0

    :try_start_77
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v24

    .line 904
    .local v24, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v29

    .line 905
    .local v29, start:[B
    if-eqz v29, :cond_b3

    .line 906
    const/16 v30, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 907
    const/16 v30, 0x3c

    const/16 v31, 0x0

    aget-byte v31, v29, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_138

    const/16 v30, 0x3e

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    sub-int v31, v31, v32

    aget-byte v31, v29, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_138

    .line 908
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 915
    :cond_b3
    :goto_b3
    const/16 v30, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 916
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_c7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_77 .. :try_end_c7} :catch_163

    .line 922
    .end local v24       #part:Lcom/google/android/mms/pdu/PduPart;,
    .end local v29       #start:[B,
    :goto_c7
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v16

    .line 923
    .local v16, ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 924
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 928
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v28

    .line 929
    .local v28, partNum:I
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 930
    const/16 v21, 0x0

    .local v21, i:I
    :goto_fb
    move/from16 v0, v21

    move/from16 v1, v28

    if-ge v0, v1, :cond_348

    .line 931
    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v24

    .line 932
    .restart local v24       #part:Lcom/google/android/mms/pdu/PduPart;,
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 935
    .local v4, attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v12

    .line 938
    .local v12, contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v25

    .line 940
    .local v25, partContentType:[B
    if-nez v25, :cond_16b

    .line 942
    const/16 v30, 0x1

    goto/16 :goto_23

    .line 910
    .end local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
    .end local v12       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
    .end local v16       #ctLength:I,
    .end local v21       #i:I,
    .end local v25       #partContentType:[B,
    .end local v28       #partNum:I,
    .restart local v29       #start:[B,
    :cond_138
    :try_start_138
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "<"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ">"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_161
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_138 .. :try_end_161} :catch_163

    goto/16 :goto_b3

    .line 918
    .end local v24       #part:Lcom/google/android/mms/pdu/PduPart;,
    .end local v29       #start:[B,
    :catch_163
    move-exception v30

    move-object/from16 v19, v30

    .line 919
    .local v19, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_c7

    .line 946
    .end local v19       #e:Ljava/lang/ArrayIndexOutOfBoundsException;,
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
    .restart local v12       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
    .restart local v16       #ctLength:I,
    .restart local v21       #i:I,
    .restart local v24       #part:Lcom/google/android/mms/pdu/PduPart;,
    .restart local v25       #partContentType:[B,
    .restart local v28       #partNum:I,
    :cond_16b
    sget-object v30, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    .line 948
    .local v26, partContentTypeIdentifier:Ljava/lang/Integer;
    if-nez v26, :cond_19b

    .line 949
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 958
    :goto_185
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v23

    .line 960
    .local v23, name:[B
    if-nez v23, :cond_1a7

    .line 961
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v23

    .line 963
    if-nez v23, :cond_1a7

    .line 964
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v23

    .line 966
    if-nez v23, :cond_1a7

    .line 970
    const/16 v30, 0x1

    goto/16 :goto_23

    .line 951
    .end local v23       #name:[B,
    :cond_19b
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_185

    .line 974
    .restart local v23       #name:[B,
    :cond_1a7
    const/16 v30, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 975
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 978
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v7

    .line 979
    .local v7, charset:I
    if-eqz v7, :cond_1cc

    .line 980
    const/16 v30, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 981
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 984
    :cond_1cc
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v14

    .line 985
    .local v14, contentTypeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 986
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 990
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v9

    .line 992
    .local v9, contentId:[B
    if-eqz v9, :cond_220

    .line 993
    const/16 v30, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 994
    const/16 v30, 0x3c

    const/16 v31, 0x0

    aget-byte v31, v9, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_26c

    const/16 v30, 0x3e

    move-object v0, v9

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x1

    sub-int v31, v31, v32

    aget-byte v31, v9, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_26c

    .line 995
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 1002
    :cond_220
    :goto_220
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v10

    .line 1003
    .local v10, contentLocation:[B
    if-eqz v10, :cond_235

    .line 1004
    const/16 v30, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1005
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1009
    :cond_235
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v20

    .line 1011
    .local v20, headerLength:I
    const/16 v18, 0x0

    .line 1012
    .local v18, dataLength:I
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v27

    .line 1014
    .local v27, partData:[B
    if-eqz v27, :cond_295

    .line 1015
    const/16 v30, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1016
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v18, v0

    .line 1051
    :cond_258
    :goto_258
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v30

    sub-int v30, v30, v20

    move/from16 v0, v18

    move/from16 v1, v30

    if-eq v0, v1, :cond_31a

    .line 1052
    new-instance v30, Ljava/lang/RuntimeException;

    const-string v31, "BUG: Length sanity check failed"

    invoke-direct/range {v30 .. v31}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 997
    .end local v10       #contentLocation:[B,
    .end local v18       #dataLength:I,
    .end local v20       #headerLength:I,
    .end local v27       #partData:[B,
    :cond_26c
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "<"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ">"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_220

    .line 1020
    .restart local v10       #contentLocation:[B,
    .restart local v18       #dataLength:I,
    .restart local v20       #headerLength:I,
    .restart local v27       #partData:[B,
    :cond_295
    const/4 v15, 0x0

    .line 1023
    .local v15, cr:Ljava/io/InputStream;
    const/16 v30, 0x400

    :try_start_298
    move/from16 v0, v30

    new-array v0, v0, [B

    move-object v6, v0

    .line 1024
    .local v6, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v15

    .line 1025
    const/16 v22, 0x0

    .line 1026
    .local v22, len:I
    :goto_2ad
    invoke-virtual {v15, v6}, Ljava/io/InputStream;->read([B)I

    move-result v22

    const/16 v30, -0x1

    move/from16 v0, v22

    move/from16 v1, v30

    if-eq v0, v1, :cond_2dc

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move-object v1, v6

    move/from16 v2, v31

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    move/from16 v30, v0

    add-int v30, v30, v22

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2d9
    .catchall {:try_start_298 .. :try_end_2d9} :catchall_313
    .catch Ljava/io/FileNotFoundException; {:try_start_298 .. :try_end_2d9} :catch_2e6
    .catch Ljava/io/IOException; {:try_start_298 .. :try_end_2d9} :catch_2f5
    .catch Ljava/lang/RuntimeException; {:try_start_298 .. :try_end_2d9} :catch_304

    .line 1029
    add-int v18, v18, v22

    goto :goto_2ad

    .line 1040
    :cond_2dc
    if-eqz v15, :cond_258

    .line 1042
    :try_start_2de
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2e1
    .catch Ljava/io/IOException; {:try_start_2de .. :try_end_2e1} :catch_2e3

    goto/16 :goto_258

    .line 1043
    :catch_2e3
    move-exception v30

    goto/16 :goto_258

    .line 1031
    .end local v6       #buffer:[B,
    .end local v22       #len:I,
    :catch_2e6
    move-exception v30

    move-object/from16 v19, v30

    .line 1032
    .local v19, e:Ljava/io/FileNotFoundException;
    const/16 v30, 0x1

    .line 1040
    if-eqz v15, :cond_23

    .line 1042
    :try_start_2ed
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2f0
    .catch Ljava/io/IOException; {:try_start_2ed .. :try_end_2f0} :catch_2f2

    goto/16 :goto_23

    .line 1043
    :catch_2f2
    move-exception v31

    goto/16 :goto_23

    .line 1033
    .end local v19       #e:Ljava/io/FileNotFoundException;,
    :catch_2f5
    move-exception v30

    move-object/from16 v19, v30

    .line 1034
    .local v19, e:Ljava/io/IOException;
    const/16 v30, 0x1

    .line 1040
    if-eqz v15, :cond_23

    .line 1042
    :try_start_2fc
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2ff
    .catch Ljava/io/IOException; {:try_start_2fc .. :try_end_2ff} :catch_301

    goto/16 :goto_23

    .line 1043
    :catch_301
    move-exception v31

    goto/16 :goto_23

    .line 1035
    .end local v19       #e:Ljava/io/IOException;,
    :catch_304
    move-exception v30

    move-object/from16 v19, v30

    .line 1036
    .local v19, e:Ljava/lang/RuntimeException;
    const/16 v30, 0x1

    .line 1040
    if-eqz v15, :cond_23

    .line 1042
    :try_start_30b
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_30e
    .catch Ljava/io/IOException; {:try_start_30b .. :try_end_30e} :catch_310

    goto/16 :goto_23

    .line 1043
    :catch_310
    move-exception v31

    goto/16 :goto_23

    .line 1040
    .end local v19       #e:Ljava/lang/RuntimeException;,
    :catchall_313
    move-exception v30

    if-eqz v15, :cond_319

    .line 1042
    :try_start_316
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_319
    .catch Ljava/io/IOException; {:try_start_316 .. :try_end_319} :catch_34c

    .line 1045
    :cond_319
    :goto_319
    throw v30

    .line 1055
    .end local v15       #cr:Ljava/io/InputStream;,
    :cond_31a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1056
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1057
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 930
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_fb

    .line 1061
    .end local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
    .end local v7       #charset:I,
    .end local v9       #contentId:[B,
    .end local v10       #contentLocation:[B,
    .end local v12       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
    .end local v14       #contentTypeLength:I,
    .end local v18       #dataLength:I,
    .end local v20       #headerLength:I,
    .end local v23       #name:[B,
    .end local v24       #part:Lcom/google/android/mms/pdu/PduPart;,
    .end local v25       #partContentType:[B,
    .end local v26       #partContentTypeIdentifier:Ljava/lang/Integer;,
    .end local v27       #partData:[B,
    :cond_348
    const/16 v30, 0x0

    goto/16 :goto_23

    .line 1043
    .restart local v4       #attachment:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
    .restart local v7       #charset:I,
    .restart local v9       #contentId:[B,
    .restart local v10       #contentLocation:[B,
    .restart local v12       #contentTypeBegin:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
    .restart local v14       #contentTypeLength:I,
    .restart local v15       #cr:Ljava/io/InputStream;,
    .restart local v18       #dataLength:I,
    .restart local v20       #headerLength:I,
    .restart local v23       #name:[B,
    .restart local v24       #part:Lcom/google/android/mms/pdu/PduPart;,
    .restart local v25       #partContentType:[B,
    .restart local v26       #partContentTypeIdentifier:Ljava/lang/Integer;,
    .restart local v27       #partData:[B,
    :catch_34c
    move-exception v31

    goto :goto_319
.end method

.method private makeNotifyResp()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 717
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_f

    .line 718
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 719
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 723
    :cond_f
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 724
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 727
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 742
    :goto_22
    return v0

    .line 732
    :cond_23
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 733
    goto :goto_22

    .line 737
    :cond_2d
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    .line 738
    goto :goto_22

    :cond_37
    move v0, v2

    .line 742
    goto :goto_22
.end method

.method private makeReadRecInd()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 669
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_f

    .line 670
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 671
    iput v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 675
    :cond_f
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 676
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 679
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    .line 710
    :goto_22
    return v0

    .line 684
    :cond_23
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    .line 685
    goto :goto_22

    .line 689
    :cond_2d
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    .line 690
    goto :goto_22

    .line 694
    :cond_37
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    .line 695
    goto :goto_22

    .line 699
    :cond_41
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 702
    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    .line 703
    goto :goto_22

    :cond_50
    move v0, v2

    .line 710
    goto :goto_22
.end method

.method private makeSendReqPdu()I
    .registers 7

    .prologue
    const/16 v5, 0x98

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 778
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_11

    .line 779
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 780
    iput v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 784
    :cond_11
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 785
    const/16 v2, 0x80

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 788
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 790
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 791
    .local v1, trid:[B
    if-nez v1, :cond_2e

    .line 793
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 795
    :cond_2e
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 798
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_3b

    move v2, v3

    .line 857
    :goto_3a
    return v2

    .line 803
    :cond_3b
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 806
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_4a

    move v2, v3

    .line 807
    goto :goto_3a

    .line 810
    :cond_4a
    const/4 v0, 0x0

    .line 813
    .local v0, recipient:Z
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_54

    .line 814
    const/4 v0, 0x1

    .line 818
    :cond_54
    const/16 v2, 0x82

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_5d

    .line 819
    const/4 v0, 0x1

    .line 823
    :cond_5d
    const/16 v2, 0x81

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eq v2, v3, :cond_66

    .line 824
    const/4 v0, 0x1

    .line 828
    :cond_66
    if-nez v0, :cond_6a

    move v2, v3

    .line 829
    goto :goto_3a

    .line 833
    :cond_6a
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 837
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 840
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 843
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 846
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 849
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 852
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 855
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody()I

    move v2, v4

    .line 857
    goto :goto_3a
.end method


# virtual methods
.method protected append(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 203
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 204
    return-void
.end method

.method protected appendDateValue(J)V
    .registers 3
    .parameter "date"

    .prologue
    .line 403
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 404
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 8
    .parameter "enStr"

    .prologue
    .line 331
    sget-boolean v4, Lcom/google/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_c

    if-nez p1, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 333
    :cond_c
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 334
    .local v0, charset:I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 335
    .local v3, textString:[B
    if-nez v3, :cond_17

    .line 354
    :goto_16
    return-void

    .line 344
    :cond_17
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 345
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 347
    .local v2, start:Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 348
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 350
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 351
    .local v1, len:I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 352
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 353
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_16
.end method

.method protected appendLongInteger(J)V
    .registers 13
    .parameter "longInt"

    .prologue
    const/16 v9, 0x8

    .line 264
    move-wide v3, p1

    .line 267
    .local v3, temp:J
    const/4 v2, 0x0

    .local v2, size:I
    :goto_4
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_10

    if-ge v2, v9, :cond_10

    .line 268
    ushr-long/2addr v3, v9

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 272
    :cond_10
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 276
    const/4 v5, 0x1

    sub-int v5, v2, v5

    mul-int/lit8 v1, v5, 0x8

    .line 278
    .local v1, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v2, :cond_28

    .line 279
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 280
    sub-int/2addr v1, v9

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 282
    :cond_28
    return-void
.end method

.method protected appendOctet(I)V
    .registers 2
    .parameter "number"

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 233
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 458
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 459
    return-void
.end method

.method protected appendQuotedString([B)V
    .registers 4
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 441
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 442
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 443
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 444
    return-void
.end method

.method protected appendShortInteger(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 221
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 222
    return-void
.end method

.method protected appendShortLength(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 246
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 319
    return-void
.end method

.method protected appendTextString([B)V
    .registers 5
    .parameter "text"

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 297
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_c

    .line 298
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 301
    :cond_c
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 302
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 303
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .registers 14
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x7f

    .line 371
    const-wide/16 v1, 0x7f

    .line 373
    .local v1, max:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    const/4 v5, 0x5

    if-ge v0, v5, :cond_c

    .line 374
    cmp-long v5, p1, v1

    if-gez v5, :cond_20

    .line 381
    :cond_c
    :goto_c
    if-lez v0, :cond_28

    .line 382
    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    .line 383
    .local v3, temp:J
    and-long/2addr v3, v9

    .line 385
    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 387
    add-int/lit8 v0, v0, -0x1

    .line 388
    goto :goto_c

    .line 378
    .end local v3       #temp:J,
    :cond_20
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    .line 373
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 390
    :cond_28
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 391
    return-void
.end method

.method protected appendValueLength(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 420
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    .line 421
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 427
    :goto_a
    return-void

    .line 425
    :cond_b
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 426
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_a
.end method

.method protected arraycopy([BII)V
    .registers 5
    .parameter "buf"
    .parameter "pos"
    .parameter "length"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 195
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 196
    return-void
.end method

.method public make()[B
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 162
    .local v0, type:I
    packed-switch v0, :pswitch_data_34

    :pswitch_a
    move-object v1, v2

    .line 187
    :goto_b
    return-object v1

    .line 164
    :pswitch_c
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 165
    goto :goto_b

    .line 169
    :pswitch_14
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 170
    goto :goto_b

    .line 174
    :pswitch_1c
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 175
    goto :goto_b

    .line 179
    :pswitch_24
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v1

    if-eqz v1, :cond_2c

    move-object v1, v2

    .line 180
    goto :goto_b

    .line 187
    :cond_2c
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_b

    .line 162
    nop

    :pswitch_data_34
    .packed-switch 0x80
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_a
        :pswitch_1c
        :pswitch_a
        :pswitch_24
    .end packed-switch
.end method
