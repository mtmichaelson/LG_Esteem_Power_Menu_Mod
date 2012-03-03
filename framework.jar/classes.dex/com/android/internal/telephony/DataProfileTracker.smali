.class public Lcom/android/internal/telephony/DataProfileTracker;
.super Landroid/os/Handler;
.source "DataProfileTracker.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;
    }
.end annotation


# static fields
.field private static final APN_ENABLED_ON:I = 0x1

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final EVENT_DATA_PROFILE_DB_CHANGED:I = 0x1

.field private static final EVENT_GET_DATA_CALL_PROFILE_DONE:I = 0x3

.field private static final EVENT_READ_MODEM_PROFILES:I = 0x2

.field private static final IP_VERSION_SUPPORT_TYPE_DUAL:I = 0x2

.field private static final IP_VERSION_SUPPORT_TYPE_IPV4:I = 0x0

.field private static final IP_VERSION_SUPPORT_TYPE_IPV6:I = 0x1

.field private static final IP_VERSION_SUPPORT_TYPE_NOT_AVAILABLE:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "DATA"

.field private static final OMH_MAX_PRIORITY:I = 0xff

.field private static final PDN_ID_ADMIN:I = 0x2

.field private static final PDN_ID_IMS:I = 0x1

.field private static final PDN_ID_INTERNET:I = 0x3

.field private static final PDN_ID_NOT_AVAILABLE:I = 0x0

.field private static final PDN_ID_VZWAPP:I = 0x4

.field static final PREFER_DEFAULT_APN_URI:Landroid/net/Uri;



# instance fields
.field dsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/DataServiceType;",
            "Lcom/android/internal/telephony/DataServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ipVersionNotSupportIpv4:Z

.field private ipVersionNotSupportIpv6:Z

.field private mAllDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field mCanSetDefaultPreferredApn:Z

.field private mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDataDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

.field private mDpObserver:Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;

.field private mOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mOmhEnabled:Z

.field private mOmhReadProfileContext:I

.field private mOmhReadProfileCount:I

.field mOmhServicePriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/DataServiceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorNumeric:Ljava/lang/String;

.field mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

.field private mTempOmhDataProfilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 899
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/DataProfileTracker;->PREFER_DEFAULT_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 12
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 172
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 88
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mDataDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    .line 89
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    .line 104
    iput v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileContext:I

    .line 109
    iput v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    .line 111
    const-string/jumbo v4, "persist.omh.enabled"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhEnabled:Z

    .line 902
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    .line 903
    iput-boolean v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 181
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    .line 182
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_44
    if-ge v1, v2, :cond_57

    aget-object v3, v0, v1

    .line 183
    .local v3, t:Lcom/android/internal/telephony/DataServiceType;
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/internal/telephony/DataServiceInfo;

    iget-object v6, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/android/internal/telephony/DataServiceInfo;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/DataServiceType;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 186
    .end local v3       #t:Lcom/android/internal/telephony/DataServiceType;,
    :cond_57
    iget-boolean v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhEnabled:Z

    if-eqz v4, :cond_62

    .line 190
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    .line 196
    :cond_62
    new-instance v4, Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;

    invoke-direct {v4, p0, p0}, Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;-><init>(Lcom/android/internal/telephony/DataProfileTracker;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mDpObserver:Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;

    .line 197
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/internal/telephony/DataProfileTracker;->mDpObserver:Lcom/android/internal/telephony/DataProfileTracker$DataProfileDbObserver;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 208
    const-string/jumbo v4, "persist.telephony.support_TSIM"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 211
    const-string v4, "We support TestSIM for LAP Test - Read from Build.prop"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 212
    const-string/jumbo v4, "ro.telephony.Oper"

    const-string v5, "00101"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 218
    :cond_8f
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 219
    return-void
.end method

.method private addServiceTypeToUnSpecified()V
    .registers 10

    .prologue
    .line 561
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    .local v1, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v5, v1

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v4, v3

    .end local v3       #i$:I,
    .local v4, i$:I
    :goto_7
    if-ge v4, v5, :cond_58

    aget-object v6, v1, v4

    .line 562
    .local v6, t:Lcom/android/internal/telephony/DataServiceType;
    iget-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    .line 564
    iget-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4       #i$:I,
    .local v3, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataProfile;

    .line 566
    .local v2, dp:Lcom/android/internal/telephony/DataProfile;
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataProfileOmh;->getDataProfileTypeModem()Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_IMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    if-ne v7, v8, :cond_19

    .line 570
    check-cast v2, Lcom/android/internal/telephony/DataProfileOmh;

    .end local v2       #dp:Lcom/android/internal/telephony/DataProfile;,
    invoke-static {v6}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V

    .line 572
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMH] Service Type added to UNSPECIFIED is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 561
    .end local v3       #i$:Ljava/util/Iterator;,
    :cond_54
    add-int/lit8 v3, v4, 0x1

    .local v3, i$:I
    move v4, v3

    .end local v3       #i$:I,
    .restart local v4       #i$:I,
    goto :goto_7

    .line 579
    .end local v6       #t:Lcom/android/internal/telephony/DataServiceType;,
    :cond_58
    return-void
.end method

.method private createAllDataProfileList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 11
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfileVo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1244
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfileVo;>;"
    const/4 v5, 0x0

    .line 1247
    .local v5, bearer:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1250
    :cond_c
    new-instance v0, Lcom/android/internal/telephony/DataProfileVo;

    const-string v1, "apnid"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "apn"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ipversion"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "enabled"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "inactivitytime"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/DataProfileVo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 1259
    .local v0, dv:Lcom/android/internal/telephony/DataProfileVo;
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1264
    .end local v0       #dv:Lcom/android/internal/telephony/DataProfileVo;,
    :cond_57
    return-object v8
.end method

