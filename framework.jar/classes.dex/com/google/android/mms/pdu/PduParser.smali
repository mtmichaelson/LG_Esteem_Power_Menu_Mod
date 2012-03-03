.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"



# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser_BG"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B



# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;



# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 49
    const-class v0, Lcom/google/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    .line 92
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 97
    sput-object v1, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    .line 49
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 82
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 87
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 117
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 118
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .registers 5
    .parameter "headers"

    .prologue
    .line 1919
    if-nez p0, :cond_4

    .line 1920
    const/4 p0, 0x0

    .line 2126
    .end local p0       
    :goto_3
    return p0

    .line 1924
    .restart local p0       
    :cond_4
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 1927
    .local v0, messageType:I
    const/16 v1, 0x8d

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1928
    .local v1, mmsVersion:I
    if-nez v1, :cond_14

    .line 1930
    const/4 p0, 0x0

    goto :goto_3

    .line 1934
    :cond_14
    packed-switch v0, :pswitch_data_15c

    .line 2123
    const/4 p0, 0x0

    goto :goto_3

    .line 1937
    :pswitch_19
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0       #messageType:I,
    move-result-object v0

    .line 1938
    .local v0, srContentType:[B
    if-nez v0, :cond_23

    .line 1939
    const/4 p0, 0x0

    goto :goto_3

    .line 1943
    :cond_23
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0       #srContentType:[B,
    move-result-object v0

    .line 1944
    .local v0, srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_2d

    .line 1945
    const/4 p0, 0x0

    goto :goto_3

    .line 1949
    :cond_2d
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0       #srFrom:Lcom/google/android/mms/pdu/EncodedStringValue;,
    move-result-object p0

    .line 1950
    .local p0, srTransactionId:[B
    if-nez p0, :cond_158

    .line 1951
    const/4 p0, 0x0

    goto :goto_3

    .line 1957
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_37
    const/16 v0, 0x92

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0       #messageType:I,
    move-result v0

    .line 1958
    .local v0, scResponseStatus:I
    if-nez v0, :cond_41

    .line 1959
    const/4 p0, 0x0

    goto :goto_3

    .line 1963
    :cond_41
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0       #scResponseStatus:I,
    move-result-object p0

    .line 1964
    .local p0, scTransactionId:[B
    if-nez p0, :cond_158

    .line 1965
    const/4 p0, 0x0

    goto :goto_3

    .line 1971
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_4b
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0       #messageType:I,
    move-result-object v0

    .line 1972
    .local v0, niContentLocation:[B
    if-nez v0, :cond_55

    .line 1973
    const/4 p0, 0x0

    goto :goto_3

    .line 1977
    :cond_55
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0       #niContentLocation:[B,
    move-result-wide v0

    .line 1978
    .end local v1       #mmsVersion:I,
    .local v0, niExpiry:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_63

    .line 1979
    .end local v0       #niExpiry:J,
    const/4 p0, 0x0

    goto :goto_3

    .line 1983
    :cond_63
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 1984
    .local v0, niMessageClass:[B
    if-nez v0, :cond_6d

    .line 1985
    const/4 p0, 0x0

    goto :goto_3

    .line 1989
    :cond_6d
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0       #niMessageClass:[B,
    move-result-wide v0

    .line 1990
    .local v0, niMessageSize:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_7b

    .line 1991
    .end local v0       #niMessageSize:J,
    const/4 p0, 0x0

    goto :goto_3

    .line 1995
    :cond_7b
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1996
    .local p0, niTransactionId:[B
    if-nez p0, :cond_158

    .line 1997
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2003
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I,
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_86
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0       #messageType:I,
    move-result v0

    .line 2004
    .local v0, nriStatus:I
    if-nez v0, :cond_91

    .line 2005
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2009
    :cond_91
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0       #nriStatus:I,
    move-result-object p0

    .line 2010
    .local p0, nriTransactionId:[B
    if-nez p0, :cond_158

    .line 2011
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2017
    .local v0, messageType:I
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_9c
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0       #messageType:I,
    move-result-object v0

    .line 2018
    .local v0, rcContentType:[B
    if-nez v0, :cond_a7

    .line 2019
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2023
    :cond_a7
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0       #rcContentType:[B,
    move-result-wide v0

    .line 2024
    .end local v1       #mmsVersion:I,
    .local v0, rcDate:J
    const-wide/16 v2, -0x1

    cmp-long p0, v2, v0

    if-nez p0, :cond_158

    .line 2025
    .end local p0       #headers:Lcom/google/android/mms/pdu/PduHeaders;,
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2031
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I,
    .restart local p0       #headers:Lcom/google/android/mms/pdu/PduHeaders;,
    :pswitch_b6
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0       #messageType:I,
    move-result-wide v0

    .line 2032
    .end local v1       #mmsVersion:I,
    .local v0, diDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_c5

    .line 2033
    .end local v0       #diDate:J,
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2037
    :cond_c5
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 2038
    .local v0, diMessageId:[B
    if-nez v0, :cond_d0

    .line 2039
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2043
    :cond_d0
    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0       #diMessageId:[B,
    move-result v0

    .line 2044
    .local v0, diStatus:I
    if-nez v0, :cond_db

    .line 2045
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2049
    :cond_db
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0       #diStatus:I,
    move-result-object p0

    .line 2050
    .local p0, diTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 2051
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2057
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I,
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_e6
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0       #messageType:I,
    move-result-object p0

    .line 2058
    .local p0, aiTransactionId:[B
    if-nez p0, :cond_158

    .line 2059
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2065
    .restart local v0       #messageType:I,
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_f1
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    .end local v0       #messageType:I,
    move-result-wide v0

    .line 2066
    .end local v1       #mmsVersion:I,
    .local v0, roDate:J
    const-wide/16 v2, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_100

    .line 2067
    .end local v0       #roDate:J,
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2071
    :cond_100
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 2072
    .local v0, roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_10b

    .line 2073
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2077
    :cond_10b
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0       #roFrom:Lcom/google/android/mms/pdu/EncodedStringValue;,
    move-result-object v0

    .line 2078
    .local v0, roMessageId:[B
    if-nez v0, :cond_116

    .line 2079
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2083
    :cond_116
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0       #roMessageId:[B,
    move-result v0

    .line 2084
    .local v0, roReadStatus:I
    if-nez v0, :cond_121

    .line 2085
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2089
    :cond_121
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0       #roReadStatus:I,
    move-result-object p0

    .line 2090
    .local p0, roTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 2091
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2097
    .local v0, messageType:I
    .restart local v1       #mmsVersion:I,
    .local p0, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :pswitch_12c
    const/16 v0, 0x89

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0       #messageType:I,
    move-result-object v0

    .line 2098
    .local v0, rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_137

    .line 2099
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2103
    :cond_137
    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    .end local v0       #rrFrom:Lcom/google/android/mms/pdu/EncodedStringValue;,
    move-result-object v0

    .line 2104
    .local v0, rrMessageId:[B
    if-nez v0, :cond_142

    .line 2105
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2109
    :cond_142
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    .end local v0       #rrMessageId:[B,
    move-result v0

    .line 2110
    .local v0, rrReadStatus:I
    if-nez v0, :cond_14d

    .line 2111
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2115
    :cond_14d
    const/16 v0, 0x97

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v0       #rrReadStatus:I,
    move-result-object p0

    .line 2116
    .local p0, rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez p0, :cond_158

    .line 2117
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 2126
    .end local v1       #mmsVersion:I,
    .end local p0       #rrTo:[Lcom/google/android/mms/pdu/EncodedStringValue;,
    :cond_158
    const/4 p0, 0x1

    goto/16 :goto_3

    .line 1934
    nop

    :pswitch_data_15c
    .packed-switch 0x80
        :pswitch_19
        :pswitch_37
        :pswitch_4b
        :pswitch_86
        :pswitch_9c
        :pswitch_e6
        :pswitch_b6
        :pswitch_12c
        :pswitch_f1
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .registers 6
    .parameter "part"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1883
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    if-nez p0, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1884
    :cond_e
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v2, :cond_18

    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_18

    move v2, v3

    .line 1909
    :goto_17
    return v2

    .line 1890
    :cond_18
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v2, :cond_2c

    .line 1891
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1892
    .local v0, contentId:[B
    if-eqz v0, :cond_2c

    .line 1893
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_2c

    move v2, v4

    .line 1894
    goto :goto_17

    .line 1900
    .end local v0       #contentId:[B,
    :cond_2c
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v2, :cond_40

    .line 1901
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1902
    .local v1, contentType:[B
    if-eqz v1, :cond_40

    .line 1903
    sget-object v2, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-ne v3, v2, :cond_40

    move v2, v4

    .line 1904
    goto :goto_17

    .end local v1       #contentType:[B,
    :cond_40
    move v2, v3

    .line 1909
    goto :goto_17
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1341
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1342
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1343
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1344
    :cond_1d
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method private static extractMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 1034
    if-nez p0, :cond_4

    .line 1035
    const/4 v0, 0x0

    .line 1046
    :goto_3
    return-object v0

    .line 1037
    :cond_4
    const-string v0, "(?i).*application/vnd.oma.drm.content.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1038
    const-string v0, "application/vnd.oma.drm.content"

    goto :goto_3

    .line 1039
    :cond_f
    const-string v0, "(?i).*application/vnd.oma.drm.message.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1040
    const-string v0, "application/vnd.oma.drm.message"

    goto :goto_3

    .line 1041
    :cond_1a
    const-string v0, "(?i).*application/vnd.oma.drm.dcf.*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1042
    const-string v0, "application/vnd.oma.drm.dcf"

    goto :goto_3

    :cond_25
    move-object v0, p0

    .line 1046
    goto :goto_3
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 6
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    .line 1307
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1308
    :cond_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1309
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1310
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1311
    :cond_22
    if-eq v3, v1, :cond_4c

    if-eqz v1, :cond_4c

    .line 1313
    const/4 v2, 0x2

    if-ne p1, v2, :cond_42

    .line 1314
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1315
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1323
    :cond_32
    :goto_32
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1324
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1318
    :cond_42
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1319
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_32

    .line 1327
    :cond_4c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 1328
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1331
    :goto_56
    return-object v2

    :cond_57
    const/4 v2, 0x0

    goto :goto_56
.end method

.method protected static isText(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v1, 0x1

    .line 1291
    const/16 v0, 0x20

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7e

    if-le p0, v0, :cond_11

    :cond_9
    const/16 v0, 0x80

    if-lt p0, v0, :cond_13

    const/16 v0, 0xff

    if-gt p0, v0, :cond_13

    :cond_11
    move v0, v1

    .line 1302
    :goto_12
    return v0

    .line 1295
    :cond_13
    packed-switch p0, :pswitch_data_1a

    .line 1302
    :pswitch_16
    const/4 v0, 0x0

    goto :goto_12

    :pswitch_18
    move v0, v1

    .line 1299
    goto :goto_12

    .line 1295
    :pswitch_data_1a
    .packed-switch 0x9
        :pswitch_18
        :pswitch_18
        :pswitch_16
        :pswitch_16
        :pswitch_18
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v1, 0x0

    .line 1247
    const/16 v0, 0x21

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7e

    if-le p0, v0, :cond_b

    :cond_9
    move v0, v1

    .line 1272
    :goto_a
    return v0

    .line 1251
    :cond_b
    sparse-switch p0, :sswitch_data_12

    .line 1272
    const/4 v0, 0x1

    goto :goto_a

    :sswitch_10
    move v0, v1

    .line 1269
    goto :goto_a

    .line 1251
    :sswitch_data_12
    .sparse-switch
        0x22 -> :sswitch_10
        0x28 -> :sswitch_10
        0x29 -> :sswitch_10
        0x2c -> :sswitch_10
        0x2f -> :sswitch_10
        0x3a -> :sswitch_10
        0x3b -> :sswitch_10
        0x3c -> :sswitch_10
        0x3d -> :sswitch_10
        0x3e -> :sswitch_10
        0x3f -> :sswitch_10
        0x40 -> :sswitch_10
        0x5b -> :sswitch_10
        0x5c -> :sswitch_10
        0x5d -> :sswitch_10
        0x7b -> :sswitch_10
        0x7d -> :sswitch_10
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1
    .parameter "text"

    .prologue
    .line 1061
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .registers 9
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1660
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0       
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1662
    .restart local p0       
    :cond_c
    const/4 v0, 0x0

    .line 1663
    .local v0, contentType:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1664
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1665
    .local v2, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_22

    const/4 v1, -0x1

    if-ne v1, v2, :cond_22

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0       
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1666
    .restart local p0       
    :cond_22
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1668
    and-int/lit16 v1, v2, 0xff

    .line 1670
    .local v1, cur:I
    const/16 v3, 0x20

    if-ge v1, v3, :cond_ba

    .line 1671
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    .line 1672
    .local v2, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1673
    .local v3, startPos:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1674
    .end local v1       #cur:I,
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1675
    .local v4, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_48

    const/4 v1, -0x1

    if-ne v1, v4, :cond_48

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0       
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1676
    .restart local p0       
    :cond_48
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1677
    and-int/lit16 v1, v4, 0xff

    .line 1679
    .local v1, first:I
    const/16 v5, 0x20

    if-lt v1, v5, :cond_82

    const/16 v5, 0x7f

    if-gt v1, v5, :cond_82

    .line 1680
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0       #contentType:[B,
    move-result-object v0

    .line 1695
    .end local v1       #first:I,
    .restart local v0       #contentType:[B,
    :goto_5a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1696
    .local v1, endPos:I
    sub-int v1, v3, v1

    sub-int v1, v2, v1

    .line 1697
    .local v1, parameterLen:I
    if-lez v1, :cond_6b

    .line 1698
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2       #length:I,
    invoke-static {p0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1701
    :cond_6b
    if-gez v1, :cond_b6

    .line 1702
    const-string p0, "PduParser_BG"

    .end local p0       
    const-string p1, "Corrupt MMS message"

    .end local p1       #map:Ljava/util/HashMap;,, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4       #temp:I,
    .local p1, temp:I
    move-object v6, v0

    .end local v0       #contentType:[B,
    .local v6, contentType:[B
    move-object v0, p0

    move-object p0, v6

    .line 1712
    .end local v1       #parameterLen:I,
    .end local v3       #startPos:I,
    .end local v6       #contentType:[B,
    .local p0, contentType:[B
    :goto_81
    return-object v0

    .line 1681
    .restart local v0       #contentType:[B,
    .local v1, first:I
    .restart local v2       #length:I,
    .restart local v3       #startPos:I,
    .restart local v4       #temp:I,
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_82
    const/16 v5, 0x7f

    if-le v1, v5, :cond_a1

    .line 1682
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1684
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .end local v1       #first:I,
    array-length v1, v1

    if-ge v0, v1, :cond_98

    .line 1685
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0       #index:I,
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, contentType:[B
    goto :goto_5a

    .line 1687
    .local v0, index:I
    :cond_98
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1688
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0       #index:I,
    move-result-object v0

    .local v0, contentType:[B
    goto :goto_5a

    .line 1691
    .restart local v1       #first:I,
    :cond_a1
    const-string p0, "PduParser_BG"

    .end local p0       #pduDataStream:Ljava/io/ByteArrayInputStream;,
    const-string p1, "Corrupt content-type"

    .end local p1       #map:Ljava/util/HashMap;,, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    move p1, v4

    .end local v4       #temp:I,
    .local p1, temp:I
    move-object v6, v0

    .end local v0       #contentType:[B,
    .restart local v6       #contentType:[B,
    move-object v0, p0

    move-object p0, v6

    .end local v6       #contentType:[B,
    .local p0, contentType:[B
    goto :goto_81

    .end local v2       #length:I,
    .restart local v0       #contentType:[B,
    .local v1, parameterLen:I
    .restart local v4       #temp:I,
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_b6
    move p1, v4

    .end local v4       #temp:I,
    .local p1, temp:I
    move-object p0, v0

    .end local v0       #contentType:[B,
    .end local v1       #parameterLen:I,
    .end local v3       #startPos:I,
    .local p0, contentType:[B
    :goto_b8
    move-object v0, p0

    .line 1712
    goto :goto_81

    .line 1705
    .restart local v0       #contentType:[B,
    .local v1, cur:I
    .local v2, temp:I
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_ba
    const/16 p1, 0x7f

    if-gt v1, p1, :cond_c5

    .line 1706
    .end local p1       #map:Ljava/util/HashMap;,, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    .end local v0       #contentType:[B,
    .local p0, contentType:[B
    move p1, v2

    .end local v2       #temp:I,
    .local p1, temp:I
    goto :goto_b8

    .line 1708
    .end local p1       #temp:I,
    .restart local v0       #contentType:[B,
    .restart local v2       #temp:I,
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_c5
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    .end local p0       #pduDataStream:Ljava/io/ByteArrayInputStream;,
    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .end local v0       #contentType:[B,
    .local p0, contentType:[B
    move p1, v2

    .end local v2       #temp:I,
    .restart local p1       #temp:I,
    goto :goto_b8
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 8
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1474
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0       
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1475
    .restart local p0       
    :cond_c
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0       
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1477
    .restart local p0       
    :cond_1c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1478
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1479
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, lastLen:I
    move v3, v1

    .line 1480
    .end local v1       #tempPos:I,
    .local v3, tempPos:I
    :goto_26
    if-lez v0, :cond_14b

    .line 1481
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1482
    .local v1, param:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_39

    const/4 v4, -0x1

    if-ne v4, v1, :cond_39

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0       
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1483
    .restart local p0       
    :cond_39
    add-int/lit8 v0, v0, -0x1

    .line 1485
    sparse-switch v1, :sswitch_data_156

    .line 1631
    const/4 v1, -0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v1       #param:I,
    move-result v4

    if-ne v1, v4, :cond_147

    .line 1632
    const-string v1, "PduParser_BG"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .end local v3       #tempPos:I,
    .local v1, tempPos:I
    :goto_4d
    move v3, v1

    .line 1638
    .end local v1       #tempPos:I,
    .restart local v3       #tempPos:I,
    goto :goto_26

    .line 1501
    .local v1, param:I
    :sswitch_4f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1502
    .end local v0       #lastLen:I,
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1503
    .local v0, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1504
    const/16 v1, 0x7f

    if-le v0, v1, :cond_88

    .line 1506
    .end local v1       #param:I,
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1508
    .local v0, index:I
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_7c

    .line 1509
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v1, v0

    .end local v0       #index:I,
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1512
    .local v0, type:[B
    if-eqz v0, :cond_7c

    if-eqz p1, :cond_7c

    .line 1513
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    .end local v0       #type:[B,
    :cond_7c
    :goto_7c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1528
    .end local v3       #tempPos:I,
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1529
    .local v0, lastLen:I
    goto :goto_4d

    .line 1521
    .end local v1       #tempPos:I,
    .local v0, first:I
    .restart local v3       #tempPos:I,
    :cond_88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0       #first:I,
    move-result-object v0

    .line 1522
    .local v0, type:[B
    if-eqz v0, :cond_7c

    if-eqz p1, :cond_7c

    .line 1523
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 1546
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_9b
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0       #lastLen:I,
    move-result-object v0

    .line 1547
    .local v0, start:[B
    if-eqz v0, :cond_ad

    if-eqz p1, :cond_ad

    .line 1548
    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1       #param:I,
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    :cond_ad
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1552
    .end local v3       #tempPos:I,
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0       #start:[B,
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1553
    .local v0, lastLen:I
    goto :goto_4d

    .line 1570
    .local v1, param:I
    .restart local v3       #tempPos:I,
    :sswitch_b9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1571
    .end local v0       #lastLen:I,
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1572
    .local v0, firstValue:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1574
    const/16 v1, 0x20

    if-le v0, v1, :cond_cc

    .end local v1       #param:I,
    const/16 v1, 0x7f

    if-lt v0, v1, :cond_ce

    :cond_cc
    if-nez v0, :cond_113

    .line 1577
    :cond_ce
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0       #firstValue:I,
    move-result-object v1

    .line 1579
    .local v1, charsetStr:[B
    :try_start_d3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v0

    .line 1583
    .local v0, charsetInt:I
    if-eqz p1, :cond_eb

    .line 1584
    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v3       #tempPos:I,
    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0       #charsetInt:I,
    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_eb
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d3 .. :try_end_eb} :catch_f8

    .line 1605
    .end local v1       #charsetStr:[B,
    :cond_eb
    :goto_eb
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1606
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1607
    .local v0, lastLen:I
    goto/16 :goto_4d

    .line 1587
    .end local v0       #lastLen:I,
    .local v1, charsetStr:[B
    :catch_f8
    move-exception v0

    .line 1589
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "PduParser_BG"

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    .end local v1       #charsetStr:[B,
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1592
    if-eqz p1, :cond_eb

    .line 1593
    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v0       #e:Ljava/io/UnsupportedEncodingException;,
    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_eb

    .line 1599
    .local v0, firstValue:I
    .restart local v3       #tempPos:I,
    :cond_113
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    .end local v0       #firstValue:I,
    long-to-int v0, v0

    .line 1600
    .local v0, charset:I
    if-eqz p1, :cond_eb

    .line 1601
    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0       #charset:I,
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_eb

    .line 1619
    .local v0, lastLen:I
    .local v1, param:I
    :sswitch_128
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0       #lastLen:I,
    move-result-object v0

    .line 1620
    .local v0, name:[B
    if-eqz v0, :cond_13a

    if-eqz p1, :cond_13a

    .line 1621
    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v1       #param:I,
    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    :cond_13a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1625
    .end local v3       #tempPos:I,
    .local v1, tempPos:I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v0       #name:[B,
    sub-int v3, v2, v1

    sub-int/2addr v0, v3

    .line 1626
    .local v0, lastLen:I
    goto/16 :goto_4d

    .line 1634
    .end local v1       #tempPos:I,
    .restart local v3       #tempPos:I,
    :cond_147
    const/4 v0, 0x0

    move v1, v3

    .end local v3       #tempPos:I,
    .restart local v1       #tempPos:I,
    goto/16 :goto_4d

    .line 1640
    .end local v1       #tempPos:I,
    .restart local v3       #tempPos:I,
    :cond_14b
    if-eqz v0, :cond_154

    .line 1641
    const-string p0, "PduParser_BG"

    .end local p0       
    const-string p1, "Corrupt Content-Type"

    .end local p1       #map:Ljava/util/HashMap;,, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_154
    return-void

    .line 1485
    nop

    :sswitch_data_156
    .sparse-switch
        0x81 -> :sswitch_b9
        0x83 -> :sswitch_4f
        0x85 -> :sswitch_128
        0x89 -> :sswitch_4f
        0x8a -> :sswitch_9b
        0x97 -> :sswitch_128
        0x99 -> :sswitch_9b
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 10
    .parameter "pduDataStream"

    .prologue
    const/4 v8, 0x0

    .line 1137
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_d

    if-nez p0, :cond_d

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1138
    :cond_d
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1139
    const/4 v3, 0x0

    .line 1140
    .local v3, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1141
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1142
    .local v5, temp:I
    sget-boolean v7, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_24

    const/4 v7, -0x1

    if-ne v7, v5, :cond_24

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1143
    :cond_24
    and-int/lit16 v2, v5, 0xff

    .line 1148
    .local v2, first:I
    if-nez v5, :cond_2a

    move-object v7, v8

    .line 1173
    :goto_29
    return-object v7

    .line 1154
    :cond_2a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1155
    const/16 v7, 0x20

    if-ge v2, v7, :cond_38

    .line 1156
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1158
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1161
    :cond_38
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1164
    .local v6, textString:[B
    if-eqz v0, :cond_47

    .line 1165
    :try_start_3f
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .end local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;,
    .local v4, returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v3, v4

    .end local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;,
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :goto_45
    move-object v7, v3

    .line 1173
    goto :goto_29

    .line 1167
    :cond_47
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4c} :catch_4e

    .end local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;,
    .restart local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;,
    move-object v3, v4

    .end local v4       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;,
    .restart local v3       #returnValue:Lcom/google/android/mms/pdu/EncodedStringValue;,
    goto :goto_45

    .line 1169
    :catch_4e
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/Exception;
    move-object v7, v8

    .line 1170
    goto :goto_29
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 4
    .parameter "pduDataStream"

    .prologue
    .line 1416
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1417
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1418
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1419
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1420
    :cond_21
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1421
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2e

    .line 1422
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1424
    :goto_2d
    return-wide v1

    :cond_2e
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_2d
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .registers 10
    .parameter "pduDataStream"

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1384
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_f

    if-nez p0, :cond_f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1385
    :cond_f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1386
    .local v4, temp:I
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1f

    if-ne v7, v4, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1387
    :cond_1f
    and-int/lit16 v0, v4, 0xff

    .line 1389
    .local v0, count:I
    if-le v0, v8, :cond_2b

    .line 1390
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1393
    :cond_2b
    const-wide/16 v2, 0x0

    .line 1395
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v0, :cond_48

    .line 1396
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1397
    sget-boolean v5, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_40

    if-ne v7, v4, :cond_40

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1398
    :cond_40
    shl-long/2addr v2, v8

    .line 1399
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1395
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1402
    :cond_48
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 9
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1725
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p0, :cond_c

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0       
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1726
    .restart local p0       
    :cond_c
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    if-nez p1, :cond_18

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0       
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1727
    .restart local p0       
    :cond_18
    sget-boolean v0, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_24

    if-gtz p2, :cond_24

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0       
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1745
    .restart local p0       
    :cond_24
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1746
    .local v2, startPos:I
    const/4 v1, 0x0

    .line 1747
    .local v1, tempPos:I
    move v0, p2

    .local v0, lastLen:I
    move v3, v1

    .end local v1       #tempPos:I,
    .local v3, tempPos:I
    move v1, v0

    .line 1748
    .end local v0       #lastLen:I,
    .local v1, lastLen:I
    :goto_2c
    if-lez v1, :cond_138

    .line 1749
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1750
    .local v0, header:I
    sget-boolean v4, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_3f

    const/4 v4, -0x1

    if-ne v4, v0, :cond_3f

    new-instance p0, Ljava/lang/AssertionError;

    .end local p0       
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 1751
    .restart local p0       
    :cond_3f
    add-int/lit8 v1, v1, -0x1

    .line 1753
    const/16 v4, 0x7f

    if-le v0, v4, :cond_f4

    .line 1755
    sparse-switch v0, :sswitch_data_150

    .line 1834
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0       #header:I,
    move-result v4

    if-ne v0, v4, :cond_f0

    .line 1835
    const-string p0, "PduParser_BG"

    .end local p0       
    const-string p1, "Corrupt Part headers"

    .end local p1       
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .line 1872
    .end local v1       #lastLen:I,
    .local p0, lastLen:I
    :goto_59
    return p1

    .line 1761
    .restart local v0       #header:I,
    .restart local v1       #lastLen:I,
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1       
    :sswitch_5a
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0       #header:I,
    move-result-object v0

    .line 1762
    .local v0, contentLocation:[B
    if-eqz v0, :cond_64

    .line 1763
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1766
    :cond_64
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1767
    .end local v3       #tempPos:I,
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .local v0, lastLen:I
    :goto_6c
    move v3, v1

    .end local v1       #tempPos:I,
    .restart local v3       #tempPos:I,
    move v1, v0

    .line 1865
    .end local v0       #lastLen:I,
    .local v1, lastLen:I
    goto :goto_2c

    .line 1774
    .local v0, header:I
    :sswitch_6f
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0       #header:I,
    move-result-object v0

    .line 1775
    .local v0, contentId:[B
    if-eqz v0, :cond_79

    .line 1776
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1779
    :cond_79
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1780
    .end local v3       #tempPos:I,
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1781
    .local v0, lastLen:I
    goto :goto_6c

    .line 1792
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I,
    :sswitch_82
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1793
    .local v0, len:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1794
    .end local v1       #lastLen:I,
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1795
    .local v4, thisStartPos:I
    const/4 v1, 0x0

    .line 1796
    .local v1, thisEndPos:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1798
    .local v3, value:I
    const/16 v1, 0x80

    if-ne v3, v1, :cond_d0

    .line 1799
    .end local v1       #thisEndPos:I,
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1811
    :goto_9c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1812
    .restart local v1       #thisEndPos:I,
    sub-int v5, v4, v1

    if-ge v5, v0, :cond_14b

    .line 1813
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1814
    .end local v3       #value:I,
    .local v5, value:I
    const/16 v1, 0x98

    if-ne v5, v1, :cond_b4

    .line 1815
    .end local v1       #thisEndPos:I,
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1819
    :cond_b4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1820
    .local v3, thisEndPos:I
    sub-int v1, v4, v3

    if-ge v1, v0, :cond_c5

    .line 1821
    sub-int v1, v4, v3

    sub-int/2addr v0, v1

    .line 1822
    .local v0, last:I
    new-array v1, v0, [B

    .line 1823
    .local v1, temp:[B
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .end local v0       #last:I,
    .end local v1       #temp:[B,
    .end local v4       #thisStartPos:I,
    :cond_c5
    move v1, v5

    .end local v5       #value:I,
    .local v1, value:I
    move v0, v3

    .line 1827
    .end local v3       #thisEndPos:I,
    .local v0, thisEndPos:I
    :goto_c7
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1828
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1829
    .local v0, lastLen:I
    goto :goto_6c

    .line 1800
    .end local v1       #tempPos:I,
    .local v0, len:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I,
    :cond_d0
    const/16 v1, 0x81

    if-ne v3, v1, :cond_da

    .line 1801
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_9c

    .line 1802
    :cond_da
    const/16 v1, 0x82

    if-ne v3, v1, :cond_e4

    .line 1803
    sget-object v1, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_9c

    .line 1805
    :cond_e4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1807
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_9c

    .line 1838
    .end local v0       #len:I,
    .end local v4       #thisStartPos:I,
    .local v1, lastLen:I
    .local v3, tempPos:I
    :cond_f0
    const/4 v0, 0x0

    .end local v1       #lastLen:I,
    .local v0, lastLen:I
    move v1, v3

    .end local v3       #tempPos:I,
    .local v1, tempPos:I
    goto/16 :goto_6c

    .line 1841
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I,
    :cond_f4
    const/16 v4, 0x20

    if-lt v0, v4, :cond_121

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_121

    .line 1843
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v0       #header:I,
    move-result-object v0

    .line 1844
    .local v0, tempHeader:[B
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .end local v1       #lastLen:I,
    move-result-object v1

    .line 1847
    .local v1, tempValue:[B
    const/4 v3, 0x1

    const-string v4, "Content-Transfer-Encoding"

    .end local v3       #tempPos:I,
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0       #tempHeader:[B,
    if-ne v3, v0, :cond_117

    .line 1849
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1852
    :cond_117
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1853
    .local v1, tempPos:I
    sub-int v0, v2, v1

    sub-int v0, p2, v0

    .line 1854
    .local v0, lastLen:I
    goto/16 :goto_6c

    .line 1859
    .local v0, header:I
    .local v1, lastLen:I
    .restart local v3       #tempPos:I,
    :cond_121
    const/4 v0, -0x1

    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    .end local v0       #header:I,
    move-result v4

    if-ne v0, v4, :cond_134

    .line 1860
    const-string p0, "PduParser_BG"

    .end local p0       #pduDataStream:Ljava/io/ByteArrayInputStream;,
    const-string p1, "Corrupt Part headers"

    .end local p1       
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1       #lastLen:I,
    .local p0, lastLen:I
    goto/16 :goto_59

    .line 1863
    .restart local v1       #lastLen:I,
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1       
    :cond_134
    const/4 v0, 0x0

    .end local v1       #lastLen:I,
    .local v0, lastLen:I
    move v1, v3

    .end local v3       #tempPos:I,
    .local v1, tempPos:I
    goto/16 :goto_6c

    .line 1867
    .end local v0       #lastLen:I,
    .local v1, lastLen:I
    .restart local v3       #tempPos:I,
    :cond_138
    if-eqz v1, :cond_146

    .line 1868
    const-string p0, "PduParser_BG"

    .end local p0       #pduDataStream:Ljava/io/ByteArrayInputStream;,
    const-string p1, "Corrupt Part headers"

    .end local p1       
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const/4 p0, 0x0

    move p1, p0

    move p0, v1

    .end local v1       #lastLen:I,
    .local p0, lastLen:I
    goto/16 :goto_59

    .line 1872
    .restart local v1       #lastLen:I,
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p1       
    :cond_146
    const/4 p0, 0x1

    move p1, p0

    move p0, v1

    .end local v1       #lastLen:I,
    .local p0, lastLen:I
    goto/16 :goto_59

    .local v0, len:I
    .local v1, thisEndPos:I
    .local v3, value:I
    .restart local v4       #thisStartPos:I,
    .local p0, pduDataStream:Ljava/io/ByteArrayInputStream;
    :cond_14b
    move v0, v1

    .end local v1       #thisEndPos:I,
    .local v0, thisEndPos:I
    move v1, v3

    .end local v3       #value:I,
    .local v1, value:I
    goto/16 :goto_c7

    .line 1755
    nop

    :sswitch_data_150
    .sparse-switch
        0x8e -> :sswitch_5a
        0xae -> :sswitch_82
        0xc0 -> :sswitch_6f
        0xc5 -> :sswitch_82
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .registers 2
    .parameter "pduDataStream"

    .prologue
    .line 827
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .registers 13
    .parameter "pduDataStream"
    .parameter "context"

    .prologue
    .line 844
    if-nez p0, :cond_9

    .line 848
    const-string p0, "error : parseParts() : pduDataStream == null"

    .end local p0       
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 851
    const/4 p0, 0x0

    .line 1025
    :goto_8
    return-object p0

    .line 854
    .restart local p0       
    :cond_9
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 855
    .local v3, count:I
    new-instance v0, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 857
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    const/4 v1, 0x0

    .local v1, i:I
    move v6, v1

    .end local v1       #i:I,
    .local v6, i:I
    :goto_14
    if-ge v6, v3, :cond_1eb

    .line 858
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 859
    .local v5, headerLength:I
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 860
    .local v4, dataLength:I
    new-instance v8, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 861
    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 862
    .local v9, startPos:I
    if-gtz v9, :cond_30

    .line 866
    const-string p0, "error : parseParts() : Invalid part"

    .end local p0       
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 870
    const/4 p0, 0x0

    goto :goto_8

    .line 874
    .restart local p0       
    :cond_30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 875
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v2

    .line 876
    .local v2, contentType:[B
    if-eqz v2, :cond_7d

    .line 877
    invoke-virtual {v8, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 883
    :goto_3e
    const/16 v7, 0x97

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    .line 884
    .local v7, name:[B
    if-eqz v7, :cond_51

    .line 885
    invoke-virtual {v8, v7}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 889
    :cond_51
    const/16 v7, 0x81

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local v7       #name:[B,
    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1       #map:Ljava/util/HashMap;,, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    check-cast v1, Ljava/lang/Integer;

    .line 890
    .local v1, charset:Ljava/lang/Integer;
    if-eqz v1, :cond_66

    .line 891
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .end local v1       #charset:Ljava/lang/Integer;,
    invoke-virtual {v8, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 895
    :cond_66
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 896
    .local v1, endPos:I
    sub-int v1, v9, v1

    sub-int v1, v5, v1

    .line 897
    .local v1, partHeaderLen:I
    if-lez v1, :cond_8a

    .line 898
    invoke-static {p0, v8, v1}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v1

    .end local v1       #partHeaderLen:I,
    if-nez v1, :cond_94

    .line 902
    const-string p0, "error : parseParts : Parse part header faild."

    .end local p0       
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 906
    const/4 p0, 0x0

    goto :goto_8

    .line 879
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .restart local p0       
    :cond_7d
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v7, v7, v10

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_3e

    .line 908
    .local v1, partHeaderLen:I
    :cond_8a
    if-gez v1, :cond_94

    .line 912
    const-string p0, "error : parseParts : // Invalid length of content-type.."

    .end local p0       
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 916
    const/4 p0, 0x0

    goto/16 :goto_8

    .line 922
    .end local v1       #partHeaderLen:I,
    .restart local p0       
    :cond_94
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-nez v1, :cond_bb

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    if-nez v1, :cond_bb

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    if-nez v1, :cond_bb

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-nez v1, :cond_bb

    .line 926
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .end local v9       #startPos:I,
    invoke-static {v9, v10}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 931
    :cond_bb
    if-lez v4, :cond_1f4

    .line 932
    new-array v5, v4, [B

    .line 934
    .local v5, partData:[B
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    .line 936
    .local v1, partContentType:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 938
    const-string v4, "application/vnd.wap.multipart.alternative"

    .end local v4       #dataLength:I,
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1       #partContentType:Ljava/lang/String;,
    if-eqz v1, :cond_17c

    .line 940
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 942
    .local v1, childBody:Lcom/google/android/mms/pdu/PduBody;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .end local v8       #part:Lcom/google/android/mms/pdu/PduPart;,
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    move-object v7, v5

    .end local v5       #partData:[B,
    .local v7, partData:[B
    move-object v5, v1

    .line 969
    .end local v1       #part:Lcom/google/android/mms/pdu/PduPart;,
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_e4
    const/4 v4, 0x0

    .line 970
    .local v4, isDrmContent:Z
    const/4 v8, 0x0

    .line 971
    .local v8, type:Ljava/lang/String;
    if-nez v2, :cond_1ca

    .line 973
    :try_start_e8
    invoke-static {v7}, Lcom/lge/lgdrm/DrmManager;->getObjectMediaMimeType([B)Ljava/lang/String;
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_1ab

    move-result-object v1

    .line 983
    .end local v2       #contentType:[B,
    .end local v8       #type:Ljava/lang/String;,
    .local v1, type:Ljava/lang/String;
    :goto_ec
    const-string v2, "PduParser_BG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content Type (before) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, mimeType:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d1

    .line 987
    const-string v4, "PduParser_BG"

    .end local v4       #isDrmContent:Z,
    const-string v8, "DRM is TRUE"

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1       #type:Ljava/lang/String;,
    if-nez v1, :cond_122

    .line 989
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 991
    :cond_122
    const/4 v1, 0x1

    .line 996
    .local v1, isDrmContent:Z
    :goto_123
    const-string v4, "PduParser_BG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Content Type (after) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v4, "PduParser_BG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDrmContent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    if-eqz v1, :cond_1db

    .line 1001
    const-string v1, "PduParser"

    .end local v1       #isDrmContent:Z,
    const-string v4, "1"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-static {p1, v2, v7}, Lcom/google/android/mms/pdu/PduParser;->processDrmObject(Landroid/content/Context;Ljava/lang/String;[B)[B

    move-result-object v1

    .line 1003
    .local v1, result:[B
    invoke-virtual {v5, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    move-object v1, v5

    .line 1016
    .end local v2       #mimeType:Ljava/lang/String;,
    .end local v5       #part:Lcom/google/android/mms/pdu/PduPart;,
    .end local v7       #partData:[B,
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    :goto_16d
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v2

    if-nez v2, :cond_1e7

    .line 1018
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 857
    :goto_177
    add-int/lit8 v1, v6, 0x1

    .end local v6       #i:I,
    .local v1, i:I
    move v6, v1

    .end local v1       #i:I,
    .restart local v6       #i:I,
    goto/16 :goto_14

    .line 946
    .local v2, contentType:[B
    .local v5, partData:[B
    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    :cond_17c
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v4

    .line 947
    .local v4, partDataEncoding:[B
    if-eqz v4, :cond_1f2

    .line 948
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 949
    .local v1, encoding:Ljava/lang/String;
    const-string v4, "base64"

    .end local v4       #partDataEncoding:[B,
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19d

    .line 951
    invoke-static {v5}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v1

    .line 959
    .end local v5       #partData:[B,
    .local v1, partData:[B
    :goto_193
    if-nez v1, :cond_1ee

    .line 960
    const-string p0, "Decode part data error!"

    .end local p0       
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 961
    const/4 p0, 0x0

    goto/16 :goto_8

    .line 952
    .local v1, encoding:Ljava/lang/String;
    .restart local v5       #partData:[B,
    .restart local p0       
    :cond_19d
    const-string/jumbo v4, "quoted-printable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .end local v1       #encoding:Ljava/lang/String;,
    if-eqz v1, :cond_1f2

    .line 954
    invoke-static {v5}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v1

    .end local v5       #partData:[B,
    .local v1, partData:[B
    goto :goto_193

    .line 974
    .end local v1       #partData:[B,
    .local v4, isDrmContent:Z
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v7       #partData:[B,
    .local v8, type:Ljava/lang/String;
    :catch_1ab
    move-exception v1

    .line 975
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2       #contentType:[B,
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "parseParts() : DrmManager.getObjectMediaMimeType : "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .end local v1       #e:Ljava/lang/Exception;,
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v1, v8

    .line 976
    .end local v8       #type:Ljava/lang/String;,
    .local v1, type:Ljava/lang/String;
    goto/16 :goto_ec

    .line 978
    .end local v1       #type:Ljava/lang/String;,
    .restart local v2       #contentType:[B,
    .restart local v8       #type:Ljava/lang/String;,
    :cond_1ca
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .end local v8       #type:Ljava/lang/String;,
    .restart local v1       #type:Ljava/lang/String;,
    goto/16 :goto_ec

    .line 993
    .local v2, mimeType:Ljava/lang/String;
    :cond_1d1
    const-string v1, "PduParser_BG"

    .end local v1       #type:Ljava/lang/String;,
    const-string v8, "DRM is FALSE"

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .end local v4       #isDrmContent:Z,
    .local v1, isDrmContent:Z
    goto/16 :goto_123

    .line 1007
    :cond_1db
    const-string v1, "PduParser"

    .end local v1       #isDrmContent:Z,
    const-string v2, "2"

    .end local v2       #mimeType:Ljava/lang/String;,
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-virtual {v5, v7}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    move-object v1, v5

    .end local v5       #part:Lcom/google/android/mms/pdu/PduPart;,
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    goto :goto_16d

    .line 1021
    .end local v7       #partData:[B,
    :cond_1e7
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_177

    .end local v1       #part:Lcom/google/android/mms/pdu/PduPart;,
    :cond_1eb
    move-object p0, v0

    .line 1025
    goto/16 :goto_8

    .local v1, partData:[B
    .local v2, contentType:[B
    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1ee
    move-object v7, v1

    .end local v1       #partData:[B,
    .restart local v7       #partData:[B,
    move-object v5, v8

    .end local v8       #part:Lcom/google/android/mms/pdu/PduPart;,
    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;,
    goto/16 :goto_e4

    .end local v7       #partData:[B,
    .local v5, partData:[B
    .restart local v8       #part:Lcom/google/android/mms/pdu/PduPart;,
    :cond_1f2
    move-object v1, v5

    .end local v5       #partData:[B,
    .restart local v1       #partData:[B,
    goto :goto_193

    .end local v1       #partData:[B,
    .local v4, dataLength:I
    .local v5, headerLength:I
    :cond_1f4
    move-object v1, v8

    .end local v8       #part:Lcom/google/android/mms/pdu/PduPart;,
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    goto/16 :goto_16d
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1361
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1362
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1363
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1364
    :cond_1d
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 1075
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1076
    :cond_d
    const/4 v0, 0x0

    .line 1077
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1078
    .local v1, temp:I
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 1094
    :goto_15
    return v2

    .line 1082
    :cond_16
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_27

    .line 1083
    shl-int/lit8 v0, v0, 0x7

    .line 1084
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 1085
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1086
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 1087
    goto :goto_15

    .line 1091
    :cond_27
    shl-int/lit8 v0, v0, 0x7

    .line 1092
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 1094
    goto :goto_15
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    .line 1112
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1113
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1114
    .local v1, temp:I
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1115
    :cond_1d
    and-int/lit16 v0, v1, 0xff

    .line 1117
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_25

    move v2, v0

    .line 1120
    :goto_24
    return v2

    .line 1119
    :cond_25
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2e

    .line 1120
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    goto :goto_24

    .line 1123
    :cond_2e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 1185
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_d

    if-nez p0, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1203
    :cond_d
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1206
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1207
    .local v0, temp:I
    sget-boolean v1, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1208
    :cond_21
    if-ne v2, p1, :cond_2f

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2f

    .line 1211
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1226
    :goto_2a
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1212
    :cond_2f
    if-nez p1, :cond_39

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_39

    .line 1215
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_2a

    .line 1218
    :cond_39
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_2a
.end method

.method private static processDrmObject(Landroid/content/Context;Ljava/lang/String;[B)[B
    .registers 8
    .parameter "context"
    .parameter "contentType"
    .parameter "partData"

    .prologue
    .line 2141
    if-nez p2, :cond_b

    .line 2142
    :try_start_2
    const-string p0, "PduParser_BG"

    .end local p0       
    const-string p1, "createObjectSession() : Fail"

    .end local p1       
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    const/4 p0, 0x0

    .line 2220
    .end local p2       
    :goto_a
    return-object p0

    .line 2146
    .restart local p0       
    .restart local p1       
    .restart local p2       
    :cond_b
    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/lge/lgdrm/DrmManager;->createObjectSession(ILandroid/content/Context;)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v0

    .line 2147
    .local v0, session:Lcom/lge/lgdrm/DrmObjectSession;
    if-nez v0, :cond_1b

    .line 2148
    const-string p0, "PduParser_BG"

    .end local p0       
    const-string p1, "createObjectSession() : Fail"

    .end local p1       
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    const/4 p0, 0x0

    goto :goto_a

    .line 2152
    .restart local p0       
    .restart local p1       
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .end local p0       
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "/drm_temp.tmp"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2154
    .local p0, fileName:Ljava/lang/String;
    const-string v1, "PduParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    .end local p0       #fileName:Ljava/lang/String;,
    if-eqz p0, :cond_5f

    .line 2158
    const-string p0, "PduParser_BG"

    const-string/jumbo p1, "processInit() : Fail"

    .end local p1       
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 2160
    const/4 p0, 0x0

    goto :goto_a

    .line 2163
    .restart local p1       
    :cond_5f
    array-length p0, p2

    invoke-virtual {v0, p2, p0}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result p0

    if-eqz p0, :cond_74

    .line 2164
    const-string p0, "PduParser_BG"

    const-string/jumbo p1, "processUpdate() : Fail"

    .end local p1       
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 2166
    const/4 p0, 0x0

    goto :goto_a

    .line 2169
    .restart local p1       
    :cond_74
    const/4 p0, -0x1

    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result p1

    .end local p1       
    if-ne p0, p1, :cond_89

    .line 2170
    const-string p0, "PduParser_BG"

    const-string/jumbo p1, "processStatus() : Fail"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 2172
    const/4 p0, 0x0

    goto :goto_a

    .line 2175
    :cond_89
    const/4 p0, -0x1

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    .end local p2       
    move-result p1

    if-ne p0, p1, :cond_a1

    .line 2177
    const-string p0, "PduParser_BG"

    const-string/jumbo p1, "processEnd() : Fail"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 2179
    const/4 p0, 0x0

    goto/16 :goto_a

    .line 2182
    :cond_a1
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmObjectSession;->getStoredFilename()Ljava/lang/String;

    move-result-object p2

    .line 2183
    .local p2, outfileName:Ljava/lang/String;
    if-eqz p2, :cond_bf

    .line 2184
    const-string p0, "PduParser_BG"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getStoredFilename() : file name = "

    .end local v0       #session:Lcom/lge/lgdrm/DrmObjectSession;,
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    :cond_bf
    const-string p0, "PduParser"

    const-string p1, "here is outfileName"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    if-eqz p2, :cond_120

    .line 2190
    const-string p0, "PduParser"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "outfileName"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_e1} :catch_11c

    .line 2191
    const/4 v1, 0x0

    .line 2193
    .local v1, result:[B
    const/4 p1, 0x0

    .line 2194
    .local p1, fin:Ljava/io/FileInputStream;
    const/4 p0, 0x0

    .line 2196
    .local p0, bufLength:I
    :try_start_e4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2197
    .local v0, outFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    .line 2199
    new-array v1, p0, [B

    .line 2201
    new-instance p2, Ljava/io/FileInputStream;

    .end local p2       #outfileName:Ljava/lang/String;,
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f5
    .catch Ljava/io/FileNotFoundException; {:try_start_e4 .. :try_end_f5} :catch_108
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_f5} :catch_112
    .catch Ljava/lang/SecurityException; {:try_start_e4 .. :try_end_f5} :catch_11c

    .line 2202
    .end local p1       #fin:Ljava/io/FileInputStream;,
    .local p2, fin:Ljava/io/FileInputStream;
    :try_start_f5
    invoke-virtual {p2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 2203
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 2205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_104

    .line 2206
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_104
    .catch Ljava/io/FileNotFoundException; {:try_start_f5 .. :try_end_104} :catch_126
    .catch Ljava/io/IOException; {:try_start_f5 .. :try_end_104} :catch_123
    .catch Ljava/lang/SecurityException; {:try_start_f5 .. :try_end_104} :catch_11c

    :cond_104
    move-object p1, v1

    .end local v0       #outFile:Ljava/io/File;,
    .end local v1       #result:[B,
    .local p1, result:[B
    :goto_105
    move-object p0, p1

    .line 2214
    goto/16 :goto_a

    .line 2208
    .end local p2       #fin:Ljava/io/FileInputStream;,
    .restart local v1       #result:[B,
    .local p1, fin:Ljava/io/FileInputStream;
    :catch_108
    move-exception p2

    move-object v0, v1

    .end local v1       #result:[B,
    .local v0, result:[B
    move-object v4, p1

    .end local p1       #fin:Ljava/io/FileInputStream;,
    .local v4, fin:Ljava/io/FileInputStream;
    move-object p1, p2

    move-object p2, v4

    .line 2209
    .end local v4       #fin:Ljava/io/FileInputStream;,
    .local p1, e:Ljava/io/FileNotFoundException;
    .restart local p2       #fin:Ljava/io/FileInputStream;,
    :goto_10d
    :try_start_10d
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object p1, v0

    .line 2212
    .end local v0       #result:[B,
    .local p1, result:[B
    goto :goto_105

    .line 2210
    .end local p2       #fin:Ljava/io/FileInputStream;,
    .restart local v1       #result:[B,
    .local p1, fin:Ljava/io/FileInputStream;
    :catch_112
    move-exception p2

    move-object v0, v1

    .end local v1       #result:[B,
    .restart local v0       #result:[B,
    move-object v4, p1

    .end local p1       #fin:Ljava/io/FileInputStream;,
    .restart local v4       #fin:Ljava/io/FileInputStream;,
    move-object p1, p2

    move-object p2, v4

    .line 2211
    .end local v4       #fin:Ljava/io/FileInputStream;,
    .local p1, e:Ljava/io/IOException;
    .restart local p2       #fin:Ljava/io/FileInputStream;,
    :goto_117
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11a
    .catch Ljava/lang/SecurityException; {:try_start_10d .. :try_end_11a} :catch_11c

    move-object p1, v0

    .end local v0       #result:[B,
    .local p1, result:[B
    goto :goto_105

    .line 2216
    .end local p0       #bufLength:I,
    .end local p1       #result:[B,
    .end local p2       #fin:Ljava/io/FileInputStream;,
    :catch_11c
    move-exception p0

    .line 2217
    .local p0, e:Ljava/lang/SecurityException;
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 2220
    .end local p0       #e:Ljava/lang/SecurityException;,
    :cond_120
    const/4 p0, 0x0

    goto/16 :goto_a

    .line 2210
    .local v0, outFile:Ljava/io/File;
    .restart local v1       #result:[B,
    .local p0, bufLength:I
    .restart local p2       #fin:Ljava/io/FileInputStream;,
    :catch_123
    move-exception p1

    move-object v0, v1

    .end local v1       #result:[B,
    .local v0, result:[B
    goto :goto_117

    .line 2208
    .local v0, outFile:Ljava/io/File;
    .restart local v1       #result:[B,
    :catch_126
    move-exception p1

    move-object v0, v1

    .end local v1       #result:[B,
    .local v0, result:[B
    goto :goto_10d
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 5
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1436
    sget-boolean v2, Lcom/google/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1437
    :cond_c
    new-array v0, p1, [B

    .line 1438
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1439
    .local v1, readLen:I
    if-ge v1, p1, :cond_17

    .line 1440
    const/4 v2, -0x1

    .line 1442
    :goto_16
    return v2

    :cond_17
    move v2, v1

    goto :goto_16
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parse(Landroid/content/Context;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    return-object v0
.end method

.method public parse(Landroid/content/Context;)Lcom/google/android/mms/pdu/GenericPdu;
    .registers 16
    .parameter "context"

    .prologue
    .line 141
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v12, :cond_b

    .line 145
    const-string v12, "error : parse() : mPduDataStream == null"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 148
    const/4 v12, 0x0

    .line 262
    :goto_a
    return-object v12

    .line 152
    :cond_b
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v12}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 153
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v12, :cond_1e

    .line 157
    const-string v12, "error : parse() : null == mHeaders"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 161
    const/4 v12, 0x0

    goto :goto_a

    .line 165
    :cond_1e
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    .line 168
    .local v4, messageType:I
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v12

    if-nez v12, :cond_35

    .line 169
    const-string v12, "check mandatory headers failed!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 170
    const/4 v12, 0x0

    goto :goto_a

    .line 173
    :cond_35
    const/16 v12, 0x80

    if-eq v12, v4, :cond_3d

    const/16 v12, 0x84

    if-ne v12, v4, :cond_5b

    .line 179
    :cond_3d
    if-nez p1, :cond_52

    .line 180
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 185
    :goto_47
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v12, :cond_5b

    .line 189
    const-string v12, "error : parse() : null == body"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 193
    const/4 v12, 0x0

    goto :goto_a

    .line 182
    :cond_52
    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v12, p1}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v12

    iput-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    goto :goto_47

    .line 197
    :cond_5b
    packed-switch v4, :pswitch_data_f2

    .line 261
    const-string v12, "Parser doesn\'t support this message type in this version!"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 262
    const/4 v12, 0x0

    goto :goto_a

    .line 199
    :pswitch_65
    new-instance v11, Lcom/google/android/mms/pdu/SendReq;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v11, v12, v13}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .local v11, sendReq:Lcom/google/android/mms/pdu/SendReq;
    move-object v12, v11

    .line 200
    goto :goto_a

    .line 202
    .end local v11       #sendReq:Lcom/google/android/mms/pdu/SendReq;,
    :pswitch_70
    new-instance v10, Lcom/google/android/mms/pdu/SendConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v10, v12}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v10, sendConf:Lcom/google/android/mms/pdu/SendConf;
    move-object v12, v10

    .line 203
    goto :goto_a

    .line 205
    .end local v10       #sendConf:Lcom/google/android/mms/pdu/SendConf;,
    :pswitch_79
    new-instance v5, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v5, v12}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v5, notificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    move-object v12, v5

    .line 207
    goto :goto_a

    .line 209
    .end local v5       #notificationInd:Lcom/google/android/mms/pdu/NotificationInd;,
    :pswitch_82
    new-instance v6, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v6, v12}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v6, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    move-object v12, v6

    .line 211
    goto :goto_a

    .line 213
    .end local v6       #notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;,
    :pswitch_8b
    new-instance v9, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v13, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v9, v12, v13}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 216
    .local v9, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v1

    .line 217
    .local v1, contentType:[B
    if-nez v1, :cond_a2

    .line 221
    const-string v12, "error : parse() : null == contentType"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 224
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 226
    :cond_a2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 227
    .local v2, ctTypeStr:Ljava/lang/String;
    const-string v12, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_bf

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_bf

    const-string v12, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c2

    :cond_bf
    move-object v12, v9

    .line 235
    goto/16 :goto_a

    .line 240
    :cond_c2
    const-string v12, "error : parse() : MESSAGE_TYPE_RETRIEVE_CONF is null"

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 243
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 245
    .end local v1       #contentType:[B,
    .end local v2       #ctTypeStr:Ljava/lang/String;,
    .end local v9       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;,
    :pswitch_ca
    new-instance v3, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3, v12}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v3, deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;
    move-object v12, v3

    .line 247
    goto/16 :goto_a

    .line 249
    .end local v3       #deliveryInd:Lcom/google/android/mms/pdu/DeliveryInd;,
    :pswitch_d4
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v12}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    move-object v12, v0

    .line 251
    goto/16 :goto_a

    .line 253
    .end local v0       #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;,
    :pswitch_de
    new-instance v7, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v7, v12}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v7, readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;
    move-object v12, v7

    .line 255
    goto/16 :goto_a

    .line 257
    .end local v7       #readOrigInd:Lcom/google/android/mms/pdu/ReadOrigInd;,
    :pswitch_e8
    new-instance v8, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v12, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v12}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .local v8, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    move-object v12, v8

    .line 259
    goto/16 :goto_a

    .line 197
    :pswitch_data_f2
    .packed-switch 0x80
        :pswitch_65
        :pswitch_70
        :pswitch_79
        :pswitch_82
        :pswitch_8b
        :pswitch_d4
        :pswitch_ca
        :pswitch_e8
        :pswitch_de
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .registers 34
    .parameter "pduDataStream"

    .prologue
    .line 273
    if-nez p1, :cond_5

    .line 274
    const/16 v28, 0x0

    .line 820
    .end local p0       
    :goto_4
    return-object v28

    .line 277
    .restart local p0       
    :cond_5
    const/4 v13, 0x1

    .line 278
    .local v13, keepParsing:Z
    new-instance v12, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 280
    .end local p0       
    .local v12, headers:Lcom/google/android/mms/pdu/PduHeaders;
    :cond_b
    :goto_b
    if-eqz v13, :cond_640

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v28

    if-lez v28, :cond_640

    .line 282
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 284
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 287
    .local v11, headerField:I
    const/16 v28, 0x20

    move v0, v11

    move/from16 v1, v28

    if-lt v0, v1, :cond_3c

    const/16 v28, 0x7f

    move v0, v11

    move/from16 v1, v28

    if-gt v0, v1, :cond_3c

    .line 288
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 289
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 294
    .local v5, bVal:[B
    goto :goto_b

    .line 297
    .end local v5       #bVal:[B,
    :cond_3c
    packed-switch v11, :pswitch_data_644

    .line 815
    :pswitch_3f
    const-string v28, "Unknown header"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 300
    :pswitch_45
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v17

    .line 301
    .local v17, messageType:I
    packed-switch v17, :pswitch_data_6c6

    .line 321
    :try_start_4c
    move-object v0, v12

    move/from16 v1, v17

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_53
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_4c .. :try_end_53} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_53} :catch_82

    goto :goto_b

    .line 322
    :catch_54
    move-exception v7

    .line 323
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 325
    const/16 v28, 0x0

    goto :goto_4

    .line 318
    .end local v7       #e:Lcom/google/android/mms/InvalidHeaderValueException;,
    :pswitch_7f
    const/16 v28, 0x0

    goto :goto_4

    .line 326
    :catch_82
    move-exception v7

    .line 327
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 328
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 361
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v17       #messageType:I,
    :pswitch_a0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v25

    .line 364
    .local v25, value:I
    :try_start_a4
    move-object v0, v12

    move/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_ab
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_a4 .. :try_end_ab} :catch_ad
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_ab} :catch_d9

    goto/16 :goto_b

    .line 365
    :catch_ad
    move-exception v7

    .line 366
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 368
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 369
    .end local v7       #e:Lcom/google/android/mms/InvalidHeaderValueException;,
    :catch_d9
    move-exception v7

    .line 370
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 371
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 382
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v25       #value:I,
    :pswitch_f7
    :try_start_f7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v25

    .line 383
    .local v25, value:J
    move-object v0, v12

    move-wide/from16 v1, v25

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_102
    .catch Ljava/lang/RuntimeException; {:try_start_f7 .. :try_end_102} :catch_104

    goto/16 :goto_b

    .line 384
    .end local v25       #value:J,
    :catch_104
    move-exception v28

    move-object/from16 v7, v28

    .line 385
    .restart local v7       #e:Ljava/lang/RuntimeException;,
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 386
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 397
    .end local v7       #e:Ljava/lang/RuntimeException;,
    :pswitch_124
    :try_start_124
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v25

    .line 398
    .restart local v25       #value:J,
    move-object v0, v12

    move-wide/from16 v1, v25

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_12f
    .catch Ljava/lang/RuntimeException; {:try_start_124 .. :try_end_12f} :catch_131

    goto/16 :goto_b

    .line 399
    .end local v25       #value:J,
    :catch_131
    move-exception v28

    move-object/from16 v7, v28

    .line 400
    .restart local v7       #e:Ljava/lang/RuntimeException;,
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 401
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 427
    .end local v7       #e:Ljava/lang/RuntimeException;,
    :pswitch_151
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v25

    .line 428
    .local v25, value:[B
    if-eqz v25, :cond_b

    .line 430
    :try_start_15d
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_164
    .catch Ljava/lang/NullPointerException; {:try_start_15d .. :try_end_164} :catch_166
    .catch Ljava/lang/RuntimeException; {:try_start_15d .. :try_end_164} :catch_16f

    goto/16 :goto_b

    .line 431
    :catch_166
    move-exception v7

    .line 432
    .local v7, e:Ljava/lang/NullPointerException;
    const-string/jumbo v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 433
    .end local v7       #e:Ljava/lang/NullPointerException;,
    :catch_16f
    move-exception v7

    .line 434
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 435
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 451
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v25       #value:[B,
    :pswitch_18d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .line 453
    .local v25, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v25, :cond_b

    .line 455
    :try_start_193
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_19a
    .catch Ljava/lang/NullPointerException; {:try_start_193 .. :try_end_19a} :catch_19c
    .catch Ljava/lang/RuntimeException; {:try_start_193 .. :try_end_19a} :catch_1a5

    goto/16 :goto_b

    .line 456
    :catch_19c
    move-exception v7

    .line 457
    .local v7, e:Ljava/lang/NullPointerException;
    const-string/jumbo v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 458
    .end local v7       #e:Ljava/lang/NullPointerException;,
    :catch_1a5
    move-exception v7

    .line 459
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 460
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 471
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v25       #value:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :pswitch_1c3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v25

    .line 473
    .restart local v25       #value:Lcom/google/android/mms/pdu/EncodedStringValue;,
    if-eqz v25, :cond_b

    .line 474
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 475
    .local v4, address:[B
    if-eqz v4, :cond_21d

    .line 476
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 477
    .local v21, str:Ljava/lang/String;
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 478
    .local v8, endIndex:I
    if-lez v8, :cond_212

    .line 481
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x2b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22f

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x31

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22f

    .line 483
    const/16 v28, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v28

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 492
    :cond_212
    :goto_212
    :try_start_212
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_21d
    .catch Ljava/lang/NullPointerException; {:try_start_212 .. :try_end_21d} :catch_23b

    .line 500
    .end local v8       #endIndex:I,
    .end local v21       #str:Ljava/lang/String;,
    :cond_21d
    :try_start_21d
    move-object v0, v12

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_224
    .catch Ljava/lang/NullPointerException; {:try_start_21d .. :try_end_224} :catch_226
    .catch Ljava/lang/RuntimeException; {:try_start_21d .. :try_end_224} :catch_248

    goto/16 :goto_b

    .line 501
    :catch_226
    move-exception v7

    .line 502
    .local v7, e:Ljava/lang/NullPointerException;
    const-string/jumbo v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 487
    .end local v7       #e:Ljava/lang/NullPointerException;,
    .restart local v8       #endIndex:I,
    .restart local v21       #str:Ljava/lang/String;,
    :cond_22f
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    goto :goto_212

    .line 493
    :catch_23b
    move-exception v28

    move-object/from16 v7, v28

    .line 494
    .restart local v7       #e:Ljava/lang/NullPointerException;,
    const-string/jumbo v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 495
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 503
    .end local v7       #e:Ljava/lang/NullPointerException;,
    .end local v8       #endIndex:I,
    .end local v21       #str:Ljava/lang/String;,
    :catch_248
    move-exception v7

    .line 504
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 505
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 518
    .end local v4       #address:[B,
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v25       #value:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :pswitch_266
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 521
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 526
    .local v24, token:I
    :try_start_26d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_270
    .catch Ljava/lang/RuntimeException; {:try_start_26d .. :try_end_270} :catch_2aa

    move-result-wide v22

    .line 531
    .local v22, timeValue:J
    const/16 v28, 0x81

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_283

    .line 534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    add-long v22, v22, v28

    .line 538
    :cond_283
    :try_start_283
    move-object v0, v12

    move-wide/from16 v1, v22

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_28a
    .catch Ljava/lang/RuntimeException; {:try_start_283 .. :try_end_28a} :catch_28c

    goto/16 :goto_b

    .line 539
    :catch_28c
    move-exception v7

    .line 540
    .restart local v7       #e:Ljava/lang/RuntimeException;,
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 541
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 527
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v22       #timeValue:J,
    :catch_2aa
    move-exception v7

    .line 528
    .restart local v7       #e:Ljava/lang/RuntimeException;,
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 529
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 551
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v24       #token:I,
    :pswitch_2c8
    const/4 v9, 0x0

    .line 552
    .local v9, from:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 555
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 558
    .local v10, fromToken:I
    const/16 v28, 0x80

    move/from16 v0, v28

    move v1, v10

    if-ne v0, v1, :cond_35d

    .line 560
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 561
    if-eqz v9, :cond_330

    .line 562
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 563
    .restart local v4       #address:[B,
    if-eqz v4, :cond_330

    .line 564
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 565
    .restart local v21       #str:Ljava/lang/String;,
    const-string v28, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 566
    .restart local v8       #endIndex:I,
    if-lez v8, :cond_326

    .line 570
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x2b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_344

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v28

    const/16 v29, 0x31

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_344

    .line 572
    const/16 v28, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v28

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 581
    :cond_326
    :goto_326
    :try_start_326
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_330
    .catch Ljava/lang/NullPointerException; {:try_start_326 .. :try_end_330} :catch_350

    .line 599
    .end local v4       #address:[B,
    .end local v8       #endIndex:I,
    .end local v21       #str:Ljava/lang/String;,
    :cond_330
    :goto_330
    const/16 v28, 0x89

    :try_start_332
    move-object v0, v12

    move-object v1, v9

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_339
    .catch Ljava/lang/NullPointerException; {:try_start_332 .. :try_end_339} :catch_33b
    .catch Ljava/lang/RuntimeException; {:try_start_332 .. :try_end_339} :catch_38c

    goto/16 :goto_b

    .line 600
    :catch_33b
    move-exception v7

    .line 601
    .local v7, e:Ljava/lang/NullPointerException;
    const-string/jumbo v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 576
    .end local v7       #e:Ljava/lang/NullPointerException;,
    .restart local v4       #address:[B,
    .restart local v8       #endIndex:I,
    .restart local v21       #str:Ljava/lang/String;,
    :cond_344
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    goto :goto_326

    .line 582
    :catch_350
    move-exception v28

    move-object/from16 v7, v28

    .line 583
    .restart local v7       #e:Ljava/lang/NullPointerException;,
    const-string/jumbo v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 584
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 590
    .end local v4       #address:[B,
    .end local v7       #e:Ljava/lang/NullPointerException;,
    .end local v8       #endIndex:I,
    .end local v21       #str:Ljava/lang/String;,
    :cond_35d
    :try_start_35d
    new-instance v9, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;,
    const-string v28, "insert-address-token"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object v0, v9

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_36b
    .catch Ljava/lang/NullPointerException; {:try_start_35d .. :try_end_36b} :catch_36c

    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;,
    goto :goto_330

    .line 592
    .end local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :catch_36c
    move-exception v28

    move-object/from16 v7, v28

    .line 593
    .restart local v7       #e:Ljava/lang/NullPointerException;,
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 594
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 602
    .end local v7       #e:Ljava/lang/NullPointerException;,
    .restart local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :catch_38c
    move-exception v7

    .line 603
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 604
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 611
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v9       #from:Lcom/google/android/mms/pdu/EncodedStringValue;,
    .end local v10       #fromToken:I,
    :pswitch_3aa
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 612
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v15

    .line 614
    .local v15, messageClass:I
    const/16 v28, 0x80

    move v0, v15

    move/from16 v1, v28

    if-lt v0, v1, :cond_44e

    .line 617
    const/16 v28, 0x80

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_3e3

    .line 618
    :try_start_3c5
    const-string/jumbo v28, "personal"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3d6
    .catch Ljava/lang/NullPointerException; {:try_start_3c5 .. :try_end_3d6} :catch_3d8
    .catch Ljava/lang/RuntimeException; {:try_start_3c5 .. :try_end_3d6} :catch_3fc

    goto/16 :goto_b

    .line 634
    :catch_3d8
    move-exception v28

    move-object/from16 v7, v28

    .line 635
    .local v7, e:Ljava/lang/NullPointerException;
    const-string/jumbo v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 621
    .end local v7       #e:Ljava/lang/NullPointerException;,
    :cond_3e3
    const/16 v28, 0x81

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_41c

    .line 622
    :try_start_3ea
    const-string v28, "advertisement"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3fa
    .catch Ljava/lang/NullPointerException; {:try_start_3ea .. :try_end_3fa} :catch_3d8
    .catch Ljava/lang/RuntimeException; {:try_start_3ea .. :try_end_3fa} :catch_3fc

    goto/16 :goto_b

    .line 636
    :catch_3fc
    move-exception v28

    move-object/from16 v7, v28

    .line 637
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 638
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 625
    .end local v7       #e:Ljava/lang/RuntimeException;,
    :cond_41c
    const/16 v28, 0x82

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_435

    .line 626
    :try_start_423
    const-string v28, "informational"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_b

    .line 629
    :cond_435
    const/16 v28, 0x83

    move/from16 v0, v28

    move v1, v15

    if-ne v0, v1, :cond_b

    .line 630
    const-string v28, "auto"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object v0, v12

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_44c
    .catch Ljava/lang/NullPointerException; {:try_start_423 .. :try_end_44c} :catch_3d8
    .catch Ljava/lang/RuntimeException; {:try_start_423 .. :try_end_44c} :catch_3fc

    goto/16 :goto_b

    .line 642
    :cond_44e
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 643
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 644
    .local v16, messageClassString:[B
    if-eqz v16, :cond_b

    .line 646
    const/16 v28, 0x8a

    :try_start_45f
    move-object v0, v12

    move-object/from16 v1, v16

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_467
    .catch Ljava/lang/NullPointerException; {:try_start_45f .. :try_end_467} :catch_469
    .catch Ljava/lang/RuntimeException; {:try_start_45f .. :try_end_467} :catch_472

    goto/16 :goto_b

    .line 647
    :catch_469
    move-exception v7

    .line 648
    .local v7, e:Ljava/lang/NullPointerException;
    const-string/jumbo v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 649
    .end local v7       #e:Ljava/lang/NullPointerException;,
    :catch_472
    move-exception v7

    .line 650
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 651
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 659
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v15       #messageClass:I,
    .end local v16       #messageClassString:[B,
    :pswitch_490
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v27

    .line 662
    .local v27, version:I
    const/16 v28, 0x8d

    :try_start_496
    move-object v0, v12

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_49e
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_496 .. :try_end_49e} :catch_4a0
    .catch Ljava/lang/RuntimeException; {:try_start_496 .. :try_end_49e} :catch_4cc

    goto/16 :goto_b

    .line 663
    :catch_4a0
    move-exception v7

    .line 664
    .local v7, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 666
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 667
    .end local v7       #e:Lcom/google/android/mms/InvalidHeaderValueException;,
    :catch_4cc
    move-exception v7

    .line 668
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 669
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 678
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v27       #version:I,
    :pswitch_4ea
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 682
    :try_start_4ed
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_4f0
    .catch Ljava/lang/RuntimeException; {:try_start_4ed .. :try_end_4f0} :catch_50b

    .line 689
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v20

    .line 691
    .local v20, previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v20, :cond_b

    .line 693
    const/16 v28, 0xa0

    :try_start_4f8
    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_500
    .catch Ljava/lang/NullPointerException; {:try_start_4f8 .. :try_end_500} :catch_502
    .catch Ljava/lang/RuntimeException; {:try_start_4f8 .. :try_end_500} :catch_529

    goto/16 :goto_b

    .line 695
    :catch_502
    move-exception v7

    .line 696
    .local v7, e:Ljava/lang/NullPointerException;
    const-string/jumbo v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 683
    .end local v7       #e:Ljava/lang/NullPointerException;,
    .end local v20       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :catch_50b
    move-exception v7

    .line 684
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 685
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 697
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .restart local v20       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :catch_529
    move-exception v7

    .line 698
    .restart local v7       #e:Ljava/lang/RuntimeException;,
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 699
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 709
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v20       #previouslySentBy:Lcom/google/android/mms/pdu/EncodedStringValue;,
    :pswitch_547
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 713
    :try_start_54a
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_54d
    .catch Ljava/lang/RuntimeException; {:try_start_54a .. :try_end_54d} :catch_57d

    .line 721
    :try_start_54d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    .line 722
    .local v18, perviouslySentDate:J
    const/16 v28, 0xa1

    move-object v0, v12

    move-wide/from16 v1, v18

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_55b
    .catch Ljava/lang/RuntimeException; {:try_start_54d .. :try_end_55b} :catch_55d

    goto/16 :goto_b

    .line 724
    .end local v18       #perviouslySentDate:J,
    :catch_55d
    move-exception v28

    move-object/from16 v7, v28

    .line 725
    .restart local v7       #e:Ljava/lang/RuntimeException;,
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 726
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 714
    .end local v7       #e:Ljava/lang/RuntimeException;,
    :catch_57d
    move-exception v7

    .line 715
    .restart local v7       #e:Ljava/lang/RuntimeException;,
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 716
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 739
    .end local v7       #e:Ljava/lang/RuntimeException;,
    :pswitch_59b
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 742
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 745
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_b

    .line 758
    :pswitch_5a6
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 761
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 765
    :try_start_5ac
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_5af
    .catch Ljava/lang/RuntimeException; {:try_start_5ac .. :try_end_5af} :catch_5b1

    goto/16 :goto_b

    .line 766
    :catch_5b1
    move-exception v7

    .line 767
    .restart local v7       #e:Ljava/lang/RuntimeException;,
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 768
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 777
    .end local v7       #e:Ljava/lang/RuntimeException;,
    :pswitch_5cf
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_b

    .line 785
    :pswitch_5da
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 787
    .local v14, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 790
    .local v6, contentType:[B
    if-eqz v6, :cond_5f1

    .line 792
    const/16 v28, 0x84

    :try_start_5ea
    move-object v0, v12

    move-object v1, v6

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_5f1
    .catch Ljava/lang/NullPointerException; {:try_start_5ea .. :try_end_5f1} :catch_61a
    .catch Ljava/lang/RuntimeException; {:try_start_5ea .. :try_end_5f1} :catch_622

    .line 802
    :cond_5f1
    :goto_5f1
    const/16 v28, 0x99

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 805
    const/16 v28, 0x83

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    sput-object p0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 807
    const/4 v13, 0x0

    .line 808
    goto/16 :goto_b

    .line 793
    :catch_61a
    move-exception v7

    .line 794
    .local v7, e:Ljava/lang/NullPointerException;
    const-string/jumbo v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_5f1

    .line 795
    .end local v7       #e:Ljava/lang/NullPointerException;,
    :catch_622
    move-exception v7

    .line 796
    .local v7, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 797
    const/16 v28, 0x0

    goto/16 :goto_4

    .end local v6       #contentType:[B,
    .end local v7       #e:Ljava/lang/RuntimeException;,
    .end local v11       #headerField:I,
    .end local v14       #map:Ljava/util/HashMap;,, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_640
    move-object/from16 v28, v12

    .line 820
    goto/16 :goto_4

    .line 297
    :pswitch_data_644
    .packed-switch 0x81
        :pswitch_1c3
        :pswitch_1c3
        :pswitch_151
        :pswitch_5da
        :pswitch_f7
        :pswitch_a0
        :pswitch_266
        :pswitch_266
        :pswitch_2c8
        :pswitch_3aa
        :pswitch_151
        :pswitch_45
        :pswitch_490
        :pswitch_f7
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_18d
        :pswitch_a0
        :pswitch_a0
        :pswitch_18d
        :pswitch_1c3
        :pswitch_151
        :pswitch_a0
        :pswitch_18d
        :pswitch_a0
        :pswitch_a0
        :pswitch_266
        :pswitch_151
        :pswitch_f7
        :pswitch_4ea
        :pswitch_547
        :pswitch_a0
        :pswitch_a0
        :pswitch_59b
        :pswitch_a0
        :pswitch_18d
        :pswitch_a0
        :pswitch_3f
        :pswitch_a0
        :pswitch_5a6
        :pswitch_a0
        :pswitch_5a6
        :pswitch_124
        :pswitch_3f
        :pswitch_124
        :pswitch_3f
        :pswitch_a0
        :pswitch_5cf
        :pswitch_124
        :pswitch_a0
        :pswitch_18d
        :pswitch_18d
        :pswitch_151
        :pswitch_151
        :pswitch_151
        :pswitch_a0
        :pswitch_a0
        :pswitch_a0
        :pswitch_151
        :pswitch_151
        :pswitch_a0
    .end packed-switch

    .line 301
    :pswitch_data_6c6
    .packed-switch 0x89
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
    .end packed-switch
.end method
