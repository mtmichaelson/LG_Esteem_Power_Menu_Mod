.class public Landroid/pim/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;,
        Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    }
.end annotation


# static fields
.field public static final CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri; = null

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field public static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final VCARD_TEST_AUTHORITY:Ljava/lang/String; = "com.android.unit_tests.vcard"

.field public static final VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final VCARD_TYPE_STRING_DOCOMO:Ljava/lang/String; = "docomo"

.field private static final sContactsProjection:[Ljava/lang/String;

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field private IS_PBAP_FILTER_ADR:Z

.field private IS_PBAP_FILTER_BDAY:Z

.field private IS_PBAP_FILTER_EMAIL:Z

.field private IS_PBAP_FILTER_NICKNAME:Z

.field private IS_PBAP_FILTER_NOTE:Z

.field private IS_PBAP_FILTER_ORG:Z

.field private IS_PBAP_FILTER_PHOTO:Z

.field private IS_PBAP_FILTER_TEL:Z

.field private IS_PBAP_FILTER_TITLE:Z

.field private IS_PBAP_FILTER_URL:Z

.field mAppParam:[B

.field private final mCareHandlerErrors:Z

.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIdColumn:I

.field private final mIsDoCoMo:Z

.field private mTerminateIsCalled:Z

.field private final mVCardType:I



# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 131
    const-string v0, "content://com.android.unit_tests.vcard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardComposer;->VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri;

    .line 133
    sget-object v0, Landroid/pim/vcard/VCardComposer;->VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardComposer;->CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    .line 140
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/pim/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 296
    sget v0, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 297
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "vcardType"

    .prologue
    .line 303
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 304
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"

    .prologue
    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 308
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 13
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "careHandlerErrors"

    .prologue
    const-string v7, "Career-specific \""

    const-string v6, "\" was not found (as usual). "

    const-string v3, "UTF-8"

    const-string v5, "SHIFT_JIS"

    const-string v4, "VCardComposer"

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const-string v2, "No error"

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 281
    const/16 v2, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    .line 330
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    .line 331
    iput p2, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    .line 332
    iput-boolean p4, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    .line 333
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 335
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 336
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    .line 338
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "UTF-8"

    move-object p3, v3

    .line 339
    :cond_39
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "UTF-8"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8a

    :cond_47
    const/4 v2, 0x1

    move v1, v2

    .line 342
    .local v1, shouldAppendCharsetParam:Z
    :goto_49
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez v2, :cond_4f

    if-eqz v1, :cond_118

    .line 343
    :cond_4f
    const-string v2, "SHIFT_JIS"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 344
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v2, :cond_99

    .line 346
    :try_start_5b
    const-string v2, "SHIFT_JIS"

    const-string v3, "docomo"

    invoke-static {v2, v3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_66
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_5b .. :try_end_66} :catch_8d

    move-result-object p3

    .line 363
    :goto_67
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    .line 396
    :goto_69
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use the charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 339
    .end local v1       #shouldAppendCharsetParam:Z,
    :cond_8a
    const/4 v2, 0x0

    move v1, v2

    goto :goto_49

    .line 347
    .restart local v1       #shouldAppendCharsetParam:Z,
    :catch_8d
    move-exception v2

    move-object v0, v2

    .line 348
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    const-string v2, "DoCoMo-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string p3, "SHIFT_JIS"

    .line 352
    goto :goto_67

    .line 355
    .end local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    :cond_99
    :try_start_99
    const-string v2, "SHIFT_JIS"

    invoke-static {v2}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_a2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_99 .. :try_end_a2} :catch_a4

    move-result-object p3

    goto :goto_67

    .line 356
    :catch_a4
    move-exception v2

    move-object v0, v2

    .line 357
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    const-string v2, "VCardComposer"

    const-string v2, "Career-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string p3, "SHIFT_JIS"

    goto :goto_67

    .line 365
    .end local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    :cond_b0
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is used while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SHIFT_JIS"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is needed to be used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 369
    const-string v2, "SHIFT_JIS"

    iput-object v5, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_69

    .line 372
    :cond_e5
    :try_start_e5
    invoke-static {p3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_ec
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_e5 .. :try_end_ec} :catch_f1

    move-result-object p3

    .line 378
    :goto_ed
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_69

    .line 373
    :catch_f1
    move-exception v2

    move-object v0, v2

    .line 374
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Career-specific \""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found (as usual). "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Use it as is."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 382
    .end local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    :cond_118
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 383
    const-string v2, "UTF-8"

    iput-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_69

    .line 386
    :cond_124
    :try_start_124
    invoke-static {p3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_12b
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_124 .. :try_end_12b} :catch_130

    move-result-object p3

    .line 392
    :goto_12c
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_69

    .line 387
    :catch_130
    move-exception v2

    move-object v0, v2

    .line 388
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Career-specific \""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found (as usual). "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Use it as is."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12c
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z[B)V
    .registers 15
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "careHandlerErrors"
    .parameter "pceFilter"

    .prologue
    const/4 v8, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "SHIFT_JIS"

    const-string v6, "VCardComposer"

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const-string v2, "No error"

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 281
    const/16 v2, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    .line 420
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    .line 421
    iput p2, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    .line 422
    iput-boolean p4, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    .line 423
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 425
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    .line 428
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "UTF-8"

    move-object p3, v2

    .line 429
    :cond_36
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string v2, "UTF-8"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_102

    :cond_44
    move v1, v5

    .line 432
    .local v1, shouldAppendCharsetParam:Z
    :goto_45
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez v2, :cond_4b

    if-eqz v1, :cond_194

    .line 433
    :cond_4b
    const-string v2, "SHIFT_JIS"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 434
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v2, :cond_112

    .line 436
    :try_start_57
    const-string v2, "SHIFT_JIS"

    const-string v3, "docomo"

    invoke-static {v2, v3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_62
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_57 .. :try_end_62} :catch_105

    move-result-object p3

    .line 453
    :goto_63
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    .line 486
    :goto_65
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use the charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iput-object p5, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    .line 494
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1d3

    move v2, v5

    :goto_92
    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_PHOTO:Z

    .line 495
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1d6

    move v2, v5

    :goto_9f
    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_BDAY:Z

    .line 496
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_1d9

    move v2, v5

    :goto_ac
    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_ADR:Z

    .line 498
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1dc

    move v2, v5

    :goto_b9
    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_TEL:Z

    .line 500
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    const/16 v3, 0x8

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1df

    move v2, v5

    :goto_c6
    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_EMAIL:Z

    .line 504
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    const/16 v3, 0x8

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1e2

    move v2, v5

    :goto_d3
    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_TITLE:Z

    .line 509
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    aget-byte v2, v2, v8

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1e5

    move v2, v5

    :goto_de
    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_ORG:Z

    .line 510
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    aget-byte v2, v2, v8

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1e8

    move v2, v5

    :goto_e9
    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_NOTE:Z

    .line 513
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    aget-byte v2, v2, v8

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1eb

    move v2, v5

    :goto_f4
    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_URL:Z

    .line 516
    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mAppParam:[B

    aget-byte v2, v2, v8

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1ee

    move v2, v5

    :goto_ff
    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_NICKNAME:Z

    .line 517
    return-void

    .end local v1       #shouldAppendCharsetParam:Z,
    :cond_102
    move v1, v4

    .line 429
    goto/16 :goto_45

    .line 437
    .restart local v1       #shouldAppendCharsetParam:Z,
    :catch_105
    move-exception v2

    move-object v0, v2

    .line 438
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    const-string v2, "DoCoMo-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string p3, "SHIFT_JIS"

    .line 442
    goto/16 :goto_63

    .line 445
    .end local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    :cond_112
    :try_start_112
    const-string v2, "SHIFT_JIS"

    invoke-static {v2}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_11b
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_112 .. :try_end_11b} :catch_11e

    move-result-object p3

    goto/16 :goto_63

    .line 446
    :catch_11e
    move-exception v2

    move-object v0, v2

    .line 447
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    const-string v2, "VCardComposer"

    const-string v2, "Career-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string p3, "SHIFT_JIS"

    goto/16 :goto_63

    .line 455
    .end local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    :cond_12b
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is used while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SHIFT_JIS"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is needed to be used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_161

    .line 459
    const-string v2, "SHIFT_JIS"

    iput-object v7, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_65

    .line 462
    :cond_161
    :try_start_161
    invoke-static {p3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_168
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_161 .. :try_end_168} :catch_16d

    move-result-object p3

    .line 468
    :goto_169
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_65

    .line 463
    :catch_16d
    move-exception v2

    move-object v0, v2

    .line 464
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Career-specific \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found (as usual). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Use it as is."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_169

    .line 472
    .end local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    :cond_194
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    .line 473
    const-string v2, "UTF-8"

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_65

    .line 476
    :cond_1a0
    :try_start_1a0
    invoke-static {p3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1a7
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1a0 .. :try_end_1a7} :catch_1ac

    move-result-object p3

    .line 482
    :goto_1a8
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_65

    .line 477
    :catch_1ac
    move-exception v2

    move-object v0, v2

    .line 478
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Career-specific \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found (as usual). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Use it as is."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a8

    .end local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;,
    :cond_1d3
    move v2, v4

    .line 494
    goto/16 :goto_92

    :cond_1d6
    move v2, v4

    .line 495
    goto/16 :goto_9f

    :cond_1d9
    move v2, v4

    .line 496
    goto/16 :goto_ac

    :cond_1dc
    move v2, v4

    .line 498
    goto/16 :goto_b9

    :cond_1df
    move v2, v4

    .line 500
    goto/16 :goto_c6

    :cond_1e2
    move v2, v4

    .line 504
    goto/16 :goto_d3

    :cond_1e5
    move v2, v4

    .line 509
    goto/16 :goto_de

    :cond_1e8
    move v2, v4

    .line 510
    goto/16 :goto_e9

    :cond_1eb
    move v2, v4

    .line 513
    goto/16 :goto_f4

    :cond_1ee
    move v2, v4

    .line 516
    goto/16 :goto_ff
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 5
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 316
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ[B)V
    .registers 11
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"
    .parameter "pceFilter"

    .prologue
    .line 405
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z[B)V

    .line 406
    return-void
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 892
    const-string v0, "VCardComposer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void
.end method

.method static synthetic access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/pim/vcard/VCardComposer;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    return v0
.end method

.method static synthetic access$300(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .registers 26
    .parameter "contactId"
    .parameter "getEntityIteratorMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 657
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 662
    .local v12, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/16 v16, 0x0

    .line 664
    .local v16, entityIterator:Landroid/content/EntityIterator;
    :try_start_7
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 668
    .local v4, uri:Landroid/net/Uri;
    const-string v21, "contact_id=?"

    .line 669
    .local v21, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v7, v3
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_7c

    .line 670
    .local v7, selectionArgs:[Ljava/lang/String;
    if-eqz p2, :cond_103

    .line 673
    const/4 v3, 0x0

    const/4 v5, 0x5

    :try_start_25
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v8, v0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const-string v6, "contact_id=?"

    .end local v4       #uri:Landroid/net/Uri;,
    aput-object v6, v5, v4

    const/4 v4, 0x3

    aput-object v7, v5, v4

    const/4 v4, 0x4

    const/4 v6, 0x0

    aput-object v6, v5, v4

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/content/EntityIterator;

    move-object/from16 v16, v0
    :try_end_4c
    .catchall {:try_start_25 .. :try_end_4c} :catchall_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_4c} :catch_5d
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_4c} :catch_83
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_4c} :catch_a2

    .line 703
    :goto_4c
    if-nez v16, :cond_121

    .line 704
    :try_start_4e
    const-string v3, "VCardComposer"

    const-string v4, "EntityIterator is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v3, ""
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_7c

    .line 730
    if-eqz v16, :cond_5c

    .line 731
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    .line 735
    :cond_5c
    :goto_5c
    return-object v3

    .line 675
    :catch_5d
    move-exception v3

    move-object v13, v3

    .line 676
    .local v13, e:Ljava/lang/IllegalArgumentException;
    :try_start_5f
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_5f .. :try_end_7b} :catchall_7c

    goto :goto_4c

    .line 730
    .end local v7       #selectionArgs:[Ljava/lang/String;,
    .end local v13       #e:Ljava/lang/IllegalArgumentException;,
    .end local v21       #selection:Ljava/lang/String;,
    :catchall_7c
    move-exception v3

    if-eqz v16, :cond_82

    .line 731
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    :cond_82
    throw v3

    .line 678
    .restart local v7       #selectionArgs:[Ljava/lang/String;,
    .restart local v21       #selection:Ljava/lang/String;,
    :catch_83
    move-exception v3

    move-object v13, v3

    .line 679
    .local v13, e:Ljava/lang/IllegalAccessException;
    :try_start_85
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalAccessException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 681
    .end local v13       #e:Ljava/lang/IllegalAccessException;,
    :catch_a2
    move-exception v3

    move-object v13, v3

    .line 682
    .local v13, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "VCardComposer"

    const-string v4, "InvocationTargetException has been thrown: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    .line 684
    .local v22, stackTraceElements:[Ljava/lang/StackTraceElement;
    move-object/from16 v9, v22

    .local v9, arr$:[Ljava/lang/StackTraceElement;
    move-object v0, v9

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_bb
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_e2

    aget-object v14, v9, v17

    .line 685
    .local v14, element:Ljava/lang/StackTraceElement;
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    add-int/lit8 v17, v17, 0x1

    goto :goto_bb

    .line 687
    .end local v14       #element:Ljava/lang/StackTraceElement;,
    :cond_e2
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvocationTargetException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_103
    .catchall {:try_start_85 .. :try_end_103} :catchall_7c

    .line 694
    .end local v9       #arr$:[Ljava/lang/StackTraceElement;,
    .end local v13       #e:Ljava/lang/reflect/InvocationTargetException;,
    .end local v17       #i$:I,
    .end local v19       #len$:I,
    .end local v22       #stackTraceElements:[Ljava/lang/StackTraceElement;,
    .restart local v4       #uri:Landroid/net/Uri;,
    :cond_103
    :try_start_103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const/4 v5, 0x0

    const-string v6, "contact_id=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    :try_end_113
    .catchall {:try_start_103 .. :try_end_113} :catchall_7c
    .catch Ljava/lang/SecurityException; {:try_start_103 .. :try_end_113} :catch_116

    move-result-object v16

    goto/16 :goto_4c

    .line 696
    :catch_116
    move-exception v3

    move-object v13, v3

    .line 697
    .local v13, e:Ljava/lang/SecurityException;
    :try_start_118
    const-string v3, ""
    :try_end_11a
    .catchall {:try_start_118 .. :try_end_11a} :catchall_7c

    .line 730
    if-eqz v16, :cond_5c

    .line 731
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_5c

    .line 708
    .end local v4       #uri:Landroid/net/Uri;,
    .end local v13       #e:Ljava/lang/SecurityException;,
    :cond_121
    :try_start_121
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_14b

    .line 709
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data does not exist. contactId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v3, ""
    :try_end_144
    .catchall {:try_start_121 .. :try_end_144} :catchall_7c

    .line 730
    if-eqz v16, :cond_5c

    .line 731
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_5c

    .line 713
    :cond_14b
    :try_start_14b
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_193

    .line 714
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Entity;

    .line 715
    .local v15, entity:Landroid/content/Entity;
    invoke-virtual {v15}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_15f
    :goto_15f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity$NamedContentValues;

    .line 716
    .local v20, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v10, v0

    .line 717
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 718
    .local v18, key:Ljava/lang/String;
    if-eqz v18, :cond_15f

    .line 719
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 721
    .local v11, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v11, :cond_18f

    .line 722
    new-instance v11, Ljava/util/ArrayList;

    .end local v11       #contentValuesList:Ljava/util/List;,, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .restart local v11       #contentValuesList:Ljava/util/List;,, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object v0, v12

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    :cond_18f
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_192
    .catchall {:try_start_14b .. :try_end_192} :catchall_7c

    goto :goto_15f

    .line 730
    .end local v10       #contentValues:Landroid/content/ContentValues;,
    .end local v11       #contentValuesList:Ljava/util/List;,, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v15       #entity:Landroid/content/Entity;,
    .end local v17       #i$:Ljava/util/Iterator;,
    .end local v18       #key:Ljava/lang/String;,
    .end local v20       #namedContentValues:Landroid/content/Entity$NamedContentValues;,
    :cond_193
    if-eqz v16, :cond_198

    .line 731
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    .line 735
    :cond_198
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5c
.end method


# virtual methods
.method public addHandler(Landroid/pim/vcard/VCardComposer$OneEntryHandler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 524
    if-eqz p1, :cond_7

    .line 525
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_7
    return-void
.end method

.method public buildVCard(Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const-string/jumbo v7, "vnd.android.cursor.item/nickname"

    const-string/jumbo v6, "vnd.android.cursor.item/name"

    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    const-string v3, "VCardComposer"

    .line 743
    if-nez p1, :cond_1a

    .line 744
    const-string v1, "VCardComposer"

    const-string v1, "The given map is null. Ignore and return empty String"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v1, ""

    .line 829
    .end local p0       
    :goto_19
    return-object v1

    .line 747
    .restart local p0       
    :cond_1a
    new-instance v0, Landroid/pim/vcard/VCardBuilder;

    iget v1, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/pim/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 749
    .local v0, builder:Landroid/pim/vcard/VCardBuilder;
    iget v1, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_f5

    .line 750
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 751
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendPhones(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 752
    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_PHOTO:Z

    if-eqz v1, :cond_4b

    .line 754
    const-string v1, "[BTUI] ### createOneEntryInternal() : IS_PBAP_FILTER_PHOTO"

    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardComposer;->BtUiLog(Ljava/lang/String;)V

    .line 758
    :cond_4b
    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_BDAY:Z

    if-eqz v1, :cond_60

    .line 760
    const-string v1, "[BTUI] ### createOneEntryInternal() : IS_PBAP_FILTER_BDAY"

    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardComposer;->BtUiLog(Ljava/lang/String;)V

    .line 761
    const-string/jumbo v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 763
    :cond_60
    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_ADR:Z

    if-eqz v1, :cond_75

    .line 765
    const-string v1, "[BTUI] ### createOneEntryInternal() : IS_PBAP_FILTER_ADR"

    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardComposer;->BtUiLog(Ljava/lang/String;)V

    .line 766
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 768
    :cond_75
    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_EMAIL:Z

    if-eqz v1, :cond_8a

    .line 770
    const-string v1, "[BTUI] ### createOneEntryInternal() : IS_PBAP_FILTER_EMAIL"

    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardComposer;->BtUiLog(Ljava/lang/String;)V

    .line 771
    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 773
    :cond_8a
    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_TITLE:Z

    if-nez v1, :cond_92

    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_ORG:Z

    if-eqz v1, :cond_b0

    .line 775
    :cond_92
    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_TITLE:Z

    if-eqz v1, :cond_9b

    const-string v1, "[BTUI] ### createOneEntryInternal() : IS_PBAP_FILTER_TITLE"

    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardComposer;->BtUiLog(Ljava/lang/String;)V

    .line 776
    :cond_9b
    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_ORG:Z

    if-eqz v1, :cond_a4

    const-string v1, "[BTUI] ### createOneEntryInternal() : IS_PBAP_FILTER_ORG"

    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardComposer;->BtUiLog(Ljava/lang/String;)V

    .line 777
    :cond_a4
    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 779
    :cond_b0
    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_NOTE:Z

    if-eqz v1, :cond_c5

    .line 781
    const-string v1, "[BTUI] ### createOneEntryInternal() : IS_PBAP_FILTER_NOTE"

    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardComposer;->BtUiLog(Ljava/lang/String;)V

    .line 782
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 784
    :cond_c5
    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_URL:Z

    if-eqz v1, :cond_da

    .line 786
    const-string v1, "[BTUI] ### createOneEntryInternal() : IS_PBAP_FILTER_URL"

    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardComposer;->BtUiLog(Ljava/lang/String;)V

    .line 787
    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 789
    :cond_da
    iget-boolean v1, p0, Landroid/pim/vcard/VCardComposer;->IS_PBAP_FILTER_NICKNAME:Z

    if-eqz v1, :cond_ef

    .line 791
    const-string v1, "[BTUI] ### createOneEntryInternal() : IS_PBAP_FILTER_NICKNAME"

    invoke-direct {p0, v1}, Landroid/pim/vcard/VCardComposer;->BtUiLog(Ljava/lang/String;)V

    .line 792
    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/pim/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 829
    :cond_ef
    :goto_ef
    invoke-virtual {v0}, Landroid/pim/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_19

    .line 797
    .restart local p0       
    :cond_f5
    const-string v1, "VCardComposer"

    const-string/jumbo v1, "not Filtering vcard "

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendPhones(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 805
    iget v1, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    if-nez v1, :cond_16a

    .line 806
    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/pim/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 808
    :cond_16a
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/pim/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Landroid/pim/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.item/im"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Landroid/pim/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Landroid/pim/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    goto/16 :goto_ef
.end method

.method public createOneEntry()Z
    .registers 2

    .prologue
    .line 602
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Z
    .registers 13
    .parameter "getEntityIteratorMethod"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "VCardComposer"

    .line 610
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_10

    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 611
    :cond_10
    const-string v6, "The vCard composer object is not correctly initialized"

    iput-object v6, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    move v6, v9

    .line 652
    :goto_15
    return v6

    .line 616
    :cond_16
    :try_start_16
    iget v6, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    if-ltz v6, :cond_54

    .line 617
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Landroid/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_af
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_16 .. :try_end_25} :catch_75
    .catch Ljava/lang/OutOfMemoryError; {:try_start_16 .. :try_end_25} :catch_9b

    move-result-object v5

    .line 634
    .local v5, vcard:Ljava/lang/String;
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 638
    iget-boolean v6, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    if-eqz v6, :cond_b6

    .line 639
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 641
    .local v2, finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 642
    .local v3, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v3, v5}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    move v6, v9

    .line 643
    goto :goto_15

    .line 620
    .end local v2       #finishedList:Ljava/util/List;,, "Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v3       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;,
    .end local v4       #i$:Ljava/util/Iterator;,
    .end local v5       #vcard:Ljava/lang/String;,
    :cond_54
    :try_start_54
    const-string v6, "VCardComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect mIdColumn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_af
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_54 .. :try_end_6e} :catch_75
    .catch Ljava/lang/OutOfMemoryError; {:try_start_54 .. :try_end_6e} :catch_9b

    .line 634
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v10

    goto :goto_15

    .line 623
    :catch_75
    move-exception v6

    move-object v0, v6

    .line 624
    .local v0, e:Landroid/pim/vcard/exception/VCardException;
    :try_start_77
    const-string v6, "VCardComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VCardException has been thrown: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/pim/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_77 .. :try_end_93} :catchall_af

    .line 634
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v9

    goto/16 :goto_15

    .line 626
    .end local v0       #e:Landroid/pim/vcard/exception/VCardException;,
    :catch_9b
    move-exception v6

    move-object v1, v6

    .line 629
    .local v1, error:Ljava/lang/OutOfMemoryError;
    :try_start_9d
    const-string v6, "VCardComposer"

    const-string v7, "OutOfMemoryError occured. Ignore the entry."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_af

    .line 634
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v10

    goto/16 :goto_15

    .end local v1       #error:Ljava/lang/OutOfMemoryError;,
    :catchall_af
    move-exception v6

    iget-object v7, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    throw v6

    .line 647
    .restart local v5       #vcard:Ljava/lang/String;,
    :cond_b6
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;,
    :goto_bc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 648
    .restart local v3       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;,
    invoke-interface {v3, v5}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_bc

    .end local v3       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;,
    :cond_cc
    move v6, v10

    .line 652
    goto/16 :goto_15
.end method

.method public finalize()V
    .registers 3

    .prologue
    .line 852
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_f

    .line 853
    const-string v0, "VCardComposer"

    const-string/jumbo v1, "terminate() is not called yet. We call it in finalize() step."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer;->terminate()V

    .line 856
    :cond_f
    return-void
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 864
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_d

    .line 865
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v0, 0x0

    .line 868
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_c
.end method

.method public getErrorReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 887
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 534
    invoke-virtual {p0, v0, v0}, Landroid/pim/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .parameter "contentUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 546
    if-nez p1, :cond_4

    .line 547
    const/4 v0, 0x0

    .line 598
    :goto_3
    return v0

    .line 550
    :cond_4
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_43

    .line 551
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 553
    .local v8, finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 554
    .local v9, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 555
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_31
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 556
    .local v7, finished:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v7}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_31

    .line 558
    .end local v7       #finished:Landroid/pim/vcard/VCardComposer$OneEntryHandler;,
    :cond_41
    const/4 v0, 0x0

    goto :goto_3

    .line 563
    .end local v8       #finishedList:Ljava/util/List;,, "Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v9       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;,
    .end local v10       #i$:Ljava/util/Iterator;,
    :cond_43
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;,
    :goto_49
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 564
    .restart local v9       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;,
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_49

    .line 569
    .end local v9       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;,
    :cond_5b
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Landroid/pim/vcard/VCardComposer;->CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 571
    :cond_6b
    sget-object v2, Landroid/pim/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    .line 576
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 579
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8a

    .line 580
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 581
    const/4 v0, 0x0

    goto :goto_3

    .line 573
    .end local v2       #projection:[Ljava/lang/String;,
    :cond_83
    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 574
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 584
    .restart local v2       #projection:[Ljava/lang/String;,
    :cond_8a
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer;->getCount()I

    move-result v0

    if-eqz v0, :cond_98

    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 586
    :cond_98
    :try_start_98
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_cd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_98 .. :try_end_9d} :catch_a7

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 591
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 593
    .end local v2       #projection:[Ljava/lang/String;,
    :goto_a4
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 587
    .restart local v2       #projection:[Ljava/lang/String;,
    :catch_a7
    move-exception v0

    move-object v6, v0

    .line 588
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_a9
    const-string v0, "VCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    .end local v2       #projection:[Ljava/lang/String;,
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c5
    .catchall {:try_start_a9 .. :try_end_c5} :catchall_cd

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 591
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_a4

    .line 590
    .end local v6       #e:Landroid/database/sqlite/SQLiteException;,
    :catchall_cd
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 591
    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    throw v0

    .line 596
    .restart local v2       #projection:[Ljava/lang/String;,
    :cond_d6
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    .line 598
    const/4 v0, 0x1

    goto/16 :goto_3
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 538
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/pim/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .registers 3

    .prologue
    .line 876
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_d

    .line 877
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/4 v0, 0x0

    .line 880
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_c
.end method

.method public terminate()V
    .registers 7

    .prologue
    .line 834
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 835
    .local v1, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v1}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_6

    .line 838
    .end local v1       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;,
    :cond_16
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_22

    .line 840
    :try_start_1a
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1f} :catch_26

    .line 844
    :goto_1f
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 847
    :cond_22
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/pim/vcard/VCardComposer;->mTerminateIsCalled:Z

    .line 848
    return-void

    .line 841
    :catch_26
    move-exception v3

    move-object v0, v3

    .line 842
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException on Cursor#close(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method
