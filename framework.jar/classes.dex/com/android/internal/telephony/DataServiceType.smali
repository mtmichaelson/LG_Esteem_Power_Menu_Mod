.class final enum Lcom/android/internal/telephony/DataServiceType;
.super Ljava/lang/Enum;
.source "DataServiceType.java"



# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataServiceType$1;,
        Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataServiceType; = null

.field private static final DEFAULT_SERVICE_TYPE_PRIORITIES:Ljava/lang/String; = "0=10;1=20;2=30;3=50;4=400;"

.field private static final LOG_TAG:Ljava/lang/String; = "DST"

.field public static final enum SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

.field public static final enum SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

.field private static final servComp:Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;



# instance fields
.field index:I

.field priority:I



# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 49
    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_MPCSAPP"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    .line 50
    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_ADMIN"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    .line 51
    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_IMS"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    .line 52
    new-instance v0, Lcom/android/internal/telephony/DataServiceType;

    const-string v1, "SERVICE_TYPE_INTERNET"

    invoke-direct {v0, v1, v4, v6}, Lcom/android/internal/telephony/DataServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    .line 35
    new-array v0, v6, [Lcom/android/internal/telephony/DataServiceType;

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->$VALUES:[Lcom/android/internal/telephony/DataServiceType;

    .line 187
    new-instance v0, Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;-><init>(Lcom/android/internal/telephony/DataServiceType$1;)V

    sput-object v0, Lcom/android/internal/telephony/DataServiceType;->servComp:Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcom/android/internal/telephony/DataServiceType;->index:I

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    .line 73
    return-void
.end method

.method public static apnTypeStringToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    .registers 2
    .parameter "type"

    .prologue
    .line 214
    const-string v0, "ims"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    .line 223
    :goto_a
    return-object v0

    .line 216
    :cond_b
    const-string v0, "admin"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 217
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_a

    .line 218
    :cond_16
    const-string v0, "internet"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 219
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_a

    .line 220
    :cond_21
    const-string v0, "mpcsapp"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 221
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    goto :goto_a

    .line 223
    :cond_2c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getPrioritySortedValues()[Lcom/android/internal/telephony/DataServiceType;
    .registers 2

    .prologue
    .line 190
    invoke-static {}, Lcom/android/internal/telephony/DataServiceType;->values()[Lcom/android/internal/telephony/DataServiceType;

    move-result-object v1

    invoke-virtual {v1}, [Lcom/android/internal/telephony/DataServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataServiceType;

    .line 191
    .local v0, ret:[Lcom/android/internal/telephony/DataServiceType;
    sget-object v1, Lcom/android/internal/telephony/DataServiceType;->servComp:Lcom/android/internal/telephony/DataServiceType$ServicePriorityComparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 192
    return-object v0
.end method

.method private static parseServicePriorityString(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 137
    if-nez p0, :cond_5

    move-object v8, v11

    .line 155
    :goto_4
    return-object v8

    .line 141
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v2, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_a
    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, t1:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v4, :cond_55

    aget-object v6, v0, v3

    .line 145
    .local v6, t2:Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, value:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_36} :catch_39

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 148
    .end local v0       #arr$:[Ljava/lang/String;,
    .end local v3       #i$:I,
    .end local v4       #len$:I,
    .end local v5       #t1:[Ljava/lang/String;,
    .end local v6       #t2:Ljava/lang/String;,
    .end local v7       #value:[Ljava/lang/String;,
    :catch_39
    move-exception v8

    move-object v1, v8

    .line 149
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "DST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing service priority string, ignoring "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v11

    .line 150
    goto :goto_4

    .end local v1       #e:Ljava/lang/Exception;,
    .restart local v0       #arr$:[Ljava/lang/String;,
    .restart local v3       #i$:I,
    .restart local v4       #len$:I,
    .restart local v5       #t1:[Ljava/lang/String;,
    :cond_55
    move-object v8, v2

    .line 155
    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataServiceType;
    .registers 2
    .parameter "name"

    .prologue
    .line 35
    const-class v0, Lcom/android/internal/telephony/DataServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataServiceType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataServiceType;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/internal/telephony/DataServiceType;->$VALUES:[Lcom/android/internal/telephony/DataServiceType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataServiceType;

    return-object v0
.end method


# virtual methods
.method public getServicePriorityFromProperty()I
    .registers 4

    .prologue
    .line 160
    const-string/jumbo v2, "persist.telephony.ds.priorities"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, priorities:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/telephony/DataServiceType;->parseServicePriorityString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 164
    .local v0, h:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v0, :cond_13

    .line 165
    const-string v2, "0=10;1=20;2=30;3=50;4=400;"

    invoke-static {v2}, Lcom/android/internal/telephony/DataServiceType;->parseServicePriorityString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 169
    :cond_13
    iget v2, p0, Lcom/android/internal/telephony/DataServiceType;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0       
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getid()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->index:I

    return v0
.end method

.method public isEqualDefaultPriority(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 4
    .parameter "ds"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isEqualPriority(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 4
    .parameter "ds"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    iget v1, p1, Lcom/android/internal/telephony/DataServiceType;->priority:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHigherDefaultPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 4
    .parameter "ds"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isHigherPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 6
    .parameter "ds"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataServiceType;->isEqualPriority(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v1

    if-le v0, v1, :cond_14

    move v0, v3

    .line 103
    :goto_13
    return v0

    :cond_14
    move v0, v2

    .line 101
    goto :goto_13

    .line 103
    :cond_16
    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    iget v1, p1, Lcom/android/internal/telephony/DataServiceType;->priority:I

    if-le v0, v1, :cond_1e

    move v0, v3

    goto :goto_13

    :cond_1e
    move v0, v2

    goto :goto_13
.end method

.method public isLowerDefaultPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 4
    .parameter "ds"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isLowerPriorityThan(Lcom/android/internal/telephony/DataServiceType;)Z
    .registers 6
    .parameter "ds"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataServiceType;->isEqualPriority(Lcom/android/internal/telephony/DataServiceType;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 119
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataServiceType;->getServicePriorityFromProperty()I

    move-result v1

    if-ge v0, v1, :cond_14

    move v0, v3

    .line 121
    :goto_13
    return v0

    :cond_14
    move v0, v2

    .line 119
    goto :goto_13

    .line 121
    :cond_16
    iget v0, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    iget v1, p1, Lcom/android/internal/telephony/DataServiceType;->priority:I

    if-ge v0, v1, :cond_1e

    move v0, v3

    goto :goto_13

    :cond_1e
    move v0, v2

    goto :goto_13
.end method

.method public setPriority(I)V
    .registers 2
    .parameter "priority"

    .prologue
    .line 132
    iput p1, p0, Lcom/android/internal/telephony/DataServiceType;->priority:I

    .line 133
    return-void
.end method

.method protected toApnTypeString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 230
    sget-object v0, Lcom/android/internal/telephony/DataServiceType$1;->$SwitchMap$com$android$internal$telephony$DataServiceType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 257
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 249
    :pswitch_d
    const-string v0, "ims"

    goto :goto_c

    .line 251
    :pswitch_10
    const-string v0, "admin"

    goto :goto_c

    .line 253
    :pswitch_13
    const-string v0, "internet"

    goto :goto_c

    .line 255
    :pswitch_16
    const-string v0, "mpcsapp"

    goto :goto_c

    .line 230
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method
