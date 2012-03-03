.class public Lcom/broadcom/bt/service/bpp/Bpp$STATUS;
.super Ljava/lang/Object;
.source "Bpp.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/bpp/Bpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STATUS"
.end annotation


# static fields
.field public static final CERR_ATS_O_VLS_NOT_SUPP:I = 0x40b

.field public static final CERR_BAD_REQ:I = 0x400

.field public static final CERR_CH_SET_NOT_SUPP:I = 0x40d

.field public static final CERR_COMPR_ERR:I = 0x410

.field public static final CERR_COMPR_NOT_SUPP:I = 0x40f

.field public static final CERR_CONFL_ATTRS:I = 0x40e

.field public static final CERR_DOC_ACC_ERR:I = 0x412

.field public static final CERR_DOC_FORM_ERR:I = 0x411

.field public static final CERR_DOC_FORM_NOT_SUPP:I = 0x40a

.field public static final CERR_FORBIDDEN:I = 0x401

.field public static final CERR_GONE:I = 0x407

.field public static final CERR_MD_NOT_LOADED:I = 0x418

.field public static final CERR_NOT_AUTHENTICATED:I = 0x402

.field public static final CERR_NOT_AUTHORIZED:I = 0x403

.field public static final CERR_NOT_FOUND:I = 0x406

.field public static final CERR_NOT_POSSIBLE:I = 0x404

.field public static final CERR_REQ_ENT_TOO_LONG:I = 0x408

.field public static final CERR_REQ_VAL_TOO_LONG:I = 0x409

.field public static final CERR_TIMEOUT:I = 0x405

.field public static final CERR_URI_SCH_NOT_SUPP:I = 0x40c

.field public static final MAX_OK_OPER_STATUS:I = 0x2

.field public static final OK:I = 0x0

.field public static final OK_CONFL_ATTRS:I = 0x2

.field public static final OK_IGN_OR_SUBST_ATTRS:I = 0x1

.field public static final SERR_BUSY:I = 0x507

.field public static final SERR_DEV_ERR:I = 0x504

.field public static final SERR_INT_ERR:I = 0x500

.field public static final SERR_JOB_CANC:I = 0x508

.field public static final SERR_MPLE_JOBS_NOT_SUPP:I = 0x509

.field public static final SERR_NOT_ACC_JOBS:I = 0x506

.field public static final SERR_OP_NOT_SUPP:I = 0x501

.field public static final SERR_SRV_UNAVAIL:I = 0x502

.field public static final SERR_TMP_ERR:I = 0x505

.field public static final SERR_VER_NOT_SUPP:I = 0x503

.field private static final prettyText:[Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OK"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OK - Attributes Modified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OK - Attributes Conflict"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Client Error - Bad Request"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Client Error - Forbidden"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Client Error - Not Authenticated"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Client Error - Not Authorized"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Client Error - Not Possible"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Client Error - Timeout"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Client Error - Not Found"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Client Error - Gone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Client Error - Request Entity too Large"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Client Error - Request Value too Long"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Client Error - Document Format not Supported"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Client Error - Attributes or Values not Supported"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Client Error - URI Scheme not Supported"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Client Error - Charset not Supported"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Client Error - Conflicting Attributes"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Client Error - Compression not Supported"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Client Error - Compression Error"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Client Error - Document Format Error"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Client Error - Document Access Error"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Client Error - Media Not Loaded"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Server Error - Internal Error"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Server Error - Operation not Supported"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Server Error - Service not Available"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Server Error - Version not Supported"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Server Error - Device Error"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Server Error - Temporary Error"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Server Error - Not Accepting Jobs"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Server Error - Busy"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Server Error - Job Cancelled"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Server Error - Multiple Document Jobs Not Supported"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "N/A"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getText(I)Ljava/lang/String;
    .registers 4
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 139
    sparse-switch p0, :sswitch_data_fa

    .line 173
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    sget-object v1, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_c
    return-object v0

    .line 140
    :sswitch_d
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_c

    .line 141
    :sswitch_13
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_c

    .line 142
    :sswitch_18
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_c

    .line 143
    :sswitch_1e
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_c

    .line 144
    :sswitch_24
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_c

    .line 145
    :sswitch_2a
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_c

    .line 146
    :sswitch_30
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    goto :goto_c

    .line 147
    :sswitch_36
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    goto :goto_c

    .line 148
    :sswitch_3c
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    goto :goto_c

    .line 149
    :sswitch_43
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    goto :goto_c

    .line 150
    :sswitch_4a
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    goto :goto_c

    .line 151
    :sswitch_51
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    goto :goto_c

    .line 152
    :sswitch_58
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    goto :goto_c

    .line 153
    :sswitch_5f
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    goto :goto_c

    .line 154
    :sswitch_66
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    goto :goto_c

    .line 155
    :sswitch_6d
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    goto :goto_c

    .line 156
    :sswitch_74
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    goto :goto_c

    .line 157
    :sswitch_7b
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    goto :goto_c

    .line 158
    :sswitch_82
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    goto :goto_c

    .line 159
    :sswitch_89
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 160
    :sswitch_91
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 161
    :sswitch_99
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 162
    :sswitch_a1
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x16

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 163
    :sswitch_a9
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x17

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 164
    :sswitch_b1
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x18

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 165
    :sswitch_b9
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x19

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 166
    :sswitch_c1
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 167
    :sswitch_c9
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 168
    :sswitch_d1
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 169
    :sswitch_d9
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x1d

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 170
    :sswitch_e1
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x1e

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 171
    :sswitch_e9
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x1f

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 172
    :sswitch_f1
    sget-object v0, Lcom/broadcom/bt/service/bpp/Bpp$STATUS;->prettyText:[Ljava/lang/String;

    const/16 v1, 0x20

    aget-object v0, v0, v1

    goto/16 :goto_c

    .line 139
    nop

    :sswitch_data_fa
    .sparse-switch
        0x0 -> :sswitch_d
        0x1 -> :sswitch_13
        0x2 -> :sswitch_18
        0x400 -> :sswitch_1e
        0x401 -> :sswitch_24
        0x402 -> :sswitch_2a
        0x403 -> :sswitch_30
        0x404 -> :sswitch_36
        0x405 -> :sswitch_3c
        0x406 -> :sswitch_43
        0x407 -> :sswitch_4a
        0x408 -> :sswitch_51
        0x409 -> :sswitch_58
        0x40a -> :sswitch_5f
        0x40b -> :sswitch_66
        0x40c -> :sswitch_6d
        0x40d -> :sswitch_74
        0x40e -> :sswitch_7b
        0x40f -> :sswitch_82
        0x410 -> :sswitch_89
        0x411 -> :sswitch_91
        0x412 -> :sswitch_99
        0x418 -> :sswitch_a1
        0x500 -> :sswitch_a9
        0x501 -> :sswitch_b1
        0x502 -> :sswitch_b9
        0x503 -> :sswitch_c1
        0x504 -> :sswitch_c9
        0x505 -> :sswitch_d1
        0x506 -> :sswitch_d9
        0x507 -> :sswitch_e1
        0x508 -> :sswitch_e9
        0x509 -> :sswitch_f1
    .end sparse-switch
.end method
