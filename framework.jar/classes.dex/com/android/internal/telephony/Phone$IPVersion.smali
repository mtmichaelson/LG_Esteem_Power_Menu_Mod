.class public final enum Lcom/android/internal/telephony/Phone$IPVersion;
.super Ljava/lang/Enum;
.source "Phone.java"



# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IPVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Phone$IPVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$IPVersion;

.field public static final enum IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

.field public static final enum IPV6:Lcom/android/internal/telephony/Phone$IPVersion;



# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v1, "IPV4"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$IPVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    new-instance v0, Lcom/android/internal/telephony/Phone$IPVersion;

    const-string v1, "IPV6"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Phone$IPVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/Phone$IPVersion;

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV4:Lcom/android/internal/telephony/Phone$IPVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Phone$IPVersion;->IPV6:Lcom/android/internal/telephony/Phone$IPVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->$VALUES:[Lcom/android/internal/telephony/Phone$IPVersion;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$IPVersion;
    .registers 2
    .parameter "name"

    .prologue
    .line 104
    const-class v0, Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0       
    check-cast p0, Lcom/android/internal/telephony/Phone$IPVersion;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$IPVersion;
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/internal/telephony/Phone$IPVersion;->$VALUES:[Lcom/android/internal/telephony/Phone$IPVersion;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Phone$IPVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Phone$IPVersion;

    return-object v0
.end method
