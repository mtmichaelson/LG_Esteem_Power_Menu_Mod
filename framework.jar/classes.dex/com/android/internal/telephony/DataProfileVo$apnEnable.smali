.class final enum Lcom/android/internal/telephony/DataProfileVo$apnEnable;
.super Ljava/lang/Enum;
.source "DataProfileVo.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataProfileVo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "apnEnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataProfileVo$apnEnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataProfileVo$apnEnable;

.field public static final enum Disable:Lcom/android/internal/telephony/DataProfileVo$apnEnable;

.field public static final enum Enable:Lcom/android/internal/telephony/DataProfileVo$apnEnable;



# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    const-string v1, "Enable"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataProfileVo$apnEnable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnEnable;->Enable:Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    new-instance v0, Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    const-string v1, "Disable"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataProfileVo$apnEnable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnEnable;->Disable:Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnEnable;->Enable:Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataProfileVo$apnEnable;->Disable:Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/DataProfileVo$apnEnable;->$VALUES:[Lcom/android/internal/telephony/DataProfileVo$apnEnable;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataProfileVo$apnEnable;
    .registers 2
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataProfileVo$apnEnable;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/internal/telephony/DataProfileVo$apnEnable;->$VALUES:[Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataProfileVo$apnEnable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataProfileVo$apnEnable;

    return-object v0
.end method
