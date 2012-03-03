.class public final Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriCrcCalculator;,
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriImg;,
        Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final ENCODING_ASCII:I = 0x2

.field public static final ENCODING_GSM7:I = 0x9

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_IS_91:I = 0x1

.field public static final ENCODING_KOREAN:I = 0x6

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_LATIN_HEBREW:I = 0x7

.field public static final ENCODING_OCTET:I = 0x0

.field public static final ENCODING_OTHERS:I = 0xa

.field public static final ENCODING_SHIFT_JIS:I = 0x5

.field public static final ENCODING_UNICODE:I = 0x4

.field public static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field public static final ERI_FROM_MODEM:I = 0x2

.field public static final ERI_FROM_XML:I = 0x0

.field public static final LENGTH_BITS_CALL_PROMPT_AMOUNT_OF_TEXT_DATA:I = 0x8

.field public static final LENGTH_BITS_CALL_PROMPT_CALL_PROMPT_ID:I = 0x4

.field public static final LENGTH_BITS_CALL_PROMPT_CHARACTER_ENCODING_TYPE:I = 0x5

.field public static final LENGTH_BITS_CALL_PROMPT_RESERVED_BITS1:I = 0x8

.field public static final LENGTH_BITS_CALL_PROMPT_RESERVED_BITS2:I = 0x4

.field public static final LENGTH_BITS_CALL_PROMPT_RESERVED_BITS3:I = 0x3

.field public static final LENGTH_BITS_CALL_PROMPT_TEXT_DATA:I = 0x0

.field public static final LENGTH_BITS_ERI_FILE_CRC:I = 0x10

.field public static final LENGTH_BITS_ERI_TYPE:I = 0x3

.field public static final LENGTH_BITS_ICON_IMAGE_AMOUNT_OF_TEXT_DATA:I = 0x8

.field public static final LENGTH_BITS_ICON_IMAGE_ICON_FILE_NAME:I = 0x0

.field public static final LENGTH_BITS_ICON_IMAGE_IMAGE_ID:I = 0x4

.field public static final LENGTH_BITS_ICON_IMAGE_RESERVED_BITS:I = 0x4

.field public static final LENGTH_BITS_ICON_IMAGE_TYPE:I = 0x3

.field public static final LENGTH_BITS_NUMBER_OF_ERI_ENTRIES:I = 0x6

.field public static final LENGTH_BITS_NUMBER_OF_ICON_IMAGES:I = 0x4

.field public static final LENGTH_BITS_RESERVED_PAD_BITS:I = 0x8

.field public static final LENGTH_BITS_ROAMING_INDICATOR_ALERT_ID:I = 0x3

.field public static final LENGTH_BITS_ROAMING_INDICATOR_AMOUNT_OF_TEXT_DATA:I = 0x8

.field public static final LENGTH_BITS_ROAMING_INDICATOR_CALL_PROMPT_ID:I = 0x2

.field public static final LENGTH_BITS_ROAMING_INDICATOR_CHARACTER_ENCODING_TYPE:I = 0x5

.field public static final LENGTH_BITS_ROAMING_INDICATOR_ERI_TEXT:I = 0x0

.field public static final LENGTH_BITS_ROAMING_INDICATOR_ICON_INDEX:I = 0x4

.field public static final LENGTH_BITS_ROAMING_INDICATOR_ICON_MODE:I = 0x2

.field public static final LENGTH_BITS_ROAMING_INDICATOR_ROAMING_INDICATOR:I = 0x8

.field public static final LENGTH_BITS_VERSION_NUMBER:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final VDBG:Z



# instance fields
.field private indexofhomesystem:Ljava/lang/String;

.field private isEriFileLoaded:Z

.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;



# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V
    .registers 5
    .parameter "phone"
    .parameter "context"
    .parameter "eriFileSource"

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 304
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    .line 308
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 309
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 310
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 311
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 312
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .registers 14
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v9, "Roaming"

    .line 891
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    if-eqz v4, :cond_25

    .line 892
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 893
    .local v1, eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-eqz v1, :cond_25

    .line 896
    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    if-eq v4, v7, :cond_18

    .line 897
    iput v8, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    .line 898
    iput v7, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    .line 901
    :cond_18
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .local v2, ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    move-object v3, v2

    .line 1230
    .end local v1       #eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;,
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    .local v3, ret:Ljava/lang/Object;
    :goto_24
    return-object v3

    .line 909
    .end local v3       #ret:Ljava/lang/Object;,
    :cond_25
    packed-switch p1, :pswitch_data_19e

    .line 1064
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    if-nez v4, :cond_140

    .line 1066
    const-string v4, "CDMA"

    const-string v5, "ERI File not loaded"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    if-le p2, v8, :cond_119

    .line 1069
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, "Roaming"

    invoke-direct {v2, p0, v8, v7, v9}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :goto_3c
    move-object v3, v2

    .line 1230
    .restart local v3       #ret:Ljava/lang/Object;,
    goto :goto_24

    .line 912
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    .end local v3       #ret:Ljava/lang/Object;,
    :pswitch_3e
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, "Roaming"

    invoke-direct {v2, p0, v8, v7, v9}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 938
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto :goto_3c

    .line 941
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_46
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, "MetroPCS"

    invoke-direct {v2, p0, v7, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 963
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto :goto_3c

    .line 966
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_4e
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, "Roaming"

    invoke-direct {v2, p0, v8, v7, v9}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 988
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto :goto_3c

    .line 993
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_56
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 997
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto :goto_3c

    .line 1000
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_69
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400ef

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1004
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto :goto_3c

    .line 1007
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_7c
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400f0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1011
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto :goto_3c

    .line 1014
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_8f
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400f1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1018
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto :goto_3c

    .line 1021
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_a2
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400f2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1025
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto :goto_3c

    .line 1028
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_b5
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400f3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1032
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1035
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_c9
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400f4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1039
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1042
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_dd
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400f5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1046
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1049
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_f1
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400f6

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1053
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1056
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_105
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v5, 0x10400f7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, p1, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1060
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1079
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :cond_119
    packed-switch p2, :pswitch_data_1bc

    .line 1162
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, "ERI text"

    invoke-direct {v2, p0, v10, v10, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1081
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_125
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, "Roaming"

    invoke-direct {v2, p0, v8, v7, v9}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1107
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1110
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_12e
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, "MetroPCS"

    invoke-direct {v2, p0, v7, v6, v4}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1133
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1136
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :pswitch_137
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, "Roaming"

    invoke-direct {v2, p0, v8, v7, v9}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 1159
    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1167
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :cond_140
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v1

    .line 1168
    .restart local v1       #eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;,
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 1169
    .local v0, defEriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v1, :cond_188

    .line 1174
    if-nez v0, :cond_173

    .line 1175
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ERI defRoamInd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found in ERI file ...on"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const-string v4, "Roaming"

    invoke-direct {v2, p0, v8, v7, v9}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1203
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :cond_173
    iget v4, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    if-eq v4, v7, :cond_17b

    .line 1204
    iput v8, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    .line 1205
    iput v7, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    .line 1208
    :cond_17b
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v5, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v6, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 1216
    .end local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    :cond_188
    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    if-eq v4, v7, :cond_190

    .line 1217
    iput v8, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    .line 1218
    iput v7, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    .line 1221
    :cond_190
    new-instance v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v4, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v5, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v2       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
    goto/16 :goto_3c

    .line 909
    nop

    :pswitch_data_19e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_46
        :pswitch_4e
        :pswitch_56
        :pswitch_69
        :pswitch_7c
        :pswitch_8f
        :pswitch_a2
        :pswitch_b5
        :pswitch_c9
        :pswitch_dd
        :pswitch_f1
        :pswitch_105
    .end packed-switch

    .line 1079
    :pswitch_data_1bc
    .packed-switch 0x0
        :pswitch_125
        :pswitch_12e
        :pswitch_137
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .registers 4
    .parameter "roamingIndicator"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 881
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/cdma/EriInfo;

    move-object v0, p0

    .line 883
    :goto_1d
    return-object v0

    .restart local p0       
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private loadEriFileFromFileSystem()V
    .registers 15

    .prologue
    const-string v13, "loadEriFileFromFileSystem : exception"

    const-string v12, "CDMA"

    .line 671
    const-string v0, "/data/eri/eri.bin"

    .line 674
    .local v0, ERI_FILE_NAME:Ljava/lang/String;
    const/4 v8, 0x0

    .line 675
    .local v8, stream:Ljava/io/FileInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    .line 676
    .local v4, eriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    const/4 v2, 0x0

    .line 679
    .local v2, count:I
    :try_start_d
    new-instance v9, Ljava/io/FileInputStream;

    const-string v10, "/data/eri/eri.bin"

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_84
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_14} :catch_99
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_6e

    .line 680
    .end local v8       #stream:Ljava/io/FileInputStream;,
    .local v9, stream:Ljava/io/FileInputStream;
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 681
    new-array v5, v2, [B

    .line 683
    .local v5, eriRawData:[B
    :cond_1a
    invoke-virtual {v9, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_92
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1d} :catch_4a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1d} :catch_95

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1a

    .line 687
    :try_start_21
    invoke-direct {p0, v5, v4}, Lcom/android/internal/telephony/cdma/EriManager;->xlateEriData([BLcom/android/internal/telephony/cdma/EriManager$EriFile;)V

    .line 690
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_21 .. :try_end_3b} :catchall_92
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_21 .. :try_end_3b} :catch_40
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_3b} :catch_4a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_3b} :catch_95

    .line 709
    :goto_3b
    :try_start_3b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_64

    move-object v8, v9

    .line 717
    .end local v5       #eriRawData:[B,
    .end local v9       #stream:Ljava/io/FileInputStream;,
    .restart local v8       #stream:Ljava/io/FileInputStream;,
    :goto_3f
    return-void

    .line 695
    .end local v8       #stream:Ljava/io/FileInputStream;,
    .restart local v5       #eriRawData:[B,
    .restart local v9       #stream:Ljava/io/FileInputStream;,
    :catch_40
    move-exception v10

    move-object v1, v10

    .line 697
    .local v1, ae:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :try_start_42
    const-string v10, "CDMA"

    const-string v11, "loadEriFileFromFileSystem : acess exception"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_92
    .catch Ljava/io/FileNotFoundException; {:try_start_42 .. :try_end_49} :catch_4a
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_95

    goto :goto_3b

    .line 700
    .end local v1       #ae:Lcom/android/internal/util/BitwiseInputStream$AccessException;,
    .end local v5       #eriRawData:[B,
    :catch_4a
    move-exception v10

    move-object v6, v10

    move-object v8, v9

    .line 702
    .end local v9       #stream:Ljava/io/FileInputStream;,
    .local v6, fnfe:Ljava/io/FileNotFoundException;
    .restart local v8       #stream:Ljava/io/FileInputStream;,
    :goto_4d
    :try_start_4d
    const-string v10, "CDMA"

    const-string v11, "loadEriFileFromFileSystem : file not found"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_84

    .line 709
    :try_start_57
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_3f

    .line 710
    :catch_5b
    move-exception v3

    .line 712
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "CDMA"

    const-string v10, "loadEriFileFromFileSystem : exception"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 710
    .end local v3       #e:Ljava/lang/Exception;,
    .end local v6       #fnfe:Ljava/io/FileNotFoundException;,
    .end local v8       #stream:Ljava/io/FileInputStream;,
    .restart local v5       #eriRawData:[B,
    .restart local v9       #stream:Ljava/io/FileInputStream;,
    :catch_64
    move-exception v3

    .line 712
    .restart local v3       #e:Ljava/lang/Exception;,
    const-string v10, "CDMA"

    const-string v10, "loadEriFileFromFileSystem : exception"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v9

    .line 714
    .end local v9       #stream:Ljava/io/FileInputStream;,
    .restart local v8       #stream:Ljava/io/FileInputStream;,
    goto :goto_3f

    .line 704
    .end local v3       #e:Ljava/lang/Exception;,
    .end local v5       #eriRawData:[B,
    :catch_6e
    move-exception v10

    move-object v7, v10

    .line 706
    .local v7, ioe:Ljava/io/IOException;
    :goto_70
    :try_start_70
    const-string v10, "CDMA"

    const-string v11, "loadEriFileFromFileSystem : IO exception"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_84

    .line 709
    :try_start_77
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_7b

    goto :goto_3f

    .line 710
    :catch_7b
    move-exception v3

    .line 712
    .restart local v3       #e:Ljava/lang/Exception;,
    const-string v10, "CDMA"

    const-string v10, "loadEriFileFromFileSystem : exception"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 708
    .end local v3       #e:Ljava/lang/Exception;,
    .end local v7       #ioe:Ljava/io/IOException;,
    :catchall_84
    move-exception v10

    .line 709
    :goto_85
    :try_start_85
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    .line 713
    :goto_88
    throw v10

    .line 710
    :catch_89
    move-exception v3

    .line 712
    .restart local v3       #e:Ljava/lang/Exception;,
    const-string v11, "CDMA"

    const-string v11, "loadEriFileFromFileSystem : exception"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 708
    .end local v3       #e:Ljava/lang/Exception;,
    .end local v8       #stream:Ljava/io/FileInputStream;,
    .restart local v9       #stream:Ljava/io/FileInputStream;,
    :catchall_92
    move-exception v10

    move-object v8, v9

    .end local v9       #stream:Ljava/io/FileInputStream;,
    .restart local v8       #stream:Ljava/io/FileInputStream;,
    goto :goto_85

    .line 704
    .end local v8       #stream:Ljava/io/FileInputStream;,
    .restart local v9       #stream:Ljava/io/FileInputStream;,
    :catch_95
    move-exception v10

    move-object v7, v10

    move-object v8, v9

    .end local v9       #stream:Ljava/io/FileInputStream;,
    .restart local v8       #stream:Ljava/io/FileInputStream;,
    goto :goto_70

    .line 700
    :catch_99
    move-exception v10

    move-object v6, v10

    goto :goto_4d
