.class public final enum Lcom/android/internal/telephony/IccRefreshResponse$Result;
.super Ljava/lang/Enum;
.source "IccRefreshResponse.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccRefreshResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/IccRefreshResponse$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/IccRefreshResponse$Result;

.field public static final enum SIM_FILE_UPDATE:Lcom/android/internal/telephony/IccRefreshResponse$Result;

.field public static final enum SIM_INIT:Lcom/android/internal/telephony/IccRefreshResponse$Result;

.field public static final enum SIM_RESET:Lcom/android/internal/telephony/IccRefreshResponse$Result;



# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/android/internal/telephony/IccRefreshResponse$Result;

    const-string v1, "SIM_FILE_UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccRefreshResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccRefreshResponse$Result;->SIM_FILE_UPDATE:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    .line 42
    new-instance v0, Lcom/android/internal/telephony/IccRefreshResponse$Result;

    const-string v1, "SIM_INIT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/IccRefreshResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccRefreshResponse$Result;->SIM_INIT:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    .line 43
    new-instance v0, Lcom/android/internal/telephony/IccRefreshResponse$Result;

    const-string v1, "SIM_RESET"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/IccRefreshResponse$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/IccRefreshResponse$Result;->SIM_RESET:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/IccRefreshResponse$Result;

    sget-object v1, Lcom/android/internal/telephony/IccRefreshResponse$Result;->SIM_FILE_UPDATE:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/IccRefreshResponse$Result;->SIM_INIT:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/IccRefreshResponse$Result;->SIM_RESET:Lcom/android/internal/telephony/IccRefreshResponse$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/IccRefreshResponse$Result;->$VALUES:[Lcom/android/internal/telephony/IccRefreshResponse$Result;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/IccRefreshResponse$Result;
    .registers 2
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Lcom/android/internal/telephony/IccRefreshResponse$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/IccRefreshResponse$Result;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/IccRefreshResponse$Result;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/internal/telephony/IccRefreshResponse$Result;->$VALUES:[Lcom/android/internal/telephony/IccRefreshResponse$Result;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/IccRefreshResponse$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/IccRefreshResponse$Result;

    return-object v0
.end method
