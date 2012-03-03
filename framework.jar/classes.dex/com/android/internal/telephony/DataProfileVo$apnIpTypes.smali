.class final enum Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;
.super Ljava/lang/Enum;
.source "DataProfileVo.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataProfileVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "apnIpTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

.field public static final enum IPV4:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

.field public static final enum IPV4andIPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

.field public static final enum IPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;



# instance fields
.field apnIpTypeInt:Ljava/lang/String;



# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    const-string v1, "IPV4"

    const-string v2, "4"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    new-instance v0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    const-string v1, "IPV6"

    const-string v2, "6"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    new-instance v0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    const-string v1, "IPV4andIPV6"

    const-string v2, "4,6"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4andIPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->IPV4andIPV6:Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->$VALUES:[Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "apnIpType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->apnIpTypeInt:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;
    .registers 2
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->$VALUES:[Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;

    return-object v0
.end method


# virtual methods
.method public getApnIpType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/DataProfileVo$apnIpTypes;->apnIpTypeInt:Ljava/lang/String;

    return-object v0
.end method