.end method

.method private loadEriFileFromModem()V
    .registers 1

    .prologue
    .line 345
    return-void
.end method

.method private loadEriFileFromXml()V
    .registers 20

    .prologue
    .line 724
    const/4 v14, 0x0

    .line 725
    .local v14, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v16, 0x0

    .line 726
    .local v16, stream:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 729
    .local v15, r:Landroid/content/res/Resources;
    :try_start_c
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: check for alternate file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    new-instance v17, Ljava/io/FileInputStream;

    const v3, 0x10403ab

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_22} :catch_f6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_22} :catch_102

    .line 732
    .end local v16       #stream:Ljava/io/FileInputStream;,
    .local v17, stream:Ljava/io/FileInputStream;
    :try_start_22
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 733
    const/4 v3, 0x0

    move-object v0, v14

    move-object/from16 v1, v17

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 734
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: opened alternate file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_35} :catch_1ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_35} :catch_1e4

    move-object/from16 v16, v17

    .line 743
    .end local v17       #stream:Ljava/io/FileInputStream;,
    .restart local v16       #stream:Ljava/io/FileInputStream;,
    :goto_37
    if-nez v14, :cond_47

    .line 744
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: open normal file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const v3, 0x10b0002

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v14

    .line 749
    :cond_47
    :try_start_47
    const-string v3, "EriFile"

    invoke-static {v14, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "VersionNumber"

    invoke-interface {v14, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "NumberOfEriEntries"

    invoke-interface {v14, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "EriFileType"

    invoke-interface {v14, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 758
    const/4 v13, 0x0

    .line 760
    .local v13, parsedEriEntries:I
    :cond_83
    :goto_83
    invoke-static {v14}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 761
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 762
    .local v12, name:Ljava/lang/String;
    if-nez v12, :cond_10e

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v13, v3, :cond_c4

    .line 764
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Parsing ERI file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v5, v0

    iget v5, v5, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " defined, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parsed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_c4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    .line 825
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z
    :try_end_e7
    .catchall {:try_start_47 .. :try_end_e7} :catchall_172
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_e7} :catch_138

    .line 830
    instance-of v3, v14, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_f0

    .line 831
    check-cast v14, Landroid/content/res/XmlResourceParser;

    .end local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 834
    :cond_f0
    if-eqz v16, :cond_f5

    .line 835
    :try_start_f2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_1df

    .line 841
    .end local v12       #name:Ljava/lang/String;,
    .end local v13       #parsedEriEntries:I,
    :cond_f5
    :goto_f5
    return-void

    .line 735
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    :catch_f6
    move-exception v3

    move-object v10, v3

    .line 736
    .local v10, e:Ljava/io/FileNotFoundException;
    :goto_f8
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: no alternate file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v14, 0x0

    .line 741
    goto/16 :goto_37

    .line 738
    .end local v10       #e:Ljava/io/FileNotFoundException;,
    :catch_102
    move-exception v3

    move-object v10, v3

    .line 739
    .local v10, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_104
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: no parser for alternate file"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v14, 0x0

    goto/16 :goto_37

    .line 767
    .end local v10       #e:Lorg/xmlpull/v1/XmlPullParserException;,
    .restart local v12       #name:Ljava/lang/String;,
    .restart local v13       #parsedEriEntries:I,
    :cond_10e
    :try_start_10e
    const-string v3, "CallPromptId"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_182

    .line 768
    const/4 v3, 0x0

    const-string v4, "Id"

    invoke-interface {v14, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 769
    .local v11, id:I
    const/4 v3, 0x0

    const-string v4, "CallPromptText"

    invoke-interface {v14, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 770
    .local v18, text:Ljava/lang/String;
    if-ltz v11, :cond_152

    const/4 v3, 0x2

    if-gt v11, v3, :cond_152

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v18, v3, v11
    :try_end_136
    .catchall {:try_start_10e .. :try_end_136} :catchall_172
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_136} :catch_138

    goto/16 :goto_83

    .line 827
    .end local v11       #id:I,
    .end local v12       #name:Ljava/lang/String;,
    .end local v13       #parsedEriEntries:I,
    .end local v18       #text:Ljava/lang/String;,
    :catch_138
    move-exception v3

    move-object v10, v3

    .line 828
    .local v10, e:Ljava/lang/Exception;
    :try_start_13a
    const-string v3, "CDMA"

    const-string v4, "Got exception while loading ERI file."

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_141
    .catchall {:try_start_13a .. :try_end_141} :catchall_172

    .line 830
    instance-of v3, v14, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_14a

    .line 831
    check-cast v14, Landroid/content/res/XmlResourceParser;

    .end local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 834
    :cond_14a
    if-eqz v16, :cond_f5

    .line 835
    :try_start_14c
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_150

    goto :goto_f5

    .line 837
    :catch_150
    move-exception v3

    goto :goto_f5

    .line 773
    .end local v10       #e:Ljava/lang/Exception;,
    .restart local v11       #id:I,
    .restart local v12       #name:Ljava/lang/String;,
    .restart local v13       #parsedEriEntries:I,
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    .restart local v18       #text:Ljava/lang/String;,
    :cond_152
    :try_start_152
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Parsing ERI file: found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CallPromptId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_170
    .catchall {:try_start_152 .. :try_end_170} :catchall_172
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_170} :catch_138

    goto/16 :goto_83

    .line 830
    .end local v11       #id:I,
    .end local v12       #name:Ljava/lang/String;,
    .end local v13       #parsedEriEntries:I,
    .end local v18       #text:Ljava/lang/String;,
    :catchall_172
    move-exception v3

    instance-of v4, v14, Landroid/content/res/XmlResourceParser;

    if-eqz v4, :cond_17c

    .line 831
    check-cast v14, Landroid/content/res/XmlResourceParser;

    .end local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 834
    :cond_17c
    if-eqz v16, :cond_181

    .line 835
    :try_start_17e
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_1e2

    .line 839
    :cond_181
    :goto_181
    throw v3

    .line 776
    .restart local v12       #name:Ljava/lang/String;,
    .restart local v13       #parsedEriEntries:I,
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    :cond_182
    :try_start_182
    const-string v3, "EriInfo"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 777
    const/4 v3, 0x0

    const-string v4, "RoamingIndicator"

    invoke-interface {v14, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 779
    .local v4, roamingIndicator:I
    const/4 v3, 0x0

    const-string v5, "IconIndex"

    invoke-interface {v14, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 780
    .local v5, iconIndex:I
    const/4 v3, 0x0

    const-string v6, "IconMode"

    invoke-interface {v14, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 781
    .local v6, iconMode:I
    const/4 v3, 0x0

    const-string v7, "EriText"

    invoke-interface {v14, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 798
    .local v7, eriText:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v8, "CallPromptId"

    invoke-interface {v14, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 800
    .local v8, callPromptId:I
    const/4 v3, 0x0

    const-string v9, "AlertId"

    invoke-interface {v14, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 801
    .local v9, alertId:I
    add-int/lit8 v13, v13, 0x1

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v10, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v3, Lcom/android/internal/telephony/cdma/EriInfo;

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1dd
    .catchall {:try_start_182 .. :try_end_1dd} :catchall_172
    .catch Ljava/lang/Exception; {:try_start_182 .. :try_end_1dd} :catch_138

    goto/16 :goto_83

    .line 837
    .end local v4       #roamingIndicator:I,
    .end local v5       #iconIndex:I,
    .end local v6       #iconMode:I,
    .end local v7       #eriText:Ljava/lang/String;,
    .end local v8       #callPromptId:I,
    .end local v9       #alertId:I,
    .end local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    :catch_1df
    move-exception v3

    goto/16 :goto_f5

    .end local v12       #name:Ljava/lang/String;,
    .end local v13       #parsedEriEntries:I,
    :catch_1e2
    move-exception v4

    goto :goto_181

    .line 738
    .end local v16       #stream:Ljava/io/FileInputStream;,
    .restart local v14       #parser:Lorg/xmlpull/v1/XmlPullParser;,
    .restart local v17       #stream:Ljava/io/FileInputStream;,
    :catch_1e4
    move-exception v3

    move-object v10, v3

    move-object/from16 v16, v17

    .end local v17       #stream:Ljava/io/FileInputStream;,
    .restart local v16       #stream:Ljava/io/FileInputStream;,
    goto/16 :goto_104

    .line 735
    .end local v16       #stream:Ljava/io/FileInputStream;,
    .restart local v17       #stream:Ljava/io/FileInputStream;,
    :catch_1ea
    move-exception v3

    move-object v10, v3

    move-object/from16 v16, v17

    .end local v17       #stream:Ljava/io/FileInputStream;,
    .restart local v16       #stream:Ljava/io/FileInputStream;,
    goto/16 :goto_f8
.end method

.method private xlateEriData([BLcom/android/internal/telephony/cdma/EriManager$EriFile;)V
    .registers 35
    .parameter "eri_data_ptr"
    .parameter "eri_ptr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 352
    new-instance v25, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 354
    .local v25, bis:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v28, 0x0

    .line 360
    .local v28, data_pos:I
    const/16 v31, 0x0

    .line 362
    .local v31, num_reserved_padbits:I
    const/16 v27, 0x0

    .line 366
    .local v27, crc_calc:C
    const/16 v3, 0x8

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 368
    add-int/lit8 v28, v28, 0x10

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    move v4, v0

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 384
    const/4 v3, 0x6

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 386
    add-int/lit8 v28, v28, 0x6

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    move v4, v0

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 394
    const/4 v3, 0x3

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 396
    add-int/lit8 v28, v28, 0x3

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    move v4, v0

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 404
    const/4 v3, 0x4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfIconImages:I

    .line 406
    add-int/lit8 v28, v28, 0x4

    .line 409
    const/4 v3, 0x3

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mIconImageType:I

    .line 411
    add-int/lit8 v28, v28, 0x3

    .line 414
    const/16 v29, 0x0

    .local v29, i:I
    :goto_8d
    const/4 v3, 0x3

    move/from16 v0, v29

    move v1, v3

    if-ge v0, v1, :cond_11c

    .line 422
    const-string v11, ""

    .line 425
    .local v11, textData:Ljava/lang/String;
    const/16 v3, 0x8

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    .line 427
    .local v5, reservedBits1:I
    add-int/lit8 v28, v28, 0x8

    .line 430
    const/4 v3, 0x4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 432
    .local v6, callPromptId:I
    add-int/lit8 v28, v28, 0x4

    .line 435
    const/4 v3, 0x4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v7

    .line 437
    .local v7, reservedBits2:I
    add-int/lit8 v28, v28, 0x4

    .line 440
    const/4 v3, 0x3

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v8

    .line 442
    .local v8, reservedBits3:I
    add-int/lit8 v28, v28, 0x3

    .line 445
    const/4 v3, 0x5

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 447
    .local v9, characterEncodingType:I
    add-int/lit8 v28, v28, 0x5

    .line 449
    packed-switch v9, :pswitch_data_29a

    .line 467
    :pswitch_cb
    const/16 v26, 0x0

    .line 472
    .local v26, char_bit_len:B
    :goto_cd
    const/16 v3, 0x8

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 474
    .local v10, amountOfTextData:I
    add-int/lit8 v28, v28, 0x8

    .line 477
    const/16 v30, 0x0

    .local v30, j:I
    :goto_da
    move/from16 v0, v30

    move v1, v10

    if-ge v0, v1, :cond_103

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 480
    add-int v28, v28, v26

    .line 477
    add-int/lit8 v30, v30, 0x1

    goto :goto_da

    .line 453
    .end local v10       #amountOfTextData:I,
    .end local v26       #char_bit_len:B,
    .end local v30       #j:I,
    :pswitch_fa
    const/16 v26, 0x8

    .line 454
    .restart local v26       #char_bit_len:B,
    goto :goto_cd

    .line 459
    .end local v26       #char_bit_len:B,
    :pswitch_fd
    const/16 v26, 0x8

    .line 460
    .restart local v26       #char_bit_len:B,
    goto :goto_cd

    .line 463
    .end local v26       #char_bit_len:B,
    :pswitch_100
    const/16 v26, 0x10

    .line 464
    .restart local v26       #char_bit_len:B,
    goto :goto_cd

    .line 483
    .restart local v10       #amountOfTextData:I,
    .restart local v30       #j:I,
    :cond_103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v12, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPrmptTable:Ljava/util/HashMap;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v3, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/internal/telephony/cdma/EriManager$EriPrmpt;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IIIIIILjava/lang/String;)V

    invoke-virtual {v12, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_8d

    .line 493
    .end local v5       #reservedBits1:I,
    .end local v6       #callPromptId:I,
    .end local v7       #reservedBits2:I,
    .end local v8       #reservedBits3:I,
    .end local v9       #characterEncodingType:I,
    .end local v10       #amountOfTextData:I,
    .end local v11       #textData:Ljava/lang/String;,
    .end local v26       #char_bit_len:B,
    .end local v30       #j:I,
    :cond_11c
    const/16 v29, 0x0

    :goto_11e
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    move v3, v0

    move/from16 v0, v29

    move v1, v3

    if-ge v0, v1, :cond_1be

    .line 498
    const-string v16, ""

    .line 505
    .local v16, eriText:Ljava/lang/String;
    const/16 v3, 0x8

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    .line 507
    .local v13, roamingIndicator:I
    add-int/lit8 v28, v28, 0x8

    .line 510
    const/4 v3, 0x4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    .line 512
    .local v14, iconIndex:I
    add-int/lit8 v28, v28, 0x4

    .line 515
    const/4 v3, 0x2

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v15

    .line 517
    .local v15, iconMode:I
    add-int/lit8 v28, v28, 0x2

    .line 520
    const/4 v3, 0x2

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    .line 522
    .restart local v6       #callPromptId:I,
    add-int/lit8 v28, v28, 0x2

    .line 525
    const/4 v3, 0x3

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18

    .line 527
    .local v18, alertId:I
    add-int/lit8 v28, v28, 0x3

    .line 530
    const/4 v3, 0x5

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v9

    .line 532
    .restart local v9       #characterEncodingType:I,
    add-int/lit8 v28, v28, 0x5

    .line 534
    packed-switch v9, :pswitch_data_2b0

    .line 552
    :pswitch_16a
    const/16 v26, 0x0

    .line 556
    .restart local v26       #char_bit_len:B,
    :goto_16c
    const/16 v3, 0x8

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 558
    .restart local v10       #amountOfTextData:I,
    add-int/lit8 v28, v28, 0x8

    .line 561
    const/16 v30, 0x0

    .restart local v30       #j:I,
    :goto_179
    move/from16 v0, v30

    move v1, v10

    if-ge v0, v1, :cond_1a5

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 564
    add-int v28, v28, v26

    .line 561
    add-int/lit8 v30, v30, 0x1

    goto :goto_179

    .line 538
    .end local v10       #amountOfTextData:I,
    .end local v26       #char_bit_len:B,
    .end local v30       #j:I,
    :pswitch_19c
    const/16 v26, 0x8

    .line 539
    .restart local v26       #char_bit_len:B,
    goto :goto_16c

    .line 544
    .end local v26       #char_bit_len:B,
    :pswitch_19f
    const/16 v26, 0x8

    .line 545
    .restart local v26       #char_bit_len:B,
    goto :goto_16c

    .line 548
    .end local v26       #char_bit_len:B,
    :pswitch_1a2
    const/16 v26, 0x10

    .line 549
    .restart local v26       #char_bit_len:B,
    goto :goto_16c

    .line 569
    .restart local v10       #amountOfTextData:I,
    .restart local v30       #j:I,
    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v12, Lcom/android/internal/telephony/cdma/EriInfo;

    move/from16 v17, v6

    invoke-direct/range {v12 .. v18}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    invoke-virtual {v3, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_11e

    .line 579
    .end local v6       #callPromptId:I,
    .end local v9       #characterEncodingType:I,
    .end local v10       #amountOfTextData:I,
    .end local v13       #roamingIndicator:I,
    .end local v14       #iconIndex:I,
    .end local v15       #iconMode:I,
    .end local v16       #eriText:Ljava/lang/String;,
    .end local v18       #alertId:I,
    .end local v26       #char_bit_len:B,
    .end local v30       #j:I,
    :cond_1be
    const/16 v29, 0x0

    :goto_1c0
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfIconImages:I

    move v3, v0

    move/from16 v0, v29

    move v1, v3

    if-ge v0, v1, :cond_230

    .line 584
    const-string v24, ""

    .line 587
    .local v24, iconFileName:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v21

    .line 589
    .local v21, imageId:I
    add-int/lit8 v28, v28, 0x4

    .line 592
    const/4 v3, 0x4

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v22

    .line 594
    .local v22, reservedBits:I
    add-int/lit8 v28, v28, 0x4

    .line 597
    const/16 v3, 0x8

    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v10

    .line 599
    .restart local v10       #amountOfTextData:I,
    add-int/lit8 v28, v28, 0x8

    .line 601
    const/16 v26, 0x8

    .line 604
    .restart local v26       #char_bit_len:B,
    const/16 v30, 0x0

    .restart local v30       #j:I,
    :goto_1ef
    move/from16 v0, v30

    move v1, v10

    if-ge v0, v1, :cond_212

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v25 .. v26}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 608
    add-int v28, v28, v26

    .line 604
    add-int/lit8 v30, v30, 0x1

    goto :goto_1ef

    .line 611
    :cond_212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mIconImgTable:Ljava/util/HashMap;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v19, Lcom/android/internal/telephony/cdma/EriManager$EriImg;

    move-object/from16 v20, p0

    move/from16 v23, v10

    invoke-direct/range {v19 .. v24}, Lcom/android/internal/telephony/cdma/EriManager$EriImg;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IIILjava/lang/String;)V

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    add-int/lit8 v29, v29, 0x1

    goto :goto_1c0

    .line 618
    .end local v10       #amountOfTextData:I,
    .end local v21       #imageId:I,
    .end local v22       #reservedBits:I,
    .end local v24       #iconFileName:Ljava/lang/String;,
    .end local v26       #char_bit_len:B,
    .end local v30       #j:I,
    :cond_230
    const/16 v3, 0x8

    rem-int/lit8 v4, v28, 0x8

    sub-int v31, v3, v4

    .line 619
    const/16 v3, 0x8

    move/from16 v0, v31

    move v1, v3

    if-ne v0, v1, :cond_23f

    .line 621
    const/16 v31, 0x0

    .line 625
    :cond_23f
    if-eqz v31, :cond_250

    .line 627
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mReservedPadBits:I

    .line 629
    add-int v28, v28, v31

    .line 636
    :cond_250
    const/16 v3, 0x8

    :try_start_252
    move-object/from16 v0, v25

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileCrc:I

    .line 640
    const/16 v27, 0x0

    .line 641
    div-int/lit8 v3, v28, 0x8

    int-to-char v3, v3

    move/from16 v0, v27

    move-object/from16 v1, p1

    move v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/cdma/EriManager$EriCrcCalculator;->crc_16_step(C[BC)C

    move-result v27

    .line 643
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileCrc:I

    move v3, v0
    :try_end_27d
    .catchall {:try_start_252 .. :try_end_27d} :catchall_291
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_252 .. :try_end_27d} :catch_289

    move/from16 v0, v27

    move v1, v3

    if-eq v0, v1, :cond_282

    .line 651
    :cond_282
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    .line 654
    :goto_288
    return-void

    .line 647
    :catch_289
    move-exception v3

    .line 651
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    goto :goto_288

    :catchall_291
    move-exception v3

    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    throw v3

    .line 449
    nop

    :pswitch_data_29a
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_cb
        :pswitch_fa
        :pswitch_fa
        :pswitch_100
        :pswitch_cb
        :pswitch_cb
        :pswitch_fd
        :pswitch_fd
    .end packed-switch

    .line 534
    :pswitch_data_2b0
    .packed-switch 0x0
        :pswitch_19f
        :pswitch_16a
        :pswitch_19c
        :pswitch_19c
        :pswitch_1a2
        :pswitch_16a
        :pswitch_16a
        :pswitch_19f
        :pswitch_19f
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 315
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    .line 317
    return-void
.end method

.method public getAlertId(II)I
    .registers 7
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    .line 1253
    .local v0, eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v0, :cond_8

    .line 1254
    const/4 v1, -0x1

    .line 1257
    :goto_7
    return v1

    .line 1256
    :cond_8
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eriInfo.mAlertId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mAlertId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    iget v1, v0, Lcom/android/internal/telephony/cdma/EriInfo;->mAlertId:I

    goto :goto_7
.end method

.method public getCdmaEriHomeSystems()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->indexofhomesystem:Ljava/lang/String;

    return-object v0
.end method

.method public getCdmaEriIconIndex(II)I
    .registers 6
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 1234
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCdmaEriIcon] IndexroamInd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  defRoamInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mEriIconIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .registers 6
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 1239
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCdmaEriIconMode] roamInd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  defRoamInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mEriIconMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .registers 6
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 1244
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCdmaEriText] roamInd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  defRoamInd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mEriIconText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriFileType()I
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .registers 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .registers 2

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    packed-switch v0, :pswitch_data_12

    .line 332
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    .line 335
    :goto_8
    return-void

    .line 323
    :pswitch_9
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    goto :goto_8

    .line 327
    :pswitch_d
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    goto :goto_8

    .line 321
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method

.method sendEriWrite(I)V
    .registers 6
    .parameter "eri_version"

    .prologue
    .line 1276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ERI_VERSION_WRITE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1277
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LG_SYS_VZW_ERI_VERSION : (sendEriWrite) ERI version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string/jumbo v1, "phoneEriVersionWrite"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1279
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1280
    return-void
.end method