.method private createDataProfileList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .registers 25
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v22, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/16 v21, 0x0

    .line 721
    .local v21, mIMSApn:Lcom/android/internal/telephony/ApnSetting;
    const/16 v19, 0x0

    .line 722
    .local v19, mAdminApn:Lcom/android/internal/telephony/ApnSetting;
    const/16 v20, 0x0

    .line 723
    .local v20, mIMS:Z
    const/16 v18, 0x0

    .line 725
    .local v18, mAdmin:Z
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_175

    .line 727
    :cond_13
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->parseServiceTypeString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 730
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v4, "numeric"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "proxy"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "port"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "password"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "ipversion"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "inactivitytime"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-direct/range {v2 .. v17}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)V

    .line 751
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->parseServiceTypes(Ljava/lang/String;)[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/ApnSetting;->serviceTypes:[Lcom/android/internal/telephony/DataServiceType;

    .line 756
    const-string v3, "enabled"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_176

    const/4 v3, 0x1

    :goto_148
    iput-boolean v3, v2, Lcom/android/internal/telephony/ApnSetting;->apnEnabled:Z

    .line 758
    iget-boolean v3, v2, Lcom/android/internal/telephony/ApnSetting;->apnEnabled:Z

    if-nez v3, :cond_178

    .line 759
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is disabled from apn setting, so we can\'t add this apn up to data profile list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 788
    :goto_16f
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_13

    .line 801
    .end local v2       #apn:Lcom/android/internal/telephony/ApnSetting;,
    .end local v15       #types:[Ljava/lang/String;,
    :cond_175
    return-object v22

    .line 756
    .restart local v2       #apn:Lcom/android/internal/telephony/ApnSetting;,
    .restart local v15       #types:[Ljava/lang/String;,
    :cond_176
    const/4 v3, 0x0

    goto :goto_148

    .line 766
    :cond_178
    const-string v3, "apnid"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 787
    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16f
.end method

.method private getApnFromDataProfile(Lcom/android/internal/telephony/ApnSetting;)Ljava/lang/String;
    .registers 3
    .parameter "apnSetting"

    .prologue
    .line 1082
    iget-object v0, p1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    return-object v0
.end method

.method private getDuplicateProfile(Lcom/android/internal/telephony/DataProfile;)Lcom/android/internal/telephony/DataProfileOmh;
    .registers 7
    .parameter "dp"

    .prologue
    .line 546
    iget-object v3, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataProfile;

    .line 547
    .local v1, dataProfile:Lcom/android/internal/telephony/DataProfile;
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileOmh;->getProfileId()I

    move-result v4

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileOmh;->getProfileId()I

    move-result v3

    if-ne v4, v3, :cond_6

    .line 549
    check-cast v1, Lcom/android/internal/telephony/DataProfileOmh;

    .end local v1       #dataProfile:Lcom/android/internal/telephony/DataProfile;,
    move-object v3, v1

    .line 552
    :goto_27
    return-object v3

    :cond_28
    const/4 v3, 0x0

    goto :goto_27
.end method

.method private getInactivityTimerFromDataProfile(Lcom/android/internal/telephony/ApnSetting;)I
    .registers 4
    .parameter "apnSetting"

    .prologue
    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inactivity Timer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->getInactivityTimer()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->getInactivityTimer()I

    move-result v0

    return v0
.end method

.method private getIpTypeFromDataProfile(Lcom/android/internal/telephony/DataProfile;)I
    .registers 7
    .parameter "dp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1024
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/DataProfile;->canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-eqz v2, :cond_1a

    move v0, v4

    .line 1025
    .local v0, isAvailableIpv4:Z
    :goto_b
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/DataProfile;->canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move v1, v4

    .line 1027
    .local v1, isAvailableIpv6:Z
    :goto_14
    if-eqz v0, :cond_1e

    if-eqz v1, :cond_1e

    .line 1029
    const/4 v2, 0x2

    .line 1038
    :goto_19
    return v2

    .end local v0       #isAvailableIpv4:Z,
    .end local v1       #isAvailableIpv6:Z,
    :cond_1a
    move v0, v3

    .line 1024
    goto :goto_b

    .restart local v0       #isAvailableIpv4:Z,
    :cond_1c
    move v1, v3

    .line 1025
    goto :goto_14

    .line 1030
    .restart local v1       #isAvailableIpv6:Z,
    :cond_1e
    if-eqz v0, :cond_22

    move v2, v3

    .line 1032
    goto :goto_19

    .line 1033
    :cond_22
    if-eqz v1, :cond_26

    move v2, v4

    .line 1035
    goto :goto_19

    .line 1038
    :cond_26
    const/4 v2, -0x1

    goto :goto_19
.end method

.method private getPdnIdFromApnType(Lcom/android/internal/telephony/ApnSetting;)I
    .registers 3
    .parameter "apnSetting"

    .prologue
    .line 1005
    const-string v0, "ims"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1007
    const/4 v0, 0x1

    .line 1019
    :goto_9
    return v0

    .line 1008
    :cond_a
    const-string v0, "admin"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1010
    const/4 v0, 0x2

    goto :goto_9

    .line 1011
    :cond_14
    const-string v0, "internet"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1013
    const/4 v0, 0x3

    goto :goto_9

    .line 1014
    :cond_1e
    const-string v0, "mpcsapp"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1016
    const/4 v0, 0x4

    goto :goto_9

    .line 1019
    :cond_28
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getPreferredDefaultApnFromDb(Ljava/util/ArrayList;)Lcom/android/internal/telephony/ApnSetting;
    .registers 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;)",
            "Lcom/android/internal/telephony/ApnSetting;"
        }
    .end annotation

    .prologue
    .local p1, defaultDataProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v14, "_id"

    .line 913
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, v4

    .line 951
    :goto_c
    return-object v1

    .line 917
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileTracker;->PREFER_DEFAULT_APN_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v14, v3, v12

    const-string/jumbo v5, "name"

    aput-object v5, v3, v13

    const/4 v5, 0x2

    const-string v6, "apn"

    aput-object v6, v3, v5

    const-string/jumbo v6, "name ASC"

    move-object v5, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 921
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_76

    .line 922
    iput-boolean v13, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    .line 927
    :goto_32
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    if-eqz v1, :cond_79

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_79

    .line 928
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 929
    const-string v1, "_id"

    invoke-interface {v8, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 930
    .local v11, pos:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_4d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/DataProfile;

    .line 931
    .local v10, p:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v10}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v1, v2, :cond_4d

    .line 932
    move-object v0, v10

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    move-object v7, v0

    .line 933
    .local v7, apn:Lcom/android/internal/telephony/ApnSetting;
    iget v1, v7, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v1, v11, :cond_4d

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 940
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v1, v7

    .line 941
    goto :goto_c

    .line 924
    .end local v7       #apn:Lcom/android/internal/telephony/ApnSetting;,
    .end local v9       #i$:Ljava/util/Iterator;,
    .end local v10       #p:Lcom/android/internal/telephony/DataProfile;,
    .end local v11       #pos:I,
    :cond_76
    iput-boolean v12, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    goto :goto_32

    .line 947
    :cond_79
    if-eqz v8, :cond_7e

    .line 948
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7e
    move-object v1, v4

    .line 951
    goto :goto_c
