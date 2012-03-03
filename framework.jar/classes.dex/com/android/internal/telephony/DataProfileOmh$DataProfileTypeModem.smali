.class final enum Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
.super Ljava/lang/Enum;
.source "DataProfileOmh.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataProfileOmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DataProfileTypeModem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_ADMIN:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_IMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_INTERNET:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_VZWAPP:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;



# instance fields
.field id:I

.field serviceType:Lcom/android/internal/telephony/DataServiceType;



# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 64
    new-instance v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_IMS"

    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_IMS:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILcom/android/internal/telephony/DataServiceType;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_IMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 65
    new-instance v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_ADMIN"

    sget-object v2, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_ADMIN:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILcom/android/internal/telephony/DataServiceType;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_ADMIN:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 66
    new-instance v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_INTERNET"

    const/16 v2, 0x20

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_INTERNET:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILcom/android/internal/telephony/DataServiceType;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_INTERNET:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_VZWAPP"

    const/16 v2, 0x40

    sget-object v3, Lcom/android/internal/telephony/DataServiceType;->SERVICE_TYPE_MPCSAPP:Lcom/android/internal/telephony/DataServiceType;

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILcom/android/internal/telephony/DataServiceType;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_VZWAPP:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    sget-object v1, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_IMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_ADMIN:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_INTERNET:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_VZWAPP:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->$VALUES:[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/internal/telephony/DataServiceType;)V
    .registers 5
    .parameter
    .parameter
    .parameter "i"
    .parameter "dst"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/DataServiceType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->id:I

    .line 75
    iput-object p4, p0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->serviceType:Lcom/android/internal/telephony/DataServiceType;

    .line 76
    return-void
.end method

.method public static getDataProfileTypeModem(Lcom/android/internal/telephony/DataServiceType;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    .registers 4
    .parameter "dst"

    .prologue
    .line 89
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_IMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 90
    .local v0, dptModem:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    sget-object v1, Lcom/android/internal/telephony/DataProfileOmh$1;->$SwitchMap$com$android$internal$telephony$DataServiceType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataServiceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 131
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_IMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 136
    :goto_f
    return-object v0

    .line 115
    :pswitch_10
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_IMS:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 116
    goto :goto_f

    .line 118
    :pswitch_13
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_ADMIN:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 119
    goto :goto_f

    .line 121
    :pswitch_16
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_INTERNET:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 122
    goto :goto_f

    .line 124
    :pswitch_19
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_VZWAPP:Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    .line 125
    goto :goto_f

    .line 90
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    .registers 2
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->$VALUES:[Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;

    return-object v0
.end method


# virtual methods
.method public getDataServiceType()Lcom/android/internal/telephony/DataServiceType;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->serviceType:Lcom/android/internal/telephony/DataServiceType;

    return-object v0
.end method

.method public getid()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/telephony/DataProfileOmh$DataProfileTypeModem;->id:I

    return v0
.end method