.end method

.method private isApnDifferent(Lcom/android/internal/telephony/ApnSetting;Lcom/android/internal/telephony/ApnSetting;)Z
    .registers 6
    .parameter "oldApn"
    .parameter "newApn"

    .prologue
    .line 973
    const/4 v0, 0x1

    .line 974
    .local v0, different:Z
    if-eqz p2, :cond_14

    if-eqz p1, :cond_14

    .line 975
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->toHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnSetting;->toHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 976
    const/4 v0, 0x0

    .line 979
    :cond_14
    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1381
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DPT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1389
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DPT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1377
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DPT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1385
    const-string v0, "DATA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DPT] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return-void
.end method

.method private onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V
    .registers 13
    .parameter "ar"
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    .line 468
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1e

    .line 469
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in onOmhProfileDone:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->loge(Ljava/lang/String;)V

    .line 537
    :cond_1d
    :goto_1d
    return-void

    .line 473
    :cond_1e
    iget v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileContext:I

    if-ne p2, v7, :cond_1d

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v1, dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v1       #dataProfileListModem:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 483
    .restart local v1       #dataProfileListModem:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 485
    .local v5, modemProfile:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    iget v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    sub-int/2addr v7, v9

    iput v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    .line 487
    if-eqz v1, :cond_d1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d1

    .line 491
    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataServiceType()Lcom/android/internal/telephony/DataServiceType;

    move-result-object v3

    .line 493
    .local v3, dst:Lcom/android/internal/telephony/DataServiceType;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMH] # profiles returned from modem:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 496
    iget-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/DataProfileTracker;->omhListGetArbitratedPriority(Ljava/util/ArrayList;Lcom/android/internal/telephony/DataServiceType;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_75
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataProfile;

    .line 501
    .local v2, dp:Lcom/android/internal/telephony/DataProfile;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMH] omh data profile from modem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 504
    move-object v0, v2

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v7, v0

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/DataProfileOmh;->setDataProfileTypeModem(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V

    .line 510
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/DataProfileTracker;->getDuplicateProfile(Lcom/android/internal/telephony/DataProfile;)Lcom/android/internal/telephony/DataProfileOmh;

    move-result-object v6

    .line 511
    .local v6, omhDuplicatedp:Lcom/android/internal/telephony/DataProfileOmh;
    if-nez v6, :cond_b3

    .line 512
    iget-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    check-cast v2, Lcom/android/internal/telephony/DataProfileOmh;

    .end local v2       #dp:Lcom/android/internal/telephony/DataProfile;,
    invoke-static {v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_75

    .line 522
    .restart local v2       #dp:Lcom/android/internal/telephony/DataProfile;,
    :cond_b3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OMH] Duplicate Profile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 523
    invoke-static {v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataProfileOmh;->addServiceType(Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;)V

    goto :goto_75

    .line 530
    .end local v2       #dp:Lcom/android/internal/telephony/DataProfile;,
    .end local v3       #dst:Lcom/android/internal/telephony/DataServiceType;,
    .end local v4       #i$:Ljava/util/Iterator;,
    .end local v6       #omhDuplicatedp:Lcom/android/internal/telephony/DataProfileOmh;,
    :cond_d1
    iget v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    if-nez v7, :cond_1d

    .line 531
    const-string v7, "[OMH] Modem omh profile read complete."

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfileTracker;->addServiceTypeToUnSpecified()V

    .line 533
    iget-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    .line 534
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1d
.end method

.method private onReadDataprofilesFromModem()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 439
    iget-boolean v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhEnabled:Z

    if-eqz v4, :cond_59

    .line 440
    iget v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileContext:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileContext:I

    .line 442
    iput v8, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    .line 444
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 445
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mTempOmhDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 446
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 449
    invoke-static {}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->values()[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_22
    if-ge v1, v2, :cond_59

    aget-object v3, v0, v1

    .line 450
    .local v3, p:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading profiles for:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 451
    iget v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileCount:I

    .line 452
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v5

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhReadProfileContext:I

    invoke-virtual {p0, v6, v7, v8, v3}, Lcom/android/internal/telephony/DataProfileTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallProfile(ILandroid/os/Message;)V

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 459
    .end local v0       #arr$:[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;,
    .end local v1       #i$:I,
    .end local v2       #len$:I,
    .end local v3       #p:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;,
    :cond_59
    return-void
.end method

.method private parseServiceTypeString(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .parameter "types"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 687
    if-eqz p1, :cond_a

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 688
    :cond_a
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 689
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 693
    :goto_12
    return-object v0

    .line 691
    .end local v0       #result:[Ljava/lang/String;,
    :cond_13
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;,
    goto :goto_12
.end method

.method private parseServiceTypes(Ljava/lang/String;)[Lcom/android/internal/telephony/DataServiceType;
    .registers 11
    .parameter "types"

    .prologue
    .line 697
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataServiceType;>;"
    if-eqz p1, :cond_f

    const-string v8, ""

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 699
    :cond_f
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v8

    .line 711
    .end local p0       
    :goto_13
    return-object v8

    .line 701
    .restart local p0       
    :cond_14
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 702
    .local v5, tempString:[Ljava/lang/String;
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1d
    if-ge v2, v3, :cond_31

    aget-object v6, v1, v2

    .line 703
    .local v6, ts:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v8

    if-eqz v8, :cond_2e

    .line 704
    invoke-static {v6}, Lcom/android/internal/telephony/DataServiceType;->apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 708
    .end local v6       #ts:Ljava/lang/String;,
    :cond_31
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v7, v8, [Lcom/android/internal/telephony/DataServiceType;

    .line 709
    .local v7, typeArray:[Lcom/android/internal/telephony/DataServiceType;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, [Lcom/android/internal/telephony/DataServiceType;

    move-object v0, p0

    check-cast v0, [Lcom/android/internal/telephony/DataServiceType;

    move-object v7, v0

    move-object v8, v7

    .line 711
    goto :goto_13
.end method

.method private declared-synchronized reloadAllDataProfiles(Ljava/lang/String;)Z
    .registers 25
    .parameter "reason"

    .prologue
    .line 298
    monitor-enter p0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reloading profile db for operator = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]. reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 300
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v10, allDataProfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_7b

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "numeric = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 308
    .local v7, selection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 311
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_7b

    .line 312
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_78

    .line 313
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->createDataProfileList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v10

    .line 315
    :cond_78
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 319
    .end local v7       #selection:Ljava/lang/String;,
    .end local v13       #cursor:Landroid/database/Cursor;,
    :cond_7b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhEnabled:Z

    move v4, v0

    if-eqz v4, :cond_cc

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    move-object v4, v0

    if-eqz v4, :cond_cc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_cc

    .line 325
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/DataProfileTracker;->updateDataServiceTypePrioritiesForOmh()V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhDataProfilesList:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_a0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cc

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/DataProfile;

    .line 328
    .local v14, dp:Lcom/android/internal/telephony/DataProfile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataProfile from Modem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logd(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c8
    .catchall {:try_start_1 .. :try_end_c8} :catchall_c9

    goto :goto_a0

    .line 298
    .end local v10       #allDataProfiles:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    .end local v14       #dp:Lcom/android/internal/telephony/DataProfile;,
    .end local v16       #i$:Ljava/util/Iterator;,
    :catchall_c9
    move-exception v4

    monitor-exit p0

    throw v4

    .line 341
    .restart local v10       #allDataProfiles:Ljava/util/ArrayList;,, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    :cond_cc
    :try_start_cc
    new-instance v12, Lcom/android/internal/telephony/CdmaNAI;

    invoke-direct {v12}, Lcom/android/internal/telephony/CdmaNAI;-><init>()V

    .line 342
    .local v12, cdmaNaiProfile:Lcom/android/internal/telephony/CdmaNAI;
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v11

    .local v11, arr$:[Lcom/android/internal/telephony/DataServiceType;
    move-object v0, v11

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_de
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_fa

    aget-object v22, v11, v16

    .line 350
    .local v22, t:Lcom/android/internal/telephony/DataServiceType;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataServiceInfo;->clearDataProfiles()V

    .line 349
    add-int/lit8 v16, v16, 0x1

    goto :goto_de

    .line 353
    .end local v22       #t:Lcom/android/internal/telephony/DataServiceType;,
    :cond_fa
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v16       #i$:I,
    :cond_fe
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_157

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/DataProfile;

    .line 354
    .restart local v14       #dp:Lcom/android/internal/telephony/DataProfile;,
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "new dp found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/internal/telephony/DataProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v11

    move-object v0, v11

    array-length v0, v0

    move/from16 v18, v0

    const/16 v17, 0x0

    .local v17, i$:I
    :goto_132
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_fe

    aget-object v22, v11, v17

    .line 356
    .restart local v22       #t:Lcom/android/internal/telephony/DataServiceType;,
    move-object v0, v14

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v4

    if-eqz v4, :cond_154

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v4, v14}, Lcom/android/internal/telephony/DataServiceInfo;->addDataProfile(Lcom/android/internal/telephony/DataProfile;)V

    .line 355
    :cond_154
    add-int/lit8 v17, v17, 0x1

    goto :goto_132

    .line 368
    .end local v14       #dp:Lcom/android/internal/telephony/DataProfile;,
    .end local v17       #i$:I,
    .end local v22       #t:Lcom/android/internal/telephony/DataServiceType;,
    :cond_157
    const-string v21, ""

    .line 369
    .local v21, oldHash:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_162
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/DataProfile;

    .line 370
    .restart local v14       #dp:Lcom/android/internal/telephony/DataProfile;,
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/internal/telephony/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_162

    .line 372
    .end local v14       #dp:Lcom/android/internal/telephony/DataProfile;,
    :cond_18d
    const-string v19, ""

    .line 373
    .local v19, newHash:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_193
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1be

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/DataProfile;

    .line 374
    .restart local v14       #dp:Lcom/android/internal/telephony/DataProfile;,
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Lcom/android/internal/telephony/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_193

    .line 377
    .end local v14       #dp:Lcom/android/internal/telephony/DataProfile;,
    :cond_1be
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    .line 379
    const/4 v15, 0x1

    .line 380
    .local v15, hasProfileDbChanged:Z
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1cf

    .line 381
    const/4 v15, 0x0

    .line 387
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataServiceInfo;->getDataProfiles()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->getPreferredDefaultApnFromDb(Ljava/util/ArrayList;)Lcom/android/internal/telephony/ApnSetting;

    move-result-object v20

    .line 392
    .local v20, newPreferredApn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileTracker;->isApnDifferent(Lcom/android/internal/telephony/ApnSetting;Lcom/android/internal/telephony/ApnSetting;)Z

    move-result v4

    if-eqz v4, :cond_207

    .line 393
    const-string/jumbo v4, "preferred apn has changed"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 394
    const/4 v15, 0x1

    .line 395
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    .line 398
    :cond_207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasProfileDbChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 400
    if-eqz v15, :cond_239

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/DataProfileTracker;->sendPdnTable()V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/DataProfileTracker;->mDataDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    move-object v4, v0

    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V
    :try_end_239
    .catchall {:try_start_cc .. :try_end_239} :catchall_c9

    .line 410
    :cond_239
    monitor-exit p0

    return v15
.end method

.method private setDataProfilValidCheck(Lcom/android/internal/telephony/DataProfileVo;)Z
    .registers 6
    .parameter "updateApnInfomation"

    .prologue
    const-string v3, "RA"

    .line 1327
    const/4 v0, 0x0

    .line 1329
    .local v0, validCheck:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnIpType()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_27

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnIpType()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_27

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnIpType()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4andIPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_8f

    .line 1333
    :cond_27
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnClass()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->ims:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v2

    if-eq v1, v2, :cond_57

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnClass()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->internet:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v2

    if-eq v1, v2, :cond_57

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnClass()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->admin:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v2

    if-eq v1, v2, :cond_57

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnClass()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->vzwapp:Lcom/android/internal/telephony/DataProfileVo$apnClassType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileVo$apnClassType;->getClassInt()I

    move-result v2

    if-ne v1, v2, :cond_87

    .line 1338
    :cond_57
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnEnable()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileVo$apnEnable;->Enable:Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileVo$apnEnable;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_6f

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnEnable()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/DataProfileVo$apnEnable;->Disable:Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataProfileVo$apnEnable;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_7f

    .line 1341
    :cond_6f
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnBearer()I

    move-result v1

    if-nez v1, :cond_77

    .line 1342
    const/4 v0, 0x1

    .line 1355
    :goto_76
    return v0

    .line 1344
    :cond_77
    const-string v1, "RA"

    const-string v1, "apnInfomation Bearer not Valid"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 1347
    :cond_7f
    const-string v1, "RA"

    const-string v1, "apnInfomation Enable/Disable not Valid"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 1350
    :cond_87
    const-string v1, "RA"

    const-string v1, "apnInfomation apnClass not Valid"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76

    .line 1353
    :cond_8f
    const-string v1, "RA"

    const-string v1, "apnInfomation apnIpType not Valid"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_76
.end method

.method private setPreferredDefaultApnToDb(Lcom/android/internal/telephony/ApnSetting;)V
    .registers 6
    .parameter "apn"

    .prologue
    const/4 v3, 0x0

    .line 956
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCanSetDefaultPreferredApn:Z

    if-nez v2, :cond_6

    .line 967
    :cond_5
    :goto_5
    return-void

    .line 959
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 960
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/DataProfileTracker;->PREFER_DEFAULT_APN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 962
    if-eqz p1, :cond_5

    .line 963
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 964
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget v3, p1, Lcom/android/internal/telephony/ApnSetting;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 965
    sget-object v2, Lcom/android/internal/telephony/DataProfileTracker;->PREFER_DEFAULT_APN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_5
.end method

.method private updateDataServiceTypePrioritiesForOmh()V
    .registers 8

    .prologue
    .line 419
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_3a

    aget-object v4, v0, v1

    .line 420
    .local v4, t:Lcom/android/internal/telephony/DataServiceType;
    iget-object v5, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/DataProfileTracker;->mapOmhPriorityToAndroidPriority(Lcom/android/internal/telephony/DataServiceType;Z)I

    move-result v3

    .line 421
    .local v3, p:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OMH] Setting service priority: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/DataServiceType;->setPriority(I)V

    .line 419
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 424
    .end local v3       #p:I,
    .end local v4       #t:Lcom/android/internal/telephony/DataServiceType;,
    :cond_3a
    return-void
.end method


# virtual methods
.method protected GetServiceTypeFromPDNID(I)Lcom/android/internal/telephony/DataServiceType;
    .registers 4
    .parameter "id"

    .prologue
    .line 1102
    packed-switch p1, :pswitch_data_28

    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " GetServiceTypeFromPDNID : Wrong ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 1114
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    :goto_1b
    return-object v0

    .line 1105
    :pswitch_1c
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_1b

    .line 1107
    :pswitch_1f
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_1b

    .line 1109
    :pswitch_22
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_1b

    .line 1111
    :pswitch_25
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_1b

    .line 1102
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public checkConnectionState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .registers 7
    .parameter "ds"
    .parameter "ipv"

    .prologue
    const/4 v3, 0x0

    .line 1188
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataServiceInfo;

    .line 1194
    .local v1, dsInfo:Lcom/android/internal/telephony/DataServiceInfo;
    if-nez v1, :cond_d

    move v2, v3

    .line 1206
    :goto_c
    return v2

    .line 1199
    :cond_d
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getActiveDataConnection(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 1200
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-nez v0, :cond_15

    move v2, v3

    .line 1201
    goto :goto_c

    .line 1203
    :cond_15
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->isActive()Z

    move-result v2

    if-nez v2, :cond_1d

    move v2, v3

    .line 1204
    goto :goto_c

    .line 1206
    :cond_1d
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 223
    return-void
.end method

.method getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;
    .registers 4
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getActiveDataConnection(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    return-object v0
.end method

.method public getAllDataApnProfiles()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfileVo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1218
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1220
    .local v6, allDataProfiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfileVo;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    if-eqz v0, :cond_43

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1226
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1229
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_43

    .line 1230
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 1231
    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->createAllDataProfileList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1233
    :cond_40
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1236
    .end local v3       #selection:Ljava/lang/String;,
    .end local v7       #cursor:Landroid/database/Cursor;,
    :cond_43
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_47
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/DataProfileVo;

    .line 1237
    .local v9, vo:Lcom/android/internal/telephony/DataProfileVo;
    const-string v0, "RA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllDataApnProfiles{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataProfileVo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 1240
    .end local v9       #vo:Lcom/android/internal/telephony/DataProfileVo;,
    :cond_76
    return-object v6
.end method

.method getCurrentDataProfileList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMCCMNC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1370
    const-string v0, "NONE"

    .line 1371
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    goto :goto_6
.end method

.method getNextWorkingDataProfile(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;
    .registers 6
    .parameter "ds"
    .parameter "dpt"
    .parameter "ipv"

    .prologue
    .line 856
    sget-object v0, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne p2, v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v0, :cond_27

    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p3, v0, :cond_27

    .line 864
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->isWorking(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 867
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    .line 871
    .end local p0       
    :goto_26
    return-object v0

    .restart local p0       
    :cond_27
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/DataServiceInfo;->getNextWorkingDataProfile(Lcom/android/internal/telephony/DataProfile$DataProfileType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    goto :goto_26
.end method

.method getRetryManager(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/RetryManager;
    .registers 4
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getRetryManager(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v0

    return-object v0
.end method

.method getState(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 4
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->getState(Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 277
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unhandled msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->logw(Ljava/lang/String;)V

    .line 290
    :goto_1e
    return-void

    .line 279
    :pswitch_1f
    const-string v0, "apnChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->reloadAllDataProfiles(Ljava/lang/String;)Z

    goto :goto_1e

    .line 282
    :pswitch_25
    invoke-direct {p0}, Lcom/android/internal/telephony/DataProfileTracker;->onReadDataprofilesFromModem()V

    goto :goto_1e

    .line 285
    :pswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->onGetDataCallProfileDone(Landroid/os/AsyncResult;I)V

    goto :goto_1e

    .line 277
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method

.method public isAnyDataProfileAvailable(Lcom/android/internal/telephony/DataProfile$DataProfileType;)Z
    .registers 6
    .parameter "dpt"

    .prologue
    .line 586
    const/4 v2, 0x0

    .line 587
    .local v2, ret:Z
    iget-object v3, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .line 588
    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v3

    if-ne v3, p1, :cond_7

    .line 589
    const/4 v2, 0x1

    .line 593
    .end local v0       #dp:Lcom/android/internal/telephony/DataProfile;,
    :cond_1a
    return v2
.end method

.method public isCurrentStateDisconnecting(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .registers 5
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 1073
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/DataProfileTracker;->getActiveDataConnection(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 1074
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-nez v0, :cond_8

    .line 1075
    const/4 v1, 0x0

    .line 1076
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->isCurrentStateDisconnecting()Z

    move-result v1

    goto :goto_7
.end method

.method isDataProfilesLoadedForOperator(Ljava/lang/String;)Z
    .registers 3
    .parameter "numeric"

    .prologue
    .line 597
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    if-eqz v0, :cond_10

    :cond_6
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isIpvTypeDual(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 14
    .parameter "ds"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1044
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfileTracker;->getCurrentDataProfileList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1045
    .local v6, latestDataProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v3, 0x1

    .line 1046
    .local v3, ipvTypeDual:Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataProfile;

    .line 1048
    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v8, v9, :cond_b

    .line 1051
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    move-object v8, v0

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/DataProfileTracker;->getPdnIdFromApnType(Lcom/android/internal/telephony/ApnSetting;)I

    move-result v7

    .line 1052
    .local v7, pdnId:I
    if-eqz v7, :cond_b

    .line 1055
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataProfileTracker;->GetServiceTypeFromPDNID(I)Lcom/android/internal/telephony/DataServiceType;

    move-result-object v8

    if-ne v8, p1, :cond_b

    .line 1056
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->isIpvSupportFail()Z

    move-result v8

    if-eqz v8, :cond_37

    .line 1057
    const/4 v3, 0x0

    .line 1069
    .end local v1       #dp:Lcom/android/internal/telephony/DataProfile;,
    .end local v7       #pdnId:I,
    :cond_36
    return v3

    .line 1060
    .restart local v1       #dp:Lcom/android/internal/telephony/DataProfile;,
    .restart local v7       #pdnId:I,
    :cond_37
    sget-object v8, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/DataProfile;->canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v8

    if-eqz v8, :cond_4f

    move v4, v11

    .line 1061
    .local v4, isAvailableIpv4:Z
    :goto_40
    sget-object v8, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/DataProfile;->canSupportIpVersion(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v8

    if-eqz v8, :cond_51

    move v5, v11

    .line 1063
    .local v5, isAvailableIpv6:Z
    :goto_49
    if-eqz v4, :cond_53

    if-eqz v5, :cond_53

    .line 1064
    const/4 v3, 0x1

    goto :goto_b

    .end local v4       #isAvailableIpv4:Z,
    .end local v5       #isAvailableIpv6:Z,
    :cond_4f
    move v4, v10

    .line 1060
    goto :goto_40

    .restart local v4       #isAvailableIpv4:Z,
    :cond_51
    move v5, v10

    .line 1061
    goto :goto_49

    .line 1066
    .restart local v5       #isAvailableIpv6:Z,
    :cond_53
    const/4 v3, 0x0

    goto :goto_b
.end method

.method isOmhEnabled()Z
    .registers 2

    .prologue
    .line 1362
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhEnabled:Z

    return v0
.end method

.method isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 3
    .parameter "ds"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->isServiceTypeActive()Z

    move-result v0

    return v0
.end method

.method isServiceTypeActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Z
    .registers 4
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->isServiceTypeActive(Lcom/android/internal/telephony/Phone$IPVersion;)Z

    move-result v0

    return v0
.end method

.method isServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 3
    .parameter "ds"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->isDataServiceTypeEnabled()Z

    move-result v0

    return v0
.end method

.method public mapOmhPriorityToAndroidPriority(Lcom/android/internal/telephony/DataServiceType;Z)I
    .registers 6
    .parameter "t"
    .parameter "isOmhProfileProvisioned"

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, mappedPriority:I
    if-eqz p2, :cond_13

    .line 235
    const/16 v1, 0xff

    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOmhServicePriorityMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v0, v1, v2

    .line 238
    :cond_13
    return v0
.end method

.method public omhListGetArbitratedPriority(Ljava/util/ArrayList;Lcom/android/internal/telephony/DataServiceType;)I
    .registers 9
    .parameter
    .parameter "ds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;",
            "Lcom/android/internal/telephony/DataServiceType;",
            ")I"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, dataProfileListModem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    const/4 v3, 0x0

    .line 249
    .local v3, profile:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataProfile;

    .line 250
    .local v1, dp:Lcom/android/internal/telephony/DataProfile;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataProfileOmh;->isValidPriority()Z

    move-result v4

    if-nez v4, :cond_21

    .line 251
    const-string v4, "[OMH] Invalid priority... skipping"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DataProfileTracker;->logw(Ljava/lang/String;)V

    goto :goto_5

    .line 255
    :cond_21
    if-nez v3, :cond_25

    .line 256
    move-object v3, v1

    goto :goto_5

    .line 259
    :cond_25
    sget-object v4, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    if-ne p2, v4, :cond_3d

    .line 262
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileOmh;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataProfileOmh;->isPriorityLower(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    move-object v3, v1

    :cond_3c
    goto :goto_5

    .line 266
    :cond_3d
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v4, v0

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/DataProfileOmh;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataProfileOmh;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/DataProfileOmh;->isPriorityHigher(I)Z

    move-result v4

    if-eqz v4, :cond_50

    move-object v3, v1

    :cond_50
    goto :goto_5

    .line 271
    .end local v1       #dp:Lcom/android/internal/telephony/DataProfile;,
    :cond_51
    check-cast v3, Lcom/android/internal/telephony/DataProfileOmh;

    .end local v3       #profile:Lcom/android/internal/telephony/DataProfile;,
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfileOmh;->getPriority()I

    move-result v4

    return v4
.end method

.method public readDataprofilesFromModem()V
    .registers 2

    .prologue
    .line 430
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->sendMessage(Landroid/os/Message;)Z

    .line 431
    return-void
.end method

.method registerForDataProfileDbChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 6
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 887
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 888
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mDataDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 889
    return-void
.end method

.method public resetAllProfilesAsNotWorking()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 647
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_22

    .line 648
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .line 649
    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 650
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    goto :goto_b

    .line 653
    .end local v0       #dp:Lcom/android/internal/telephony/DataProfile;,
    .end local v1       #i$:Ljava/util/Iterator;,
    :cond_22
    return-void
.end method

.method public resetAllProfilesAsWorking()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 617
    const-string v2, "Reset Failed DataConnection!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 619
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    .line 620
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .line 621
    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 622
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    goto :goto_10

    .line 625
    .end local v0       #dp:Lcom/android/internal/telephony/DataProfile;,
    .end local v1       #i$:Ljava/util/Iterator;,
    :cond_27
    return-void
.end method

.method public resetAllRetryCounter()V
    .registers 7

    .prologue
    .line 658
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_6
    if-ge v3, v4, :cond_14

    aget-object v1, v0, v3

    .line 659
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v5, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataServiceInfo;

    .line 660
    .local v2, dsInfo:Lcom/android/internal/telephony/DataServiceInfo;
    if-nez v2, :cond_15

    .line 663
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    .end local v2       #dsInfo:Lcom/android/internal/telephony/DataServiceInfo;,
    :cond_14
    return-void

    .line 661
    .restart local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    .restart local v2       #dsInfo:Lcom/android/internal/telephony/DataServiceInfo;,
    :cond_15
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataServiceInfo;->resetDsRetryCounter()V

    .line 658
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method resetAllServiceStates()V
    .registers 6

    .prologue
    .line 670
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/DataServiceType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_18

    aget-object v1, v0, v2

    .line 671
    .local v1, ds:Lcom/android/internal/telephony/DataServiceType;
    iget-object v4, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataServiceInfo;->resetServiceConnectionState()V

    .line 670
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 673
    .end local v1       #ds:Lcom/android/internal/telephony/DataServiceType;,
    :cond_18
    return-void
.end method

.method public resetProfilesAsWorking(Lcom/android/internal/telephony/DataServiceType;)V
    .registers 6
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 631
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    .line 632
    iget-object v2, p0, Lcom/android/internal/telephony/DataProfileTracker;->mAllDataProfilesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataProfile;

    .line 634
    .local v0, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataProfile;->canHandleServiceType(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v2

    if-ne v2, v3, :cond_b

    .line 636
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    .line 637
    sget-object v2, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/DataProfile;->setWorking(ZLcom/android/internal/telephony/Phone$IPVersion;)V

    goto :goto_b

    .line 641
    .end local v0       #dp:Lcom/android/internal/telephony/DataProfile;,
    .end local v1       #i$:Ljava/util/Iterator;,
    :cond_28
    return-void
.end method

.method resetServiceState(Lcom/android/internal/telephony/DataServiceType;)V
    .registers 3
    .parameter "ds"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceInfo;->resetServiceConnectionState()V

    .line 677
    return-void
.end method

.method public sendPdnTable()V
    .registers 14

    .prologue
    .line 1122
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataProfileTracker;->getCurrentDataProfileList()Ljava/util/ArrayList;

    move-result-object v11

    .line 1123
    .local v11, latestDataProfileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataProfile;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/DataProfile;

    .line 1124
    .local v9, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v9}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v1

    sget-object v7, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-eq v1, v7, :cond_22

    .line 1125
    const-string v1, "SEND PDN TABLE:: Data Profile does not belong to 3GPP APN type..."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    goto :goto_8

    .line 1129
    :cond_22
    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    move-object v12, v0

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/DataProfileTracker;->getPdnIdFromApnType(Lcom/android/internal/telephony/ApnSetting;)I

    move-result v2

    .line 1130
    .local v2, pdnId:I
    if-nez v2, :cond_32

    .line 1131
    const-string v1, "PDN_ID_NOT_AVAILABLE"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    goto :goto_8

    .line 1136
    :cond_32
    const/4 v3, 0x0

    .line 1138
    .local v3, apnLength:I
    move-object v0, v9

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    move-object v12, v0

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/DataProfileTracker;->getApnFromDataProfile(Lcom/android/internal/telephony/ApnSetting;)Ljava/lang/String;

    move-result-object v4

    .line 1139
    .local v4, apn:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1140
    const-string v1, "apn is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 1178
    .end local v2       #pdnId:I,
    .end local v3       #apnLength:I,
    .end local v4       #apn:Ljava/lang/String;,
    .end local v9       #dp:Lcom/android/internal/telephony/DataProfile;,
    :cond_48
    :goto_48
    return-void

    .line 1143
    .restart local v2       #pdnId:I,
    .restart local v3       #apnLength:I,
    .restart local v4       #apn:Ljava/lang/String;,
    .restart local v9       #dp:Lcom/android/internal/telephony/DataProfile;,
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apn is "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1147
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/DataProfileTracker;->getIpTypeFromDataProfile(Lcom/android/internal/telephony/DataProfile;)I

    move-result v5

    .line 1148
    .local v5, ipType:I
    const/4 v1, -0x1

    if-ne v5, v1, :cond_70

    .line 1149
    const-string v1, "IP_VERSION_SUPPORT_TYPE_NOT_AVAILABLE"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    goto :goto_48

    .line 1153
    :cond_70
    check-cast v9, Lcom/android/internal/telephony/ApnSetting;

    .end local v9       #dp:Lcom/android/internal/telephony/DataProfile;,
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/DataProfileTracker;->getInactivityTimerFromDataProfile(Lcom/android/internal/telephony/ApnSetting;)I

    move-result v6

    .line 1172
    .local v6, inactivityTime:I
    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/CommandsInterface;->sendPdnTable(IILjava/lang/String;IIILandroid/os/Message;)V

    goto :goto_8
.end method

.method public setApnTable(Lcom/android/internal/telephony/DataProfileVo;)I
    .registers 14
    .parameter "updateApnInfomation"

    .prologue
    .line 1270
    const/4 v3, 0x0

    .line 1272
    .local v3, result:I
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataProfileTracker;->setDataProfilValidCheck(Lcom/android/internal/telephony/DataProfileVo;)Z

    move-result v4

    .line 1274
    .local v4, validCheck:Z
    if-eqz v4, :cond_81

    .line 1275
    iget-object v6, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    if-eqz v6, :cond_80

    .line 1281
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1284
    .local v5, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnClass()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/DataProfileVo;->getApnClassStringtoInt(I)Ljava/lang/String;

    move-result-object v1

    .line 1286
    .local v1, apnClass:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnIpType()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/DataProfileVo;->getApnIpTypeIntToString(I)Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, IpType:Ljava/lang/String;
    const-string v6, "apnid"

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1292
    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const-string v6, "apn"

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnNi()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v6, "ipversion"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const-string v6, "enabled"

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnEnable()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1296
    const-string v6, "inactivitytime"

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnTime()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1300
    iget-object v6, p0, Lcom/android/internal/telephony/DataProfileTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "numeric=? and apnid=?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataProfileVo;->getApnId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1306
    .local v2, count:I
    if-gtz v2, :cond_80

    .line 1308
    const/4 v3, 0x1

    .line 1321
    .end local v0       #IpType:Ljava/lang/String;,
    .end local v1       #apnClass:Ljava/lang/String;,
    .end local v2       #count:I,
    .end local v5       #values:Landroid/content/ContentValues;,
    :cond_80
    :goto_80
    return v3

    .line 1313
    :cond_81
    const/4 v3, 0x2

    goto :goto_80
.end method

.method setServiceTypeAsActive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 7
    .parameter "ds"
    .parameter "dc"
    .parameter "ipv"

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/telephony/DataServiceInfo;->setDataServiceTypeAsActive(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 816
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/DataProfileTracker;->getRetryManager(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)Lcom/android/internal/telephony/RetryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 822
    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    if-ne p1, v1, :cond_3a

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    if-ne p3, v1, :cond_3a

    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_3GPP_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v1, v2, :cond_3a

    .line 827
    invoke-virtual {p2}, Lcom/android/internal/telephony/DataConnection;->getDataProfile()Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 828
    .local v0, apnUsed:Lcom/android/internal/telephony/ApnSetting;
    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/DataProfileTracker;->isApnDifferent(Lcom/android/internal/telephony/ApnSetting;Lcom/android/internal/telephony/ApnSetting;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3a

    .line 829
    iput-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mPreferredDefaultApn:Lcom/android/internal/telephony/ApnSetting;

    .line 830
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->setPreferredDefaultApnToDb(Lcom/android/internal/telephony/ApnSetting;)V

    .line 833
    .end local v0       #apnUsed:Lcom/android/internal/telephony/ApnSetting;,
    :cond_3a
    return-void
.end method

.method setServiceTypeAsInactive(Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 4
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->setDataServiceTypeAsInactive(Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 837
    return-void
.end method

.method setServiceTypeEnabled(Lcom/android/internal/telephony/DataServiceType;Z)V
    .registers 4
    .parameter "ds"
    .parameter "enable"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataServiceInfo;->setServiceTypeEnabled(Z)V

    .line 808
    return-void
.end method

.method setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/DataServiceType;Lcom/android/internal/telephony/Phone$IPVersion;)V
    .registers 5
    .parameter "state"
    .parameter "ds"
    .parameter "ipv"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->dsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceInfo;

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/DataServiceInfo;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;Lcom/android/internal/telephony/Phone$IPVersion;)V

    .line 876
    return-void
.end method

.method unregisterForDataProfileDbChanged(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileTracker;->mDataDataProfileDbChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 893
    return-void
.end method

.method public updateOperatorNumeric(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "newOperatorNumeric"
    .parameter "reason"

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataProfileTracker;->isDataProfilesLoadedForOperator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 612
    :goto_6
    return-void

    .line 606
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Operator numeric changed : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]  >>  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]. Reloading profile db. reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataProfileTracker;->logv(Ljava/lang/String;)V

    .line 609
    iput-object p1, p0, Lcom/android/internal/telephony/DataProfileTracker;->mOperatorNumeric:Ljava/lang/String;

    .line 611
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/DataProfileTracker;->reloadAllDataProfiles(Ljava/lang/String;)Z

    goto :goto_6
.end method
